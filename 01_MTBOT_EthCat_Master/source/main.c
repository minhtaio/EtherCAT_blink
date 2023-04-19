/** INCLUDE */
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <inttypes.h>
#include <pthread.h>
#include <sys/time.h>
#include <time.h>
#include "ethercat.h"
#include "log/log.h"

/** IMPORTANT DEFINE */
#define ethPort "eth0"

#define stack64k (64 * 1024)
#define EASYCAT            (1U)
#define LAN9252_SAM        (2U)
#define NUMBER_OF_SLAVES   (2U)

/** TYPE DEFINE */
typedef struct
{
   uint8 in1;
   uint8 in2;
   uint8 in3;
   uint8 in4;
   uint8 in5;
   uint8 in6;
} tEasyCatIn;

typedef struct
{
   uint8 out1;
   uint8 out2;
   uint8 out3;
   uint8 out4;
   uint8 out5;
   uint8 out6;
} tEasyCatDOut;

/** GLOBAL VARIABLES DEFINITION */
tEasyCatIn slave_EasyCat_In; 
tEasyCatDOut slave_EasyCat_Out; 

pthread_t ethercat_thread, ethercat_handle_thread;
struct sched_param schedp;
char IOmap[4096];
struct timeval tv, t1, t2;
int dorun = 0;
int deltat, tmax = 0;
int64 toff, gl_delta;
int DCdiff;
int os;
uint8 ob;
uint16 ob2;
uint8 *digout = 0;
int expectedWKC;
boolean needlf;
boolean inOP;
uint8 currentgroup = 0;
int wkc;

/** FUNCTION DECLERATION */
void ethercat_MainFunction (void * ptr);
void ethercat_handleError( void *ptr );
uint32 network_configuration(void);
void Module_Init(void); 

/** FUNCTION DEFINITION */
int32 get_input_int32(uint16 slave_no,uint8 module_index)
{
   int32 return_value;
   uint8 *data_ptr;
   /* Get the IO map pointer from the ec_slave struct */
   data_ptr = ec_slave[slave_no].inputs;
   /* Move pointer to correct module index */
   data_ptr += module_index * 4;
   /* Read value byte by byte since all targets can't handle misaligned
    * addresses
    */
   return_value = *data_ptr++;
   return_value += (*data_ptr++ << 8);
   return_value += (*data_ptr++ << 16);
   return_value += (*data_ptr++ << 24);

   return return_value;
}

void set_input_int32 (uint16 slave_no, uint8 module_index, int32 value)
{
   uint8 *data_ptr;
   /* Get the IO map pointer from the ec_slave struct */
   data_ptr = ec_slave[slave_no].inputs;
   /* Move pointer to correct module index */
   data_ptr += module_index * 4;
   /* Read value byte by byte since all targets can handle misaligned
    * addresses
    */
   *data_ptr++ = (value >> 0) & 0xFF;
   *data_ptr++ = (value >> 8) & 0xFF;
   *data_ptr++ = (value >> 16) & 0xFF;
   *data_ptr++ = (value >> 24) & 0xFF;
}

uint8 get_input_bit (uint16 slave_no,uint8 module_index)
{
   /* Get the the startbit position in slaves IO byte */
   uint8 startbit = ec_slave[slave_no].Istartbit;
   /* Mask bit and return boolean 0 or 1 */
   if (*ec_slave[slave_no].inputs & BIT (module_index - 1  + startbit))
      return 1;
   else
      return 0;
}

int16 get_output_int16(uint16 slave_no,uint8 module_index)
{
   int16 return_value;
   uint8 *data_ptr;

   /* Get the IO map pointer from the ec_slave struct */
   data_ptr = ec_slave[slave_no].outputs;
   /* Move pointer to correct module index */
   data_ptr += module_index * 2;
   /* Read value byte by byte since all targets can handle misaligned
    * addresses
    */
   return_value = *data_ptr++;
   return_value += (*data_ptr++ << 8);

   return return_value;
}

void set_output_int16 (uint16 slave_no, uint8 module_index, int16 value)
{
   uint8 *data_ptr;
   /* Get the IO map pointer from the ec_slave struct */
   data_ptr = ec_slave[slave_no].outputs;
   /* Move pointer to correct module index */
   data_ptr += module_index * 2;
   /* Read value byte by byte since all targets can handle misaligned
    * addresses
    */
   *data_ptr++ = (value >> 0) & 0xFF;
   *data_ptr++ = (value >> 8) & 0xFF;
}

uint8 get_output_bit (uint16 slave_no,uint8 module_index)
{
   /* Get the the startbit position in slaves IO byte */
   uint8 startbit = ec_slave[slave_no].Ostartbit;
   /* Mask bit and return boolean 0 or 1 */
   if (*ec_slave[slave_no].outputs & BIT (module_index - 1  + startbit))
      return 1;
   else
      return 0;
}

