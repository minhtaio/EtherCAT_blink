/*
 * TMC8462_Register.h
 *
 *  Created on: 30.05.2017
 *      Author: LK
 */

#ifndef TMC8462_REGISTER_H
#define TMC8462_REGISTER_H

///////////////////////////////////////////////////////////////////
// MFC Registers

// SPI register addresses
#define TMC8462_MFC_ENC_MODE            0x0000
#define TMC8462_MFC_ENC_STATUS          0x0010
#define TMC8462_MFC_ENC_X_W             0x0020
#define TMC8462_MFC_ENC_X_R             0x0030
#define TMC8462_MFC_ENC_CONST           0x0040
#define TMC8462_MFC_ENC_LATCH           0x0050

#define TMC8462_MFC_SPI_RX_DATA         0x0060
#define TMC8462_MFC_SPI_TX_DATA         0x0070
#define TMC8462_MFC_SPI_CONF            0x0080
#define TMC8462_MFC_SPI_STATUS          0x0090
#define TMC8462_MFC_SPI_LENGTH          0x00A0
#define TMC8462_MFC_SPI_TIME            0x00B0

#define TMC8462_MFC_IIC_TIMEBASE        0x00C0
#define TMC8462_MFC_IIC_CONTROL         0x00D0
#define TMC8462_MFC_IIC_STATUS          0x00E0
#define TMC8462_MFC_IIC_ADDRESS         0x00F0
#define TMC8462_MFC_IIC_DATA_R          0x0100

#define TMC8462_MFC_IIC_DATA_W          0x0110
#define TMC8462_MFC_SD_SR0              0x0120
#define TMC8462_MFC_SD_SR1              0x0130
#define TMC8462_MFC_SD_SR2              0x0140
#define TMC8462_MFC_SD_SC0              0x0150
#define TMC8462_MFC_SD_SC1              0x0160
#define TMC8462_MFC_SD_SC2              0x0170
#define TMC8462_MFC_SD_ST0              0x0180
#define TMC8462_MFC_SD_ST1              0x0190
#define TMC8462_MFC_SD_ST2              0x01A0
#define TMC8462_MFC_SD_CMP0             0x01B0
#define TMC8462_MFC_SD_CMP1             0x01C0
#define TMC8462_MFC_SD_CMP2             0x01D0
#define TMC8462_MFC_SD_NEXTSR0          0x01E0
#define TMC8462_MFC_SD_NEXTSR1          0x01F0
#define TMC8462_MFC_SD_NEXTSR2          0x0200
#define TMC8462_MFC_SD_SL               0x0210
#define TMC8462_MFC_SD_DLY              0x0220
#define TMC8462_MFC_SD_CFG              0x0230

#define TMC8462_MFC_PWM_CFG             0x0240
#define TMC8462_MFC_PWM1                0x0250
#define TMC8462_MFC_PWM2                0x0260
#define TMC8462_MFC_PWM3                0x0270
#define TMC8462_MFC_PWM4                0x0280
#define TMC8462_MFC_PWM1_CNTRSHFT       0x0290
#define TMC8462_MFC_PWM2_CNTRSHFT       0x02A0
#define TMC8462_MFC_PWM3_CNTRSHFT       0x02B0
#define TMC8462_MFC_PWM4_CNTRSHFT       0x02C0
#define TMC8462_MFC_PULSE_B_PULSE_A     0x02D0

#define TMC8462_MFC_PULSE_LENGTH        0x02E0
#define TMC8462_MFC_HVIO_CFG            0x0400
#define TMC8462_MFC_SWREG_CONF          0x0410
#define TMC8462_MFC_AL_OVERRIDE         0x0420
#define TMC8462_MFC_TEST_BIST           0x03C0
#define TMC8462_MFC_TEST_ON_CFG         0x03C0

///////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////
// ESC Registers
#define TMC8462_ESC_INFO_TYPE           0x0000
#define TMC8462_ESC_INFO_REV            0x0001
#define TMC8462_ESC_INFO_BUILD          0x0002

#define TMC8462_ESC_RESET_ECAT          0x0040
#define TMC8462_ESC_RESET_PDI           0x0041

// Application Layer
#define TMC8462_ESC_AL_CONTROL          0x0120
#define TMC8462_ESC_AL_STATUS           0x0130
#define TMC8462_ESC_AL_CODE             0x0134
#define TMC8462_ESC_PDI_CTRL            0x0140
#define TMC8462_ESC_AL_EVENT_MASK_LO    0x0204
#define TMC8462_ESC_AL_EVENT_MASK_HI    0x0206
#define TMC8462_ESC_AL_EVENT_REQUEST    0x0220

