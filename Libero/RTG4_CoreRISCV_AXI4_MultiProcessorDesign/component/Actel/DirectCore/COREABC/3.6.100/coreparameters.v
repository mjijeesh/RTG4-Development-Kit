//--------------------------------------------------------------------
// Created by Microsemi SmartDesign Thu Dec 22 16:28:16 2016
// Parameters for COREABC
//--------------------------------------------------------------------


parameter ABCCODE = "// ------------------------------------
// CoreABC FDDR Initialization Sequence
// ------------------------------------
    
// Allow time for the APB interface to be ready after reset
    NOP
    NOP
    NOP
    
// Assert Soft Reset (DDRC_DYN_SOFT_RESET=0)
    APBWRT DAT16 0 0x1000 0x0
    
// DDRC_DYN_REFRESH_1_CR
    APBWRT DAT16 0 0x1008 0x27de
// DDRC_DYN_REFRESH_2_CR
    APBWRT DAT16 0 0x100c 0x30f
// DDRC_DYN_POWERDOWN_CR
    APBWRT DAT16 0 0x1010 0x2
// DDRC_DYN_DEBUG_CR
    APBWRT DAT16 0 0x1014 0x0
// DDRC_MODE_CR
    APBWRT DAT16 0 0x1018 0x100
// DDRC_ADDR_MAP_BANK_CR
    APBWRT DAT16 0 0x101c 0xaaa
// DDRC_ECC_DATA_MASK_CR
    APBWRT DAT16 0 0x1020 0x0
// DDRC_ADDR_MAP_COL_1_CR
    APBWRT DAT16 0 0x1024 0x3333
// DDRC_ADDR_MAP_COL_2_CR
    APBWRT DAT16 0 0x1028 0x3fff
// DDRC_ADDR_MAP_COL_3_CR
//APBWRT DAT16 0 0x1078 0x3300
// DDRC_ADDR_MAP_ROW_1_CR
    APBWRT DAT16 0 0x102c 0x9999
// DDRC_ADDR_MAP_ROW_2_CR           ---- 0x9ff
    APBWRT DAT16 0 0x1030 0x999
// DDRC_INIT_1_CR
    APBWRT DAT16 0 0x1034 0x1
// DDRC_CKE_RSTN_CYCLES_1_CR
    APBWRT DAT16 0 0x1038 0x4242
// DDRC_CKE_RSTN_CYCLES_2_CR
    APBWRT DAT16 0 0x103c 0x8
// DDRC_INIT_MR_CR                  --- cahnged from 0x520    ---- 0x510
    APBWRT DAT16 0 0x1040 0x520
// DDRC_INIT_EMR_CR                
    APBWRT DAT16 0 0x1044 0x44
// DDRC_INIT_EMR2_CR
    APBWRT DAT16 0 0x1048 0x0
// DDRC_INIT_EMR3_CR
    APBWRT DAT16 0 0x104c 0x0
// DDRC_DRAM_BANK_TIMING_PARAM_CR
    APBWRT DAT16 0 0x1050 0xce0
// DDRC_DRAM_RD_WR_LATENCY_CR
    APBWRT DAT16 0 0x1054 0x86
// DDRC_DRAM_RD_WR_PRE_CR
    APBWRT DAT16 0 0x1058 0x235
// DDRC_DRAM_MR_TIMING_PARAM_CR    
    APBWRT DAT16 0 0x105c 0x64
// DDRC_DRAM_RAS_TIMING_CR
    APBWRT DAT16 0 0x1060 0x10f
// DDRC_DRAM_RD_WR_TRNARND_TIME_CR
    APBWRT DAT16 0 0x1064 0x178
// DDRC_DRAM_T_PD_CR
    APBWRT DAT16 0 0x1068 0x33
// DDRC_DRAM_BANK_ACT_TIMING_CR        --- changed from 0x1937  -- 0x1a47
    APBWRT DAT16 0 0x106c 0x1937
// DDRC_ODT_PARAM_1_CR
    APBWRT DAT16 0 0x1070 0x10
