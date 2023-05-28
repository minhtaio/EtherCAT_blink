/*
 * TMC8462_Constants.h
 *
 *  Created on: 13.06.2018
 *      Author: LK
 */

#ifndef TMC_IC_TMC8462_TMC8462_CONSTANTS_H_
#define TMC_IC_TMC8462_TMC8462_CONSTANTS_H_

#include "tmc/helpers/Constants.h"

#define TMC8462_CMD_READ      0x02
#define TMC8462_CMD_READ_WAIT 0x03
#define TMC8462_CMD_WRITE     0x04
#define TMC8462_CMD_ADDR_EXT  0x06

#define TMC8462_ESC_EEP_CMD_IDLE 0b000
#define TMC8462_ESC_EEP_CMD_READ 0b001
#define TMC8462_ESC_EEP_CMD_WRITE 0b010
#define TMC8462_ESC_EEP_CMD_RELOAD 0b100

#define TMC8462_EC_STATE_INIT 1
#define TMC8462_EC_STATE_BOOTSTRAP 3
#define TMC8462_EC_STATE_PREOP 2
#define TMC8462_EC_STATE_SAFEOP 4
#define TMC8462_EC_STATE_OPERATIONAL 8

#define TMC8462_MAGIC_RESET 0x524553
#define TMC8462_MAGIC_RESET_0 0x52 // 'R'
#define TMC8462_MAGIC_RESET_1 0x45 // 'E'
#define TMC8462_MAGIC_RESET_2 0x53 // 'S'

#endif /* TMC_IC_TMC8462_TMC8462_CONSTANTS_H_ */