// SII EEPROM Interface
#define TMC8462_ESC_EEP_CFG             0x0500
#define TMC8462_ESC_EEP_PDI_ACCESS      0x0501
#define TMC8462_ESC_EEP_STATUS          0x0502
#define TMC8462_ESC_EEP_ADDRESS         0x0504
#define TMC8462_ESC_EEP_DATA            0x0508

// ESC RAM-Addresses
#define TMC8462_ESC_CFG_MFCIO_0         0x0580
#define TMC8462_ESC_CFG_MFCIO_1         0x0581
#define TMC8462_ESC_CFG_MFCIO_2         0x0582
#define TMC8462_ESC_CFG_MFCIO_3         0x0583
#define TMC8462_ESC_CFG_MFCIO_4         0x0584
#define TMC8462_ESC_CFG_MFCIO_5         0x0585
#define TMC8462_ESC_CFG_MFCIO_6         0x0586
#define TMC8462_ESC_CFG_MFCIO_7         0x0587
#define TMC8462_ESC_CFG_MFCIO_8         0x0588
#define TMC8462_ESC_CFG_MFCIO_9         0x0589
#define TMC8462_ESC_CFG_MFCIO_10        0x058A
#define TMC8462_ESC_CFG_MFCIO_11        0x058B
#define TMC8462_ESC_CFG_MFCIO_12        0x058C
#define TMC8462_ESC_CFG_MFCIO_13        0x058D
#define TMC8462_ESC_CFG_MFCIO_14        0x058E
#define TMC8462_ESC_CFG_MFCIO_15        0x058F

#define TMC8462_ESC_CFG_MFCIO_HV_0      0x0590
#define TMC8462_ESC_CFG_MFCIO_HV_1      0x0591
#define TMC8462_ESC_CFG_MFCIO_HV_2      0x0592
#define TMC8462_ESC_CFG_MFCIO_HV_3      0x0593
#define TMC8462_ESC_CFG_MFCIO_HV_4      0x0594
#define TMC8462_ESC_CFG_MFCIO_HV_5      0x0595
#define TMC8462_ESC_CFG_MFCIO_HV_6      0x0596
#define TMC8462_ESC_CFG_MFCIO_HV_7      0x0597

#define TMC8462_ESC_CFG_HVIO_SLOPE      0x0598
#define TMC8462_ESC_CFG_HVIO_WEAK_H     0x0599
#define TMC8462_ESC_CFG_HVIO_WEAK_L     0x059A
#define TMC8462_ESC_CFG_HVIO_DIFF_EN    0x059B
#define TMC8462_ESC_CFG_SWREG_33        0x059C
#define TMC8462_ESC_CFG_SWREG_VOUT      0x059D

#define TMC8462_ESC_CFG_MEM_BLOCK0      0x059E
#define TMC8462_ESC_CFG_MEM_BLOCK1      0x05A0

#define TMC8462_ESC_ENC_MODE            0x05A2
#define TMC8462_ESC_ENC_STATUS          0x05A3
#define TMC8462_ESC_ENC_X_W             0x05A4
#define TMC8462_ESC_ENC_X_R             0x05A5
#define TMC8462_ESC_ENC_CONST           0x05A6
#define TMC8462_ESC_ENC_LATCH           0x05A7

#define TMC8462_ESC_SPI_RX_DATA         0x05A8
#define TMC8462_ESC_SPI_TX_DATA         0x05A9
#define TMC8462_ESC_SPI_CONF            0x05AA
#define TMC8462_ESC_SPI_STATUS          0x05AB
#define TMC8462_ESC_SPI_LENGTH          0x05AC
#define TMC8462_ESC_SPI_TIME            0x05AD

#define TMC8462_ESC_IIC_TIMEBASE        0x05AE
#define TMC8462_ESC_IIC_CONTROL         0x05AF
#define TMC8462_ESC_IIC_STATUS          0x05B0
#define TMC8462_ESC_IIC_ADDRESS         0x05B1
#define TMC8462_ESC_IIC_DATA_R          0x05B2
#define TMC8462_ESC_IIC_DATA_W          0x05B3