// DDRC_ODT_PARAM_2_CR
    APBWRT DAT16 0 0x1074 0x0
// DDRC_ADDR_MAP_COL_3_CR
    APBWRT DAT16 0 0x1078 0x3300
// DDRC_MODE_REG_RD_WR_CR
    APBWRT DAT16 0 0x107c 0x0
// DDRC_MODE_REG_DATA_CR
    APBWRT DAT16 0 0x1080 0x0
// DDRC_PWR_SAVE_1_CR                   
    APBWRT DAT16 0 0x1084 0x406
// DDRC_PWR_SAVE_2_CR
    APBWRT DAT16 0 0x1088 0x0
// DDRC_ZQ_LONG_TIME_CR
    APBWRT DAT16 0 0x108c 0x200
// DDRC_ZQ_SHORT_TIME_CR
    APBWRT DAT16 0 0x1090 0x40
// DDRC_ZQ_SHORT_INT_REFRESH_MARGIN_1_CR
    APBWRT DAT16 0 0x1094 0x12
// DDRC_ZQ_SHORT_INT_REFRESH_MARGIN_2_CR
    APBWRT DAT16 0 0x1098 0x2
// DDRC_PERF_PARAM_1_CR
    APBWRT DAT16 0 0x109c 0x4083
// DDRC_HPR_QUEUE_PARAM_1_CR
    APBWRT DAT16 0 0x10a0 0x80f8
// DDRC_HPR_QUEUE_PARAM_2_CR
    APBWRT DAT16 0 0x10a4 0x7
// DDRC_LPR_QUEUE_PARAM_1_CR
    APBWRT DAT16 0 0x10a8 0x80f8
// DDRC_LPR_QUEUE_PARAM_2_CR
    APBWRT DAT16 0 0x10ac 0x7
// DDRC_WR_QUEUE_PARAM_CR
    APBWRT DAT16 0 0x10b0 0x200
// DDRC_PERF_PARAM_2_CR
    APBWRT DAT16 0 0x10b4 0x0
// DDRC_PERF_PARAM_3_CR
    APBWRT DAT16 0 0x10b8 0x0
// DDRC_DFI_RDDATA_EN_CR
    APBWRT DAT16 0 0x10bc 0x5
// DDRC_DFI_MIN_CTRLUPD_TIMING_CR
    APBWRT DAT16 0 0x10c0 0x3
// DDRC_DFI_MAX_CTRLUPD_TIMING_CR
    APBWRT DAT16 0 0x10c4 0x40
// DDRC_DFI_WR_LVL_CONTROL_1_CR
    APBWRT DAT16 0 0x10c8 0x0
// DDRC_DFI_WR_LVL_CONTROL_2_CR
    APBWRT DAT16 0 0x10cc 0x0
// DDRC_DFI_RD_LVL_CONTROL_1_CR
    APBWRT DAT16 0 0x10d0 0x0
// DDRC_DFI_RD_LVL_CONTROL_2_CR
    APBWRT DAT16 0 0x10d4 0x0
// DDRC_DFI_CTRLUPD_TIME_INTERVAL_CR
    APBWRT DAT16 0 0x10d8 0x309
// DDRC_AXI_FABRIC_PRI_ID_CR
    APBWRT DAT16 0 0x10e0 0x0
// DDRC_ECC_INT_CLR_REG
    APBWRT DAT16 0 0x1140 0x0
// PHY_DYN_BIST_TEST_CR
    APBWRT DAT16 0 0x1200 0x0
// PHY_DYN_BIST_TEST_ERRCLR_1_CR
    APBWRT DAT16 0 0x1204 0x0
// PHY_DYN_BIST_TEST_ERRCLR_2_CR
    APBWRT DAT16 0 0x1208 0x0
// PHY_DYN_BIST_TEST_ERRCLR_3_CR
    APBWRT DAT16 0 0x120c 0x0
// PHY_BIST_TEST_SHIFT_PATTERN_1_CR
    APBWRT DAT16 0 0x1210 0x0
// PHY_BIST_TEST_SHIFT_PATTERN_2_CR
    APBWRT DAT16 0 0x1214 0x0