void set_output_bit (uint16 slave_no, uint8 module_index, uint8 value)
{
   /* Get the the startbit position in slaves IO byte */
   uint8 startbit = ec_slave[slave_no].Ostartbit;
   /* Set or Clear bit */
   if (value == 0)
      *ec_slave[slave_no].outputs &= ~(1 << (module_index - 1 + startbit));
   else
      *ec_slave[slave_no].outputs |= (1 << (module_index - 1 + startbit));
}

/* RT EtherCAT thread */
void ethercat_MainFunction (void * ptr)
{
   (void)ptr;

   char * ifname = ethPort;
   int cnt, i, j;

  /* initialise SOEM */
   if (ec_init(ifname))
   {
      log_debug ("ec_init succeeded.\n");

      /* find and auto-config slaves */
      if ( ec_config_init(FALSE) > 0 )
      {
         log_debug ("%d slaves found and configured.\n",ec_slavecount);

         /* Check network  setup */
         if (network_configuration())
         {
            /* Run IO mapping */
            ec_config_map(&IOmap);

            log_debug ("Slaves mapped, state to SAFE_OP.\n");
            /* wait for all slaves to reach SAFE_OP state */
            ec_statecheck(0, EC_STATE_SAFE_OP,  EC_TIMEOUTSTATE);

            /* Print som information on the mapped network */
            for( cnt = 1 ; cnt <= ec_slavecount ; cnt++)
            {
               log_debug ("\nSlave:%d\n Name:%s\n Output size: %dbits\n Input size: %dbits\n State: %d\n Delay: %d[ns]\n Has DC: %d\n",
                       cnt, ec_slave[cnt].name, ec_slave[cnt].Obits, ec_slave[cnt].Ibits,
                       ec_slave[cnt].state, ec_slave[cnt].pdelay, ec_slave[cnt].hasdc);
               log_debug (" Configured address: %x\n", ec_slave[cnt].configadr);
               log_debug (" Outputs address: %x\n", ec_slave[cnt].outputs);
               log_debug (" Inputs address: %x\n", ec_slave[cnt].inputs);

               for(j = 0 ; j < ec_slave[cnt].FMMUunused ; j++)
               {
                  log_debug (" FMMU%1d Ls:%x Ll:%4d Lsb:%d Leb:%d Ps:%x Psb:%d Ty:%x Act:%x\n", j,
                          (int)ec_slave[cnt].FMMU[j].LogStart, ec_slave[cnt].FMMU[j].LogLength, ec_slave[cnt].FMMU[j].LogStartbit,
                          ec_slave[cnt].FMMU[j].LogEndbit, ec_slave[cnt].FMMU[j].PhysStart, ec_slave[cnt].FMMU[j].PhysStartBit,
                          ec_slave[cnt].FMMU[j].FMMUtype, ec_slave[cnt].FMMU[j].FMMUactive);
               }
               log_debug (" FMMUfunc 0:%d 1:%d 2:%d 3:%d\n",
                        ec_slave[cnt].FMMU0func, ec_slave[cnt].FMMU1func, ec_slave[cnt].FMMU2func, ec_slave[cnt].FMMU3func);

            }

            log_debug ("Request operational state for all slaves\n");
            ec_slave[0].state = EC_STATE_OPERATIONAL;
            /* send one valid process data to make outputs in slaves happy*/
            ec_send_processdata();
            ec_receive_processdata(EC_TIMEOUTRET);
            /* request OP state for all slaves */
            ec_writestate(0);
            /* wait for all slaves to reach OP state */
            ec_statecheck(0, EC_STATE_OPERATIONAL,  EC_TIMEOUTSTATE);
            
            if (ec_slave[0].state == EC_STATE_OPERATIONAL )
            {
               log_debug ("Operational state reached for all slaves.\n");
            }
            else
            {
               log_debug ("Not all slaves reached operational state.\n");
               ec_readstate();
               for(i = 1; i<=ec_slavecount ; i++)
               {
                  if(ec_slave[i].state != EC_STATE_OPERATIONAL)
                  {
                     log_debug ("Slave %d State=0x%04x StatusCode=0x%04x\n",
                                 i, ec_slave[i].state, ec_slave[i].ALstatuscode);
                  }
               }
            }

            /* Go into loop. */
            uint8 digout = 0;
            while (true)
            {
               ec_send_processdata();
               wkc = ec_receive_processdata(EC_TIMEOUTRET);

               /* code */
               slave_EasyCat_In.in1 = get_input_bit(EASYCAT, 1);
               slave_EasyCat_In.in2 = get_input_bit(EASYCAT, 2);
               slave_EasyCat_In.in3 = get_input_bit(EASYCAT, 3);
               slave_EasyCat_In.in4 = get_input_bit(EASYCAT, 4);
               slave_EasyCat_In.in5 = get_input_bit(EASYCAT, 5);
               slave_EasyCat_In.in6 = get_input_bit(EASYCAT, 6);

               log_info ("The button from state on EasyCat: \nbutton1 - %d\nbutton2 - %d\nbutton3 - %d\nbutton4 - %d\nbutton5 - %d\nbutton6 - %d\n", 
                           slave_EasyCat_In.in1, 
                           slave_EasyCat_In.in2,
                           slave_EasyCat_In.in3,
                           slave_EasyCat_In.in4,
                           slave_EasyCat_In.in5,
                           slave_EasyCat_In.in6);

               /* Blinking state of all output pin. */
               set_output_bit(EASYCAT, 1, (digout & BIT(1)));
               set_output_bit(EASYCAT, 2, (digout & BIT(2)));
               set_output_bit(EASYCAT, 3, (digout & BIT(3)));
               set_output_bit(EASYCAT, 4, (digout & BIT(4)));
               set_output_bit(EASYCAT, 5, (digout & BIT(5)));
               set_output_bit(EASYCAT, 6, (digout & BIT(6)));

               /* Delay 1s*/
               osal_usleep(1000000);
               digout ++;
            }
         }
         else
         {
            log_warn ("Mismatch of network units!\n");
         }
      }
      else
      {
         log_error ("No slaves found!\n");
      }

      log_info ("End simple test, close socket\n");

      /* stop SOEM, close socket */
      ec_close();
   }
   else
   {
      log_error ("ec_init failed");
   }
}