#define TMC8462_ESC_SD_SR0              0x05B4
#define TMC8462_ESC_SD_SR1              0x05B5
#define TMC8462_ESC_SD_SR2              0x05B6
#define TMC8462_ESC_SD_SC0              0x05B7
#define TMC8462_ESC_SD_SC1              0x05B8
#define TMC8462_ESC_SD_SC2              0x05B9
#define TMC8462_ESC_SD_ST0              0x05BA
#define TMC8462_ESC_SD_ST1              0x05BB
#define TMC8462_ESC_SD_ST2              0x05BC
#define TMC8462_ESC_SD_CMP0             0x05BD
#define TMC8462_ESC_SD_CMP1             0x05BE
#define TMC8462_ESC_SD_CMP2             0x05BF
#define TMC8462_ESC_SD_NEXTSR0          0x05C0
#define TMC8462_ESC_SD_NEXTSR1          0x05C1
#define TMC8462_ESC_SD_NEXTSR2          0x05C2
#define TMC8462_ESC_SD_SL               0x05C3
#define TMC8462_ESC_SD_DLY              0x05C4
#define TMC8462_ESC_SD_CFG              0x05C5

#define TMC8462_ESC_PWM_CFG             0x05C6
#define TMC8462_ESC_PWM1                0x05C7
#define TMC8462_ESC_PWM2                0x05C8
#define TMC8462_ESC_PWM3                0x05C9
#define TMC8462_ESC_PWM4                0x05CA
#define TMC8462_ESC_PWM1_CNTRSHFT       0x05CB
#define TMC8462_ESC_PWM2_CNTRSHFT       0x05CC
#define TMC8462_ESC_PWM3_CNTRSHFT       0x05CD
#define TMC8462_ESC_PWM4_CNTRSHFT       0x05CE
#define TMC8462_ESC_PULSE_B_PULSE_A     0x05CF
#define TMC8462_ESC_PULSE_LENGTH        0x05D0

#define TMC8462_ESC_GPO                 0x05D1
#define TMC8462_ESC_GPI                 0x05D2
#define TMC8462_ESC_GPIO_CONFIG         0x05D3

#define TMC8462_ESC_DAC_VAL             0x05D4

#define TMC8462_ESC_MFCIO_IRQ_CFG       0x05D5
#define TMC8462_ESC_MFCIO_IRQ_FLAGS     0x05D6

#define TMC8462_ESC_WD_TIME             0x05D7
#define TMC8462_ESC_WD_CFG              0x05D8
#define TMC8462_ESC_WD_OUT_MASK_POL     0x05D9
#define TMC8462_ESC_WD_OE_POL           0x05DA
#define TMC8462_ESC_WD_IN_MASK_POL      0x05DB
#define TMC8462_ESC_WD_MAX              0x05DC

#define TMC8462_ESC_HV_STATUS           0x05DD

#define TMC8462_ESC_SYNC_EVT_COUNTER    0x05E1

// Sync Manager
#define TMC8462_ESC_SM0_START           0x0800
#define TMC8462_ESC_SM0_LEN             0x0802
#define TMC8462_ESC_SM0_CTRL_STATUS     0x0804
#define TMC8462_ESC_MB_STATUS           TMC8462_ESC_SM0_CTRL_STATUS
#define TMC8462_ESC_SM1_START           0x0808
#define TMC8462_ESC_SM1_LEN             0x080A
#define TMC8462_ESC_SM2_START           0x0810
#define TMC8462_ESC_SM2_LEN             0x0812
#define TMC8462_ESC_SM2_CTRL_STATUS     0x0814
#define TMC8462_ESC_PDO_STATUS          TMC8462_ESC_SM2_CTRL_STATUS
#define TMC8462_ESC_SM3_START           0x0818
#define TMC8462_ESC_SM3_LEN             0x081A

// Process Data Ram
#define TMC8462_ESC_PROCESS_DATA_RAM    0x1000

///////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////
// Other stuff