// PHY_BIST_TEST_SHIFT_PATTERN_3_CR
    APBWRT DAT16 0 0x1218 0x0
// PHY_LOOPBACK_TEST_CR
    APBWRT DAT16 0 0x121c 0x0
// PHY_BOARD_LOOPBACK_CR
    APBWRT DAT16 0 0x1220 0x0
// PHY_CTRL_SLAVE_RATIO_CR
    APBWRT DAT16 0 0x1224 0x80
// PHY_CTRL_SLAVE_FORCE_CR
    APBWRT DAT16 0 0x1228 0x0
// PHY_CTRL_SLAVE_DELAY_CR
    APBWRT DAT16 0 0x122c 0x0
// PHY_DATA_SLICE_IN_USE_CR
    APBWRT DAT16 0 0x1230 0xf
// PHY_LVL_NUM_OF_DQ0_CR
    APBWRT DAT16 0 0x1234 0x0
// PHY_DQ_OFFSET_1_CR
    APBWRT DAT16 0 0x1238 0x0
// PHY_DQ_OFFSET_2_CR
    APBWRT DAT16 0 0x123c 0x0
// PHY_DQ_OFFSET_3_CR
    APBWRT DAT16 0 0x1240 0x0
// PHY_DIS_CALIB_RST_CR
    APBWRT DAT16 0 0x1244 0x0
// PHY_DLL_LOCK_DIFF_CR
    APBWRT DAT16 0 0x1248 0xb
// PHY_FIFO_WE_IN_DELAY_1_CR
    APBWRT DAT16 0 0x124c 0x0
// PHY_FIFO_WE_IN_DELAY_2_CR
    APBWRT DAT16 0 0x1250 0x0
// PHY_FIFO_WE_IN_DELAY_3_CR
    APBWRT DAT16 0 0x1254 0x0
// PHY_FIFO_WE_IN_FORCE_CR
    APBWRT DAT16 0 0x1258 0x0
// PHY_FIFO_WE_SLAVE_RATIO_1_CR     ---cahnged from 0x80
    APBWRT DAT16 0 0x125c 0x40
// PHY_FIFO_WE_SLAVE_RATIO_2_CR     ---changed from 0x2004
    APBWRT DAT16 0 0x1260 0x0401
// PHY_FIFO_WE_SLAVE_RATIO_3_CR     ---changed from 0x100
    APBWRT DAT16 0 0x1264 0x4010
// PHY_FIFO_WE_SLAVE_RATIO_4_CR     ---changed from 0x8  ---tested
    APBWRT DAT16 0 0x1268 0x0
// PHY_GATELVL_INIT_MODE_CR
    APBWRT DAT16 0 0x126c 0x0
// PHY_GATELVL_INIT_RATIO_1_CR
    APBWRT DAT16 0 0x1270 0x0
// PHY_GATELVL_INIT_RATIO_2_CR
    APBWRT DAT16 0 0x1274 0x0
// PHY_GATELVL_INIT_RATIO_3_CR
    APBWRT DAT16 0 0x1278 0x0
// PHY_GATELVL_INIT_RATIO_4_CR
    APBWRT DAT16 0 0x127c 0x0
// PHY_LOCAL_ODT_CR
    APBWRT DAT16 0 0x1280 0x1
// PHY_INVERT_CLKOUT_CR
    APBWRT DAT16 0 0x1284 0x0
// PHY_RD_DQS_SLAVE_DELAY_1_CR
    APBWRT DAT16 0 0x1288 0x0
// PHY_RD_DQS_SLAVE_DELAY_2_CR
    APBWRT DAT16 0 0x128c 0x0
// PHY_RD_DQS_SLAVE_DELAY_3_CR
    APBWRT DAT16 0 0x1290 0x0
// PHY_RD_DQS_SLAVE_FORCE_CR
    APBWRT DAT16 0 0x1294 0x0
// PHY_RD_DQS_SLAVE_RATIO_1_CR      ---changed from 0x4050
    APBWRT DAT16 0 0x1298 0x0040