void ethercat_handleError( void *ptr )
{
    int slave;
    (void)ptr;

    while(1)
    {
        if( inOP && ((wkc < expectedWKC) || ec_group[currentgroup].docheckstate))
        {
            if (needlf)
            {
               needlf = FALSE;
               printf("\n");
            }
            /* one ore more slaves are not responding */
            ec_group[currentgroup].docheckstate = FALSE;
            ec_readstate();
            for (slave = 1; slave <= ec_slavecount; slave++)
            {
               if ((ec_slave[slave].group == currentgroup) && (ec_slave[slave].state != EC_STATE_OPERATIONAL))
               {
                  ec_group[currentgroup].docheckstate = TRUE;
                  if (ec_slave[slave].state == (EC_STATE_SAFE_OP + EC_STATE_ERROR))
                  {
                     printf("ERROR : slave %d is in SAFE_OP + ERROR, attempting ack.\n", slave);
                     ec_slave[slave].state = (EC_STATE_SAFE_OP + EC_STATE_ACK);
                     ec_writestate(slave);
                  }
                  else if(ec_slave[slave].state == EC_STATE_SAFE_OP)
                  {
                     printf("WARNING : slave %d is in SAFE_OP, change to OPERATIONAL.\n", slave);
                     ec_slave[slave].state = EC_STATE_OPERATIONAL;
                     ec_writestate(slave);
                  }
                  else if(ec_slave[slave].state > EC_STATE_NONE)
                  {
                     if (ec_reconfig_slave(slave, EC_TIMEOUTRXM))
                     {
                        ec_slave[slave].islost = FALSE;
                        printf("MESSAGE : slave %d reconfigured\n",slave);
                     }
                  }
                  else if(!ec_slave[slave].islost)
                  {
                     /* re-check state */
                     ec_statecheck(slave, EC_STATE_OPERATIONAL, EC_TIMEOUTRET);
                     if (ec_slave[slave].state == EC_STATE_NONE)
                     {
                        ec_slave[slave].islost = TRUE;
                        printf("ERROR : slave %d lost\n",slave);
                     }
                  }
               }
               if (ec_slave[slave].islost)
               {
                  if(ec_slave[slave].state == EC_STATE_NONE)
                  {
                     if (ec_recover_slave(slave, EC_TIMEOUTRXM))
                     {
                        ec_slave[slave].islost = FALSE;
                        printf("MESSAGE : slave %d recovered\n",slave);
                     }
                  }
                  else
                  {
                     ec_slave[slave].islost = FALSE;
                     printf("MESSAGE : slave %d found\n",slave);
                  }
               }
            }
            if(!ec_group[currentgroup].docheckstate)
               printf("OK : all slaves resumed OPERATIONAL.\n");
        }
        osal_usleep(10000);
    }
}

uint32 network_configuration(void)
{
   /* Do we got expected number of slaves from config */
   if ((unsigned int)(ec_slavecount) < NUMBER_OF_SLAVES)
      return 0;

   /* Verify slave by slave that it is correct*/
   if (strcmp(ec_slave[EASYCAT].name,"evb9252_dig"))
      return 0;
   else if (strcmp(ec_slave[LAN9252_SAM].name,"EasyCAT 32+32 rev 1"))
      return 0;

  return 1;
}

void Module_Init (void)
{
   /* Log module */
   log_set_quiet (false);
   log_set_level (LOG_DEBUG);
}

int main (void)
{
   log_trace ("Start the ethercat master.\n");

   /* Initialize all modules. */
   Module_Init();

   /* create RT thread */
//   osal_thread_create_rt(&ethercat_thread, stack64k * 2, &ethercat_MainFunction, (void*)&ctime);

   /* create thread to handle slave error handling in OP */
   osal_thread_create(&ethercat_handle_thread, stack64k * 4, &ethercat_handleError, NULL);

   ethercat_MainFunction(NULL);
	
   return (0);
}