// Crossbar configuration
#define TMC8462_MFCFG_INPUT             0
#define TMC8462_MFCFG_LOW               1
#define TMC8462_MFCFG_HIGH              2
#define TMC8462_MFCFG_TRI               3
#define TMC8462_MFCFG_ENCA_P            4
#define TMC8462_MFCFG_ENCA_N            5
#define TMC8462_MFCFG_ENCB_P            6
#define TMC8462_MFCFG_ENCB_N            7
#define TMC8462_MFCFG_ENCN_P            8
#define TMC8462_MFCFG_ENCN_N            9
#define TMC8462_MFCFG_SPI_SCK           10
#define TMC8462_MFCFG_SPI_MOSI          11
#define TMC8462_MFCFG_SPI_MISO          12
#define TMC8462_MFCFG_SPI_CSN0          13
#define TMC8462_MFCFG_SPI_CSN1          14
#define TMC8462_MFCFG_SPI_CSN2          15
#define TMC8462_MFCFG_SPI_CSN3          16
#define TMC8462_MFCFG_IIC_SCL           17
#define TMC8462_MFCFG_IIC_SDA           18
#define TMC8462_MFCFG_SD_STEP0          19
#define TMC8462_MFCFG_SD_DIR0           20
#define TMC8462_MFCFG_SD_STEP1          21
#define TMC8462_MFCFG_SD_DIR1           22
#define TMC8462_MFCFG_SD_STEP2          23
#define TMC8462_MFCFG_SD_DIR2           24
#define TMC8462_MFCFG_SD_STEP0_N        25
#define TMC8462_MFCFG_SD_DIR0_N         26
#define TMC8462_MFCFG_SD_STEP1_N        27
#define TMC8462_MFCFG_SD_DIR1_N         28
#define TMC8462_MFCFG_SD_STEP2_N        29
#define TMC8462_MFCFG_SD_DIR2_N         30
#define TMC8462_MFCFG_PWM_HS0           31
#define TMC8462_MFCFG_PWM_LS0           32
#define TMC8462_MFCFG_PWM_HS1           33
#define TMC8462_MFCFG_PWM_LS1           34
#define TMC8462_MFCFG_PWM_HS2           35
#define TMC8462_MFCFG_PWM_LS2           36
#define TMC8462_MFCFG_PWM_HS3           37
#define TMC8462_MFCFG_PWM_LS3           38
#define TMC8462_MFCFG_GPI0              39
#define TMC8462_MFCFG_GPI1              40
#define TMC8462_MFCFG_GPI2              41
#define TMC8462_MFCFG_GPI3              42
#define TMC8462_MFCFG_GPI4              43
#define TMC8462_MFCFG_GPI5              44
#define TMC8462_MFCFG_GPI6              45
#define TMC8462_MFCFG_GPI7              46
#define TMC8462_MFCFG_GPI8              47
#define TMC8462_MFCFG_GPI9              48
#define TMC8462_MFCFG_GPI10             49
#define TMC8462_MFCFG_GPI11             50
#define TMC8462_MFCFG_GPI12             51
#define TMC8462_MFCFG_GPI13             52
#define TMC8462_MFCFG_GPI14             53
#define TMC8462_MFCFG_GPI15             54
#define TMC8462_MFCFG_GPO0              55
#define TMC8462_MFCFG_GPO1              56
#define TMC8462_MFCFG_GPO2              57
#define TMC8462_MFCFG_GPO3              58
#define TMC8462_MFCFG_GPO4              59
#define TMC8462_MFCFG_GPO5              60
#define TMC8462_MFCFG_GPO6              61
#define TMC8462_MFCFG_GPO7              62
#define TMC8462_MFCFG_GPO8              63
#define TMC8462_MFCFG_GPO9              64
#define TMC8462_MFCFG_GPO10             65
#define TMC8462_MFCFG_GPO11             66
#define TMC8462_MFCFG_GPO12             67
#define TMC8462_MFCFG_GPO13             68
#define TMC8462_MFCFG_GPO14             69
#define TMC8462_MFCFG_GPO15             70
#define TMC8462_MFCFG_DAC0              71
#define TMC8462_MFCFG_PWM_PULSE_A       72
#define TMC8462_MFCFG_PWM_PULSE_CENTER  73
#define TMC8462_MFCFG_PWM_PULSE_B       74
#define TMC8462_MFCFG_PWM_PULSE_AB      75
#define TMC8462_MFCFG_PWM_PULSE_ZERO    76

// PDI modes
#define TMC8462_PDI_DISABLED            0x00
#define TMC8462_PDI_4DI                 0x01
#define TMC8462_PDI_4DO                 0x02
#define TMC8462_PDI_2DI_2DO             0x03
#define TMC8462_PDI_DIO                 0x04
#define TMC8462_PDI_SPI_SLAVE           0x05
#define TMC8462_PDI_OSIO                0x06
#define TMC8462_PDI_EC_BRIDGE           0x07
#define TMC8462_PDI_16BIT_ASYNC         0x08
#define TMC8462_PDI_8BIT_ASYNC          0x09
#define TMC8462_PDI_16BIT_SYNC          0x0A
#define TMC8462_PDI_8BIT_SYNC           0x0B
#define TMC8462_PDI_32DI                0x10
#define TMC8462_PDI_24DI_8DO            0x11
#define TMC8462_PDI_16DI_16DO           0x12
#define TMC8462_PDI_8DI_24DO            0x13
#define TMC8462_PDI_32DO                0x14
#define TMC8462_PDI_ON_CHIP_BUS         0x80

///////////////////////////////////////////////////////////////////

#endif /* TMC8462_REGISTER_H */