// PHY_RD_DQS_SLAVE_RATIO_2_CR      ---changed from 0x501
    APBWRT DAT16 0 0x129c 0x401
// PHY_RD_DQS_SLAVE_RATIO_3_CR      ---changed from 0x5014
    APBWRT DAT16 0 0x12a0 0x4010
// PHY_RD_DQS_SLAVE_RATIO_4_CR
    APBWRT DAT16 0 0x12a4 0x0
// PHY_WR_DQS_SLAVE_DELAY_1_CR      ---changed from 0x0
    APBWRT DAT16 0 0x12a8 0xf00
// PHY_WR_DQS_SLAVE_DELAY_2_CR      ---changed from 0x0
    APBWRT DAT16 0 0x12ac 0x0830
// PHY_WR_DQS_SLAVE_DELAY_3_CR
    APBWRT DAT16 0 0x12b0 0x0
// PHY_WR_DQS_SLAVE_FORCE_CR        ---changed from 0x0
    APBWRT DAT16 0 0x12b4 0xe
// PHY_WR_DQS_SLAVE_RATIO_1_CR
    APBWRT DAT16 0 0x12b8 0x0
// PHY_WR_DQS_SLAVE_RATIO_2_CR
    APBWRT DAT16 0 0x12bc 0x0
// PHY_WR_DQS_SLAVE_RATIO_3_CR
    APBWRT DAT16 0 0x12c0 0x0
// PHY_WR_DQS_SLAVE_RATIO_4_CR
    APBWRT DAT16 0 0x12c4 0x0
// PHY_WR_DATA_SLAVE_DELAY_1_CR
    APBWRT DAT16 0 0x12c8 0x0
// PHY_WR_DATA_SLAVE_DELAY_2_CR
    APBWRT DAT16 0 0x12cc 0x0
// PHY_WR_DATA_SLAVE_DELAY_3_CR
    APBWRT DAT16 0 0x12d0 0x0
// PHY_WR_DATA_SLAVE_FORCE_CR
    APBWRT DAT16 0 0x12d4 0x0
// PHY_WR_DATA_SLAVE_RATIO_1_    ---changed from 0x50
    APBWRT DAT16 0 0x12d8 0x40
// PHY_WR_DATA_SLAVE_RATIO_2_CR     ---changed from 0x501
    APBWRT DAT16 0 0x12dc 0x401
// PHY_WR_DATA_SLAVE_RATIO_3_CR     ---changed from 0x5010
    APBWRT DAT16 0 0x12e0 0x4010
// PHY_WR_DATA_SLAVE_RATIO_4_CR
    APBWRT DAT16 0 0x12e4 0x0
// PHY_WRLVL_INIT_MODE_CR
    APBWRT DAT16 0 0x12e8 0x0
// PHY_WRLVL_INIT_RATIO_1_CR
    APBWRT DAT16 0 0x12ec 0x0
// PHY_WRLVL_INIT_RATIO_2_CR
    APBWRT DAT16 0 0x12f0 0x0
// PHY_WRLVL_INIT_RATIO_3_CR
    APBWRT DAT16 0 0x12f4 0x0
// PHY_WRLVL_INIT_RATIO_4_CR
    APBWRT DAT16 0 0x12f8 0x0
// PHY_WR_RD_RL_CR                  ---changed from 0x43
    APBWRT DAT16 0 0x12fc 0x21
// PHY_RDC_FIFO_RST_ERR_CNT_CLR_CR
    APBWRT DAT16 0 0x1300 0x0
// PHY_RDC_WE_TO_RE_DELAY_CR
    APBWRT DAT16 0 0x1304 0x3
// PHY_USE_FIXED_RE_CR
    APBWRT DAT16 0 0x1308 0x1
// PHY_USE_RANK0_DELAYS_CR
    APBWRT DAT16 0 0x130c 0x1
// PHY_USE_LVL_TRNG_LEVEL_CR
    APBWRT DAT16 0 0x1310 0x0
// PHY_DYN_CONFIG_CR
    APBWRT DAT16 0 0x1314 0x0
// PHY_RD_WR_GATE_LVL_CR
    APBWRT DAT16 0 0x1318 0x0
// PHY_DYN_RESET_CR
    APBWRT DAT16 0 0x131c 0x1
// DDR_FIC_NB_ADDR_CR
    APBWRT DAT16 0 0x1400 0x0
// DDR_FIC_NBRWB_SIZE_CR
    APBWRT DAT16 0 0x1404 0x0
// DDR_FIC_WB_TIMEOUT_CR
    APBWRT DAT16 0 0x1408 0x0
// DDR_FIC_HPD_SW_RW_EN_CR
    APBWRT DAT16 0 0x140c 0x0
// DDR_FIC_HPD_SW_RW_INVAL_CR
    APBWRT DAT16 0 0x1410 0x0
// DDR_FIC_SW_WR_ERCLR_CR
    APBWRT DAT16 0 0x1414 0x0
// DDR_FIC_ERR_INT_ENABLE_CR
    APBWRT DAT16 0 0x1418 0x0
// DDR_FIC_NUM_AHB_MASTERS_CR
    APBWRT DAT16 0 0x141c 0x0
// DDR_FIC_LOCK_TIMEOUTVAL_1_CR
    APBWRT DAT16 0 0x1440 0x0
// DDR_FIC_LOCK_TIMEOUTVAL_2_CR
    APBWRT DAT16 0 0x1444 0x0
// DDR_FIC_LOCK_TIMEOUT_EN_CR
    APBWRT DAT16 0 0x1448 0x0
    
// De-assert Soft Reset (DDRC_DYN_SOFT_RESET=1)
    APBWRT DAT16 0 0x1000 0x1
    
// Wait until controller is ready
$WaitReady
    APBREAD 0 0x10E4
    AND 0x8
    JUMP IF ZERO $WaitReady
    
// Memory Settling time
// Using 200us settling time @ 50MHz
//   - #cycles = 200*1000/20=10000
//   - loop value = #cycles / 6 (2 instructions)
    LOADZ 0x682
$WaitSettling
    DECZ
    JUMP IFNOT ZZERO $WaitSettling
    
// Poll for FPLL Lock
    WAIT UNTIL INPUT0
    
// Assert INIT_DONE
    IOWRT DAT 0x1
    
    HALT
    ";
parameter ACT_CALIBRATIONDATA = 1;
parameter APB_AWIDTH = 14;
parameter APB_DWIDTH = 32;
parameter APB_SDEPTH = 2;
parameter CODEHEXDUMP = "";
parameter CODEHEXDUMP2 = "";
parameter DEBUG = 1;
parameter EN_ACM = 0;
parameter EN_ADD = 0;
parameter EN_ALURAM = 0;
parameter EN_AND = 1;
parameter EN_CALL = 0;
parameter EN_DATAM = 2;
parameter EN_INC = 0;
parameter EN_INDIRECT = 0;
parameter EN_INT = 0;
parameter EN_IOREAD = 0;
parameter EN_IOWRT = 1;
parameter EN_MULT = 0;
parameter EN_OR = 0;
parameter EN_PUSH = 0;
parameter EN_RAM = 0;
parameter EN_SHL = 0;
parameter EN_SHR = 0;
parameter EN_XOR = 0;
parameter FAMILY = 25;
parameter HDL_license = "U";
parameter ICWIDTH = 8;
parameter IFWIDTH = 1;
parameter IIWIDTH = 1;
parameter IMEM_APB_ACCESS = 0;
parameter INITWIDTH = 11;
parameter INSMODE = 0;
parameter IOWIDTH = 1;
parameter ISRADDR = 1;
parameter MAX_NVMDWIDTH = 32;
parameter STWIDTH = 4;
parameter TESTBENCH = "User";
parameter TESTMODE = 0;
parameter UNIQ_STRING = "DDR_EAST_COREABC_0";
parameter UNIQ_STRING_LENGTH = 18;
parameter VERILOGCODE = "";
parameter VERILOGVARS = "";
parameter VHDLCODE = "";
parameter VHDLVARS = "";
parameter ZRWIDTH = 16;
