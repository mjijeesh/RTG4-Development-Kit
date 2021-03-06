//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Jan 05 10:57:10 2017
// Version: v11.7 SP2 11.7.2.2
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// RTG4_CoreRISCV_AXI4_BaseDesign
module RTG4_CoreRISCV_AXI4_BaseDesign(
    // Inputs
    APP_UART_RX,
    DEVRST_N,
    FDDR_DQS_TMATCH_0_IN_0,
    FDDR_DQS_TMATCH_0_IN_1,
    FDDR_DQS_TMATCH_1_IN_0,
    FDDR_DQS_TMATCH_1_IN_1,
    FLASH_SDI,
    GPIO_IN,
    GPIO_IN_0,
    RX,
    SW_DEBUG_MODE,
    TCK,
    TDI,
    TMS,
    TRSTB,
    // Outputs
    APP_UART_TX,
    FDDR_ADDR_0,
    FDDR_ADDR_1,
    FDDR_BA_0,
    FDDR_BA_1,
    FDDR_CAS_N_0,
    FDDR_CAS_N_1,
    FDDR_CKE_0,
    FDDR_CKE_1,
    FDDR_CLK_0,
    FDDR_CLK_1,
    FDDR_CLK_N_0,
    FDDR_CLK_N_1,
    FDDR_CS_N_0,
    FDDR_CS_N_1,
    FDDR_DQS_TMATCH_0_OUT_0,
    FDDR_DQS_TMATCH_0_OUT_1,
    FDDR_DQS_TMATCH_1_OUT_0,
    FDDR_DQS_TMATCH_1_OUT_1,
    FDDR_ODT_0,
    FDDR_ODT_1,
    FDDR_RAS_N_0,
    FDDR_RAS_N_1,
    FDDR_RESET_N_0,
    FDDR_RESET_N_1,
    FDDR_WE_N_0,
    FDDR_WE_N_1,
    FLASH_SCK,
    FLASH_SDO,
    FLASH_SS,
    GPIO_OUT,
    GPIO_OUT_0,
    TDO,
    TX,
    // Inouts
    FDDR_DM_RDQS_0,
    FDDR_DM_RDQS_1,
    FDDR_DQS_0,
    FDDR_DQS_1,
    FDDR_DQS_N_0,
    FDDR_DQS_N_1,
    FDDR_DQ_0,
    FDDR_DQ_1
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         APP_UART_RX;
input         DEVRST_N;
input         FDDR_DQS_TMATCH_0_IN_0;
input         FDDR_DQS_TMATCH_0_IN_1;
input         FDDR_DQS_TMATCH_1_IN_0;
input         FDDR_DQS_TMATCH_1_IN_1;
input         FLASH_SDI;
input  [7:0]  GPIO_IN;
input  [7:0]  GPIO_IN_0;
input         RX;
input         SW_DEBUG_MODE;
input         TCK;
input         TDI;
input         TMS;
input         TRSTB;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        APP_UART_TX;
output [15:0] FDDR_ADDR_0;
output [15:0] FDDR_ADDR_1;
output [2:0]  FDDR_BA_0;
output [2:0]  FDDR_BA_1;
output        FDDR_CAS_N_0;
output        FDDR_CAS_N_1;
output        FDDR_CKE_0;
output        FDDR_CKE_1;
output        FDDR_CLK_0;
output        FDDR_CLK_1;
output        FDDR_CLK_N_0;
output        FDDR_CLK_N_1;
output        FDDR_CS_N_0;
output        FDDR_CS_N_1;
output        FDDR_DQS_TMATCH_0_OUT_0;
output        FDDR_DQS_TMATCH_0_OUT_1;
output        FDDR_DQS_TMATCH_1_OUT_0;
output        FDDR_DQS_TMATCH_1_OUT_1;
output        FDDR_ODT_0;
output        FDDR_ODT_1;
output        FDDR_RAS_N_0;
output        FDDR_RAS_N_1;
output        FDDR_RESET_N_0;
output        FDDR_RESET_N_1;
output        FDDR_WE_N_0;
output        FDDR_WE_N_1;
output        FLASH_SCK;
output        FLASH_SDO;
output        FLASH_SS;
output [7:0]  GPIO_OUT;
output [7:0]  GPIO_OUT_0;
output        TDO;
output        TX;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [3:0]  FDDR_DM_RDQS_0;
inout  [3:0]  FDDR_DM_RDQS_1;
inout  [3:0]  FDDR_DQS_0;
inout  [3:0]  FDDR_DQS_1;
inout  [3:0]  FDDR_DQS_N_0;
inout  [3:0]  FDDR_DQS_N_1;
inout  [31:0] FDDR_DQ_0;
inout  [31:0] FDDR_DQ_1;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] AHBLITE_GLUE_LOGIC_0_slave_HADDR;
wire   [2:0]  AHBLITE_GLUE_LOGIC_0_slave_HBURST;
wire          AHBLITE_GLUE_LOGIC_0_slave_HLOCK;
wire   [3:0]  AHBLITE_GLUE_LOGIC_0_slave_HPROT;
wire   [31:0] AHBLITE_GLUE_LOGIC_0_slave_HRDATA;
wire          AHBLITE_GLUE_LOGIC_0_slave_HREADY;
wire   [1:0]  AHBLITE_GLUE_LOGIC_0_slave_HRESP;
wire   [2:0]  AHBLITE_GLUE_LOGIC_0_slave_HSIZE;
wire   [1:0]  AHBLITE_GLUE_LOGIC_0_slave_HTRANS;
wire   [31:0] AHBLITE_GLUE_LOGIC_0_slave_HWDATA;
wire          AHBLITE_GLUE_LOGIC_0_slave_HWRITE;
wire          AND2_0_Y_1;
wire          APP_UART_RX;
wire          APP_UART_TX_net_0;
wire          APPLICATIONRISCV_TDO;
wire   [31:0] AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARADDR;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARBURST;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARPROT;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARREADY;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARSIZE;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARVALID;
wire   [31:0] AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWADDR;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWBURST;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWPROT;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWREADY;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWSIZE;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWVALID;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BREADY;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BRESP;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BVALID;
wire   [63:0] AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RDATA;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RLAST;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RREADY;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RRESP;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RVALID;
wire   [63:0] AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WDATA;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WLAST;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WREADY;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WSTRB;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WVALID;
wire   [31:0] AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARADDR;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARBURST;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARPROT;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARREADY;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARSIZE;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARVALID;
wire   [31:0] AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWADDR;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWBURST;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWPROT;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWREADY;
wire   [2:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWSIZE;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWVALID;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_BID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_BREADY;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_BRESP;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_BVALID;
wire   [63:0] AXI_GLUE_LOGIC_0_UNCORE_MMIO_RDATA;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_RID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_RLAST;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_RREADY;
wire   [1:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_RRESP;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_RVALID;
wire   [63:0] AXI_GLUE_LOGIC_0_UNCORE_MMIO_WDATA;
wire   [4:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_WID;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_WLAST;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_WREADY;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_WSTRB;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_WUSER;
wire          AXI_GLUE_LOGIC_0_UNCORE_MMIO_WVALID;
wire   [31:0] AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARADDR;
wire   [1:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARBURST;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARPROT;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARREADY;
wire   [2:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARSIZE;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARUSER;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARVALID;
wire   [31:0] AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWADDR;
wire   [1:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWBURST;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWPROT;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWREADY;
wire   [2:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWSIZE;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWUSER;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWVALID;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BREADY;
wire   [1:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BRESP;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BVALID;
wire   [63:0] AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RDATA;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RLAST;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RREADY;
wire   [1:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RRESP;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RVALID;
wire   [63:0] AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WDATA;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WLAST;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WREADY;
wire   [7:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WSTRB;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WUSER;
wire          AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WVALID;
wire   [31:0] AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARADDR;
wire   [1:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARBURST;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARPROT;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARREADY;
wire   [2:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARSIZE;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARUSER;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARVALID;
wire   [31:0] AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWADDR;
wire   [1:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWBURST;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWCACHE;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLOCK;
wire   [2:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWPROT;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWREADY;
wire   [2:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWSIZE;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWUSER;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWVALID;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_BID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_BREADY;
wire   [1:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_BRESP;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_BVALID;
wire   [63:0] AXI_GLUE_LOGIC_1_UNCORE_MMIO_RDATA;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_RID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_RLAST;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_RREADY;
wire   [1:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_RRESP;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_RVALID;
wire   [63:0] AXI_GLUE_LOGIC_1_UNCORE_MMIO_WDATA;
wire   [4:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_WID;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_WLAST;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_WREADY;
wire   [7:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_WSTRB;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_WUSER;
wire          AXI_GLUE_LOGIC_1_UNCORE_MMIO_WVALID;
wire   [31:0] CoreAHBLite_0_AHBmslave8_HADDR;
wire   [2:0]  CoreAHBLite_0_AHBmslave8_HBURST;
wire          CoreAHBLite_0_AHBmslave8_HMASTLOCK;
wire   [3:0]  CoreAHBLite_0_AHBmslave8_HPROT;
wire   [31:0] CoreAHBLite_0_AHBmslave8_HRDATA;
wire          CoreAHBLite_0_AHBmslave8_HREADY;
wire          CoreAHBLite_0_AHBmslave8_HREADYOUT;
wire          CoreAHBLite_0_AHBmslave8_HSELx;
wire   [1:0]  CoreAHBLite_0_AHBmslave8_HTRANS;
wire   [31:0] CoreAHBLite_0_AHBmslave8_HWDATA;
wire          CoreAHBLite_0_AHBmslave8_HWRITE;
wire   [31:0] CoreAHBLite_0_AHBmslave10_HADDR;
wire   [2:0]  CoreAHBLite_0_AHBmslave10_HBURST;
wire          CoreAHBLite_0_AHBmslave10_HMASTLOCK;
wire   [3:0]  CoreAHBLite_0_AHBmslave10_HPROT;
wire   [31:0] CoreAHBLite_0_AHBmslave10_HRDATA;
wire          CoreAHBLite_0_AHBmslave10_HREADY;
wire          CoreAHBLite_0_AHBmslave10_HREADYOUT;
wire   [1:0]  CoreAHBLite_0_AHBmslave10_HRESP;
wire          CoreAHBLite_0_AHBmslave10_HSELx;
wire   [2:0]  CoreAHBLite_0_AHBmslave10_HSIZE;
wire   [1:0]  CoreAHBLite_0_AHBmslave10_HTRANS;
wire   [31:0] CoreAHBLite_0_AHBmslave10_HWDATA;
wire          CoreAHBLite_0_AHBmslave10_HWRITE;
wire   [31:0] CoreAHBLite_1_AHBmslave7_HADDR;
wire   [2:0]  CoreAHBLite_1_AHBmslave7_HBURST;
wire          CoreAHBLite_1_AHBmslave7_HMASTLOCK;
wire   [3:0]  CoreAHBLite_1_AHBmslave7_HPROT;
wire   [31:0] CoreAHBLite_1_AHBmslave7_HRDATA;
wire          CoreAHBLite_1_AHBmslave7_HREADY;
wire          CoreAHBLite_1_AHBmslave7_HREADYOUT;
wire   [1:0]  CoreAHBLite_1_AHBmslave7_HRESP;
wire          CoreAHBLite_1_AHBmslave7_HSELx;
wire   [2:0]  CoreAHBLite_1_AHBmslave7_HSIZE;
wire   [1:0]  CoreAHBLite_1_AHBmslave7_HTRANS;
wire   [31:0] CoreAHBLite_1_AHBmslave7_HWDATA;
wire          CoreAHBLite_1_AHBmslave7_HWRITE;
wire   [31:0] CoreAHBLite_2_AHBmslave0_HADDR;
wire   [2:0]  CoreAHBLite_2_AHBmslave0_HBURST;
wire          CoreAHBLite_2_AHBmslave0_HMASTLOCK;
wire   [3:0]  CoreAHBLite_2_AHBmslave0_HPROT;
wire   [31:0] CoreAHBLite_2_AHBmslave0_HRDATA;
wire          CoreAHBLite_2_AHBmslave0_HREADY;
wire          CoreAHBLite_2_AHBmslave0_HREADYOUT;
wire   [1:0]  CoreAHBLite_2_AHBmslave0_HRESP;
wire          CoreAHBLite_2_AHBmslave0_HSELx;
wire   [2:0]  CoreAHBLite_2_AHBmslave0_HSIZE;
wire   [1:0]  CoreAHBLite_2_AHBmslave0_HTRANS;
wire   [31:0] CoreAHBLite_2_AHBmslave0_HWDATA;
wire          CoreAHBLite_2_AHBmslave0_HWRITE;
wire   [31:0] CoreAHBLite_3_AHBmslave16_HADDR;
wire   [2:0]  CoreAHBLite_3_AHBmslave16_HBURST;
wire          CoreAHBLite_3_AHBmslave16_HMASTLOCK;
wire   [3:0]  CoreAHBLite_3_AHBmslave16_HPROT;
wire   [31:0] CoreAHBLite_3_AHBmslave16_HRDATA;
wire          CoreAHBLite_3_AHBmslave16_HREADY;
wire          CoreAHBLite_3_AHBmslave16_HREADYOUT;
wire          CoreAHBLite_3_AHBmslave16_HSELx;
wire   [1:0]  CoreAHBLite_3_AHBmslave16_HTRANS;
wire   [31:0] CoreAHBLite_3_AHBmslave16_HWDATA;
wire          CoreAHBLite_3_AHBmslave16_HWRITE;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PADDR;
wire          COREAHBTOAPB3_0_APBmaster_PENABLE;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PRDATA;
wire          COREAHBTOAPB3_0_APBmaster_PREADY;
wire          COREAHBTOAPB3_0_APBmaster_PSELx;
wire          COREAHBTOAPB3_0_APBmaster_PSLVERR;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PWDATA;
wire          COREAHBTOAPB3_0_APBmaster_PWRITE;
wire   [31:0] COREAHBTOAPB3_1_APBmaster_PADDR;
wire          COREAHBTOAPB3_1_APBmaster_PENABLE;
wire   [31:0] COREAHBTOAPB3_1_APBmaster_PRDATA;
wire          COREAHBTOAPB3_1_APBmaster_PREADY;
wire          COREAHBTOAPB3_1_APBmaster_PSELx;
wire          COREAHBTOAPB3_1_APBmaster_PSLVERR;
wire   [31:0] COREAHBTOAPB3_1_APBmaster_PWDATA;
wire          COREAHBTOAPB3_1_APBmaster_PWRITE;
wire          CoreAPB3_0_APBmslave1_PENABLE;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire          CoreAPB3_0_APBmslave1_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave3_PRDATA;
wire          CoreAPB3_0_APBmslave3_PSELx;
wire   [31:0] CoreAPB3_0_APBmslave4_0_PRDATA;
wire          CoreAPB3_0_APBmslave4_0_PSELx;
wire   [31:0] CoreAPB3_0_APBmslave5_PRDATA;
wire          CoreAPB3_0_APBmslave5_PREADY;
wire          CoreAPB3_0_APBmslave5_PSELx;
wire          CoreAPB3_0_APBmslave5_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave6_0_PRDATA;
wire          CoreAPB3_0_APBmslave6_0_PREADY;
wire          CoreAPB3_0_APBmslave6_0_PSELx;
wire          CoreAPB3_0_APBmslave6_0_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave7_PRDATA;
wire          CoreAPB3_0_APBmslave7_PREADY;
wire          CoreAPB3_0_APBmslave7_PSELx;
wire          CoreAPB3_0_APBmslave7_PSLVERR;
wire          CoreAPB3_1_APBmslave1_PENABLE;
wire          CoreAPB3_1_APBmslave1_PREADY;
wire          CoreAPB3_1_APBmslave1_PSELx;
wire          CoreAPB3_1_APBmslave1_PSLVERR;
wire          CoreAPB3_1_APBmslave1_PWRITE;
wire   [31:0] CoreAPB3_1_APBmslave2_PRDATA;
wire          CoreAPB3_1_APBmslave2_PREADY;
wire          CoreAPB3_1_APBmslave2_PSELx;
wire          CoreAPB3_1_APBmslave2_PSLVERR;
wire   [31:0] CoreAPB3_1_APBmslave3_PRDATA;
wire          CoreAPB3_1_APBmslave3_PSELx;
wire   [31:0] CoreAPB3_1_APBmslave4_PRDATA;
wire          CoreAPB3_1_APBmslave4_PSELx;
wire   [31:0] CoreAPB3_1_APBmslave5_PRDATA;
wire          CoreAPB3_1_APBmslave5_PREADY;
wire          CoreAPB3_1_APBmslave5_PSELx;
wire          CoreAPB3_1_APBmslave5_PSLVERR;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HADDR;
wire   [2:0]  COREAXITOAHBL_0_AHBMasterIF_HBURST;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HRDATA;
wire          COREAXITOAHBL_0_AHBMasterIF_HREADY;
wire   [2:0]  COREAXITOAHBL_0_AHBMasterIF_HSIZE;
wire   [1:0]  COREAXITOAHBL_0_AHBMasterIF_HTRANS;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HWDATA;
wire          COREAXITOAHBL_0_AHBMasterIF_HWRITE;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HADDR;
wire   [2:0]  COREAXITOAHBL_1_AHBMasterIF_HBURST;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HRDATA;
wire          COREAXITOAHBL_1_AHBMasterIF_HREADY;
wire   [2:0]  COREAXITOAHBL_1_AHBMasterIF_HSIZE;
wire   [1:0]  COREAXITOAHBL_1_AHBMasterIF_HTRANS;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HWDATA;
wire          COREAXITOAHBL_1_AHBMasterIF_HWRITE;
wire   [31:0] COREAXITOAHBL_2_AHBMasterIF_HADDR;
wire   [2:0]  COREAXITOAHBL_2_AHBMasterIF_HBURST;
wire   [31:0] COREAXITOAHBL_2_AHBMasterIF_HRDATA;
wire          COREAXITOAHBL_2_AHBMasterIF_HREADY;
wire   [2:0]  COREAXITOAHBL_2_AHBMasterIF_HSIZE;
wire   [1:0]  COREAXITOAHBL_2_AHBMasterIF_HTRANS;
wire   [31:0] COREAXITOAHBL_2_AHBMasterIF_HWDATA;
wire          COREAXITOAHBL_2_AHBMasterIF_HWRITE;
wire   [31:0] COREAXITOAHBL_3_AHBMasterIF_HADDR;
wire   [2:0]  COREAXITOAHBL_3_AHBMasterIF_HBURST;
wire   [31:0] COREAXITOAHBL_3_AHBMasterIF_HRDATA;
wire          COREAXITOAHBL_3_AHBMasterIF_HREADY;
wire   [2:0]  COREAXITOAHBL_3_AHBMasterIF_HSIZE;
wire   [1:0]  COREAXITOAHBL_3_AHBMasterIF_HTRANS;
wire   [31:0] COREAXITOAHBL_3_AHBMasterIF_HWDATA;
wire          COREAXITOAHBL_3_AHBMasterIF_HWRITE;
wire   [31:0] COREBOOTSTRAP_0_AHB_MASTER_HADDR;
wire   [2:0]  COREBOOTSTRAP_0_AHB_MASTER_HBURST;
wire   [31:0] COREBOOTSTRAP_0_AHB_MASTER_HRDATA;
wire          COREBOOTSTRAP_0_AHB_MASTER_HREADY;
wire   [2:0]  COREBOOTSTRAP_0_AHB_MASTER_HSIZE;
wire   [1:0]  COREBOOTSTRAP_0_AHB_MASTER_HTRANS;
wire   [31:0] COREBOOTSTRAP_0_AHB_MASTER_HWDATA;
wire          COREBOOTSTRAP_0_AHB_MASTER_HWRITE;
wire          COREBOOTSTRAP_0_HOST_SDI;
wire          COREBOOTSTRAP_0_PROC_SYS_RESETN;
wire   [0:0]  CoreGPIO_App_RST_GPIO_OUT;
wire          COREJTAGDEBUG_0_TGT_TCK;
wire          COREJTAGDEBUG_0_TGT_TDI;
wire          COREJTAGDEBUG_0_TGT_TMS;
wire          COREJTAGDEBUG_0_TGT_TRST;
wire          COREJTAGDEBUG_1_TGT_TCK;
wire          COREJTAGDEBUG_1_TGT_TDI;
wire          COREJTAGDEBUG_1_TGT_TMS;
wire          COREJTAGDEBUG_1_TGT_TRST;
wire   [31:0] CORERISCV_AXI4_0_AXI_MST_MEM_ARADDR;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARBURST;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARCACHE;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARID;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARLEN;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_ARLOCK;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARPROT;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARQOS;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_ARREADY;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARREGION;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MEM_ARSIZE;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_ARUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_ARVALID;
wire   [31:0] CORERISCV_AXI4_0_AXI_MST_MEM_AWADDR;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWBURST;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWCACHE;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWID;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWLEN;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_AWLOCK;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWPROT;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWQOS;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_AWREADY;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWREGION;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MEM_AWSIZE;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_AWUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_AWVALID;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_BID;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_BREADY;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MEM_BRESP;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_BUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_BVALID;
wire   [63:0] CORERISCV_AXI4_0_AXI_MST_MEM_RDATA;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_RID;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_RLAST;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_RREADY;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MEM_RRESP;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_RUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_RVALID;
wire   [63:0] CORERISCV_AXI4_0_AXI_MST_MEM_WDATA;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_WLAST;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_WREADY;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MEM_WSTRB;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_WUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MEM_WVALID;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MEM_WID;
wire   [31:0] CORERISCV_AXI4_0_AXI_MST_MMIO_ARADDR;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARBURST;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARCACHE;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARID;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARLEN;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_ARLOCK;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARPROT;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARQOS;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_ARREADY;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARREGION;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_ARSIZE;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_ARUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_ARVALID;
wire   [31:0] CORERISCV_AXI4_0_AXI_MST_MMIO_AWADDR;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWBURST;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWCACHE;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWID;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWLEN;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_AWLOCK;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWPROT;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWQOS;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_AWREADY;
wire   [3:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWREGION;
wire   [2:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_AWSIZE;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_AWUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_AWVALID;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_BID;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_BREADY;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_BRESP;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_BUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_BVALID;
wire   [63:0] CORERISCV_AXI4_0_AXI_MST_MMIO_RDATA;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_RID;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_RLAST;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_RREADY;
wire   [1:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_RRESP;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_RUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_RVALID;
wire   [63:0] CORERISCV_AXI4_0_AXI_MST_MMIO_WDATA;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_WLAST;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_WREADY;
wire   [7:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_WSTRB;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_WUSER;
wire          CORERISCV_AXI4_0_AXI_MST_MMIO_WVALID;
wire   [4:0]  CORERISCV_AXI4_0_AXI_MST_MMIO_WID;
wire          CORERISCV_AXI4_0_TDO;
wire   [31:0] CORERISCV_AXI4_1_AXI_MST_MEM_ARADDR;
wire   [1:0]  CORERISCV_AXI4_1_AXI_MST_MEM_ARBURST;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MEM_ARCACHE;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MEM_ARID;
wire   [7:0]  CORERISCV_AXI4_1_AXI_MST_MEM_ARLEN;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_ARLOCK;
wire   [2:0]  CORERISCV_AXI4_1_AXI_MST_MEM_ARPROT;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MEM_ARQOS;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_ARREADY;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MEM_ARREGION;
wire   [2:0]  CORERISCV_AXI4_1_AXI_MST_MEM_ARSIZE;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_ARUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_ARVALID;
wire   [31:0] CORERISCV_AXI4_1_AXI_MST_MEM_AWADDR;
wire   [1:0]  CORERISCV_AXI4_1_AXI_MST_MEM_AWBURST;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MEM_AWCACHE;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MEM_AWID;
wire   [7:0]  CORERISCV_AXI4_1_AXI_MST_MEM_AWLEN;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_AWLOCK;
wire   [2:0]  CORERISCV_AXI4_1_AXI_MST_MEM_AWPROT;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MEM_AWQOS;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_AWREADY;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MEM_AWREGION;
wire   [2:0]  CORERISCV_AXI4_1_AXI_MST_MEM_AWSIZE;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_AWUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_AWVALID;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MEM_BID;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_BREADY;
wire   [1:0]  CORERISCV_AXI4_1_AXI_MST_MEM_BRESP;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_BUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_BVALID;
wire   [63:0] CORERISCV_AXI4_1_AXI_MST_MEM_RDATA;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MEM_RID;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_RLAST;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_RREADY;
wire   [1:0]  CORERISCV_AXI4_1_AXI_MST_MEM_RRESP;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_RUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_RVALID;
wire   [63:0] CORERISCV_AXI4_1_AXI_MST_MEM_WDATA;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_WLAST;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_WREADY;
wire   [7:0]  CORERISCV_AXI4_1_AXI_MST_MEM_WSTRB;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_WUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MEM_WVALID;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MEM_WID;
wire   [31:0] CORERISCV_AXI4_1_AXI_MST_MMIO_ARADDR;
wire   [1:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_ARBURST;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_ARCACHE;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_ARID;
wire   [7:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_ARLEN;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_ARLOCK;
wire   [2:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_ARPROT;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_ARQOS;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_ARREADY;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_ARREGION;
wire   [2:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_ARSIZE;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_ARUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_ARVALID;
wire   [31:0] CORERISCV_AXI4_1_AXI_MST_MMIO_AWADDR;
wire   [1:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_AWBURST;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_AWCACHE;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_AWID;
wire   [7:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_AWLEN;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_AWLOCK;
wire   [2:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_AWPROT;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_AWQOS;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_AWREADY;
wire   [3:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_AWREGION;
wire   [2:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_AWSIZE;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_AWUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_AWVALID;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_BID;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_BREADY;
wire   [1:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_BRESP;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_BUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_BVALID;
wire   [63:0] CORERISCV_AXI4_1_AXI_MST_MMIO_RDATA;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_RID;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_RLAST;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_RREADY;
wire   [1:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_RRESP;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_RUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_RVALID;
wire   [63:0] CORERISCV_AXI4_1_AXI_MST_MMIO_WDATA;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_WLAST;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_WREADY;
wire   [7:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_WSTRB;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_WUSER;
wire          CORERISCV_AXI4_1_AXI_MST_MMIO_WVALID;
wire   [4:0]  CORERISCV_AXI4_1_AXI_MST_MMIO_WID;
wire          CORESPI_0_SPISCLKO;
wire          CORESPI_0_SPISDO;
wire   [0:0]  CORESPI_0_SPISS0to0;
wire          CoreTimer_0_TIMINT;
wire          CoreTimer_1_TIMINT;
wire          CoreTimer_2_TIMINT;
wire          CoreTimer_3_TIMINT;
wire          DDR_EAST_0_INIT_DONE;
wire          DEVRST_N;
wire   [15:0] FDDR_ADDR_0_net_0;
wire   [15:0] FDDR_ADDR_1_net_0;
wire   [2:0]  FDDR_BA_0_net_0;
wire   [2:0]  FDDR_BA_1_net_0;
wire          FDDR_CAS_N_0_net_0;
wire          FDDR_CAS_N_1_net_0;
wire          FDDR_CKE_0_net_0;
wire          FDDR_CKE_1_net_0;
wire          FDDR_CLK_0_net_0;
wire          FDDR_CLK_1_net_0;
wire          FDDR_CLK_N_0_net_0;
wire          FDDR_CLK_N_1_net_0;
wire          FDDR_CS_N_0_net_0;
wire          FDDR_CS_N_1_net_0;
wire   [3:0]  FDDR_DM_RDQS_0;
wire   [3:0]  FDDR_DM_RDQS_1;
wire   [31:0] FDDR_DQ_0;
wire   [31:0] FDDR_DQ_1;
wire   [3:0]  FDDR_DQS_0;
wire   [3:0]  FDDR_DQS_1;
wire   [3:0]  FDDR_DQS_N_0;
wire   [3:0]  FDDR_DQS_N_1;
wire          FDDR_DQS_TMATCH_0_IN_0;
wire          FDDR_DQS_TMATCH_0_IN_1;
wire          FDDR_DQS_TMATCH_0_OUT_0_net_0;
wire          FDDR_DQS_TMATCH_0_OUT_1_net_0;
wire          FDDR_DQS_TMATCH_1_IN_0;
wire          FDDR_DQS_TMATCH_1_IN_1;
wire          FDDR_DQS_TMATCH_1_OUT_0_net_0;
wire          FDDR_DQS_TMATCH_1_OUT_1_net_0;
wire          FDDR_ODT_0_net_0;
wire          FDDR_ODT_1_net_0;
wire          FDDR_RAS_N_0_net_0;
wire          FDDR_RAS_N_1_net_0;
wire          FDDR_RESET_N_0_net_0;
wire          FDDR_RESET_N_1_net_0;
wire          FDDR_WE_N_0_net_0;
wire          FDDR_WE_N_1_net_0;
wire          FLASH_SCK_net_0;
wire          FLASH_SDI;
wire          FLASH_SDO_net_0;
wire          FLASH_SS_net_0;
wire   [7:0]  GPIO_IN;
wire   [7:0]  GPIO_IN_0;
wire   [7:0]  GPIO_OUT_0_net_0;
wire   [7:0]  GPIO_OUT_0_0;
wire          net_8;
wire          net_10;
wire          net_11;
wire          net_12;
wire   [7:0]  net_13;
wire          net_14;
wire          net_15;
wire          net_16;
wire          RCOSC_50MHZ_0_CLKOUT;
wire          RTG4FCCC_0_GL0_3;
wire          RTG4FCCC_0_GL1;
wire          RTG4FCCC_0_LOCK;
wire          RX;
wire          SW_DEBUG_MODE;
wire          SYSRESET_0_POWER_ON_RESET_N;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TX_net_0;
wire          TDO_net_1;
wire          TX_net_1;
wire          FLASH_SCK_net_1;
wire          FLASH_SDO_net_1;
wire          FLASH_SS_net_1;
wire          FDDR_CAS_N_0_net_1;
wire          FDDR_CKE_0_net_1;
wire          FDDR_CLK_0_net_1;
wire          FDDR_CLK_N_0_net_1;
wire          FDDR_CS_N_0_net_1;
wire          FDDR_ODT_0_net_1;
wire          FDDR_RAS_N_0_net_1;
wire          FDDR_RESET_N_0_net_1;
wire          FDDR_WE_N_0_net_1;
wire          FDDR_DQS_TMATCH_0_OUT_0_net_1;
wire          FDDR_DQS_TMATCH_1_OUT_0_net_1;
wire          FDDR_CAS_N_1_net_1;
wire          FDDR_CKE_1_net_1;
wire          FDDR_CLK_1_net_1;
wire          FDDR_CLK_N_1_net_1;
wire          FDDR_CS_N_1_net_1;
wire          FDDR_ODT_1_net_1;
wire          FDDR_RAS_N_1_net_1;
wire          FDDR_RESET_N_1_net_1;
wire          FDDR_WE_N_1_net_1;
wire          FDDR_DQS_TMATCH_0_OUT_1_net_1;
wire          FDDR_DQS_TMATCH_1_OUT_1_net_1;
wire   [15:0] FDDR_ADDR_0_net_1;
wire   [2:0]  FDDR_BA_0_net_1;
wire   [15:0] FDDR_ADDR_1_net_1;
wire   [2:0]  FDDR_BA_1_net_1;
wire   [7:0]  GPIO_OUT_0_net_1;
wire   [7:0]  GPIO_OUT_0_0_net_0;
wire          APP_UART_TX_net_1;
wire   [7:1]  SPISS_slice_0;
wire   [30:0] IRQ_net_0;
wire   [30:0] IRQ_net_1;
wire   [7:0]  SPISS_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [7:0]  GPIO_IN_const_net_0;
wire   [7:0]  GPIO_IN_const_net_1;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] IADDR_const_net_1;
wire   [7:0]  APB_S_PWDATA_const_net_0;
wire   [7:2]  APB_S_PADDR_const_net_0;
wire   [7:0]  CCC_APB_S_PWDATA_const_net_0;
wire   [7:2]  CCC_APB_S_PADDR_const_net_0;
wire   [3:0]  HPROT_M0_const_net_0;
wire   [3:0]  HPROT_M1_const_net_0;
wire   [31:0] HADDR_M2_const_net_0;
wire   [1:0]  HTRANS_M2_const_net_0;
wire   [2:0]  HSIZE_M2_const_net_0;
wire   [2:0]  HBURST_M2_const_net_0;
wire   [3:0]  HPROT_M2_const_net_0;
wire   [31:0] HWDATA_M2_const_net_0;
wire   [31:0] HADDR_M3_const_net_0;
wire   [1:0]  HTRANS_M3_const_net_0;
wire   [2:0]  HSIZE_M3_const_net_0;
wire   [2:0]  HBURST_M3_const_net_0;
wire   [3:0]  HPROT_M3_const_net_0;
wire   [31:0] HWDATA_M3_const_net_0;
wire   [31:0] HRDATA_S0_const_net_0;
wire   [1:0]  HRESP_S0_const_net_0;
wire   [31:0] HRDATA_S1_const_net_0;
wire   [1:0]  HRESP_S1_const_net_0;
wire   [31:0] HRDATA_S2_const_net_0;
wire   [1:0]  HRESP_S2_const_net_0;
wire   [31:0] HRDATA_S3_const_net_0;
wire   [1:0]  HRESP_S3_const_net_0;
wire   [31:0] HRDATA_S4_const_net_0;
wire   [1:0]  HRESP_S4_const_net_0;
wire   [31:0] HRDATA_S5_const_net_0;
wire   [1:0]  HRESP_S5_const_net_0;
wire   [31:0] HRDATA_S6_const_net_0;
wire   [1:0]  HRESP_S6_const_net_0;
wire   [31:0] HRDATA_S7_const_net_0;
wire   [1:0]  HRESP_S7_const_net_0;
wire   [31:0] HRDATA_S9_const_net_0;
wire   [1:0]  HRESP_S9_const_net_0;
wire   [31:0] HRDATA_S11_const_net_0;
wire   [1:0]  HRESP_S11_const_net_0;
wire   [31:0] HRDATA_S12_const_net_0;
wire   [1:0]  HRESP_S12_const_net_0;
wire   [31:0] HRDATA_S13_const_net_0;
wire   [1:0]  HRESP_S13_const_net_0;
wire   [31:0] HRDATA_S14_const_net_0;
wire   [1:0]  HRESP_S14_const_net_0;
wire   [31:0] HRDATA_S15_const_net_0;
wire   [1:0]  HRESP_S15_const_net_0;
wire   [31:0] HRDATA_S16_const_net_0;
wire   [1:0]  HRESP_S16_const_net_0;
wire   [3:0]  HPROT_M0_const_net_1;
wire   [31:0] HADDR_M1_const_net_0;
wire   [1:0]  HTRANS_M1_const_net_0;
wire   [2:0]  HSIZE_M1_const_net_0;
wire   [2:0]  HBURST_M1_const_net_0;
wire   [3:0]  HPROT_M1_const_net_1;
wire   [31:0] HWDATA_M1_const_net_0;
wire   [31:0] HADDR_M2_const_net_1;
wire   [1:0]  HTRANS_M2_const_net_1;
wire   [2:0]  HSIZE_M2_const_net_1;
wire   [2:0]  HBURST_M2_const_net_1;
wire   [3:0]  HPROT_M2_const_net_1;
wire   [31:0] HWDATA_M2_const_net_1;
wire   [31:0] HADDR_M3_const_net_1;
wire   [1:0]  HTRANS_M3_const_net_1;
wire   [2:0]  HSIZE_M3_const_net_1;
wire   [2:0]  HBURST_M3_const_net_1;
wire   [3:0]  HPROT_M3_const_net_1;
wire   [31:0] HWDATA_M3_const_net_1;
wire   [31:0] HRDATA_S0_const_net_1;
wire   [1:0]  HRESP_S0_const_net_1;
wire   [31:0] HRDATA_S1_const_net_1;
wire   [1:0]  HRESP_S1_const_net_1;
wire   [31:0] HRDATA_S2_const_net_1;
wire   [1:0]  HRESP_S2_const_net_1;
wire   [31:0] HRDATA_S3_const_net_1;
wire   [1:0]  HRESP_S3_const_net_1;
wire   [31:0] HRDATA_S4_const_net_1;
wire   [1:0]  HRESP_S4_const_net_1;
wire   [31:0] HRDATA_S5_const_net_1;
wire   [1:0]  HRESP_S5_const_net_1;
wire   [31:0] HRDATA_S6_const_net_1;
wire   [1:0]  HRESP_S6_const_net_1;
wire   [31:0] HRDATA_S8_const_net_0;
wire   [1:0]  HRESP_S8_const_net_0;
wire   [31:0] HRDATA_S9_const_net_1;
wire   [1:0]  HRESP_S9_const_net_1;
wire   [31:0] HRDATA_S10_const_net_0;
wire   [1:0]  HRESP_S10_const_net_0;
wire   [31:0] HRDATA_S11_const_net_1;
wire   [1:0]  HRESP_S11_const_net_1;
wire   [31:0] HRDATA_S12_const_net_1;
wire   [1:0]  HRESP_S12_const_net_1;
wire   [31:0] HRDATA_S13_const_net_1;
wire   [1:0]  HRESP_S13_const_net_1;
wire   [31:0] HRDATA_S14_const_net_1;
wire   [1:0]  HRESP_S14_const_net_1;
wire   [31:0] HRDATA_S15_const_net_1;
wire   [1:0]  HRESP_S15_const_net_1;
wire   [31:0] HRDATA_S16_const_net_1;
wire   [1:0]  HRESP_S16_const_net_1;
wire   [31:0] HADDR_M0_const_net_0;
wire   [1:0]  HTRANS_M0_const_net_0;
wire   [2:0]  HSIZE_M0_const_net_0;
wire   [2:0]  HBURST_M0_const_net_0;
wire   [3:0]  HPROT_M0_const_net_2;
wire   [31:0] HWDATA_M0_const_net_0;
wire   [3:0]  HPROT_M1_const_net_2;
wire   [31:0] HADDR_M2_const_net_2;
wire   [1:0]  HTRANS_M2_const_net_2;
wire   [2:0]  HSIZE_M2_const_net_2;
wire   [2:0]  HBURST_M2_const_net_2;
wire   [3:0]  HPROT_M2_const_net_2;
wire   [31:0] HWDATA_M2_const_net_2;
wire   [31:0] HADDR_M3_const_net_2;
wire   [1:0]  HTRANS_M3_const_net_2;
wire   [2:0]  HSIZE_M3_const_net_2;
wire   [2:0]  HBURST_M3_const_net_2;
wire   [3:0]  HPROT_M3_const_net_2;
wire   [31:0] HWDATA_M3_const_net_2;
wire   [31:0] HRDATA_S1_const_net_2;
wire   [1:0]  HRESP_S1_const_net_2;
wire   [31:0] HRDATA_S2_const_net_2;
wire   [1:0]  HRESP_S2_const_net_2;
wire   [31:0] HRDATA_S3_const_net_2;
wire   [1:0]  HRESP_S3_const_net_2;
wire   [31:0] HRDATA_S4_const_net_2;
wire   [1:0]  HRESP_S4_const_net_2;
wire   [31:0] HRDATA_S5_const_net_2;
wire   [1:0]  HRESP_S5_const_net_2;
wire   [31:0] HRDATA_S6_const_net_2;
wire   [1:0]  HRESP_S6_const_net_2;
wire   [31:0] HRDATA_S7_const_net_1;
wire   [1:0]  HRESP_S7_const_net_1;
wire   [31:0] HRDATA_S8_const_net_1;
wire   [1:0]  HRESP_S8_const_net_1;
wire   [31:0] HRDATA_S9_const_net_2;
wire   [1:0]  HRESP_S9_const_net_2;
wire   [31:0] HRDATA_S10_const_net_1;
wire   [1:0]  HRESP_S10_const_net_1;
wire   [31:0] HRDATA_S11_const_net_2;
wire   [1:0]  HRESP_S11_const_net_2;
wire   [31:0] HRDATA_S12_const_net_2;
wire   [1:0]  HRESP_S12_const_net_2;
wire   [31:0] HRDATA_S13_const_net_2;
wire   [1:0]  HRESP_S13_const_net_2;
wire   [31:0] HRDATA_S14_const_net_2;
wire   [1:0]  HRESP_S14_const_net_2;
wire   [31:0] HRDATA_S15_const_net_2;
wire   [1:0]  HRESP_S15_const_net_2;
wire   [31:0] HRDATA_S16_const_net_2;
wire   [1:0]  HRESP_S16_const_net_2;
wire   [31:0] HADDR_M0_const_net_1;
wire   [1:0]  HTRANS_M0_const_net_1;
wire   [2:0]  HSIZE_M0_const_net_1;
wire   [2:0]  HBURST_M0_const_net_1;
wire   [3:0]  HPROT_M0_const_net_3;
wire   [31:0] HWDATA_M0_const_net_1;
wire   [31:0] HADDR_M1_const_net_1;
wire   [1:0]  HTRANS_M1_const_net_1;
wire   [2:0]  HSIZE_M1_const_net_1;
wire   [2:0]  HBURST_M1_const_net_1;
wire   [3:0]  HPROT_M1_const_net_3;
wire   [31:0] HWDATA_M1_const_net_1;
wire   [3:0]  HPROT_M3_const_net_3;
wire   [31:0] HRDATA_S0_const_net_2;
wire   [1:0]  HRESP_S0_const_net_2;
wire   [31:0] HRDATA_S1_const_net_3;
wire   [1:0]  HRESP_S1_const_net_3;
wire   [31:0] HRDATA_S2_const_net_3;
wire   [1:0]  HRESP_S2_const_net_3;
wire   [31:0] HRDATA_S3_const_net_3;
wire   [1:0]  HRESP_S3_const_net_3;
wire   [31:0] HRDATA_S4_const_net_3;
wire   [1:0]  HRESP_S4_const_net_3;
wire   [31:0] HRDATA_S5_const_net_3;
wire   [1:0]  HRESP_S5_const_net_3;
wire   [31:0] HRDATA_S6_const_net_3;
wire   [1:0]  HRESP_S6_const_net_3;
wire   [31:0] HRDATA_S7_const_net_2;
wire   [1:0]  HRESP_S7_const_net_2;
wire   [31:0] HRDATA_S8_const_net_2;
wire   [1:0]  HRESP_S8_const_net_2;
wire   [31:0] HRDATA_S9_const_net_3;
wire   [1:0]  HRESP_S9_const_net_3;
wire   [31:0] HRDATA_S10_const_net_2;
wire   [1:0]  HRESP_S10_const_net_2;
wire   [31:0] HRDATA_S11_const_net_3;
wire   [1:0]  HRESP_S11_const_net_3;
wire   [31:0] HRDATA_S12_const_net_3;
wire   [1:0]  HRESP_S12_const_net_3;
wire   [31:0] HRDATA_S13_const_net_3;
wire   [1:0]  HRESP_S13_const_net_3;
wire   [31:0] HRDATA_S14_const_net_3;
wire   [1:0]  HRESP_S14_const_net_3;
wire   [31:0] HRDATA_S15_const_net_3;
wire   [1:0]  HRESP_S15_const_net_3;
wire   [31:0] PRDATAS0_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
wire   [31:0] PRDATAS0_const_net_1;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_1;
wire   [31:0] PRDATAS9_const_net_1;
wire   [31:0] PRDATAS10_const_net_1;
wire   [31:0] PRDATAS11_const_net_1;
wire   [31:0] PRDATAS12_const_net_1;
wire   [31:0] PRDATAS13_const_net_1;
wire   [31:0] PRDATAS14_const_net_1;
wire   [31:0] PRDATAS15_const_net_1;
wire   [31:0] PRDATAS16_const_net_1;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire          RESET_IN_POST_INV0_0;
wire          RESET_IN_POST_INV1_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN_0;
wire   [7:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN_0_3to0;
wire   [3:0]  AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN_0;
wire          CoreAHBLite_0_AHBmslave8_HRESP;
wire   [1:1]  CoreAHBLite_0_AHBmslave8_HRESP_0_1to1;
wire   [0:0]  CoreAHBLite_0_AHBmslave8_HRESP_0_0to0;
wire   [1:0]  CoreAHBLite_0_AHBmslave8_HRESP_0;
wire   [1:0]  CoreAHBLite_0_AHBmslave8_HSIZE_0_1to0;
wire   [1:0]  CoreAHBLite_0_AHBmslave8_HSIZE_0;
wire   [2:0]  CoreAHBLite_0_AHBmslave8_HSIZE;
wire          CoreAHBLite_3_AHBmslave16_HRESP;
wire   [1:1]  CoreAHBLite_3_AHBmslave16_HRESP_0_1to1;
wire   [0:0]  CoreAHBLite_3_AHBmslave16_HRESP_0_0to0;
wire   [1:0]  CoreAHBLite_3_AHBmslave16_HRESP_0;
wire   [1:0]  CoreAHBLite_3_AHBmslave16_HSIZE_0_1to0;
wire   [1:0]  CoreAHBLite_3_AHBmslave16_HSIZE_0;
wire   [2:0]  CoreAHBLite_3_AHBmslave16_HSIZE;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_1;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_6_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_6;
wire   [6:0]  CoreAPB3_0_APBmslave1_PADDR_5_6to0;
wire   [6:0]  CoreAPB3_0_APBmslave1_PADDR_5;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_3_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_3;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_2_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_2;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_4_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_4;
wire   [31:0] CoreAPB3_0_APBmslave1_PADDR;
wire   [4:0]  CoreAPB3_0_APBmslave1_PADDR_0_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave1_PADDR_0;
wire   [31:8] CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA;
wire   [31:0] CoreAPB3_0_APBmslave1_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave1_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PWDATA_0;
wire   [7:0]  CoreAPB3_1_APBmslave1_PADDR_4_7to0;
wire   [7:0]  CoreAPB3_1_APBmslave1_PADDR_4;
wire   [4:2]  CoreAPB3_1_APBmslave1_PADDR_2_4to2;
wire   [4:2]  CoreAPB3_1_APBmslave1_PADDR_2;
wire   [7:0]  CoreAPB3_1_APBmslave1_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_1_APBmslave1_PADDR_1;
wire   [4:2]  CoreAPB3_1_APBmslave1_PADDR_3_4to2;
wire   [4:2]  CoreAPB3_1_APBmslave1_PADDR_3;
wire   [31:0] CoreAPB3_1_APBmslave1_PADDR;
wire   [4:0]  CoreAPB3_1_APBmslave1_PADDR_0_4to0;
wire   [4:0]  CoreAPB3_1_APBmslave1_PADDR_0;
wire   [31:8] CoreAPB3_1_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_1_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_1_APBmslave1_PRDATA_0;
wire   [7:0]  CoreAPB3_1_APBmslave1_PRDATA;
wire   [31:0] CoreAPB3_1_APBmslave1_PWDATA;
wire   [7:0]  CoreAPB3_1_APBmslave1_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_1_APBmslave1_PWDATA_0;
wire   [1:0]  COREAXITOAHBL_0_AHBMasterIF_HRESP;
wire   [0:0]  COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0;
wire          COREAXITOAHBL_0_AHBMasterIF_HRESP_0;
wire   [0:0]  COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0;
wire          COREAXITOAHBL_1_AHBMasterIF_HRESP_0;
wire   [1:0]  COREAXITOAHBL_1_AHBMasterIF_HRESP;
wire   [0:0]  COREAXITOAHBL_2_AHBMasterIF_HRESP_0_0to0;
wire          COREAXITOAHBL_2_AHBMasterIF_HRESP_0;
wire   [1:0]  COREAXITOAHBL_2_AHBMasterIF_HRESP;
wire   [0:0]  COREAXITOAHBL_3_AHBMasterIF_HRESP_0_0to0;
wire          COREAXITOAHBL_3_AHBMasterIF_HRESP_0;
wire   [1:0]  COREAXITOAHBL_3_AHBMasterIF_HRESP;
wire   [0:0]  COREBOOTSTRAP_0_AHB_MASTER_HRESP_0_0to0;
wire          COREBOOTSTRAP_0_AHB_MASTER_HRESP_0;
wire   [1:0]  COREBOOTSTRAP_0_AHB_MASTER_HRESP;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                      = 1'b0;
assign VCC_net                      = 1'b1;
assign GPIO_IN_const_net_0          = 8'h00;
assign GPIO_IN_const_net_1          = 8'h00;
assign IADDR_const_net_0            = 32'h00000000;
assign IADDR_const_net_1            = 32'h00000000;
assign APB_S_PWDATA_const_net_0     = 8'h00;
assign APB_S_PADDR_const_net_0      = 6'h00;
assign CCC_APB_S_PWDATA_const_net_0 = 8'h00;
assign CCC_APB_S_PADDR_const_net_0  = 6'h00;
assign HPROT_M0_const_net_0         = 4'h0;
assign HPROT_M1_const_net_0         = 4'h0;
assign HADDR_M2_const_net_0         = 32'h00000000;
assign HTRANS_M2_const_net_0        = 2'h0;
assign HSIZE_M2_const_net_0         = 3'h0;
assign HBURST_M2_const_net_0        = 3'h0;
assign HPROT_M2_const_net_0         = 4'h0;
assign HWDATA_M2_const_net_0        = 32'h00000000;
assign HADDR_M3_const_net_0         = 32'h00000000;
assign HTRANS_M3_const_net_0        = 2'h0;
assign HSIZE_M3_const_net_0         = 3'h0;
assign HBURST_M3_const_net_0        = 3'h0;
assign HPROT_M3_const_net_0         = 4'h0;
assign HWDATA_M3_const_net_0        = 32'h00000000;
assign HRDATA_S0_const_net_0        = 32'h00000000;
assign HRESP_S0_const_net_0         = 2'h0;
assign HRDATA_S1_const_net_0        = 32'h00000000;
assign HRESP_S1_const_net_0         = 2'h0;
assign HRDATA_S2_const_net_0        = 32'h00000000;
assign HRESP_S2_const_net_0         = 2'h0;
assign HRDATA_S3_const_net_0        = 32'h00000000;
assign HRESP_S3_const_net_0         = 2'h0;
assign HRDATA_S4_const_net_0        = 32'h00000000;
assign HRESP_S4_const_net_0         = 2'h0;
assign HRDATA_S5_const_net_0        = 32'h00000000;
assign HRESP_S5_const_net_0         = 2'h0;
assign HRDATA_S6_const_net_0        = 32'h00000000;
assign HRESP_S6_const_net_0         = 2'h0;
assign HRDATA_S7_const_net_0        = 32'h00000000;
assign HRESP_S7_const_net_0         = 2'h0;
assign HRDATA_S9_const_net_0        = 32'h00000000;
assign HRESP_S9_const_net_0         = 2'h0;
assign HRDATA_S11_const_net_0       = 32'h00000000;
assign HRESP_S11_const_net_0        = 2'h0;
assign HRDATA_S12_const_net_0       = 32'h00000000;
assign HRESP_S12_const_net_0        = 2'h0;
assign HRDATA_S13_const_net_0       = 32'h00000000;
assign HRESP_S13_const_net_0        = 2'h0;
assign HRDATA_S14_const_net_0       = 32'h00000000;
assign HRESP_S14_const_net_0        = 2'h0;
assign HRDATA_S15_const_net_0       = 32'h00000000;
assign HRESP_S15_const_net_0        = 2'h0;
assign HRDATA_S16_const_net_0       = 32'h00000000;
assign HRESP_S16_const_net_0        = 2'h0;
assign HPROT_M0_const_net_1         = 4'h0;
assign HADDR_M1_const_net_0         = 32'h00000000;
assign HTRANS_M1_const_net_0        = 2'h0;
assign HSIZE_M1_const_net_0         = 3'h0;
assign HBURST_M1_const_net_0        = 3'h0;
assign HPROT_M1_const_net_1         = 4'h0;
assign HWDATA_M1_const_net_0        = 32'h00000000;
assign HADDR_M2_const_net_1         = 32'h00000000;
assign HTRANS_M2_const_net_1        = 2'h0;
assign HSIZE_M2_const_net_1         = 3'h0;
assign HBURST_M2_const_net_1        = 3'h0;
assign HPROT_M2_const_net_1         = 4'h0;
assign HWDATA_M2_const_net_1        = 32'h00000000;
assign HADDR_M3_const_net_1         = 32'h00000000;
assign HTRANS_M3_const_net_1        = 2'h0;
assign HSIZE_M3_const_net_1         = 3'h0;
assign HBURST_M3_const_net_1        = 3'h0;
assign HPROT_M3_const_net_1         = 4'h0;
assign HWDATA_M3_const_net_1        = 32'h00000000;
assign HRDATA_S0_const_net_1        = 32'h00000000;
assign HRESP_S0_const_net_1         = 2'h0;
assign HRDATA_S1_const_net_1        = 32'h00000000;
assign HRESP_S1_const_net_1         = 2'h0;
assign HRDATA_S2_const_net_1        = 32'h00000000;
assign HRESP_S2_const_net_1         = 2'h0;
assign HRDATA_S3_const_net_1        = 32'h00000000;
assign HRESP_S3_const_net_1         = 2'h0;
assign HRDATA_S4_const_net_1        = 32'h00000000;
assign HRESP_S4_const_net_1         = 2'h0;
assign HRDATA_S5_const_net_1        = 32'h00000000;
assign HRESP_S5_const_net_1         = 2'h0;
assign HRDATA_S6_const_net_1        = 32'h00000000;
assign HRESP_S6_const_net_1         = 2'h0;
assign HRDATA_S8_const_net_0        = 32'h00000000;
assign HRESP_S8_const_net_0         = 2'h0;
assign HRDATA_S9_const_net_1        = 32'h00000000;
assign HRESP_S9_const_net_1         = 2'h0;
assign HRDATA_S10_const_net_0       = 32'h00000000;
assign HRESP_S10_const_net_0        = 2'h0;
assign HRDATA_S11_const_net_1       = 32'h00000000;
assign HRESP_S11_const_net_1        = 2'h0;
assign HRDATA_S12_const_net_1       = 32'h00000000;
assign HRESP_S12_const_net_1        = 2'h0;
assign HRDATA_S13_const_net_1       = 32'h00000000;
assign HRESP_S13_const_net_1        = 2'h0;
assign HRDATA_S14_const_net_1       = 32'h00000000;
assign HRESP_S14_const_net_1        = 2'h0;
assign HRDATA_S15_const_net_1       = 32'h00000000;
assign HRESP_S15_const_net_1        = 2'h0;
assign HRDATA_S16_const_net_1       = 32'h00000000;
assign HRESP_S16_const_net_1        = 2'h0;
assign HADDR_M0_const_net_0         = 32'h00000000;
assign HTRANS_M0_const_net_0        = 2'h0;
assign HSIZE_M0_const_net_0         = 3'h0;
assign HBURST_M0_const_net_0        = 3'h0;
assign HPROT_M0_const_net_2         = 4'h0;
assign HWDATA_M0_const_net_0        = 32'h00000000;
assign HPROT_M1_const_net_2         = 4'h0;
assign HADDR_M2_const_net_2         = 32'h00000000;
assign HTRANS_M2_const_net_2        = 2'h0;
assign HSIZE_M2_const_net_2         = 3'h0;
assign HBURST_M2_const_net_2        = 3'h0;
assign HPROT_M2_const_net_2         = 4'h0;
assign HWDATA_M2_const_net_2        = 32'h00000000;
assign HADDR_M3_const_net_2         = 32'h00000000;
assign HTRANS_M3_const_net_2        = 2'h0;
assign HSIZE_M3_const_net_2         = 3'h0;
assign HBURST_M3_const_net_2        = 3'h0;
assign HPROT_M3_const_net_2         = 4'h0;
assign HWDATA_M3_const_net_2        = 32'h00000000;
assign HRDATA_S1_const_net_2        = 32'h00000000;
assign HRESP_S1_const_net_2         = 2'h0;
assign HRDATA_S2_const_net_2        = 32'h00000000;
assign HRESP_S2_const_net_2         = 2'h0;
assign HRDATA_S3_const_net_2        = 32'h00000000;
assign HRESP_S3_const_net_2         = 2'h0;
assign HRDATA_S4_const_net_2        = 32'h00000000;
assign HRESP_S4_const_net_2         = 2'h0;
assign HRDATA_S5_const_net_2        = 32'h00000000;
assign HRESP_S5_const_net_2         = 2'h0;
assign HRDATA_S6_const_net_2        = 32'h00000000;
assign HRESP_S6_const_net_2         = 2'h0;
assign HRDATA_S7_const_net_1        = 32'h00000000;
assign HRESP_S7_const_net_1         = 2'h0;
assign HRDATA_S8_const_net_1        = 32'h00000000;
assign HRESP_S8_const_net_1         = 2'h0;
assign HRDATA_S9_const_net_2        = 32'h00000000;
assign HRESP_S9_const_net_2         = 2'h0;
assign HRDATA_S10_const_net_1       = 32'h00000000;
assign HRESP_S10_const_net_1        = 2'h0;
assign HRDATA_S11_const_net_2       = 32'h00000000;
assign HRESP_S11_const_net_2        = 2'h0;
assign HRDATA_S12_const_net_2       = 32'h00000000;
assign HRESP_S12_const_net_2        = 2'h0;
assign HRDATA_S13_const_net_2       = 32'h00000000;
assign HRESP_S13_const_net_2        = 2'h0;
assign HRDATA_S14_const_net_2       = 32'h00000000;
assign HRESP_S14_const_net_2        = 2'h0;
assign HRDATA_S15_const_net_2       = 32'h00000000;
assign HRESP_S15_const_net_2        = 2'h0;
assign HRDATA_S16_const_net_2       = 32'h00000000;
assign HRESP_S16_const_net_2        = 2'h0;
assign HADDR_M0_const_net_1         = 32'h00000000;
assign HTRANS_M0_const_net_1        = 2'h0;
assign HSIZE_M0_const_net_1         = 3'h0;
assign HBURST_M0_const_net_1        = 3'h0;
assign HPROT_M0_const_net_3         = 4'h0;
assign HWDATA_M0_const_net_1        = 32'h00000000;
assign HADDR_M1_const_net_1         = 32'h00000000;
assign HTRANS_M1_const_net_1        = 2'h0;
assign HSIZE_M1_const_net_1         = 3'h0;
assign HBURST_M1_const_net_1        = 3'h0;
assign HPROT_M1_const_net_3         = 4'h0;
assign HWDATA_M1_const_net_1        = 32'h00000000;
assign HPROT_M3_const_net_3         = 4'h0;
assign HRDATA_S0_const_net_2        = 32'h00000000;
assign HRESP_S0_const_net_2         = 2'h0;
assign HRDATA_S1_const_net_3        = 32'h00000000;
assign HRESP_S1_const_net_3         = 2'h0;
assign HRDATA_S2_const_net_3        = 32'h00000000;
assign HRESP_S2_const_net_3         = 2'h0;
assign HRDATA_S3_const_net_3        = 32'h00000000;
assign HRESP_S3_const_net_3         = 2'h0;
assign HRDATA_S4_const_net_3        = 32'h00000000;
assign HRESP_S4_const_net_3         = 2'h0;
assign HRDATA_S5_const_net_3        = 32'h00000000;
assign HRESP_S5_const_net_3         = 2'h0;
assign HRDATA_S6_const_net_3        = 32'h00000000;
assign HRESP_S6_const_net_3         = 2'h0;
assign HRDATA_S7_const_net_2        = 32'h00000000;
assign HRESP_S7_const_net_2         = 2'h0;
assign HRDATA_S8_const_net_2        = 32'h00000000;
assign HRESP_S8_const_net_2         = 2'h0;
assign HRDATA_S9_const_net_3        = 32'h00000000;
assign HRESP_S9_const_net_3         = 2'h0;
assign HRDATA_S10_const_net_2       = 32'h00000000;
assign HRESP_S10_const_net_2        = 2'h0;
assign HRDATA_S11_const_net_3       = 32'h00000000;
assign HRESP_S11_const_net_3        = 2'h0;
assign HRDATA_S12_const_net_3       = 32'h00000000;
assign HRESP_S12_const_net_3        = 2'h0;
assign HRDATA_S13_const_net_3       = 32'h00000000;
assign HRESP_S13_const_net_3        = 2'h0;
assign HRDATA_S14_const_net_3       = 32'h00000000;
assign HRESP_S14_const_net_3        = 2'h0;
assign HRDATA_S15_const_net_3       = 32'h00000000;
assign HRESP_S15_const_net_3        = 2'h0;
assign PRDATAS0_const_net_0         = 32'h00000000;
assign PRDATAS8_const_net_0         = 32'h00000000;
assign PRDATAS9_const_net_0         = 32'h00000000;
assign PRDATAS10_const_net_0        = 32'h00000000;
assign PRDATAS11_const_net_0        = 32'h00000000;
assign PRDATAS12_const_net_0        = 32'h00000000;
assign PRDATAS13_const_net_0        = 32'h00000000;
assign PRDATAS14_const_net_0        = 32'h00000000;
assign PRDATAS15_const_net_0        = 32'h00000000;
assign PRDATAS16_const_net_0        = 32'h00000000;
assign PRDATAS0_const_net_1         = 32'h00000000;
assign PRDATAS6_const_net_0         = 32'h00000000;
assign PRDATAS7_const_net_0         = 32'h00000000;
assign PRDATAS8_const_net_1         = 32'h00000000;
assign PRDATAS9_const_net_1         = 32'h00000000;
assign PRDATAS10_const_net_1        = 32'h00000000;
assign PRDATAS11_const_net_1        = 32'h00000000;
assign PRDATAS12_const_net_1        = 32'h00000000;
assign PRDATAS13_const_net_1        = 32'h00000000;
assign PRDATAS14_const_net_1        = 32'h00000000;
assign PRDATAS15_const_net_1        = 32'h00000000;
assign PRDATAS16_const_net_1        = 32'h00000000;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign RESET_IN_POST_INV0_0 = ~ CoreGPIO_App_RST_GPIO_OUT[0];
assign RESET_IN_POST_INV1_0 = ~ COREBOOTSTRAP_0_PROC_SYS_RESETN;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1                     = TDO_net_0;
assign TDO                           = TDO_net_1;
assign TX_net_1                      = TX_net_0;
assign TX                            = TX_net_1;
assign FLASH_SCK_net_1               = FLASH_SCK_net_0;
assign FLASH_SCK                     = FLASH_SCK_net_1;
assign FLASH_SDO_net_1               = FLASH_SDO_net_0;
assign FLASH_SDO                     = FLASH_SDO_net_1;
assign FLASH_SS_net_1                = FLASH_SS_net_0;
assign FLASH_SS                      = FLASH_SS_net_1;
assign FDDR_CAS_N_0_net_1            = FDDR_CAS_N_0_net_0;
assign FDDR_CAS_N_0                  = FDDR_CAS_N_0_net_1;
assign FDDR_CKE_0_net_1              = FDDR_CKE_0_net_0;
assign FDDR_CKE_0                    = FDDR_CKE_0_net_1;
assign FDDR_CLK_0_net_1              = FDDR_CLK_0_net_0;
assign FDDR_CLK_0                    = FDDR_CLK_0_net_1;
assign FDDR_CLK_N_0_net_1            = FDDR_CLK_N_0_net_0;
assign FDDR_CLK_N_0                  = FDDR_CLK_N_0_net_1;
assign FDDR_CS_N_0_net_1             = FDDR_CS_N_0_net_0;
assign FDDR_CS_N_0                   = FDDR_CS_N_0_net_1;
assign FDDR_ODT_0_net_1              = FDDR_ODT_0_net_0;
assign FDDR_ODT_0                    = FDDR_ODT_0_net_1;
assign FDDR_RAS_N_0_net_1            = FDDR_RAS_N_0_net_0;
assign FDDR_RAS_N_0                  = FDDR_RAS_N_0_net_1;
assign FDDR_RESET_N_0_net_1          = FDDR_RESET_N_0_net_0;
assign FDDR_RESET_N_0                = FDDR_RESET_N_0_net_1;
assign FDDR_WE_N_0_net_1             = FDDR_WE_N_0_net_0;
assign FDDR_WE_N_0                   = FDDR_WE_N_0_net_1;
assign FDDR_DQS_TMATCH_0_OUT_0_net_1 = FDDR_DQS_TMATCH_0_OUT_0_net_0;
assign FDDR_DQS_TMATCH_0_OUT_0       = FDDR_DQS_TMATCH_0_OUT_0_net_1;
assign FDDR_DQS_TMATCH_1_OUT_0_net_1 = FDDR_DQS_TMATCH_1_OUT_0_net_0;
assign FDDR_DQS_TMATCH_1_OUT_0       = FDDR_DQS_TMATCH_1_OUT_0_net_1;
assign FDDR_CAS_N_1_net_1            = FDDR_CAS_N_1_net_0;
assign FDDR_CAS_N_1                  = FDDR_CAS_N_1_net_1;
assign FDDR_CKE_1_net_1              = FDDR_CKE_1_net_0;
assign FDDR_CKE_1                    = FDDR_CKE_1_net_1;
assign FDDR_CLK_1_net_1              = FDDR_CLK_1_net_0;
assign FDDR_CLK_1                    = FDDR_CLK_1_net_1;
assign FDDR_CLK_N_1_net_1            = FDDR_CLK_N_1_net_0;
assign FDDR_CLK_N_1                  = FDDR_CLK_N_1_net_1;
assign FDDR_CS_N_1_net_1             = FDDR_CS_N_1_net_0;
assign FDDR_CS_N_1                   = FDDR_CS_N_1_net_1;
assign FDDR_ODT_1_net_1              = FDDR_ODT_1_net_0;
assign FDDR_ODT_1                    = FDDR_ODT_1_net_1;
assign FDDR_RAS_N_1_net_1            = FDDR_RAS_N_1_net_0;
assign FDDR_RAS_N_1                  = FDDR_RAS_N_1_net_1;
assign FDDR_RESET_N_1_net_1          = FDDR_RESET_N_1_net_0;
assign FDDR_RESET_N_1                = FDDR_RESET_N_1_net_1;
assign FDDR_WE_N_1_net_1             = FDDR_WE_N_1_net_0;
assign FDDR_WE_N_1                   = FDDR_WE_N_1_net_1;
assign FDDR_DQS_TMATCH_0_OUT_1_net_1 = FDDR_DQS_TMATCH_0_OUT_1_net_0;
assign FDDR_DQS_TMATCH_0_OUT_1       = FDDR_DQS_TMATCH_0_OUT_1_net_1;
assign FDDR_DQS_TMATCH_1_OUT_1_net_1 = FDDR_DQS_TMATCH_1_OUT_1_net_0;
assign FDDR_DQS_TMATCH_1_OUT_1       = FDDR_DQS_TMATCH_1_OUT_1_net_1;
assign FDDR_ADDR_0_net_1             = FDDR_ADDR_0_net_0;
assign FDDR_ADDR_0[15:0]             = FDDR_ADDR_0_net_1;
assign FDDR_BA_0_net_1               = FDDR_BA_0_net_0;
assign FDDR_BA_0[2:0]                = FDDR_BA_0_net_1;
assign FDDR_ADDR_1_net_1             = FDDR_ADDR_1_net_0;
assign FDDR_ADDR_1[15:0]             = FDDR_ADDR_1_net_1;
assign FDDR_BA_1_net_1               = FDDR_BA_1_net_0;
assign FDDR_BA_1[2:0]                = FDDR_BA_1_net_1;
assign GPIO_OUT_0_net_1              = GPIO_OUT_0_net_0;
assign GPIO_OUT[7:0]                 = GPIO_OUT_0_net_1;
assign GPIO_OUT_0_0_net_0            = GPIO_OUT_0_0;
assign GPIO_OUT_0[7:0]               = GPIO_OUT_0_0_net_0;
assign APP_UART_TX_net_1             = APP_UART_TX_net_0;
assign APP_UART_TX                   = APP_UART_TX_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign CORESPI_0_SPISS0to0[0] = SPISS_net_0[0:0];
assign SPISS_slice_0          = SPISS_net_0[7:1];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign IRQ_net_0 = { CoreTimer_3_TIMINT , CoreTimer_2_TIMINT , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 };
assign IRQ_net_1 = { CoreTimer_1_TIMINT , CoreTimer_0_TIMINT , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0_3to0 = AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN[3:0];
assign AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0 = { AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0_3to0 };

assign AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0_3to0 = AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN[3:0];
assign AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0 = { AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0_3to0 };

assign AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0_3to0 = AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN[3:0];
assign AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0 = { AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0_3to0 };

assign AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0_3to0 = AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN[3:0];
assign AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0 = { AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0_3to0 };

assign AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN_0_3to0 = AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN[3:0];
assign AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN_0 = { AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN_0_3to0 };

assign AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN_0_3to0 = AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN[3:0];
assign AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN_0 = { AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN_0_3to0 };

assign AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN_0_3to0 = AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN[3:0];
assign AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN_0 = { AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN_0_3to0 };

assign AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN_0_3to0 = AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN[3:0];
assign AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN_0 = { AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN_0_3to0 };

assign CoreAHBLite_0_AHBmslave8_HRESP_0_1to1 = 1'b0;
assign CoreAHBLite_0_AHBmslave8_HRESP_0_0to0 = CoreAHBLite_0_AHBmslave8_HRESP;
assign CoreAHBLite_0_AHBmslave8_HRESP_0 = { CoreAHBLite_0_AHBmslave8_HRESP_0_1to1, CoreAHBLite_0_AHBmslave8_HRESP_0_0to0 };

assign CoreAHBLite_0_AHBmslave8_HSIZE_0_1to0 = CoreAHBLite_0_AHBmslave8_HSIZE[1:0];
assign CoreAHBLite_0_AHBmslave8_HSIZE_0 = { CoreAHBLite_0_AHBmslave8_HSIZE_0_1to0 };

assign CoreAHBLite_3_AHBmslave16_HRESP_0_1to1 = 1'b0;
assign CoreAHBLite_3_AHBmslave16_HRESP_0_0to0 = CoreAHBLite_3_AHBmslave16_HRESP;
assign CoreAHBLite_3_AHBmslave16_HRESP_0 = { CoreAHBLite_3_AHBmslave16_HRESP_0_1to1, CoreAHBLite_3_AHBmslave16_HRESP_0_0to0 };

assign CoreAHBLite_3_AHBmslave16_HSIZE_0_1to0 = CoreAHBLite_3_AHBmslave16_HSIZE[1:0];
assign CoreAHBLite_3_AHBmslave16_HSIZE_0 = { CoreAHBLite_3_AHBmslave16_HSIZE_0_1to0 };

assign CoreAPB3_0_APBmslave1_PADDR_1_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_1 = { CoreAPB3_0_APBmslave1_PADDR_1_7to0 };
assign CoreAPB3_0_APBmslave1_PADDR_6_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_6 = { CoreAPB3_0_APBmslave1_PADDR_6_7to0 };
assign CoreAPB3_0_APBmslave1_PADDR_5_6to0 = CoreAPB3_0_APBmslave1_PADDR[6:0];
assign CoreAPB3_0_APBmslave1_PADDR_5 = { CoreAPB3_0_APBmslave1_PADDR_5_6to0 };
assign CoreAPB3_0_APBmslave1_PADDR_3_4to2 = CoreAPB3_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_0_APBmslave1_PADDR_3 = { CoreAPB3_0_APBmslave1_PADDR_3_4to2 };
assign CoreAPB3_0_APBmslave1_PADDR_2_4to2 = CoreAPB3_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_0_APBmslave1_PADDR_2 = { CoreAPB3_0_APBmslave1_PADDR_2_4to2 };
assign CoreAPB3_0_APBmslave1_PADDR_4_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_4 = { CoreAPB3_0_APBmslave1_PADDR_4_7to0 };
assign CoreAPB3_0_APBmslave1_PADDR_0_4to0 = CoreAPB3_0_APBmslave1_PADDR[4:0];
assign CoreAPB3_0_APBmslave1_PADDR_0 = { CoreAPB3_0_APBmslave1_PADDR_0_4to0 };

assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];
assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave1_PWDATA_0_7to0 = CoreAPB3_0_APBmslave1_PWDATA[7:0];
assign CoreAPB3_0_APBmslave1_PWDATA_0 = { CoreAPB3_0_APBmslave1_PWDATA_0_7to0 };

assign CoreAPB3_1_APBmslave1_PADDR_4_7to0 = CoreAPB3_1_APBmslave1_PADDR[7:0];
assign CoreAPB3_1_APBmslave1_PADDR_4 = { CoreAPB3_1_APBmslave1_PADDR_4_7to0 };
assign CoreAPB3_1_APBmslave1_PADDR_2_4to2 = CoreAPB3_1_APBmslave1_PADDR[4:2];
assign CoreAPB3_1_APBmslave1_PADDR_2 = { CoreAPB3_1_APBmslave1_PADDR_2_4to2 };
assign CoreAPB3_1_APBmslave1_PADDR_1_7to0 = CoreAPB3_1_APBmslave1_PADDR[7:0];
assign CoreAPB3_1_APBmslave1_PADDR_1 = { CoreAPB3_1_APBmslave1_PADDR_1_7to0 };
assign CoreAPB3_1_APBmslave1_PADDR_3_4to2 = CoreAPB3_1_APBmslave1_PADDR[4:2];
assign CoreAPB3_1_APBmslave1_PADDR_3 = { CoreAPB3_1_APBmslave1_PADDR_3_4to2 };
assign CoreAPB3_1_APBmslave1_PADDR_0_4to0 = CoreAPB3_1_APBmslave1_PADDR[4:0];
assign CoreAPB3_1_APBmslave1_PADDR_0 = { CoreAPB3_1_APBmslave1_PADDR_0_4to0 };

assign CoreAPB3_1_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_1_APBmslave1_PRDATA_0_7to0 = CoreAPB3_1_APBmslave1_PRDATA[7:0];
assign CoreAPB3_1_APBmslave1_PRDATA_0 = { CoreAPB3_1_APBmslave1_PRDATA_0_31to8, CoreAPB3_1_APBmslave1_PRDATA_0_7to0 };

assign CoreAPB3_1_APBmslave1_PWDATA_0_7to0 = CoreAPB3_1_APBmslave1_PWDATA[7:0];
assign CoreAPB3_1_APBmslave1_PWDATA_0 = { CoreAPB3_1_APBmslave1_PWDATA_0_7to0 };

assign COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0 = COREAXITOAHBL_0_AHBMasterIF_HRESP[0:0];
assign COREAXITOAHBL_0_AHBMasterIF_HRESP_0 = { COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0 };

assign COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0 = COREAXITOAHBL_1_AHBMasterIF_HRESP[0:0];
assign COREAXITOAHBL_1_AHBMasterIF_HRESP_0 = { COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0 };

assign COREAXITOAHBL_2_AHBMasterIF_HRESP_0_0to0 = COREAXITOAHBL_2_AHBMasterIF_HRESP[0:0];
assign COREAXITOAHBL_2_AHBMasterIF_HRESP_0 = { COREAXITOAHBL_2_AHBMasterIF_HRESP_0_0to0 };

assign COREAXITOAHBL_3_AHBMasterIF_HRESP_0_0to0 = COREAXITOAHBL_3_AHBMasterIF_HRESP[0:0];
assign COREAXITOAHBL_3_AHBMasterIF_HRESP_0 = { COREAXITOAHBL_3_AHBMasterIF_HRESP_0_0to0 };

assign COREBOOTSTRAP_0_AHB_MASTER_HRESP_0_0to0 = COREBOOTSTRAP_0_AHB_MASTER_HRESP[0:0];
assign COREBOOTSTRAP_0_AHB_MASTER_HRESP_0 = { COREBOOTSTRAP_0_AHB_MASTER_HRESP_0_0to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AHBLITE_GLUE_LOGIC   -   User:GlueLogic:AHBLITE_GLUE_LOGIC:1.0.7
AHBLITE_GLUE_LOGIC AHBLITE_GLUE_LOGIC_0(
        // Inputs
        .HADDR_MASTER     ( CoreAHBLite_0_AHBmslave10_HADDR ),
        .HTRANS_MASTER    ( CoreAHBLite_0_AHBmslave10_HTRANS ),
        .HSIZE_MASTER     ( CoreAHBLite_0_AHBmslave10_HSIZE ),
        .HWDATA_MASTER    ( CoreAHBLite_0_AHBmslave10_HWDATA ),
        .HBURST_MASTER    ( CoreAHBLite_0_AHBmslave10_HBURST ),
        .HPROT_MASTER     ( CoreAHBLite_0_AHBmslave10_HPROT ),
        .HWRITE_MASTER    ( CoreAHBLite_0_AHBmslave10_HWRITE ),
        .HMASTLOCK_MASTER ( CoreAHBLite_0_AHBmslave10_HMASTLOCK ),
        .HSEL             ( CoreAHBLite_0_AHBmslave10_HSELx ),
        .HRDATA_SLAVE     ( AHBLITE_GLUE_LOGIC_0_slave_HRDATA ),
        .HRESP_SLAVE      ( AHBLITE_GLUE_LOGIC_0_slave_HRESP ),
        .HREADY_SLAVE     ( AHBLITE_GLUE_LOGIC_0_slave_HREADY ),
        .HREADY_MASTER    ( CoreAHBLite_0_AHBmslave10_HREADY ),
        // Outputs
        .HRDATA_MASTER    ( CoreAHBLite_0_AHBmslave10_HRDATA ),
        .HRESP_MASTER     ( CoreAHBLite_0_AHBmslave10_HRESP ),
        .HREADYOUT_MASTER ( CoreAHBLite_0_AHBmslave10_HREADYOUT ),
        .HADDR_SLAVE      ( AHBLITE_GLUE_LOGIC_0_slave_HADDR ),
        .HTRANS_SLAVE     ( AHBLITE_GLUE_LOGIC_0_slave_HTRANS ),
        .HSIZE_SLAVE      ( AHBLITE_GLUE_LOGIC_0_slave_HSIZE ),
        .HWDATA_SLAVE     ( AHBLITE_GLUE_LOGIC_0_slave_HWDATA ),
        .HBURST_SLAVE     ( AHBLITE_GLUE_LOGIC_0_slave_HBURST ),
        .HPROT_SLAVE      ( AHBLITE_GLUE_LOGIC_0_slave_HPROT ),
        .HWRITE_SLAVE     ( AHBLITE_GLUE_LOGIC_0_slave_HWRITE ),
        .HMASTLOCK_SLAVE  ( AHBLITE_GLUE_LOGIC_0_slave_HLOCK ) 
        );

//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( SYSRESET_0_POWER_ON_RESET_N ),
        .B ( RTG4FCCC_0_LOCK ),
        // Outputs
        .Y ( AND2_0_Y_1 ) 
        );

//--------CORERISCV_AXI4   -   Actel:DirectCore:CORERISCV_AXI4:1.0.100
CORERISCV_AXI4 #( 
        .RESET_VECTOR_ADDR ( 'ha0000000 ) )
APPLICATIONRISCV(
        // Inputs
        .CLK                   ( RTG4FCCC_0_GL0_3 ),
        .RESET                 ( RESET_IN_POST_INV0_0 ),
        .AXI_MST_MEM_AWREADY   ( CORERISCV_AXI4_1_AXI_MST_MEM_AWREADY ),
        .AXI_MST_MEM_WREADY    ( CORERISCV_AXI4_1_AXI_MST_MEM_WREADY ),
        .AXI_MST_MEM_BVALID    ( CORERISCV_AXI4_1_AXI_MST_MEM_BVALID ),
        .AXI_MST_MEM_BUSER     ( CORERISCV_AXI4_1_AXI_MST_MEM_BUSER ),
        .AXI_MST_MEM_ARREADY   ( CORERISCV_AXI4_1_AXI_MST_MEM_ARREADY ),
        .AXI_MST_MEM_RVALID    ( CORERISCV_AXI4_1_AXI_MST_MEM_RVALID ),
        .AXI_MST_MEM_RLAST     ( CORERISCV_AXI4_1_AXI_MST_MEM_RLAST ),
        .AXI_MST_MEM_RUSER     ( CORERISCV_AXI4_1_AXI_MST_MEM_RUSER ),
        .AXI_MST_MMIO_AWREADY  ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWREADY ),
        .AXI_MST_MMIO_WREADY   ( CORERISCV_AXI4_1_AXI_MST_MMIO_WREADY ),
        .AXI_MST_MMIO_BVALID   ( CORERISCV_AXI4_1_AXI_MST_MMIO_BVALID ),
        .AXI_MST_MMIO_BUSER    ( CORERISCV_AXI4_1_AXI_MST_MMIO_BUSER ),
        .AXI_MST_MMIO_ARREADY  ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARREADY ),
        .AXI_MST_MMIO_RVALID   ( CORERISCV_AXI4_1_AXI_MST_MMIO_RVALID ),
        .AXI_MST_MMIO_RLAST    ( CORERISCV_AXI4_1_AXI_MST_MMIO_RLAST ),
        .AXI_MST_MMIO_RUSER    ( CORERISCV_AXI4_1_AXI_MST_MMIO_RUSER ),
        .TDI                   ( COREJTAGDEBUG_1_TGT_TDI ),
        .TCK                   ( COREJTAGDEBUG_1_TGT_TCK ),
        .TMS                   ( COREJTAGDEBUG_1_TGT_TMS ),
        .TRST                  ( COREJTAGDEBUG_1_TGT_TRST ),
        .AXI_MST_MEM_BRESP     ( CORERISCV_AXI4_1_AXI_MST_MEM_BRESP ),
        .AXI_MST_MEM_BID       ( CORERISCV_AXI4_1_AXI_MST_MEM_BID ),
        .AXI_MST_MEM_RRESP     ( CORERISCV_AXI4_1_AXI_MST_MEM_RRESP ),
        .AXI_MST_MEM_RDATA     ( CORERISCV_AXI4_1_AXI_MST_MEM_RDATA ),
        .AXI_MST_MEM_RID       ( CORERISCV_AXI4_1_AXI_MST_MEM_RID ),
        .AXI_MST_MMIO_BRESP    ( CORERISCV_AXI4_1_AXI_MST_MMIO_BRESP ),
        .AXI_MST_MMIO_BID      ( CORERISCV_AXI4_1_AXI_MST_MMIO_BID ),
        .AXI_MST_MMIO_RRESP    ( CORERISCV_AXI4_1_AXI_MST_MMIO_RRESP ),
        .AXI_MST_MMIO_RDATA    ( CORERISCV_AXI4_1_AXI_MST_MMIO_RDATA ),
        .AXI_MST_MMIO_RID      ( CORERISCV_AXI4_1_AXI_MST_MMIO_RID ),
        .IRQ                   ( IRQ_net_0 ),
        // Outputs
        .AXI_MST_MEM_AWVALID   ( CORERISCV_AXI4_1_AXI_MST_MEM_AWVALID ),
        .AXI_MST_MEM_AWLOCK    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWLOCK ),
        .AXI_MST_MEM_AWUSER    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWUSER ),
        .AXI_MST_MEM_WVALID    ( CORERISCV_AXI4_1_AXI_MST_MEM_WVALID ),
        .AXI_MST_MEM_WLAST     ( CORERISCV_AXI4_1_AXI_MST_MEM_WLAST ),
        .AXI_MST_MEM_WUSER     ( CORERISCV_AXI4_1_AXI_MST_MEM_WUSER ),
        .AXI_MST_MEM_BREADY    ( CORERISCV_AXI4_1_AXI_MST_MEM_BREADY ),
        .AXI_MST_MEM_ARVALID   ( CORERISCV_AXI4_1_AXI_MST_MEM_ARVALID ),
        .AXI_MST_MEM_ARLOCK    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARLOCK ),
        .AXI_MST_MEM_ARUSER    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARUSER ),
        .AXI_MST_MEM_RREADY    ( CORERISCV_AXI4_1_AXI_MST_MEM_RREADY ),
        .AXI_MST_MMIO_AWVALID  ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWVALID ),
        .AXI_MST_MMIO_AWLOCK   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWLOCK ),
        .AXI_MST_MMIO_AWUSER   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWUSER ),
        .AXI_MST_MMIO_WVALID   ( CORERISCV_AXI4_1_AXI_MST_MMIO_WVALID ),
        .AXI_MST_MMIO_WLAST    ( CORERISCV_AXI4_1_AXI_MST_MMIO_WLAST ),
        .AXI_MST_MMIO_WUSER    ( CORERISCV_AXI4_1_AXI_MST_MMIO_WUSER ),
        .AXI_MST_MMIO_BREADY   ( CORERISCV_AXI4_1_AXI_MST_MMIO_BREADY ),
        .AXI_MST_MMIO_ARVALID  ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARVALID ),
        .AXI_MST_MMIO_ARLOCK   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARLOCK ),
        .AXI_MST_MMIO_ARUSER   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARUSER ),
        .AXI_MST_MMIO_RREADY   ( CORERISCV_AXI4_1_AXI_MST_MMIO_RREADY ),
        .TDO                   ( APPLICATIONRISCV_TDO ),
        .DRV_TDO               (  ),
        .AXI_MST_MEM_AWADDR    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWADDR ),
        .AXI_MST_MEM_AWLEN     ( CORERISCV_AXI4_1_AXI_MST_MEM_AWLEN ),
        .AXI_MST_MEM_AWSIZE    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWSIZE ),
        .AXI_MST_MEM_AWBURST   ( CORERISCV_AXI4_1_AXI_MST_MEM_AWBURST ),
        .AXI_MST_MEM_AWCACHE   ( CORERISCV_AXI4_1_AXI_MST_MEM_AWCACHE ),
        .AXI_MST_MEM_AWPROT    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWPROT ),
        .AXI_MST_MEM_AWQOS     ( CORERISCV_AXI4_1_AXI_MST_MEM_AWQOS ),
        .AXI_MST_MEM_AWREGION  ( CORERISCV_AXI4_1_AXI_MST_MEM_AWREGION ),
        .AXI_MST_MEM_AWID      ( CORERISCV_AXI4_1_AXI_MST_MEM_AWID ),
        .AXI_MST_MEM_WDATA     ( CORERISCV_AXI4_1_AXI_MST_MEM_WDATA ),
        .AXI_MST_MEM_WSTRB     ( CORERISCV_AXI4_1_AXI_MST_MEM_WSTRB ),
        .AXI_MST_MEM_ARADDR    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARADDR ),
        .AXI_MST_MEM_ARLEN     ( CORERISCV_AXI4_1_AXI_MST_MEM_ARLEN ),
        .AXI_MST_MEM_ARSIZE    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARSIZE ),
        .AXI_MST_MEM_ARBURST   ( CORERISCV_AXI4_1_AXI_MST_MEM_ARBURST ),
        .AXI_MST_MEM_ARCACHE   ( CORERISCV_AXI4_1_AXI_MST_MEM_ARCACHE ),
        .AXI_MST_MEM_ARPROT    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARPROT ),
        .AXI_MST_MEM_ARQOS     ( CORERISCV_AXI4_1_AXI_MST_MEM_ARQOS ),
        .AXI_MST_MEM_ARREGION  ( CORERISCV_AXI4_1_AXI_MST_MEM_ARREGION ),
        .AXI_MST_MEM_ARID      ( CORERISCV_AXI4_1_AXI_MST_MEM_ARID ),
        .AXI_MST_MMIO_AWADDR   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWADDR ),
        .AXI_MST_MMIO_AWLEN    ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWLEN ),
        .AXI_MST_MMIO_AWSIZE   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWSIZE ),
        .AXI_MST_MMIO_AWBURST  ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWBURST ),
        .AXI_MST_MMIO_AWCACHE  ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWCACHE ),
        .AXI_MST_MMIO_AWPROT   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWPROT ),
        .AXI_MST_MMIO_AWQOS    ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWQOS ),
        .AXI_MST_MMIO_AWREGION ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWREGION ),
        .AXI_MST_MMIO_AWID     ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWID ),
        .AXI_MST_MMIO_WDATA    ( CORERISCV_AXI4_1_AXI_MST_MMIO_WDATA ),
        .AXI_MST_MMIO_WSTRB    ( CORERISCV_AXI4_1_AXI_MST_MMIO_WSTRB ),
        .AXI_MST_MMIO_ARADDR   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARADDR ),
        .AXI_MST_MMIO_ARLEN    ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARLEN ),
        .AXI_MST_MMIO_ARSIZE   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARSIZE ),
        .AXI_MST_MMIO_ARBURST  ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARBURST ),
        .AXI_MST_MMIO_ARCACHE  ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARCACHE ),
        .AXI_MST_MMIO_ARPROT   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARPROT ),
        .AXI_MST_MMIO_ARQOS    ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARQOS ),
        .AXI_MST_MMIO_ARREGION ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARREGION ),
        .AXI_MST_MMIO_ARID     ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARID ),
        .AXI_MST_MEM_WID       ( CORERISCV_AXI4_1_AXI_MST_MEM_WID ),
        .AXI_MST_MMIO_WID      ( CORERISCV_AXI4_1_AXI_MST_MMIO_WID ) 
        );

//--------AXI_GLUE_LOGIC   -   User:GlueLogic:AXI_GLUE_LOGIC:1.0.7
AXI_GLUE_LOGIC AXI_GLUE_LOGIC_0(
        // Inputs
        .CLK                          ( RTG4FCCC_0_GL0_3 ),
        .RESET                        ( AND2_0_Y_1 ),
        .AXI_MIRROR_MST_MEM_AWVALID   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWVALID ),
        .AXI_MIRROR_MST_MEM_AWLOCK    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWLOCK ),
        .AXI_MIRROR_MST_MEM_AWUSER    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWUSER ),
        .AXI_MIRROR_MST_MEM_WVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_WVALID ),
        .AXI_MIRROR_MST_MEM_WLAST     ( CORERISCV_AXI4_0_AXI_MST_MEM_WLAST ),
        .AXI_MIRROR_MST_MEM_WUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_WUSER ),
        .AXI_MIRROR_MST_MEM_BREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_BREADY ),
        .AXI_MIRROR_MST_MEM_ARVALID   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARVALID ),
        .AXI_MIRROR_MST_MEM_ARLOCK    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARLOCK ),
        .AXI_MIRROR_MST_MEM_ARUSER    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARUSER ),
        .AXI_MIRROR_MST_MEM_RREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_RREADY ),
        .AXI_MIRROR_MST_MMIO_AWVALID  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWVALID ),
        .AXI_MIRROR_MST_MMIO_AWLOCK   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWLOCK ),
        .AXI_MIRROR_MST_MMIO_AWUSER   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWUSER ),
        .AXI_MIRROR_MST_MMIO_WVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_WVALID ),
        .AXI_MIRROR_MST_MMIO_WLAST    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WLAST ),
        .AXI_MIRROR_MST_MMIO_WUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WUSER ),
        .AXI_MIRROR_MST_MMIO_BREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_BREADY ),
        .AXI_MIRROR_MST_MMIO_ARVALID  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARVALID ),
        .AXI_MIRROR_MST_MMIO_ARLOCK   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARLOCK ),
        .AXI_MIRROR_MST_MMIO_ARUSER   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARUSER ),
        .AXI_MIRROR_MST_MMIO_RREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_RREADY ),
        .AXI_MSLAVE_MEM_AWREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWREADY ),
        .AXI_MSLAVE_MEM_WREADY        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WREADY ),
        .AXI_MSLAVE_MEM_BVALID        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BVALID ),
        .AXI_MSLAVE_MEM_BUSER         ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MEM_ARREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARREADY ),
        .AXI_MSLAVE_MEM_RVALID        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RVALID ),
        .AXI_MSLAVE_MEM_RLAST         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RLAST ),
        .AXI_MSLAVE_MEM_RUSER         ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MMIO_AWREADY      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWREADY ),
        .AXI_MSLAVE_MMIO_WREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WREADY ),
        .AXI_MSLAVE_MMIO_BVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BVALID ),
        .AXI_MSLAVE_MMIO_BUSER        ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MMIO_ARREADY      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARREADY ),
        .AXI_MSLAVE_MMIO_RVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RVALID ),
        .AXI_MSLAVE_MMIO_RLAST        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RLAST ),
        .AXI_MSLAVE_MMIO_RUSER        ( GND_net ), // tied to 1'b0 from definition
        .AXI_MIRROR_MST_MEM_AWADDR    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWADDR ),
        .AXI_MIRROR_MST_MEM_AWLEN     ( CORERISCV_AXI4_0_AXI_MST_MEM_AWLEN ),
        .AXI_MIRROR_MST_MEM_AWSIZE    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWSIZE ),
        .AXI_MIRROR_MST_MEM_AWBURST   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWBURST ),
        .AXI_MIRROR_MST_MEM_AWCACHE   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWCACHE ),
        .AXI_MIRROR_MST_MEM_AWPROT    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWPROT ),
        .AXI_MIRROR_MST_MEM_AWQOS     ( CORERISCV_AXI4_0_AXI_MST_MEM_AWQOS ),
        .AXI_MIRROR_MST_MEM_AWREGION  ( CORERISCV_AXI4_0_AXI_MST_MEM_AWREGION ),
        .AXI_MIRROR_MST_MEM_AWID      ( CORERISCV_AXI4_0_AXI_MST_MEM_AWID ),
        .AXI_MIRROR_MST_MEM_WDATA     ( CORERISCV_AXI4_0_AXI_MST_MEM_WDATA ),
        .AXI_MIRROR_MST_MEM_WID       ( CORERISCV_AXI4_0_AXI_MST_MEM_WID ),
        .AXI_MIRROR_MST_MEM_WSTRB     ( CORERISCV_AXI4_0_AXI_MST_MEM_WSTRB ),
        .AXI_MIRROR_MST_MEM_ARADDR    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARADDR ),
        .AXI_MIRROR_MST_MEM_ARLEN     ( CORERISCV_AXI4_0_AXI_MST_MEM_ARLEN ),
        .AXI_MIRROR_MST_MEM_ARSIZE    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARSIZE ),
        .AXI_MIRROR_MST_MEM_ARBURST   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARBURST ),
        .AXI_MIRROR_MST_MEM_ARCACHE   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARCACHE ),
        .AXI_MIRROR_MST_MEM_ARPROT    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARPROT ),
        .AXI_MIRROR_MST_MEM_ARQOS     ( CORERISCV_AXI4_0_AXI_MST_MEM_ARQOS ),
        .AXI_MIRROR_MST_MEM_ARREGION  ( CORERISCV_AXI4_0_AXI_MST_MEM_ARREGION ),
        .AXI_MIRROR_MST_MEM_ARID      ( CORERISCV_AXI4_0_AXI_MST_MEM_ARID ),
        .AXI_MIRROR_MST_MMIO_AWADDR   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWADDR ),
        .AXI_MIRROR_MST_MMIO_AWLEN    ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWLEN ),
        .AXI_MIRROR_MST_MMIO_AWSIZE   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWSIZE ),
        .AXI_MIRROR_MST_MMIO_AWBURST  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWBURST ),
        .AXI_MIRROR_MST_MMIO_AWCACHE  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWCACHE ),
        .AXI_MIRROR_MST_MMIO_AWPROT   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWPROT ),
        .AXI_MIRROR_MST_MMIO_AWQOS    ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWQOS ),
        .AXI_MIRROR_MST_MMIO_AWREGION ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWREGION ),
        .AXI_MIRROR_MST_MMIO_AWID     ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWID ),
        .AXI_MIRROR_MST_MMIO_WDATA    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WDATA ),
        .AXI_MIRROR_MST_MMIO_WID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_WID ),
        .AXI_MIRROR_MST_MMIO_WSTRB    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WSTRB ),
        .AXI_MIRROR_MST_MMIO_ARADDR   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARADDR ),
        .AXI_MIRROR_MST_MMIO_ARLEN    ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARLEN ),
        .AXI_MIRROR_MST_MMIO_ARSIZE   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARSIZE ),
        .AXI_MIRROR_MST_MMIO_ARBURST  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARBURST ),
        .AXI_MIRROR_MST_MMIO_ARCACHE  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARCACHE ),
        .AXI_MIRROR_MST_MMIO_ARPROT   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARPROT ),
        .AXI_MIRROR_MST_MMIO_ARQOS    ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARQOS ),
        .AXI_MIRROR_MST_MMIO_ARREGION ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARREGION ),
        .AXI_MIRROR_MST_MMIO_ARID     ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARID ),
        .AXI_MSLAVE_MEM_BRESP         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BRESP ),
        .AXI_MSLAVE_MEM_BID           ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BID ),
        .AXI_MSLAVE_MEM_RRESP         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RRESP ),
        .AXI_MSLAVE_MEM_RDATA         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RDATA ),
        .AXI_MSLAVE_MEM_RID           ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RID ),
        .AXI_MSLAVE_MMIO_BRESP        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BRESP ),
        .AXI_MSLAVE_MMIO_BID          ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BID ),
        .AXI_MSLAVE_MMIO_RRESP        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RRESP ),
        .AXI_MSLAVE_MMIO_RDATA        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RDATA ),
        .AXI_MSLAVE_MMIO_RID          ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RID ),
        // Outputs
        .AXI_MIRROR_MST_MEM_AWREADY   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWREADY ),
        .AXI_MIRROR_MST_MEM_WREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_WREADY ),
        .AXI_MIRROR_MST_MEM_BVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_BVALID ),
        .AXI_MIRROR_MST_MEM_BUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_BUSER ),
        .AXI_MIRROR_MST_MEM_ARREADY   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARREADY ),
        .AXI_MIRROR_MST_MEM_RVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_RVALID ),
        .AXI_MIRROR_MST_MEM_RLAST     ( CORERISCV_AXI4_0_AXI_MST_MEM_RLAST ),
        .AXI_MIRROR_MST_MEM_RUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_RUSER ),
        .AXI_MIRROR_MST_MMIO_AWREADY  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWREADY ),
        .AXI_MIRROR_MST_MMIO_WREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_WREADY ),
        .AXI_MIRROR_MST_MMIO_BVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_BVALID ),
        .AXI_MIRROR_MST_MMIO_BUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_BUSER ),
        .AXI_MIRROR_MST_MMIO_ARREADY  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARREADY ),
        .AXI_MIRROR_MST_MMIO_RVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_RVALID ),
        .AXI_MIRROR_MST_MMIO_RLAST    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RLAST ),
        .AXI_MIRROR_MST_MMIO_RUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RUSER ),
        .AXI_MSLAVE_MEM_AWVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWVALID ),
        .AXI_MSLAVE_MEM_AWLOCK        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLOCK ),
        .AXI_MSLAVE_MEM_AWUSER        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWUSER ),
        .AXI_MSLAVE_MEM_WVALID        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WVALID ),
        .AXI_MSLAVE_MEM_WLAST         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WLAST ),
        .AXI_MSLAVE_MEM_WUSER         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WUSER ),
        .AXI_MSLAVE_MEM_BREADY        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BREADY ),
        .AXI_MSLAVE_MEM_ARVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARVALID ),
        .AXI_MSLAVE_MEM_ARLOCK        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLOCK ),
        .AXI_MSLAVE_MEM_ARUSER        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARUSER ),
        .AXI_MSLAVE_MEM_RREADY        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RREADY ),
        .AXI_MSLAVE_MMIO_AWVALID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWVALID ),
        .AXI_MSLAVE_MMIO_AWLOCK       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLOCK ),
        .AXI_MSLAVE_MMIO_AWUSER       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWUSER ),
        .AXI_MSLAVE_MMIO_WVALID       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WVALID ),
        .AXI_MSLAVE_MMIO_WLAST        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WLAST ),
        .AXI_MSLAVE_MMIO_WUSER        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WUSER ),
        .AXI_MSLAVE_MMIO_BREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BREADY ),
        .AXI_MSLAVE_MMIO_ARVALID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARVALID ),
        .AXI_MSLAVE_MMIO_ARLOCK       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLOCK ),
        .AXI_MSLAVE_MMIO_ARUSER       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARUSER ),
        .AXI_MSLAVE_MMIO_RREADY       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RREADY ),
        .AXI_MIRROR_MST_MEM_BRESP     ( CORERISCV_AXI4_0_AXI_MST_MEM_BRESP ),
        .AXI_MIRROR_MST_MEM_BID       ( CORERISCV_AXI4_0_AXI_MST_MEM_BID ),
        .AXI_MIRROR_MST_MEM_RRESP     ( CORERISCV_AXI4_0_AXI_MST_MEM_RRESP ),
        .AXI_MIRROR_MST_MEM_RDATA     ( CORERISCV_AXI4_0_AXI_MST_MEM_RDATA ),
        .AXI_MIRROR_MST_MEM_RID       ( CORERISCV_AXI4_0_AXI_MST_MEM_RID ),
        .AXI_MIRROR_MST_MMIO_BRESP    ( CORERISCV_AXI4_0_AXI_MST_MMIO_BRESP ),
        .AXI_MIRROR_MST_MMIO_BID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_BID ),
        .AXI_MIRROR_MST_MMIO_RRESP    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RRESP ),
        .AXI_MIRROR_MST_MMIO_RDATA    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RDATA ),
        .AXI_MIRROR_MST_MMIO_RID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_RID ),
        .AXI_MSLAVE_MEM_AWADDR        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWADDR ),
        .AXI_MSLAVE_MEM_AWLEN         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN ),
        .AXI_MSLAVE_MEM_AWSIZE        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWSIZE ),
        .AXI_MSLAVE_MEM_AWBURST       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWBURST ),
        .AXI_MSLAVE_MEM_AWCACHE       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWCACHE ),
        .AXI_MSLAVE_MEM_AWPROT        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWPROT ),
        .AXI_MSLAVE_MEM_AWID          ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWID ),
        .AXI_MSLAVE_MEM_WDATA         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WDATA ),
        .AXI_MSLAVE_MEM_WID           ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WID ),
        .AXI_MSLAVE_MEM_WSTRB         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WSTRB ),
        .AXI_MSLAVE_MEM_ARADDR        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARADDR ),
        .AXI_MSLAVE_MEM_ARLEN         ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN ),
        .AXI_MSLAVE_MEM_ARSIZE        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARSIZE ),
        .AXI_MSLAVE_MEM_ARBURST       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARBURST ),
        .AXI_MSLAVE_MEM_ARCACHE       ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARCACHE ),
        .AXI_MSLAVE_MEM_ARPROT        ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARPROT ),
        .AXI_MSLAVE_MEM_ARID          ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARID ),
        .AXI_MSLAVE_MMIO_AWADDR       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWADDR ),
        .AXI_MSLAVE_MMIO_AWLEN        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN ),
        .AXI_MSLAVE_MMIO_AWSIZE       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWSIZE ),
        .AXI_MSLAVE_MMIO_AWBURST      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWBURST ),
        .AXI_MSLAVE_MMIO_AWCACHE      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWCACHE ),
        .AXI_MSLAVE_MMIO_AWPROT       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWPROT ),
        .AXI_MSLAVE_MMIO_AWID         ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWID ),
        .AXI_MSLAVE_MMIO_WDATA        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WDATA ),
        .AXI_MSLAVE_MMIO_WID          ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WID ),
        .AXI_MSLAVE_MMIO_WSTRB        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WSTRB ),
        .AXI_MSLAVE_MMIO_ARADDR       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARADDR ),
        .AXI_MSLAVE_MMIO_ARLEN        ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN ),
        .AXI_MSLAVE_MMIO_ARSIZE       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARSIZE ),
        .AXI_MSLAVE_MMIO_ARBURST      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARBURST ),
        .AXI_MSLAVE_MMIO_ARCACHE      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARCACHE ),
        .AXI_MSLAVE_MMIO_ARPROT       ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARPROT ),
        .AXI_MSLAVE_MMIO_ARID         ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARID ) 
        );

//--------AXI_GLUE_LOGIC   -   User:GlueLogic:AXI_GLUE_LOGIC:1.0.7
AXI_GLUE_LOGIC AXI_GLUE_LOGIC_1(
        // Inputs
        .CLK                          ( RTG4FCCC_0_GL0_3 ),
        .RESET                        ( AND2_0_Y_1 ),
        .AXI_MIRROR_MST_MEM_AWVALID   ( CORERISCV_AXI4_1_AXI_MST_MEM_AWVALID ),
        .AXI_MIRROR_MST_MEM_AWLOCK    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWLOCK ),
        .AXI_MIRROR_MST_MEM_AWUSER    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWUSER ),
        .AXI_MIRROR_MST_MEM_WVALID    ( CORERISCV_AXI4_1_AXI_MST_MEM_WVALID ),
        .AXI_MIRROR_MST_MEM_WLAST     ( CORERISCV_AXI4_1_AXI_MST_MEM_WLAST ),
        .AXI_MIRROR_MST_MEM_WUSER     ( CORERISCV_AXI4_1_AXI_MST_MEM_WUSER ),
        .AXI_MIRROR_MST_MEM_BREADY    ( CORERISCV_AXI4_1_AXI_MST_MEM_BREADY ),
        .AXI_MIRROR_MST_MEM_ARVALID   ( CORERISCV_AXI4_1_AXI_MST_MEM_ARVALID ),
        .AXI_MIRROR_MST_MEM_ARLOCK    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARLOCK ),
        .AXI_MIRROR_MST_MEM_ARUSER    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARUSER ),
        .AXI_MIRROR_MST_MEM_RREADY    ( CORERISCV_AXI4_1_AXI_MST_MEM_RREADY ),
        .AXI_MIRROR_MST_MMIO_AWVALID  ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWVALID ),
        .AXI_MIRROR_MST_MMIO_AWLOCK   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWLOCK ),
        .AXI_MIRROR_MST_MMIO_AWUSER   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWUSER ),
        .AXI_MIRROR_MST_MMIO_WVALID   ( CORERISCV_AXI4_1_AXI_MST_MMIO_WVALID ),
        .AXI_MIRROR_MST_MMIO_WLAST    ( CORERISCV_AXI4_1_AXI_MST_MMIO_WLAST ),
        .AXI_MIRROR_MST_MMIO_WUSER    ( CORERISCV_AXI4_1_AXI_MST_MMIO_WUSER ),
        .AXI_MIRROR_MST_MMIO_BREADY   ( CORERISCV_AXI4_1_AXI_MST_MMIO_BREADY ),
        .AXI_MIRROR_MST_MMIO_ARVALID  ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARVALID ),
        .AXI_MIRROR_MST_MMIO_ARLOCK   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARLOCK ),
        .AXI_MIRROR_MST_MMIO_ARUSER   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARUSER ),
        .AXI_MIRROR_MST_MMIO_RREADY   ( CORERISCV_AXI4_1_AXI_MST_MMIO_RREADY ),
        .AXI_MSLAVE_MEM_AWREADY       ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWREADY ),
        .AXI_MSLAVE_MEM_WREADY        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WREADY ),
        .AXI_MSLAVE_MEM_BVALID        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BVALID ),
        .AXI_MSLAVE_MEM_BUSER         ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MEM_ARREADY       ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARREADY ),
        .AXI_MSLAVE_MEM_RVALID        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RVALID ),
        .AXI_MSLAVE_MEM_RLAST         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RLAST ),
        .AXI_MSLAVE_MEM_RUSER         ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MMIO_AWREADY      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWREADY ),
        .AXI_MSLAVE_MMIO_WREADY       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WREADY ),
        .AXI_MSLAVE_MMIO_BVALID       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_BVALID ),
        .AXI_MSLAVE_MMIO_BUSER        ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSLAVE_MMIO_ARREADY      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARREADY ),
        .AXI_MSLAVE_MMIO_RVALID       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RVALID ),
        .AXI_MSLAVE_MMIO_RLAST        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RLAST ),
        .AXI_MSLAVE_MMIO_RUSER        ( GND_net ), // tied to 1'b0 from definition
        .AXI_MIRROR_MST_MEM_AWADDR    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWADDR ),
        .AXI_MIRROR_MST_MEM_AWLEN     ( CORERISCV_AXI4_1_AXI_MST_MEM_AWLEN ),
        .AXI_MIRROR_MST_MEM_AWSIZE    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWSIZE ),
        .AXI_MIRROR_MST_MEM_AWBURST   ( CORERISCV_AXI4_1_AXI_MST_MEM_AWBURST ),
        .AXI_MIRROR_MST_MEM_AWCACHE   ( CORERISCV_AXI4_1_AXI_MST_MEM_AWCACHE ),
        .AXI_MIRROR_MST_MEM_AWPROT    ( CORERISCV_AXI4_1_AXI_MST_MEM_AWPROT ),
        .AXI_MIRROR_MST_MEM_AWQOS     ( CORERISCV_AXI4_1_AXI_MST_MEM_AWQOS ),
        .AXI_MIRROR_MST_MEM_AWREGION  ( CORERISCV_AXI4_1_AXI_MST_MEM_AWREGION ),
        .AXI_MIRROR_MST_MEM_AWID      ( CORERISCV_AXI4_1_AXI_MST_MEM_AWID ),
        .AXI_MIRROR_MST_MEM_WDATA     ( CORERISCV_AXI4_1_AXI_MST_MEM_WDATA ),
        .AXI_MIRROR_MST_MEM_WID       ( CORERISCV_AXI4_1_AXI_MST_MEM_WID ),
        .AXI_MIRROR_MST_MEM_WSTRB     ( CORERISCV_AXI4_1_AXI_MST_MEM_WSTRB ),
        .AXI_MIRROR_MST_MEM_ARADDR    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARADDR ),
        .AXI_MIRROR_MST_MEM_ARLEN     ( CORERISCV_AXI4_1_AXI_MST_MEM_ARLEN ),
        .AXI_MIRROR_MST_MEM_ARSIZE    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARSIZE ),
        .AXI_MIRROR_MST_MEM_ARBURST   ( CORERISCV_AXI4_1_AXI_MST_MEM_ARBURST ),
        .AXI_MIRROR_MST_MEM_ARCACHE   ( CORERISCV_AXI4_1_AXI_MST_MEM_ARCACHE ),
        .AXI_MIRROR_MST_MEM_ARPROT    ( CORERISCV_AXI4_1_AXI_MST_MEM_ARPROT ),
        .AXI_MIRROR_MST_MEM_ARQOS     ( CORERISCV_AXI4_1_AXI_MST_MEM_ARQOS ),
        .AXI_MIRROR_MST_MEM_ARREGION  ( CORERISCV_AXI4_1_AXI_MST_MEM_ARREGION ),
        .AXI_MIRROR_MST_MEM_ARID      ( CORERISCV_AXI4_1_AXI_MST_MEM_ARID ),
        .AXI_MIRROR_MST_MMIO_AWADDR   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWADDR ),
        .AXI_MIRROR_MST_MMIO_AWLEN    ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWLEN ),
        .AXI_MIRROR_MST_MMIO_AWSIZE   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWSIZE ),
        .AXI_MIRROR_MST_MMIO_AWBURST  ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWBURST ),
        .AXI_MIRROR_MST_MMIO_AWCACHE  ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWCACHE ),
        .AXI_MIRROR_MST_MMIO_AWPROT   ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWPROT ),
        .AXI_MIRROR_MST_MMIO_AWQOS    ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWQOS ),
        .AXI_MIRROR_MST_MMIO_AWREGION ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWREGION ),
        .AXI_MIRROR_MST_MMIO_AWID     ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWID ),
        .AXI_MIRROR_MST_MMIO_WDATA    ( CORERISCV_AXI4_1_AXI_MST_MMIO_WDATA ),
        .AXI_MIRROR_MST_MMIO_WID      ( CORERISCV_AXI4_1_AXI_MST_MMIO_WID ),
        .AXI_MIRROR_MST_MMIO_WSTRB    ( CORERISCV_AXI4_1_AXI_MST_MMIO_WSTRB ),
        .AXI_MIRROR_MST_MMIO_ARADDR   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARADDR ),
        .AXI_MIRROR_MST_MMIO_ARLEN    ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARLEN ),
        .AXI_MIRROR_MST_MMIO_ARSIZE   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARSIZE ),
        .AXI_MIRROR_MST_MMIO_ARBURST  ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARBURST ),
        .AXI_MIRROR_MST_MMIO_ARCACHE  ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARCACHE ),
        .AXI_MIRROR_MST_MMIO_ARPROT   ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARPROT ),
        .AXI_MIRROR_MST_MMIO_ARQOS    ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARQOS ),
        .AXI_MIRROR_MST_MMIO_ARREGION ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARREGION ),
        .AXI_MIRROR_MST_MMIO_ARID     ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARID ),
        .AXI_MSLAVE_MEM_BRESP         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BRESP ),
        .AXI_MSLAVE_MEM_BID           ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BID ),
        .AXI_MSLAVE_MEM_RRESP         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RRESP ),
        .AXI_MSLAVE_MEM_RDATA         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RDATA ),
        .AXI_MSLAVE_MEM_RID           ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RID ),
        .AXI_MSLAVE_MMIO_BRESP        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_BRESP ),
        .AXI_MSLAVE_MMIO_BID          ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_BID ),
        .AXI_MSLAVE_MMIO_RRESP        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RRESP ),
        .AXI_MSLAVE_MMIO_RDATA        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RDATA ),
        .AXI_MSLAVE_MMIO_RID          ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RID ),
        // Outputs
        .AXI_MIRROR_MST_MEM_AWREADY   ( CORERISCV_AXI4_1_AXI_MST_MEM_AWREADY ),
        .AXI_MIRROR_MST_MEM_WREADY    ( CORERISCV_AXI4_1_AXI_MST_MEM_WREADY ),
        .AXI_MIRROR_MST_MEM_BVALID    ( CORERISCV_AXI4_1_AXI_MST_MEM_BVALID ),
        .AXI_MIRROR_MST_MEM_BUSER     ( CORERISCV_AXI4_1_AXI_MST_MEM_BUSER ),
        .AXI_MIRROR_MST_MEM_ARREADY   ( CORERISCV_AXI4_1_AXI_MST_MEM_ARREADY ),
        .AXI_MIRROR_MST_MEM_RVALID    ( CORERISCV_AXI4_1_AXI_MST_MEM_RVALID ),
        .AXI_MIRROR_MST_MEM_RLAST     ( CORERISCV_AXI4_1_AXI_MST_MEM_RLAST ),
        .AXI_MIRROR_MST_MEM_RUSER     ( CORERISCV_AXI4_1_AXI_MST_MEM_RUSER ),
        .AXI_MIRROR_MST_MMIO_AWREADY  ( CORERISCV_AXI4_1_AXI_MST_MMIO_AWREADY ),
        .AXI_MIRROR_MST_MMIO_WREADY   ( CORERISCV_AXI4_1_AXI_MST_MMIO_WREADY ),
        .AXI_MIRROR_MST_MMIO_BVALID   ( CORERISCV_AXI4_1_AXI_MST_MMIO_BVALID ),
        .AXI_MIRROR_MST_MMIO_BUSER    ( CORERISCV_AXI4_1_AXI_MST_MMIO_BUSER ),
        .AXI_MIRROR_MST_MMIO_ARREADY  ( CORERISCV_AXI4_1_AXI_MST_MMIO_ARREADY ),
        .AXI_MIRROR_MST_MMIO_RVALID   ( CORERISCV_AXI4_1_AXI_MST_MMIO_RVALID ),
        .AXI_MIRROR_MST_MMIO_RLAST    ( CORERISCV_AXI4_1_AXI_MST_MMIO_RLAST ),
        .AXI_MIRROR_MST_MMIO_RUSER    ( CORERISCV_AXI4_1_AXI_MST_MMIO_RUSER ),
        .AXI_MSLAVE_MEM_AWVALID       ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWVALID ),
        .AXI_MSLAVE_MEM_AWLOCK        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLOCK ),
        .AXI_MSLAVE_MEM_AWUSER        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWUSER ),
        .AXI_MSLAVE_MEM_WVALID        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WVALID ),
        .AXI_MSLAVE_MEM_WLAST         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WLAST ),
        .AXI_MSLAVE_MEM_WUSER         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WUSER ),
        .AXI_MSLAVE_MEM_BREADY        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BREADY ),
        .AXI_MSLAVE_MEM_ARVALID       ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARVALID ),
        .AXI_MSLAVE_MEM_ARLOCK        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLOCK ),
        .AXI_MSLAVE_MEM_ARUSER        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARUSER ),
        .AXI_MSLAVE_MEM_RREADY        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RREADY ),
        .AXI_MSLAVE_MMIO_AWVALID      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWVALID ),
        .AXI_MSLAVE_MMIO_AWLOCK       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLOCK ),
        .AXI_MSLAVE_MMIO_AWUSER       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWUSER ),
        .AXI_MSLAVE_MMIO_WVALID       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WVALID ),
        .AXI_MSLAVE_MMIO_WLAST        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WLAST ),
        .AXI_MSLAVE_MMIO_WUSER        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WUSER ),
        .AXI_MSLAVE_MMIO_BREADY       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_BREADY ),
        .AXI_MSLAVE_MMIO_ARVALID      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARVALID ),
        .AXI_MSLAVE_MMIO_ARLOCK       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLOCK ),
        .AXI_MSLAVE_MMIO_ARUSER       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARUSER ),
        .AXI_MSLAVE_MMIO_RREADY       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RREADY ),
        .AXI_MIRROR_MST_MEM_BRESP     ( CORERISCV_AXI4_1_AXI_MST_MEM_BRESP ),
        .AXI_MIRROR_MST_MEM_BID       ( CORERISCV_AXI4_1_AXI_MST_MEM_BID ),
        .AXI_MIRROR_MST_MEM_RRESP     ( CORERISCV_AXI4_1_AXI_MST_MEM_RRESP ),
        .AXI_MIRROR_MST_MEM_RDATA     ( CORERISCV_AXI4_1_AXI_MST_MEM_RDATA ),
        .AXI_MIRROR_MST_MEM_RID       ( CORERISCV_AXI4_1_AXI_MST_MEM_RID ),
        .AXI_MIRROR_MST_MMIO_BRESP    ( CORERISCV_AXI4_1_AXI_MST_MMIO_BRESP ),
        .AXI_MIRROR_MST_MMIO_BID      ( CORERISCV_AXI4_1_AXI_MST_MMIO_BID ),
        .AXI_MIRROR_MST_MMIO_RRESP    ( CORERISCV_AXI4_1_AXI_MST_MMIO_RRESP ),
        .AXI_MIRROR_MST_MMIO_RDATA    ( CORERISCV_AXI4_1_AXI_MST_MMIO_RDATA ),
        .AXI_MIRROR_MST_MMIO_RID      ( CORERISCV_AXI4_1_AXI_MST_MMIO_RID ),
        .AXI_MSLAVE_MEM_AWADDR        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWADDR ),
        .AXI_MSLAVE_MEM_AWLEN         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN ),
        .AXI_MSLAVE_MEM_AWSIZE        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWSIZE ),
        .AXI_MSLAVE_MEM_AWBURST       ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWBURST ),
        .AXI_MSLAVE_MEM_AWCACHE       ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWCACHE ),
        .AXI_MSLAVE_MEM_AWPROT        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWPROT ),
        .AXI_MSLAVE_MEM_AWID          ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWID ),
        .AXI_MSLAVE_MEM_WDATA         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WDATA ),
        .AXI_MSLAVE_MEM_WID           ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WID ),
        .AXI_MSLAVE_MEM_WSTRB         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WSTRB ),
        .AXI_MSLAVE_MEM_ARADDR        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARADDR ),
        .AXI_MSLAVE_MEM_ARLEN         ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN ),
        .AXI_MSLAVE_MEM_ARSIZE        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARSIZE ),
        .AXI_MSLAVE_MEM_ARBURST       ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARBURST ),
        .AXI_MSLAVE_MEM_ARCACHE       ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARCACHE ),
        .AXI_MSLAVE_MEM_ARPROT        ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARPROT ),
        .AXI_MSLAVE_MEM_ARID          ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARID ),
        .AXI_MSLAVE_MMIO_AWADDR       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWADDR ),
        .AXI_MSLAVE_MMIO_AWLEN        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN ),
        .AXI_MSLAVE_MMIO_AWSIZE       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWSIZE ),
        .AXI_MSLAVE_MMIO_AWBURST      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWBURST ),
        .AXI_MSLAVE_MMIO_AWCACHE      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWCACHE ),
        .AXI_MSLAVE_MMIO_AWPROT       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWPROT ),
        .AXI_MSLAVE_MMIO_AWID         ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWID ),
        .AXI_MSLAVE_MMIO_WDATA        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WDATA ),
        .AXI_MSLAVE_MMIO_WID          ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WID ),
        .AXI_MSLAVE_MMIO_WSTRB        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WSTRB ),
        .AXI_MSLAVE_MMIO_ARADDR       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARADDR ),
        .AXI_MSLAVE_MMIO_ARLEN        ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN ),
        .AXI_MSLAVE_MMIO_ARSIZE       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARSIZE ),
        .AXI_MSLAVE_MMIO_ARBURST      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARBURST ),
        .AXI_MSLAVE_MMIO_ARCACHE      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARCACHE ),
        .AXI_MSLAVE_MMIO_ARPROT       ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARPROT ),
        .AXI_MSLAVE_MMIO_ARID         ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARID ) 
        );

//--------CORERISCV_AXI4   -   Actel:DirectCore:CORERISCV_AXI4:1.0.100
CORERISCV_AXI4 #( 
        .RESET_VECTOR_ADDR ( 'h80000000 ) )
CONTROLRISCV(
        // Inputs
        .CLK                   ( RTG4FCCC_0_GL0_3 ),
        .RESET                 ( RESET_IN_POST_INV1_0 ),
        .AXI_MST_MEM_AWREADY   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWREADY ),
        .AXI_MST_MEM_WREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_WREADY ),
        .AXI_MST_MEM_BVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_BVALID ),
        .AXI_MST_MEM_BUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_BUSER ),
        .AXI_MST_MEM_ARREADY   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARREADY ),
        .AXI_MST_MEM_RVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_RVALID ),
        .AXI_MST_MEM_RLAST     ( CORERISCV_AXI4_0_AXI_MST_MEM_RLAST ),
        .AXI_MST_MEM_RUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_RUSER ),
        .AXI_MST_MMIO_AWREADY  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWREADY ),
        .AXI_MST_MMIO_WREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_WREADY ),
        .AXI_MST_MMIO_BVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_BVALID ),
        .AXI_MST_MMIO_BUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_BUSER ),
        .AXI_MST_MMIO_ARREADY  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARREADY ),
        .AXI_MST_MMIO_RVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_RVALID ),
        .AXI_MST_MMIO_RLAST    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RLAST ),
        .AXI_MST_MMIO_RUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RUSER ),
        .TDI                   ( COREJTAGDEBUG_0_TGT_TDI ),
        .TCK                   ( COREJTAGDEBUG_0_TGT_TCK ),
        .TMS                   ( COREJTAGDEBUG_0_TGT_TMS ),
        .TRST                  ( COREJTAGDEBUG_0_TGT_TRST ),
        .AXI_MST_MEM_BRESP     ( CORERISCV_AXI4_0_AXI_MST_MEM_BRESP ),
        .AXI_MST_MEM_BID       ( CORERISCV_AXI4_0_AXI_MST_MEM_BID ),
        .AXI_MST_MEM_RRESP     ( CORERISCV_AXI4_0_AXI_MST_MEM_RRESP ),
        .AXI_MST_MEM_RDATA     ( CORERISCV_AXI4_0_AXI_MST_MEM_RDATA ),
        .AXI_MST_MEM_RID       ( CORERISCV_AXI4_0_AXI_MST_MEM_RID ),
        .AXI_MST_MMIO_BRESP    ( CORERISCV_AXI4_0_AXI_MST_MMIO_BRESP ),
        .AXI_MST_MMIO_BID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_BID ),
        .AXI_MST_MMIO_RRESP    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RRESP ),
        .AXI_MST_MMIO_RDATA    ( CORERISCV_AXI4_0_AXI_MST_MMIO_RDATA ),
        .AXI_MST_MMIO_RID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_RID ),
        .IRQ                   ( IRQ_net_1 ),
        // Outputs
        .AXI_MST_MEM_AWVALID   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWVALID ),
        .AXI_MST_MEM_AWLOCK    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWLOCK ),
        .AXI_MST_MEM_AWUSER    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWUSER ),
        .AXI_MST_MEM_WVALID    ( CORERISCV_AXI4_0_AXI_MST_MEM_WVALID ),
        .AXI_MST_MEM_WLAST     ( CORERISCV_AXI4_0_AXI_MST_MEM_WLAST ),
        .AXI_MST_MEM_WUSER     ( CORERISCV_AXI4_0_AXI_MST_MEM_WUSER ),
        .AXI_MST_MEM_BREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_BREADY ),
        .AXI_MST_MEM_ARVALID   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARVALID ),
        .AXI_MST_MEM_ARLOCK    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARLOCK ),
        .AXI_MST_MEM_ARUSER    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARUSER ),
        .AXI_MST_MEM_RREADY    ( CORERISCV_AXI4_0_AXI_MST_MEM_RREADY ),
        .AXI_MST_MMIO_AWVALID  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWVALID ),
        .AXI_MST_MMIO_AWLOCK   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWLOCK ),
        .AXI_MST_MMIO_AWUSER   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWUSER ),
        .AXI_MST_MMIO_WVALID   ( CORERISCV_AXI4_0_AXI_MST_MMIO_WVALID ),
        .AXI_MST_MMIO_WLAST    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WLAST ),
        .AXI_MST_MMIO_WUSER    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WUSER ),
        .AXI_MST_MMIO_BREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_BREADY ),
        .AXI_MST_MMIO_ARVALID  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARVALID ),
        .AXI_MST_MMIO_ARLOCK   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARLOCK ),
        .AXI_MST_MMIO_ARUSER   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARUSER ),
        .AXI_MST_MMIO_RREADY   ( CORERISCV_AXI4_0_AXI_MST_MMIO_RREADY ),
        .TDO                   ( CORERISCV_AXI4_0_TDO ),
        .DRV_TDO               (  ),
        .AXI_MST_MEM_AWADDR    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWADDR ),
        .AXI_MST_MEM_AWLEN     ( CORERISCV_AXI4_0_AXI_MST_MEM_AWLEN ),
        .AXI_MST_MEM_AWSIZE    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWSIZE ),
        .AXI_MST_MEM_AWBURST   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWBURST ),
        .AXI_MST_MEM_AWCACHE   ( CORERISCV_AXI4_0_AXI_MST_MEM_AWCACHE ),
        .AXI_MST_MEM_AWPROT    ( CORERISCV_AXI4_0_AXI_MST_MEM_AWPROT ),
        .AXI_MST_MEM_AWQOS     ( CORERISCV_AXI4_0_AXI_MST_MEM_AWQOS ),
        .AXI_MST_MEM_AWREGION  ( CORERISCV_AXI4_0_AXI_MST_MEM_AWREGION ),
        .AXI_MST_MEM_AWID      ( CORERISCV_AXI4_0_AXI_MST_MEM_AWID ),
        .AXI_MST_MEM_WDATA     ( CORERISCV_AXI4_0_AXI_MST_MEM_WDATA ),
        .AXI_MST_MEM_WSTRB     ( CORERISCV_AXI4_0_AXI_MST_MEM_WSTRB ),
        .AXI_MST_MEM_ARADDR    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARADDR ),
        .AXI_MST_MEM_ARLEN     ( CORERISCV_AXI4_0_AXI_MST_MEM_ARLEN ),
        .AXI_MST_MEM_ARSIZE    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARSIZE ),
        .AXI_MST_MEM_ARBURST   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARBURST ),
        .AXI_MST_MEM_ARCACHE   ( CORERISCV_AXI4_0_AXI_MST_MEM_ARCACHE ),
        .AXI_MST_MEM_ARPROT    ( CORERISCV_AXI4_0_AXI_MST_MEM_ARPROT ),
        .AXI_MST_MEM_ARQOS     ( CORERISCV_AXI4_0_AXI_MST_MEM_ARQOS ),
        .AXI_MST_MEM_ARREGION  ( CORERISCV_AXI4_0_AXI_MST_MEM_ARREGION ),
        .AXI_MST_MEM_ARID      ( CORERISCV_AXI4_0_AXI_MST_MEM_ARID ),
        .AXI_MST_MMIO_AWADDR   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWADDR ),
        .AXI_MST_MMIO_AWLEN    ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWLEN ),
        .AXI_MST_MMIO_AWSIZE   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWSIZE ),
        .AXI_MST_MMIO_AWBURST  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWBURST ),
        .AXI_MST_MMIO_AWCACHE  ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWCACHE ),
        .AXI_MST_MMIO_AWPROT   ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWPROT ),
        .AXI_MST_MMIO_AWQOS    ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWQOS ),
        .AXI_MST_MMIO_AWREGION ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWREGION ),
        .AXI_MST_MMIO_AWID     ( CORERISCV_AXI4_0_AXI_MST_MMIO_AWID ),
        .AXI_MST_MMIO_WDATA    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WDATA ),
        .AXI_MST_MMIO_WSTRB    ( CORERISCV_AXI4_0_AXI_MST_MMIO_WSTRB ),
        .AXI_MST_MMIO_ARADDR   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARADDR ),
        .AXI_MST_MMIO_ARLEN    ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARLEN ),
        .AXI_MST_MMIO_ARSIZE   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARSIZE ),
        .AXI_MST_MMIO_ARBURST  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARBURST ),
        .AXI_MST_MMIO_ARCACHE  ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARCACHE ),
        .AXI_MST_MMIO_ARPROT   ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARPROT ),
        .AXI_MST_MMIO_ARQOS    ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARQOS ),
        .AXI_MST_MMIO_ARREGION ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARREGION ),
        .AXI_MST_MMIO_ARID     ( CORERISCV_AXI4_0_AXI_MST_MMIO_ARID ),
        .AXI_MST_MEM_WID       ( CORERISCV_AXI4_0_AXI_MST_MEM_WID ),
        .AXI_MST_MMIO_WID      ( CORERISCV_AXI4_0_AXI_MST_MMIO_WID ) 
        );

//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 25 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 0 ),
        .M0_AHBSLOT7ENABLE  ( 0 ),
        .M0_AHBSLOT8ENABLE  ( 1 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 1 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 1 ),
        .M1_AHBSLOT0ENABLE  ( 0 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 1 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 1 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 1 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 0 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 0 ),
        .MEMSPACE           ( 1 ),
        .SC_0               ( 0 ),
        .SC_1               ( 0 ),
        .SC_2               ( 0 ),
        .SC_3               ( 0 ),
        .SC_4               ( 0 ),
        .SC_5               ( 0 ),
        .SC_6               ( 0 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_0(
        // Inputs
        .HCLK          ( RTG4FCCC_0_GL0_3 ),
        .HRESETN       ( AND2_0_Y_1 ),
        .REMAP_M0      ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M0  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M0     ( COREAXITOAHBL_1_AHBMasterIF_HWRITE ),
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M1     ( COREBOOTSTRAP_0_AHB_MASTER_HWRITE ),
        .HMASTLOCK_M2  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M2     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M3     ( GND_net ), // tied to 1'b0 from definition
        .HREADYOUT_S0  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S6  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S7  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S8  ( CoreAHBLite_0_AHBmslave8_HREADYOUT ),
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S10 ( CoreAHBLite_0_AHBmslave10_HREADYOUT ),
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S16 ( VCC_net ), // tied to 1'b1 from definition
        .HADDR_M0      ( COREAXITOAHBL_1_AHBMasterIF_HADDR ),
        .HSIZE_M0      ( COREAXITOAHBL_1_AHBMasterIF_HSIZE ),
        .HTRANS_M0     ( COREAXITOAHBL_1_AHBMasterIF_HTRANS ),
        .HWDATA_M0     ( COREAXITOAHBL_1_AHBMasterIF_HWDATA ),
        .HBURST_M0     ( COREAXITOAHBL_1_AHBMasterIF_HBURST ),
        .HPROT_M0      ( HPROT_M0_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M1      ( COREBOOTSTRAP_0_AHB_MASTER_HADDR ),
        .HSIZE_M1      ( COREBOOTSTRAP_0_AHB_MASTER_HSIZE ),
        .HTRANS_M1     ( COREBOOTSTRAP_0_AHB_MASTER_HTRANS ),
        .HWDATA_M1     ( COREBOOTSTRAP_0_AHB_MASTER_HWDATA ),
        .HBURST_M1     ( COREBOOTSTRAP_0_AHB_MASTER_HBURST ),
        .HPROT_M1      ( HPROT_M1_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M2      ( HADDR_M2_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M2      ( HSIZE_M2_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M2     ( HTRANS_M2_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M2     ( HWDATA_M2_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M2     ( HBURST_M2_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M2      ( HPROT_M2_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M3      ( HADDR_M3_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M3      ( HSIZE_M3_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M3     ( HTRANS_M3_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M3     ( HWDATA_M3_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M3     ( HBURST_M3_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M3      ( HPROT_M3_const_net_0 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( HRDATA_S0_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S0      ( HRESP_S0_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S1     ( HRDATA_S1_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S1      ( HRESP_S1_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S2      ( HRESP_S2_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S3      ( HRESP_S3_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S4      ( HRESP_S4_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S5      ( HRESP_S5_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( HRDATA_S6_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S6      ( HRESP_S6_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S7     ( HRDATA_S7_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S7      ( HRESP_S7_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S8     ( CoreAHBLite_0_AHBmslave8_HRDATA ),
        .HRESP_S8      ( CoreAHBLite_0_AHBmslave8_HRESP_0 ),
        .HRDATA_S9     ( HRDATA_S9_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S9      ( HRESP_S9_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( CoreAHBLite_0_AHBmslave10_HRDATA ),
        .HRESP_S10     ( CoreAHBLite_0_AHBmslave10_HRESP ),
        .HRDATA_S11    ( HRDATA_S11_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S11     ( HRESP_S11_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S12     ( HRESP_S12_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S13     ( HRESP_S13_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S14     ( HRESP_S14_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S15     ( HRESP_S15_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( HRDATA_S16_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S16     ( HRESP_S16_const_net_0 ), // tied to 2'h0 from definition
        // Outputs
        .HREADY_M0     ( COREAXITOAHBL_1_AHBMasterIF_HREADY ),
        .HREADY_M1     ( COREBOOTSTRAP_0_AHB_MASTER_HREADY ),
        .HREADY_M2     (  ),
        .HREADY_M3     (  ),
        .HSEL_S0       (  ),
        .HWRITE_S0     (  ),
        .HREADY_S0     (  ),
        .HMASTLOCK_S0  (  ),
        .HSEL_S1       (  ),
        .HWRITE_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HSEL_S2       (  ),
        .HWRITE_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HSEL_S3       (  ),
        .HWRITE_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HSEL_S4       (  ),
        .HWRITE_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HSEL_S5       (  ),
        .HWRITE_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HSEL_S6       (  ),
        .HWRITE_S6     (  ),
        .HREADY_S6     (  ),
        .HMASTLOCK_S6  (  ),
        .HSEL_S7       (  ),
        .HWRITE_S7     (  ),
        .HREADY_S7     (  ),
        .HMASTLOCK_S7  (  ),
        .HSEL_S8       ( CoreAHBLite_0_AHBmslave8_HSELx ),
        .HWRITE_S8     ( CoreAHBLite_0_AHBmslave8_HWRITE ),
        .HREADY_S8     ( CoreAHBLite_0_AHBmslave8_HREADY ),
        .HMASTLOCK_S8  ( CoreAHBLite_0_AHBmslave8_HMASTLOCK ),
        .HSEL_S9       (  ),
        .HWRITE_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HSEL_S10      ( CoreAHBLite_0_AHBmslave10_HSELx ),
        .HWRITE_S10    ( CoreAHBLite_0_AHBmslave10_HWRITE ),
        .HREADY_S10    ( CoreAHBLite_0_AHBmslave10_HREADY ),
        .HMASTLOCK_S10 ( CoreAHBLite_0_AHBmslave10_HMASTLOCK ),
        .HSEL_S11      (  ),
        .HWRITE_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HSEL_S12      (  ),
        .HWRITE_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HSEL_S13      (  ),
        .HWRITE_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HSEL_S14      (  ),
        .HWRITE_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HSEL_S15      (  ),
        .HWRITE_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HSEL_S16      (  ),
        .HWRITE_S16    (  ),
        .HREADY_S16    (  ),
        .HMASTLOCK_S16 (  ),
        .HRESP_M0      ( COREAXITOAHBL_1_AHBMasterIF_HRESP ),
        .HRDATA_M0     ( COREAXITOAHBL_1_AHBMasterIF_HRDATA ),
        .HRESP_M1      ( COREBOOTSTRAP_0_AHB_MASTER_HRESP ),
        .HRDATA_M1     ( COREBOOTSTRAP_0_AHB_MASTER_HRDATA ),
        .HRESP_M2      (  ),
        .HRDATA_M2     (  ),
        .HRESP_M3      (  ),
        .HRDATA_M3     (  ),
        .HADDR_S0      (  ),
        .HSIZE_S0      (  ),
        .HTRANS_S0     (  ),
        .HWDATA_S0     (  ),
        .HBURST_S0     (  ),
        .HPROT_S0      (  ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWDATA_S1     (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWDATA_S2     (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWDATA_S3     (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWDATA_S4     (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWDATA_S5     (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HADDR_S6      (  ),
        .HSIZE_S6      (  ),
        .HTRANS_S6     (  ),
        .HWDATA_S6     (  ),
        .HBURST_S6     (  ),
        .HPROT_S6      (  ),
        .HADDR_S7      (  ),
        .HSIZE_S7      (  ),
        .HTRANS_S7     (  ),
        .HWDATA_S7     (  ),
        .HBURST_S7     (  ),
        .HPROT_S7      (  ),
        .HADDR_S8      ( CoreAHBLite_0_AHBmslave8_HADDR ),
        .HSIZE_S8      ( CoreAHBLite_0_AHBmslave8_HSIZE ),
        .HTRANS_S8     ( CoreAHBLite_0_AHBmslave8_HTRANS ),
        .HWDATA_S8     ( CoreAHBLite_0_AHBmslave8_HWDATA ),
        .HBURST_S8     ( CoreAHBLite_0_AHBmslave8_HBURST ),
        .HPROT_S8      ( CoreAHBLite_0_AHBmslave8_HPROT ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWDATA_S9     (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HADDR_S10     ( CoreAHBLite_0_AHBmslave10_HADDR ),
        .HSIZE_S10     ( CoreAHBLite_0_AHBmslave10_HSIZE ),
        .HTRANS_S10    ( CoreAHBLite_0_AHBmslave10_HTRANS ),
        .HWDATA_S10    ( CoreAHBLite_0_AHBmslave10_HWDATA ),
        .HBURST_S10    ( CoreAHBLite_0_AHBmslave10_HBURST ),
        .HPROT_S10     ( CoreAHBLite_0_AHBmslave10_HPROT ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWDATA_S11    (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWDATA_S12    (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWDATA_S13    (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWDATA_S14    (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWDATA_S15    (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HADDR_S16     (  ),
        .HSIZE_S16     (  ),
        .HTRANS_S16    (  ),
        .HWDATA_S16    (  ),
        .HBURST_S16    (  ),
        .HPROT_S16     (  ) 
        );

//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 25 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 0 ),
        .M0_AHBSLOT7ENABLE  ( 1 ),
        .M0_AHBSLOT8ENABLE  ( 0 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 0 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 0 ),
        .M1_AHBSLOT0ENABLE  ( 0 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 0 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 0 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 0 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 0 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 0 ),
        .MEMSPACE           ( 1 ),
        .SC_0               ( 0 ),
        .SC_1               ( 0 ),
        .SC_2               ( 0 ),
        .SC_3               ( 0 ),
        .SC_4               ( 0 ),
        .SC_5               ( 0 ),
        .SC_6               ( 0 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_1(
        // Inputs
        .HCLK          ( RTG4FCCC_0_GL0_3 ),
        .HRESETN       ( AND2_0_Y_1 ),
        .REMAP_M0      ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M0  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M0     ( COREAXITOAHBL_0_AHBMasterIF_HWRITE ),
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M1     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M2  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M2     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M3     ( GND_net ), // tied to 1'b0 from definition
        .HREADYOUT_S0  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S6  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S7  ( CoreAHBLite_1_AHBmslave7_HREADYOUT ),
        .HREADYOUT_S8  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S10 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S16 ( VCC_net ), // tied to 1'b1 from definition
        .HADDR_M0      ( COREAXITOAHBL_0_AHBMasterIF_HADDR ),
        .HSIZE_M0      ( COREAXITOAHBL_0_AHBMasterIF_HSIZE ),
        .HTRANS_M0     ( COREAXITOAHBL_0_AHBMasterIF_HTRANS ),
        .HWDATA_M0     ( COREAXITOAHBL_0_AHBMasterIF_HWDATA ),
        .HBURST_M0     ( COREAXITOAHBL_0_AHBMasterIF_HBURST ),
        .HPROT_M0      ( HPROT_M0_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M1      ( HADDR_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M1      ( HSIZE_M1_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M1     ( HTRANS_M1_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M1     ( HWDATA_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M1     ( HBURST_M1_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M1      ( HPROT_M1_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M2      ( HADDR_M2_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M2      ( HSIZE_M2_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M2     ( HTRANS_M2_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M2     ( HWDATA_M2_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M2     ( HBURST_M2_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M2      ( HPROT_M2_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M3      ( HADDR_M3_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M3      ( HSIZE_M3_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M3     ( HTRANS_M3_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M3     ( HWDATA_M3_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M3     ( HBURST_M3_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M3      ( HPROT_M3_const_net_1 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( HRDATA_S0_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S0      ( HRESP_S0_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S1     ( HRDATA_S1_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S1      ( HRESP_S1_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S2      ( HRESP_S2_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S3      ( HRESP_S3_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S4      ( HRESP_S4_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S5      ( HRESP_S5_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( HRDATA_S6_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S6      ( HRESP_S6_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S7     ( CoreAHBLite_1_AHBmslave7_HRDATA ),
        .HRESP_S7      ( CoreAHBLite_1_AHBmslave7_HRESP ),
        .HRDATA_S8     ( HRDATA_S8_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S8      ( HRESP_S8_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S9     ( HRDATA_S9_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S9      ( HRESP_S9_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( HRDATA_S10_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S10     ( HRESP_S10_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S11    ( HRDATA_S11_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S11     ( HRESP_S11_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S12     ( HRESP_S12_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S13     ( HRESP_S13_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S14     ( HRESP_S14_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S15     ( HRESP_S15_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( HRDATA_S16_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S16     ( HRESP_S16_const_net_1 ), // tied to 2'h0 from definition
        // Outputs
        .HREADY_M0     ( COREAXITOAHBL_0_AHBMasterIF_HREADY ),
        .HREADY_M1     (  ),
        .HREADY_M2     (  ),
        .HREADY_M3     (  ),
        .HSEL_S0       (  ),
        .HWRITE_S0     (  ),
        .HREADY_S0     (  ),
        .HMASTLOCK_S0  (  ),
        .HSEL_S1       (  ),
        .HWRITE_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HSEL_S2       (  ),
        .HWRITE_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HSEL_S3       (  ),
        .HWRITE_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HSEL_S4       (  ),
        .HWRITE_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HSEL_S5       (  ),
        .HWRITE_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HSEL_S6       (  ),
        .HWRITE_S6     (  ),
        .HREADY_S6     (  ),
        .HMASTLOCK_S6  (  ),
        .HSEL_S7       ( CoreAHBLite_1_AHBmslave7_HSELx ),
        .HWRITE_S7     ( CoreAHBLite_1_AHBmslave7_HWRITE ),
        .HREADY_S7     ( CoreAHBLite_1_AHBmslave7_HREADY ),
        .HMASTLOCK_S7  ( CoreAHBLite_1_AHBmslave7_HMASTLOCK ),
        .HSEL_S8       (  ),
        .HWRITE_S8     (  ),
        .HREADY_S8     (  ),
        .HMASTLOCK_S8  (  ),
        .HSEL_S9       (  ),
        .HWRITE_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HSEL_S10      (  ),
        .HWRITE_S10    (  ),
        .HREADY_S10    (  ),
        .HMASTLOCK_S10 (  ),
        .HSEL_S11      (  ),
        .HWRITE_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HSEL_S12      (  ),
        .HWRITE_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HSEL_S13      (  ),
        .HWRITE_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HSEL_S14      (  ),
        .HWRITE_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HSEL_S15      (  ),
        .HWRITE_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HSEL_S16      (  ),
        .HWRITE_S16    (  ),
        .HREADY_S16    (  ),
        .HMASTLOCK_S16 (  ),
        .HRESP_M0      ( COREAXITOAHBL_0_AHBMasterIF_HRESP ),
        .HRDATA_M0     ( COREAXITOAHBL_0_AHBMasterIF_HRDATA ),
        .HRESP_M1      (  ),
        .HRDATA_M1     (  ),
        .HRESP_M2      (  ),
        .HRDATA_M2     (  ),
        .HRESP_M3      (  ),
        .HRDATA_M3     (  ),
        .HADDR_S0      (  ),
        .HSIZE_S0      (  ),
        .HTRANS_S0     (  ),
        .HWDATA_S0     (  ),
        .HBURST_S0     (  ),
        .HPROT_S0      (  ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWDATA_S1     (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWDATA_S2     (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWDATA_S3     (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWDATA_S4     (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWDATA_S5     (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HADDR_S6      (  ),
        .HSIZE_S6      (  ),
        .HTRANS_S6     (  ),
        .HWDATA_S6     (  ),
        .HBURST_S6     (  ),
        .HPROT_S6      (  ),
        .HADDR_S7      ( CoreAHBLite_1_AHBmslave7_HADDR ),
        .HSIZE_S7      ( CoreAHBLite_1_AHBmslave7_HSIZE ),
        .HTRANS_S7     ( CoreAHBLite_1_AHBmslave7_HTRANS ),
        .HWDATA_S7     ( CoreAHBLite_1_AHBmslave7_HWDATA ),
        .HBURST_S7     ( CoreAHBLite_1_AHBmslave7_HBURST ),
        .HPROT_S7      ( CoreAHBLite_1_AHBmslave7_HPROT ),
        .HADDR_S8      (  ),
        .HSIZE_S8      (  ),
        .HTRANS_S8     (  ),
        .HWDATA_S8     (  ),
        .HBURST_S8     (  ),
        .HPROT_S8      (  ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWDATA_S9     (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HADDR_S10     (  ),
        .HSIZE_S10     (  ),
        .HTRANS_S10    (  ),
        .HWDATA_S10    (  ),
        .HBURST_S10    (  ),
        .HPROT_S10     (  ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWDATA_S11    (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWDATA_S12    (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWDATA_S13    (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWDATA_S14    (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWDATA_S15    (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HADDR_S16     (  ),
        .HSIZE_S16     (  ),
        .HTRANS_S16    (  ),
        .HWDATA_S16    (  ),
        .HBURST_S16    (  ),
        .HPROT_S16     (  ) 
        );

//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 25 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 0 ),
        .M0_AHBSLOT7ENABLE  ( 0 ),
        .M0_AHBSLOT8ENABLE  ( 0 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 0 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 0 ),
        .M1_AHBSLOT0ENABLE  ( 1 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 0 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 0 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 0 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 0 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 0 ),
        .MEMSPACE           ( 1 ),
        .SC_0               ( 0 ),
        .SC_1               ( 0 ),
        .SC_2               ( 0 ),
        .SC_3               ( 0 ),
        .SC_4               ( 0 ),
        .SC_5               ( 0 ),
        .SC_6               ( 0 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_2(
        // Inputs
        .HCLK          ( RTG4FCCC_0_GL0_3 ),
        .HRESETN       ( AND2_0_Y_1 ),
        .REMAP_M0      ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M0  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M0     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M1     ( COREAXITOAHBL_2_AHBMasterIF_HWRITE ),
        .HMASTLOCK_M2  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M2     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M3     ( GND_net ), // tied to 1'b0 from definition
        .HREADYOUT_S0  ( CoreAHBLite_2_AHBmslave0_HREADYOUT ),
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S6  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S7  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S8  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S10 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S16 ( VCC_net ), // tied to 1'b1 from definition
        .HADDR_M0      ( HADDR_M0_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M0      ( HSIZE_M0_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M0     ( HTRANS_M0_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M0     ( HWDATA_M0_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M0     ( HBURST_M0_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M0      ( HPROT_M0_const_net_2 ), // tied to 4'h0 from definition
        .HADDR_M1      ( COREAXITOAHBL_2_AHBMasterIF_HADDR ),
        .HSIZE_M1      ( COREAXITOAHBL_2_AHBMasterIF_HSIZE ),
        .HTRANS_M1     ( COREAXITOAHBL_2_AHBMasterIF_HTRANS ),
        .HWDATA_M1     ( COREAXITOAHBL_2_AHBMasterIF_HWDATA ),
        .HBURST_M1     ( COREAXITOAHBL_2_AHBMasterIF_HBURST ),
        .HPROT_M1      ( HPROT_M1_const_net_2 ), // tied to 4'h0 from definition
        .HADDR_M2      ( HADDR_M2_const_net_2 ), // tied to 32'h00000000 from definition
        .HSIZE_M2      ( HSIZE_M2_const_net_2 ), // tied to 3'h0 from definition
        .HTRANS_M2     ( HTRANS_M2_const_net_2 ), // tied to 2'h0 from definition
        .HWDATA_M2     ( HWDATA_M2_const_net_2 ), // tied to 32'h00000000 from definition
        .HBURST_M2     ( HBURST_M2_const_net_2 ), // tied to 3'h0 from definition
        .HPROT_M2      ( HPROT_M2_const_net_2 ), // tied to 4'h0 from definition
        .HADDR_M3      ( HADDR_M3_const_net_2 ), // tied to 32'h00000000 from definition
        .HSIZE_M3      ( HSIZE_M3_const_net_2 ), // tied to 3'h0 from definition
        .HTRANS_M3     ( HTRANS_M3_const_net_2 ), // tied to 2'h0 from definition
        .HWDATA_M3     ( HWDATA_M3_const_net_2 ), // tied to 32'h00000000 from definition
        .HBURST_M3     ( HBURST_M3_const_net_2 ), // tied to 3'h0 from definition
        .HPROT_M3      ( HPROT_M3_const_net_2 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( CoreAHBLite_2_AHBmslave0_HRDATA ),
        .HRESP_S0      ( CoreAHBLite_2_AHBmslave0_HRESP ),
        .HRDATA_S1     ( HRDATA_S1_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S1      ( HRESP_S1_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S2      ( HRESP_S2_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S3      ( HRESP_S3_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S4      ( HRESP_S4_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S5      ( HRESP_S5_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( HRDATA_S6_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S6      ( HRESP_S6_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S7     ( HRDATA_S7_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S7      ( HRESP_S7_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S8     ( HRDATA_S8_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S8      ( HRESP_S8_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S9     ( HRDATA_S9_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S9      ( HRESP_S9_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( HRDATA_S10_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S10     ( HRESP_S10_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S11    ( HRDATA_S11_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S11     ( HRESP_S11_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S12     ( HRESP_S12_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S13     ( HRESP_S13_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S14     ( HRESP_S14_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S15     ( HRESP_S15_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( HRDATA_S16_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S16     ( HRESP_S16_const_net_2 ), // tied to 2'h0 from definition
        // Outputs
        .HREADY_M0     (  ),
        .HREADY_M1     ( COREAXITOAHBL_2_AHBMasterIF_HREADY ),
        .HREADY_M2     (  ),
        .HREADY_M3     (  ),
        .HSEL_S0       ( CoreAHBLite_2_AHBmslave0_HSELx ),
        .HWRITE_S0     ( CoreAHBLite_2_AHBmslave0_HWRITE ),
        .HREADY_S0     ( CoreAHBLite_2_AHBmslave0_HREADY ),
        .HMASTLOCK_S0  ( CoreAHBLite_2_AHBmslave0_HMASTLOCK ),
        .HSEL_S1       (  ),
        .HWRITE_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HSEL_S2       (  ),
        .HWRITE_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HSEL_S3       (  ),
        .HWRITE_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HSEL_S4       (  ),
        .HWRITE_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HSEL_S5       (  ),
        .HWRITE_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HSEL_S6       (  ),
        .HWRITE_S6     (  ),
        .HREADY_S6     (  ),
        .HMASTLOCK_S6  (  ),
        .HSEL_S7       (  ),
        .HWRITE_S7     (  ),
        .HREADY_S7     (  ),
        .HMASTLOCK_S7  (  ),
        .HSEL_S8       (  ),
        .HWRITE_S8     (  ),
        .HREADY_S8     (  ),
        .HMASTLOCK_S8  (  ),
        .HSEL_S9       (  ),
        .HWRITE_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HSEL_S10      (  ),
        .HWRITE_S10    (  ),
        .HREADY_S10    (  ),
        .HMASTLOCK_S10 (  ),
        .HSEL_S11      (  ),
        .HWRITE_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HSEL_S12      (  ),
        .HWRITE_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HSEL_S13      (  ),
        .HWRITE_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HSEL_S14      (  ),
        .HWRITE_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HSEL_S15      (  ),
        .HWRITE_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HSEL_S16      (  ),
        .HWRITE_S16    (  ),
        .HREADY_S16    (  ),
        .HMASTLOCK_S16 (  ),
        .HRESP_M0      (  ),
        .HRDATA_M0     (  ),
        .HRESP_M1      ( COREAXITOAHBL_2_AHBMasterIF_HRESP ),
        .HRDATA_M1     ( COREAXITOAHBL_2_AHBMasterIF_HRDATA ),
        .HRESP_M2      (  ),
        .HRDATA_M2     (  ),
        .HRESP_M3      (  ),
        .HRDATA_M3     (  ),
        .HADDR_S0      ( CoreAHBLite_2_AHBmslave0_HADDR ),
        .HSIZE_S0      ( CoreAHBLite_2_AHBmslave0_HSIZE ),
        .HTRANS_S0     ( CoreAHBLite_2_AHBmslave0_HTRANS ),
        .HWDATA_S0     ( CoreAHBLite_2_AHBmslave0_HWDATA ),
        .HBURST_S0     ( CoreAHBLite_2_AHBmslave0_HBURST ),
        .HPROT_S0      ( CoreAHBLite_2_AHBmslave0_HPROT ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWDATA_S1     (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWDATA_S2     (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWDATA_S3     (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWDATA_S4     (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWDATA_S5     (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HADDR_S6      (  ),
        .HSIZE_S6      (  ),
        .HTRANS_S6     (  ),
        .HWDATA_S6     (  ),
        .HBURST_S6     (  ),
        .HPROT_S6      (  ),
        .HADDR_S7      (  ),
        .HSIZE_S7      (  ),
        .HTRANS_S7     (  ),
        .HWDATA_S7     (  ),
        .HBURST_S7     (  ),
        .HPROT_S7      (  ),
        .HADDR_S8      (  ),
        .HSIZE_S8      (  ),
        .HTRANS_S8     (  ),
        .HWDATA_S8     (  ),
        .HBURST_S8     (  ),
        .HPROT_S8      (  ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWDATA_S9     (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HADDR_S10     (  ),
        .HSIZE_S10     (  ),
        .HTRANS_S10    (  ),
        .HWDATA_S10    (  ),
        .HBURST_S10    (  ),
        .HPROT_S10     (  ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWDATA_S11    (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWDATA_S12    (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWDATA_S13    (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWDATA_S14    (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWDATA_S15    (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HADDR_S16     (  ),
        .HSIZE_S16     (  ),
        .HTRANS_S16    (  ),
        .HWDATA_S16    (  ),
        .HBURST_S16    (  ),
        .HPROT_S16     (  ) 
        );

//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 25 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 0 ),
        .M0_AHBSLOT7ENABLE  ( 0 ),
        .M0_AHBSLOT8ENABLE  ( 0 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 0 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 0 ),
        .M1_AHBSLOT0ENABLE  ( 0 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 0 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 0 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 0 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 1 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 1 ),
        .MEMSPACE           ( 0 ),
        .SC_0               ( 0 ),
        .SC_1               ( 0 ),
        .SC_2               ( 0 ),
        .SC_3               ( 0 ),
        .SC_4               ( 0 ),
        .SC_5               ( 0 ),
        .SC_6               ( 0 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_3(
        // Inputs
        .HCLK          ( RTG4FCCC_0_GL0_3 ),
        .HRESETN       ( AND2_0_Y_1 ),
        .REMAP_M0      ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M0  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M0     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M1     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M2  ( AHBLITE_GLUE_LOGIC_0_slave_HLOCK ),
        .HWRITE_M2     ( AHBLITE_GLUE_LOGIC_0_slave_HWRITE ),
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M3     ( COREAXITOAHBL_3_AHBMasterIF_HWRITE ),
        .HREADYOUT_S0  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S6  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S7  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S8  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S10 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S16 ( CoreAHBLite_3_AHBmslave16_HREADYOUT ),
        .HADDR_M0      ( HADDR_M0_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M0      ( HSIZE_M0_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M0     ( HTRANS_M0_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M0     ( HWDATA_M0_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M0     ( HBURST_M0_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M0      ( HPROT_M0_const_net_3 ), // tied to 4'h0 from definition
        .HADDR_M1      ( HADDR_M1_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M1      ( HSIZE_M1_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M1     ( HTRANS_M1_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M1     ( HWDATA_M1_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M1     ( HBURST_M1_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M1      ( HPROT_M1_const_net_3 ), // tied to 4'h0 from definition
        .HADDR_M2      ( AHBLITE_GLUE_LOGIC_0_slave_HADDR ),
        .HSIZE_M2      ( AHBLITE_GLUE_LOGIC_0_slave_HSIZE ),
        .HTRANS_M2     ( AHBLITE_GLUE_LOGIC_0_slave_HTRANS ),
        .HWDATA_M2     ( AHBLITE_GLUE_LOGIC_0_slave_HWDATA ),
        .HBURST_M2     ( AHBLITE_GLUE_LOGIC_0_slave_HBURST ),
        .HPROT_M2      ( AHBLITE_GLUE_LOGIC_0_slave_HPROT ),
        .HADDR_M3      ( COREAXITOAHBL_3_AHBMasterIF_HADDR ),
        .HSIZE_M3      ( COREAXITOAHBL_3_AHBMasterIF_HSIZE ),
        .HTRANS_M3     ( COREAXITOAHBL_3_AHBMasterIF_HTRANS ),
        .HWDATA_M3     ( COREAXITOAHBL_3_AHBMasterIF_HWDATA ),
        .HBURST_M3     ( COREAXITOAHBL_3_AHBMasterIF_HBURST ),
        .HPROT_M3      ( HPROT_M3_const_net_3 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( HRDATA_S0_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S0      ( HRESP_S0_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S1     ( HRDATA_S1_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S1      ( HRESP_S1_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S2      ( HRESP_S2_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S3      ( HRESP_S3_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S4      ( HRESP_S4_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S5      ( HRESP_S5_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( HRDATA_S6_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S6      ( HRESP_S6_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S7     ( HRDATA_S7_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S7      ( HRESP_S7_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S8     ( HRDATA_S8_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S8      ( HRESP_S8_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S9     ( HRDATA_S9_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S9      ( HRESP_S9_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( HRDATA_S10_const_net_2 ), // tied to 32'h00000000 from definition
        .HRESP_S10     ( HRESP_S10_const_net_2 ), // tied to 2'h0 from definition
        .HRDATA_S11    ( HRDATA_S11_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S11     ( HRESP_S11_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S12     ( HRESP_S12_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S13     ( HRESP_S13_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S14     ( HRESP_S14_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_3 ), // tied to 32'h00000000 from definition
        .HRESP_S15     ( HRESP_S15_const_net_3 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( CoreAHBLite_3_AHBmslave16_HRDATA ),
        .HRESP_S16     ( CoreAHBLite_3_AHBmslave16_HRESP_0 ),
        // Outputs
        .HREADY_M0     (  ),
        .HREADY_M1     (  ),
        .HREADY_M2     ( AHBLITE_GLUE_LOGIC_0_slave_HREADY ),
        .HREADY_M3     ( COREAXITOAHBL_3_AHBMasterIF_HREADY ),
        .HSEL_S0       (  ),
        .HWRITE_S0     (  ),
        .HREADY_S0     (  ),
        .HMASTLOCK_S0  (  ),
        .HSEL_S1       (  ),
        .HWRITE_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HSEL_S2       (  ),
        .HWRITE_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HSEL_S3       (  ),
        .HWRITE_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HSEL_S4       (  ),
        .HWRITE_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HSEL_S5       (  ),
        .HWRITE_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HSEL_S6       (  ),
        .HWRITE_S6     (  ),
        .HREADY_S6     (  ),
        .HMASTLOCK_S6  (  ),
        .HSEL_S7       (  ),
        .HWRITE_S7     (  ),
        .HREADY_S7     (  ),
        .HMASTLOCK_S7  (  ),
        .HSEL_S8       (  ),
        .HWRITE_S8     (  ),
        .HREADY_S8     (  ),
        .HMASTLOCK_S8  (  ),
        .HSEL_S9       (  ),
        .HWRITE_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HSEL_S10      (  ),
        .HWRITE_S10    (  ),
        .HREADY_S10    (  ),
        .HMASTLOCK_S10 (  ),
        .HSEL_S11      (  ),
        .HWRITE_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HSEL_S12      (  ),
        .HWRITE_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HSEL_S13      (  ),
        .HWRITE_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HSEL_S14      (  ),
        .HWRITE_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HSEL_S15      (  ),
        .HWRITE_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HSEL_S16      ( CoreAHBLite_3_AHBmslave16_HSELx ),
        .HWRITE_S16    ( CoreAHBLite_3_AHBmslave16_HWRITE ),
        .HREADY_S16    ( CoreAHBLite_3_AHBmslave16_HREADY ),
        .HMASTLOCK_S16 ( CoreAHBLite_3_AHBmslave16_HMASTLOCK ),
        .HRESP_M0      (  ),
        .HRDATA_M0     (  ),
        .HRESP_M1      (  ),
        .HRDATA_M1     (  ),
        .HRESP_M2      ( AHBLITE_GLUE_LOGIC_0_slave_HRESP ),
        .HRDATA_M2     ( AHBLITE_GLUE_LOGIC_0_slave_HRDATA ),
        .HRESP_M3      ( COREAXITOAHBL_3_AHBMasterIF_HRESP ),
        .HRDATA_M3     ( COREAXITOAHBL_3_AHBMasterIF_HRDATA ),
        .HADDR_S0      (  ),
        .HSIZE_S0      (  ),
        .HTRANS_S0     (  ),
        .HWDATA_S0     (  ),
        .HBURST_S0     (  ),
        .HPROT_S0      (  ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWDATA_S1     (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWDATA_S2     (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWDATA_S3     (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWDATA_S4     (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWDATA_S5     (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HADDR_S6      (  ),
        .HSIZE_S6      (  ),
        .HTRANS_S6     (  ),
        .HWDATA_S6     (  ),
        .HBURST_S6     (  ),
        .HPROT_S6      (  ),
        .HADDR_S7      (  ),
        .HSIZE_S7      (  ),
        .HTRANS_S7     (  ),
        .HWDATA_S7     (  ),
        .HBURST_S7     (  ),
        .HPROT_S7      (  ),
        .HADDR_S8      (  ),
        .HSIZE_S8      (  ),
        .HTRANS_S8     (  ),
        .HWDATA_S8     (  ),
        .HBURST_S8     (  ),
        .HPROT_S8      (  ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWDATA_S9     (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HADDR_S10     (  ),
        .HSIZE_S10     (  ),
        .HTRANS_S10    (  ),
        .HWDATA_S10    (  ),
        .HBURST_S10    (  ),
        .HPROT_S10     (  ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWDATA_S11    (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWDATA_S12    (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWDATA_S13    (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWDATA_S14    (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWDATA_S15    (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HADDR_S16     ( CoreAHBLite_3_AHBmslave16_HADDR ),
        .HSIZE_S16     ( CoreAHBLite_3_AHBmslave16_HSIZE ),
        .HTRANS_S16    ( CoreAHBLite_3_AHBmslave16_HTRANS ),
        .HWDATA_S16    ( CoreAHBLite_3_AHBmslave16_HWDATA ),
        .HBURST_S16    ( CoreAHBLite_3_AHBmslave16_HBURST ),
        .HPROT_S16     ( CoreAHBLite_3_AHBmslave16_HPROT ) 
        );

//--------COREAHBTOAPB3   -   Actel:DirectCore:COREAHBTOAPB3:3.1.100
COREAHBTOAPB3 #( 
        .FAMILY ( 25 ) )
COREAHBTOAPB3_0(
        // Inputs
        .HCLK      ( RTG4FCCC_0_GL0_3 ),
        .HRESETN   ( AND2_0_Y_1 ),
        .HWRITE    ( CoreAHBLite_1_AHBmslave7_HWRITE ),
        .HSEL      ( CoreAHBLite_1_AHBmslave7_HSELx ),
        .HREADY    ( CoreAHBLite_1_AHBmslave7_HREADY ),
        .PREADY    ( COREAHBTOAPB3_0_APBmaster_PREADY ),
        .PSLVERR   ( COREAHBTOAPB3_0_APBmaster_PSLVERR ),
        .HADDR     ( CoreAHBLite_1_AHBmslave7_HADDR ),
        .HTRANS    ( CoreAHBLite_1_AHBmslave7_HTRANS ),
        .HWDATA    ( CoreAHBLite_1_AHBmslave7_HWDATA ),
        .PRDATA    ( COREAHBTOAPB3_0_APBmaster_PRDATA ),
        // Outputs
        .HREADYOUT ( CoreAHBLite_1_AHBmslave7_HREADYOUT ),
        .PENABLE   ( COREAHBTOAPB3_0_APBmaster_PENABLE ),
        .PWRITE    ( COREAHBTOAPB3_0_APBmaster_PWRITE ),
        .PSEL      ( COREAHBTOAPB3_0_APBmaster_PSELx ),
        .HRDATA    ( CoreAHBLite_1_AHBmslave7_HRDATA ),
        .HRESP     ( CoreAHBLite_1_AHBmslave7_HRESP ),
        .PWDATA    ( COREAHBTOAPB3_0_APBmaster_PWDATA ),
        .PADDR     ( COREAHBTOAPB3_0_APBmaster_PADDR ) 
        );

//--------COREAHBTOAPB3   -   Actel:DirectCore:COREAHBTOAPB3:3.1.100
COREAHBTOAPB3 #( 
        .FAMILY ( 25 ) )
COREAHBTOAPB3_1(
        // Inputs
        .HCLK      ( RTG4FCCC_0_GL0_3 ),
        .HRESETN   ( AND2_0_Y_1 ),
        .HWRITE    ( CoreAHBLite_2_AHBmslave0_HWRITE ),
        .HSEL      ( CoreAHBLite_2_AHBmslave0_HSELx ),
        .HREADY    ( CoreAHBLite_2_AHBmslave0_HREADY ),
        .PREADY    ( COREAHBTOAPB3_1_APBmaster_PREADY ),
        .PSLVERR   ( COREAHBTOAPB3_1_APBmaster_PSLVERR ),
        .HADDR     ( CoreAHBLite_2_AHBmslave0_HADDR ),
        .HTRANS    ( CoreAHBLite_2_AHBmslave0_HTRANS ),
        .HWDATA    ( CoreAHBLite_2_AHBmslave0_HWDATA ),
        .PRDATA    ( COREAHBTOAPB3_1_APBmaster_PRDATA ),
        // Outputs
        .HREADYOUT ( CoreAHBLite_2_AHBmslave0_HREADYOUT ),
        .PENABLE   ( COREAHBTOAPB3_1_APBmaster_PENABLE ),
        .PWRITE    ( COREAHBTOAPB3_1_APBmaster_PWRITE ),
        .PSEL      ( COREAHBTOAPB3_1_APBmaster_PSELx ),
        .HRDATA    ( CoreAHBLite_2_AHBmslave0_HRDATA ),
        .HRESP     ( CoreAHBLite_2_AHBmslave0_HRESP ),
        .PWDATA    ( COREAHBTOAPB3_1_APBmaster_PWDATA ),
        .PADDR     ( COREAHBTOAPB3_1_APBmaster_PADDR ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 0 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
        .APBSLOT4ENABLE  ( 1 ),
        .APBSLOT5ENABLE  ( 1 ),
        .APBSLOT6ENABLE  ( 1 ),
        .APBSLOT7ENABLE  ( 1 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 25 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 16 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 3 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( COREAHBTOAPB3_0_APBmaster_PWRITE ),
        .PENABLE    ( COREAHBTOAPB3_0_APBmaster_PENABLE ),
        .PSEL       ( COREAHBTOAPB3_0_APBmaster_PSELx ),
        .PREADYS0   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS0  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERRS5  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADYS6   ( CoreAPB3_0_APBmslave6_0_PREADY ),
        .PSLVERRS6  ( CoreAPB3_0_APBmslave6_0_PSLVERR ),
        .PREADYS7   ( CoreAPB3_0_APBmslave7_PREADY ),
        .PSLVERRS7  ( CoreAPB3_0_APBmslave7_PSLVERR ),
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( COREAHBTOAPB3_0_APBmaster_PADDR ),
        .PWDATA     ( COREAHBTOAPB3_0_APBmaster_PWDATA ),
        .PRDATAS0   ( PRDATAS0_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA_0 ),
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PRDATAS3   ( CoreAPB3_0_APBmslave3_PRDATA ),
        .PRDATAS4   ( CoreAPB3_0_APBmslave4_0_PRDATA ),
        .PRDATAS5   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .PRDATAS6   ( CoreAPB3_0_APBmslave6_0_PRDATA ),
        .PRDATAS7   ( CoreAPB3_0_APBmslave7_PRDATA ),
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( COREAHBTOAPB3_0_APBmaster_PREADY ),
        .PSLVERR    ( COREAHBTOAPB3_0_APBmaster_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PSELS0     (  ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_0_APBmslave3_PSELx ),
        .PSELS4     ( CoreAPB3_0_APBmslave4_0_PSELx ),
        .PSELS5     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PSELS6     ( CoreAPB3_0_APBmslave6_0_PSELx ),
        .PSELS7     ( CoreAPB3_0_APBmslave7_PSELx ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( COREAHBTOAPB3_0_APBmaster_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave1_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave1_PWDATA ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 0 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
        .APBSLOT4ENABLE  ( 1 ),
        .APBSLOT5ENABLE  ( 1 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 25 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 28 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 6 ) )
CoreAPB3_1(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( COREAHBTOAPB3_1_APBmaster_PWRITE ),
        .PENABLE    ( COREAHBTOAPB3_1_APBmaster_PENABLE ),
        .PSEL       ( COREAHBTOAPB3_1_APBmaster_PSELx ),
        .PREADYS0   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS0  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS1   ( CoreAPB3_1_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_1_APBmslave1_PSLVERR ),
        .PREADYS2   ( CoreAPB3_1_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_1_APBmslave2_PSLVERR ),
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( CoreAPB3_1_APBmslave5_PREADY ),
        .PSLVERRS5  ( CoreAPB3_1_APBmslave5_PSLVERR ),
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( COREAHBTOAPB3_1_APBmaster_PADDR ),
        .PWDATA     ( COREAHBTOAPB3_1_APBmaster_PWDATA ),
        .PRDATAS0   ( PRDATAS0_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS1   ( CoreAPB3_1_APBmslave1_PRDATA_0 ),
        .PRDATAS2   ( CoreAPB3_1_APBmslave2_PRDATA ),
        .PRDATAS3   ( CoreAPB3_1_APBmslave3_PRDATA ),
        .PRDATAS4   ( CoreAPB3_1_APBmslave4_PRDATA ),
        .PRDATAS5   ( CoreAPB3_1_APBmslave5_PRDATA ),
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_1 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_1 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( COREAHBTOAPB3_1_APBmaster_PREADY ),
        .PSLVERR    ( COREAHBTOAPB3_1_APBmaster_PSLVERR ),
        .PWRITES    ( CoreAPB3_1_APBmslave1_PWRITE ),
        .PENABLES   ( CoreAPB3_1_APBmslave1_PENABLE ),
        .PSELS0     (  ),
        .PSELS1     ( CoreAPB3_1_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_1_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_1_APBmslave3_PSELx ),
        .PSELS4     ( CoreAPB3_1_APBmslave4_PSELx ),
        .PSELS5     ( CoreAPB3_1_APBmslave5_PSELx ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( COREAHBTOAPB3_1_APBmaster_PRDATA ),
        .PADDRS     ( CoreAPB3_1_APBmslave1_PADDR ),
        .PWDATAS    ( CoreAPB3_1_APBmslave1_PWDATA ) 
        );

//--------COREAXITOAHBL   -   Actel:DirectCore:COREAXITOAHBL:3.0.101
COREAXITOAHBL #( 
        .ASYNC_CLOCKS   ( 0 ),
        .ID_WIDTH       ( 5 ),
        .NO_BURST_TRANS ( 0 ),
        .WRAP_SUPPORT   ( 0 ) )
COREAXITOAHBL_0(
        // Inputs
        .ACLK     ( RTG4FCCC_0_GL0_3 ),
        .ARESETN  ( AND2_0_Y_1 ),
        .AWVALID  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWVALID ),
        .WVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WVALID ),
        .WLAST    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WLAST ),
        .BREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BREADY ),
        .ARVALID  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARVALID ),
        .RREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RREADY ),
        .HCLK     ( RTG4FCCC_0_GL0_3 ),
        .HRESETN  ( AND2_0_Y_1 ),
        .HREADYIN ( COREAXITOAHBL_0_AHBMasterIF_HREADY ),
        .HRESP    ( COREAXITOAHBL_0_AHBMasterIF_HRESP_0 ),
        .AWLEN    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWLEN_0 ),
        .AWSIZE   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWSIZE ),
        .AWBURST  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWBURST ),
        .AWID     ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWID ),
        .AWADDR   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWADDR ),
        .WDATA    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WDATA ),
        .WSTRB    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WSTRB ),
        .ARADDR   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARADDR ),
        .ARSIZE   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARSIZE ),
        .ARID     ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARID ),
        .ARLEN    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARLEN_0 ),
        .ARBURST  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARBURST ),
        .HRDATA   ( COREAXITOAHBL_0_AHBMasterIF_HRDATA ),
        .WID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WID ),
        // Outputs
        .BVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BVALID ),
        .AWREADY  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_AWREADY ),
        .WREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_WREADY ),
        .ARREADY  ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_ARREADY ),
        .RVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RVALID ),
        .RLAST    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RLAST ),
        .HWRITE   ( COREAXITOAHBL_0_AHBMasterIF_HWRITE ),
        .BRESP    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BRESP ),
        .BID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_BID ),
        .RID      ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RID ),
        .RDATA    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RDATA ),
        .RRESP    ( AXI_GLUE_LOGIC_0_UNCORE_MMIO_RRESP ),
        .HSIZE    ( COREAXITOAHBL_0_AHBMasterIF_HSIZE ),
        .HWDATA   ( COREAXITOAHBL_0_AHBMasterIF_HWDATA ),
        .HADDR    ( COREAXITOAHBL_0_AHBMasterIF_HADDR ),
        .HTRANS   ( COREAXITOAHBL_0_AHBMasterIF_HTRANS ),
        .HBURST   ( COREAXITOAHBL_0_AHBMasterIF_HBURST ) 
        );

//--------COREAXITOAHBL   -   Actel:DirectCore:COREAXITOAHBL:3.0.101
COREAXITOAHBL #( 
        .ASYNC_CLOCKS   ( 0 ),
        .ID_WIDTH       ( 5 ),
        .NO_BURST_TRANS ( 0 ),
        .WRAP_SUPPORT   ( 0 ) )
COREAXITOAHBL_1(
        // Inputs
        .ACLK     ( RTG4FCCC_0_GL0_3 ),
        .ARESETN  ( AND2_0_Y_1 ),
        .AWVALID  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWVALID ),
        .WVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WVALID ),
        .WLAST    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WLAST ),
        .BREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BREADY ),
        .ARVALID  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARVALID ),
        .RREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RREADY ),
        .HCLK     ( RTG4FCCC_0_GL0_3 ),
        .HRESETN  ( AND2_0_Y_1 ),
        .HREADYIN ( COREAXITOAHBL_1_AHBMasterIF_HREADY ),
        .HRESP    ( COREAXITOAHBL_1_AHBMasterIF_HRESP_0 ),
        .AWLEN    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWLEN_0 ),
        .AWSIZE   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWSIZE ),
        .AWBURST  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWBURST ),
        .AWID     ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWID ),
        .AWADDR   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWADDR ),
        .WDATA    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WDATA ),
        .WSTRB    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WSTRB ),
        .ARADDR   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARADDR ),
        .ARSIZE   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARSIZE ),
        .ARID     ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARID ),
        .ARLEN    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARLEN_0 ),
        .ARBURST  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARBURST ),
        .HRDATA   ( COREAXITOAHBL_1_AHBMasterIF_HRDATA ),
        .WID      ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WID ),
        // Outputs
        .BVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BVALID ),
        .AWREADY  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_AWREADY ),
        .WREADY   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_WREADY ),
        .ARREADY  ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_ARREADY ),
        .RVALID   ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RVALID ),
        .RLAST    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RLAST ),
        .HWRITE   ( COREAXITOAHBL_1_AHBMasterIF_HWRITE ),
        .BRESP    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BRESP ),
        .BID      ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_BID ),
        .RID      ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RID ),
        .RDATA    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RDATA ),
        .RRESP    ( AXI_GLUE_LOGIC_0_UNCORE_MEMORY_RRESP ),
        .HSIZE    ( COREAXITOAHBL_1_AHBMasterIF_HSIZE ),
        .HWDATA   ( COREAXITOAHBL_1_AHBMasterIF_HWDATA ),
        .HADDR    ( COREAXITOAHBL_1_AHBMasterIF_HADDR ),
        .HTRANS   ( COREAXITOAHBL_1_AHBMasterIF_HTRANS ),
        .HBURST   ( COREAXITOAHBL_1_AHBMasterIF_HBURST ) 
        );

//--------COREAXITOAHBL   -   Actel:DirectCore:COREAXITOAHBL:3.0.101
COREAXITOAHBL #( 
        .ASYNC_CLOCKS   ( 0 ),
        .ID_WIDTH       ( 5 ),
        .NO_BURST_TRANS ( 0 ),
        .WRAP_SUPPORT   ( 0 ) )
COREAXITOAHBL_2(
        // Inputs
        .ACLK     ( RTG4FCCC_0_GL0_3 ),
        .ARESETN  ( AND2_0_Y_1 ),
        .AWVALID  ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWVALID ),
        .WVALID   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WVALID ),
        .WLAST    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WLAST ),
        .BREADY   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_BREADY ),
        .ARVALID  ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARVALID ),
        .RREADY   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RREADY ),
        .HCLK     ( RTG4FCCC_0_GL0_3 ),
        .HRESETN  ( AND2_0_Y_1 ),
        .HREADYIN ( COREAXITOAHBL_2_AHBMasterIF_HREADY ),
        .HRESP    ( COREAXITOAHBL_2_AHBMasterIF_HRESP_0 ),
        .AWLEN    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWLEN_0 ),
        .AWSIZE   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWSIZE ),
        .AWBURST  ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWBURST ),
        .AWID     ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWID ),
        .AWADDR   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWADDR ),
        .WDATA    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WDATA ),
        .WSTRB    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WSTRB ),
        .ARADDR   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARADDR ),
        .ARSIZE   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARSIZE ),
        .ARID     ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARID ),
        .ARLEN    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARLEN_0 ),
        .ARBURST  ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARBURST ),
        .HRDATA   ( COREAXITOAHBL_2_AHBMasterIF_HRDATA ),
        .WID      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WID ),
        // Outputs
        .BVALID   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_BVALID ),
        .AWREADY  ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_AWREADY ),
        .WREADY   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_WREADY ),
        .ARREADY  ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_ARREADY ),
        .RVALID   ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RVALID ),
        .RLAST    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RLAST ),
        .HWRITE   ( COREAXITOAHBL_2_AHBMasterIF_HWRITE ),
        .BRESP    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_BRESP ),
        .BID      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_BID ),
        .RID      ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RID ),
        .RDATA    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RDATA ),
        .RRESP    ( AXI_GLUE_LOGIC_1_UNCORE_MMIO_RRESP ),
        .HSIZE    ( COREAXITOAHBL_2_AHBMasterIF_HSIZE ),
        .HWDATA   ( COREAXITOAHBL_2_AHBMasterIF_HWDATA ),
        .HADDR    ( COREAXITOAHBL_2_AHBMasterIF_HADDR ),
        .HTRANS   ( COREAXITOAHBL_2_AHBMasterIF_HTRANS ),
        .HBURST   ( COREAXITOAHBL_2_AHBMasterIF_HBURST ) 
        );

//--------COREAXITOAHBL   -   Actel:DirectCore:COREAXITOAHBL:3.0.101
COREAXITOAHBL #( 
        .ASYNC_CLOCKS   ( 0 ),
        .ID_WIDTH       ( 5 ),
        .NO_BURST_TRANS ( 0 ),
        .WRAP_SUPPORT   ( 0 ) )
COREAXITOAHBL_3(
        // Inputs
        .ACLK     ( RTG4FCCC_0_GL0_3 ),
        .ARESETN  ( AND2_0_Y_1 ),
        .AWVALID  ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWVALID ),
        .WVALID   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WVALID ),
        .WLAST    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WLAST ),
        .BREADY   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BREADY ),
        .ARVALID  ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARVALID ),
        .RREADY   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RREADY ),
        .HCLK     ( RTG4FCCC_0_GL0_3 ),
        .HRESETN  ( AND2_0_Y_1 ),
        .HREADYIN ( COREAXITOAHBL_3_AHBMasterIF_HREADY ),
        .HRESP    ( COREAXITOAHBL_3_AHBMasterIF_HRESP_0 ),
        .AWLEN    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWLEN_0 ),
        .AWSIZE   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWSIZE ),
        .AWBURST  ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWBURST ),
        .AWID     ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWID ),
        .AWADDR   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWADDR ),
        .WDATA    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WDATA ),
        .WSTRB    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WSTRB ),
        .ARADDR   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARADDR ),
        .ARSIZE   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARSIZE ),
        .ARID     ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARID ),
        .ARLEN    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARLEN_0 ),
        .ARBURST  ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARBURST ),
        .HRDATA   ( COREAXITOAHBL_3_AHBMasterIF_HRDATA ),
        .WID      ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WID ),
        // Outputs
        .BVALID   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BVALID ),
        .AWREADY  ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_AWREADY ),
        .WREADY   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_WREADY ),
        .ARREADY  ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_ARREADY ),
        .RVALID   ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RVALID ),
        .RLAST    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RLAST ),
        .HWRITE   ( COREAXITOAHBL_3_AHBMasterIF_HWRITE ),
        .BRESP    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BRESP ),
        .BID      ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_BID ),
        .RID      ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RID ),
        .RDATA    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RDATA ),
        .RRESP    ( AXI_GLUE_LOGIC_1_UNCORE_MEMORY_RRESP ),
        .HSIZE    ( COREAXITOAHBL_3_AHBMasterIF_HSIZE ),
        .HWDATA   ( COREAXITOAHBL_3_AHBMasterIF_HWDATA ),
        .HADDR    ( COREAXITOAHBL_3_AHBMasterIF_HADDR ),
        .HTRANS   ( COREAXITOAHBL_3_AHBMasterIF_HTRANS ),
        .HBURST   ( COREAXITOAHBL_3_AHBMasterIF_HBURST ) 
        );

//--------COREBOOTSTRAP   -   Actel:DirectCore:COREBOOTSTRAP:2.0.100
COREBOOTSTRAP #( 
        .AHB_DST_ADDR          ( 'h80000000 ),
        .BIG_ENDIAN_EN         ( 0 ),
        .DATA_WORD_CNT         ( 8000 ),
        .READ_STATUS_TYPE      ( 0 ),
        .RST_EXTPROC_DURATION  ( 32768 ),
        .RST_POR_DURATION      ( 32768 ),
        .RST_RECOVERY_DURATION ( 32768 ),
        .SPI_CLK_RATIO         ( 8 ),
        .SPI_SRC_ADDR          ( 'h0 ),
        .SS_DESELECT_DURATION  ( 8 ) )
COREBOOTSTRAP_0(
        // Inputs
        .HOST_SCK        ( CORESPI_0_SPISCLKO ),
        .HOST_SDO        ( CORESPI_0_SPISDO ),
        .HOST_SS         ( CORESPI_0_SPISS0to0 ),
        .FLASH_SDI       ( FLASH_SDI ),
        .HCLK            ( RTG4FCCC_0_GL0_3 ),
        .HREADY          ( COREBOOTSTRAP_0_AHB_MASTER_HREADY ),
        .HRESP           ( COREBOOTSTRAP_0_AHB_MASTER_HRESP_0 ),
        .EXT_RESETN      ( VCC_net ),
        .PO_RESETN       ( DDR_EAST_0_INIT_DONE ),
        .SW_DEBUG_MODE   ( SW_DEBUG_MODE ),
        .SYS_RESET_REQ   ( GND_net ),
        .HRDATA          ( COREBOOTSTRAP_0_AHB_MASTER_HRDATA ),
        // Outputs
        .HOST_SDI        ( COREBOOTSTRAP_0_HOST_SDI ),
        .FLASH_SCK       ( FLASH_SCK_net_0 ),
        .FLASH_SDO       ( FLASH_SDO_net_0 ),
        .FLASH_SS        ( FLASH_SS_net_0 ),
        .HRESETN         (  ),
        .HWRITE          ( COREBOOTSTRAP_0_AHB_MASTER_HWRITE ),
        .CKSUM_ERR       (  ),
        .PROC_SYS_RESETN ( COREBOOTSTRAP_0_PROC_SYS_RESETN ),
        .HADDR           ( COREBOOTSTRAP_0_AHB_MASTER_HADDR ),
        .HBURST          ( COREBOOTSTRAP_0_AHB_MASTER_HBURST ),
        .HSIZE           ( COREBOOTSTRAP_0_AHB_MASTER_HSIZE ),
        .HTRANS          ( COREBOOTSTRAP_0_AHB_MASTER_HTRANS ),
        .HWDATA          ( COREBOOTSTRAP_0_AHB_MASTER_HWDATA ),
        .AHB_ERR         (  ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 25 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 8 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 1 ),
        .IO_TYPE_5       ( 1 ),
        .IO_TYPE_6       ( 1 ),
        .IO_TYPE_7       ( 1 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_0(
        // Inputs
        .PRESETN  ( AND2_0_Y_1 ),
        .PCLK     ( RTG4FCCC_0_GL0_3 ),
        .PSEL     ( CoreAPB3_1_APBmslave5_PSELx ),
        .PENABLE  ( CoreAPB3_1_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_1_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_1_APBmslave1_PADDR_4 ),
        .PWDATA   ( CoreAPB3_1_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        // Outputs
        .PSLVERR  ( CoreAPB3_1_APBmslave5_PSLVERR ),
        .PREADY   ( CoreAPB3_1_APBmslave5_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_1_APBmslave5_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_0_net_0 ),
        .GPIO_OE  (  ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 25 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 8 ),
        .IO_TYPE_0       ( 0 ),
        .IO_TYPE_1       ( 0 ),
        .IO_TYPE_2       ( 0 ),
        .IO_TYPE_3       ( 0 ),
        .IO_TYPE_4       ( 0 ),
        .IO_TYPE_5       ( 0 ),
        .IO_TYPE_6       ( 0 ),
        .IO_TYPE_7       ( 0 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_1(
        // Inputs
        .PRESETN  ( AND2_0_Y_1 ),
        .PCLK     ( RTG4FCCC_0_GL0_3 ),
        .PSEL     ( CoreAPB3_1_APBmslave2_PSELx ),
        .PENABLE  ( CoreAPB3_1_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_1_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_1_APBmslave1_PADDR_1 ),
        .PWDATA   ( CoreAPB3_1_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN_0 ),
        // Outputs
        .PSLVERR  ( CoreAPB3_1_APBmslave2_PSLVERR ),
        .PREADY   ( CoreAPB3_1_APBmslave2_PREADY ),
        .PRDATA   ( CoreAPB3_1_APBmslave2_PRDATA ),
        .INT      (  ),
        .INT_OR   (  ),
        .GPIO_OUT (  ),
        .GPIO_OE  (  ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 25 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 1 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 1 ),
        .IO_TYPE_5       ( 1 ),
        .IO_TYPE_6       ( 1 ),
        .IO_TYPE_7       ( 1 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 1 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 0 ) )
CoreGPIO_App_RST(
        // Inputs
        .PRESETN  ( AND2_0_Y_1 ),
        .PCLK     ( RTG4FCCC_0_GL0_3 ),
        .PSEL     ( CoreAPB3_0_APBmslave7_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_6 ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GND_net ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave7_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave7_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave7_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( CoreGPIO_App_RST_GPIO_OUT ),
        .GPIO_OE  (  ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 25 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 8 ),
        .IO_TYPE_0       ( 0 ),
        .IO_TYPE_1       ( 0 ),
        .IO_TYPE_2       ( 0 ),
        .IO_TYPE_3       ( 0 ),
        .IO_TYPE_4       ( 0 ),
        .IO_TYPE_5       ( 0 ),
        .IO_TYPE_6       ( 0 ),
        .IO_TYPE_7       ( 0 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_IN(
        // Inputs
        .PRESETN  ( AND2_0_Y_1 ),
        .PCLK     ( RTG4FCCC_0_GL0_3 ),
        .PSEL     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_1 ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave2_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .INT      (  ),
        .GPIO_OUT (  ),
        .GPIO_OE  (  ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 25 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 8 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 1 ),
        .IO_TYPE_5       ( 1 ),
        .IO_TYPE_6       ( 1 ),
        .IO_TYPE_7       ( 1 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_OUT(
        // Inputs
        .PRESETN  ( AND2_0_Y_1 ),
        .PCLK     ( RTG4FCCC_0_GL0_3 ),
        .PSEL     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_4 ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN_const_net_1 ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave5_PREADY ),
        .PRDATA   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .INT      (  ),
        .INT_OR   (  ),
        .GPIO_OUT ( GPIO_OUT_0_0 ),
        .GPIO_OE  (  ) 
        );

//--------COREJTAGDEBUG   -   Actel:DirectCore:COREJTAGDEBUG:1.0.102
COREJTAGDEBUG #( 
        .IR_CODE ( 'h55 ) )
COREJTAGDEBUG_0(
        // Inputs
        .TDI      ( TDI ),
        .TCK      ( TCK ),
        .TMS      ( TMS ),
        .TRSTB    ( TRSTB ),
        .TGT_TDO  ( CORERISCV_AXI4_0_TDO ),
        // Outputs
        .TDO      ( TDO_net_0 ),
        .TGT_TCK  ( COREJTAGDEBUG_0_TGT_TCK ),
        .TGT_TRST ( COREJTAGDEBUG_0_TGT_TRST ),
        .TGT_TMS  ( COREJTAGDEBUG_0_TGT_TMS ),
        .TGT_TDI  ( COREJTAGDEBUG_0_TGT_TDI ),
        // Inouts
        .UTDO     ( net_8 ),
        .UDRCAP   ( net_10 ),
        .UDRSH    ( net_11 ),
        .UDRUPD   ( net_12 ),
        .UIREG    ( net_13 ),
        .URSTB    ( net_14 ),
        .UDRCK    ( net_15 ),
        .UTDI     ( net_16 ) 
        );

//--------COREJTAGDEBUG   -   Actel:DirectCore:COREJTAGDEBUG:1.0.102
COREJTAGDEBUG #( 
        .IR_CODE ( 'h56 ) )
COREJTAGDEBUG_1(
        // Inputs
        .TDI      ( GND_net ),
        .TCK      ( GND_net ),
        .TMS      ( GND_net ),
        .TRSTB    ( GND_net ),
        .TGT_TDO  ( APPLICATIONRISCV_TDO ),
        // Outputs
        .TDO      (  ),
        .TGT_TCK  ( COREJTAGDEBUG_1_TGT_TCK ),
        .TGT_TRST ( COREJTAGDEBUG_1_TGT_TRST ),
        .TGT_TMS  ( COREJTAGDEBUG_1_TGT_TMS ),
        .TGT_TDI  ( COREJTAGDEBUG_1_TGT_TDI ),
        // Inouts
        .UTDO     ( net_8 ),
        .UDRCAP   ( net_10 ),
        .UDRSH    ( net_11 ),
        .UDRUPD   ( net_12 ),
        .UIREG    ( net_13 ),
        .URSTB    ( net_14 ),
        .UDRCK    ( net_15 ),
        .UTDI     ( net_16 ) 
        );

//--------CORESPI   -   Actel:DirectCore:CORESPI:5.1.104
CORESPI #( 
        .APB_DWIDTH        ( 32 ),
        .CFG_CLK           ( 7 ),
        .CFG_FIFO_DEPTH    ( 32 ),
        .CFG_FRAME_SIZE    ( 8 ),
        .CFG_MODE          ( 0 ),
        .CFG_MOT_MODE      ( 0 ),
        .CFG_MOT_SSEL      ( 1 ),
        .CFG_NSC_OPERATION ( 0 ),
        .CFG_TI_JMB_FRAMES ( 0 ),
        .CFG_TI_NSC_CUSTOM ( 0 ),
        .CFG_TI_NSC_FRC    ( 0 ),
        .FAMILY            ( 25 ) )
CORESPI_0(
        // Inputs
        .PCLK       ( RTG4FCCC_0_GL0_3 ),
        .PRESETN    ( AND2_0_Y_1 ),
        .PSEL       ( CoreAPB3_0_APBmslave6_0_PSELx ),
        .PENABLE    ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE     ( CoreAPB3_0_APBmslave1_PWRITE ),
        .SPISSI     ( GND_net ),
        .SPISDI     ( COREBOOTSTRAP_0_HOST_SDI ),
        .SPICLKI    ( GND_net ),
        .PADDR      ( CoreAPB3_0_APBmslave1_PADDR_5 ),
        .PWDATA     ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .PREADY     ( CoreAPB3_0_APBmslave6_0_PREADY ),
        .PSLVERR    ( CoreAPB3_0_APBmslave6_0_PSLVERR ),
        .SPIINT     (  ),
        .SPIRXAVAIL (  ),
        .SPITXRFM   (  ),
        .SPISCLKO   ( CORESPI_0_SPISCLKO ),
        .SPIOEN     (  ),
        .SPISDO     ( CORESPI_0_SPISDO ),
        .SPIMODE    (  ),
        .PRDATA     ( CoreAPB3_0_APBmslave6_0_PRDATA ),
        .SPISS      ( SPISS_net_0 ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 25 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_0(
        // Inputs
        .PCLK    ( RTG4FCCC_0_GL0_3 ),
        .PRESETn ( AND2_0_Y_1 ),
        .PSEL    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PADDR   ( CoreAPB3_0_APBmslave1_PADDR_2 ),
        .PWRITE  ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLE ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWDATA  ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .PRDATA  ( CoreAPB3_0_APBmslave3_PRDATA ),
        .TIMINT  ( CoreTimer_0_TIMINT ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 25 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_1(
        // Inputs
        .PCLK    ( RTG4FCCC_0_GL0_3 ),
        .PRESETn ( AND2_0_Y_1 ),
        .PSEL    ( CoreAPB3_0_APBmslave4_0_PSELx ),
        .PADDR   ( CoreAPB3_0_APBmslave1_PADDR_3 ),
        .PWRITE  ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLE ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWDATA  ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .PRDATA  ( CoreAPB3_0_APBmslave4_0_PRDATA ),
        .TIMINT  ( CoreTimer_1_TIMINT ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 25 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_2(
        // Inputs
        .PCLK    ( RTG4FCCC_0_GL0_3 ),
        .PRESETn ( AND2_0_Y_1 ),
        .PSEL    ( CoreAPB3_1_APBmslave3_PSELx ),
        .PADDR   ( CoreAPB3_1_APBmslave1_PADDR_2 ),
        .PWRITE  ( CoreAPB3_1_APBmslave1_PWRITE ),
        .PENABLE ( CoreAPB3_1_APBmslave1_PENABLE ),
        .PWDATA  ( CoreAPB3_1_APBmslave1_PWDATA ),
        // Outputs
        .PRDATA  ( CoreAPB3_1_APBmslave3_PRDATA ),
        .TIMINT  ( CoreTimer_2_TIMINT ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 25 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_3(
        // Inputs
        .PCLK    ( RTG4FCCC_0_GL0_3 ),
        .PRESETn ( AND2_0_Y_1 ),
        .PSEL    ( CoreAPB3_1_APBmslave4_PSELx ),
        .PADDR   ( CoreAPB3_1_APBmslave1_PADDR_3 ),
        .PWRITE  ( CoreAPB3_1_APBmslave1_PWRITE ),
        .PENABLE ( CoreAPB3_1_APBmslave1_PENABLE ),
        .PWDATA  ( CoreAPB3_1_APBmslave1_PWDATA ),
        // Outputs
        .PRDATA  ( CoreAPB3_1_APBmslave4_PRDATA ),
        .TIMINT  ( CoreTimer_3_TIMINT ) 
        );

//--------RTG4_CoreRISCV_AXI4_BaseDesign_CoreUARTapb_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.6.100
RTG4_CoreRISCV_AXI4_BaseDesign_CoreUARTapb_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 25 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 0 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 0 ) )
CoreUARTapb_0(
        // Inputs
        .PCLK        ( RTG4FCCC_0_GL0_3 ),
        .PRESETN     ( AND2_0_Y_1 ),
        .PADDR       ( CoreAPB3_0_APBmslave1_PADDR_0 ),
        .PSEL        ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PWDATA      ( CoreAPB3_0_APBmslave1_PWDATA_0 ),
        .RX          ( RX ),
        // Outputs
        .PRDATA      ( CoreAPB3_0_APBmslave1_PRDATA ),
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .FRAMING_ERR (  ) 
        );

//--------RTG4_CoreRISCV_AXI4_BaseDesign_CoreUARTapb_1_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.6.100
RTG4_CoreRISCV_AXI4_BaseDesign_CoreUARTapb_1_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 25 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 0 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 0 ) )
CoreUARTapb_1(
        // Inputs
        .PCLK        ( RTG4FCCC_0_GL0_3 ),
        .PRESETN     ( AND2_0_Y_1 ),
        .PADDR       ( CoreAPB3_1_APBmslave1_PADDR_0 ),
        .PSEL        ( CoreAPB3_1_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_1_APBmslave1_PENABLE ),
        .PWRITE      ( CoreAPB3_1_APBmslave1_PWRITE ),
        .PWDATA      ( CoreAPB3_1_APBmslave1_PWDATA_0 ),
        .RX          ( APP_UART_RX ),
        // Outputs
        .PRDATA      ( CoreAPB3_1_APBmslave1_PRDATA ),
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( APP_UART_TX_net_0 ),
        .PREADY      ( CoreAPB3_1_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_1_APBmslave1_PSLVERR ),
        .FRAMING_ERR (  ) 
        );

//--------DDR_EAST
DDR_EAST DDR_EAST_0(
        // Inputs
        .FDDR_DQS_TMATCH_0_IN  ( FDDR_DQS_TMATCH_0_IN_1 ),
        .FDDR_DQS_TMATCH_1_IN  ( FDDR_DQS_TMATCH_1_IN_1 ),
        .INIT_CLK_50MHZ        ( RTG4FCCC_0_GL1 ),
        .INIT_RESET_N          ( AND2_0_Y_1 ),
        .CORE_RESET_N          ( AND2_0_Y_1 ),
        .CLK_BASE              ( RTG4FCCC_0_GL0_3 ),
        .AHB0_S_HSEL           ( CoreAHBLite_0_AHBmslave8_HSELx ),
        .AHB0_S_HMASTLOCK      ( CoreAHBLite_0_AHBmslave8_HMASTLOCK ),
        .AHB0_S_HWRITE         ( CoreAHBLite_0_AHBmslave8_HWRITE ),
        .AHB0_S_HREADY         ( CoreAHBLite_0_AHBmslave8_HREADY ),
        .AHB0_S_HADDR          ( CoreAHBLite_0_AHBmslave8_HADDR ),
        .AHB0_S_HBURST         ( CoreAHBLite_0_AHBmslave8_HBURST ),
        .AHB0_S_HSIZE          ( CoreAHBLite_0_AHBmslave8_HSIZE_0 ),
        .AHB0_S_HTRANS         ( CoreAHBLite_0_AHBmslave8_HTRANS ),
        .AHB0_S_HWDATA         ( CoreAHBLite_0_AHBmslave8_HWDATA ),
        // Outputs
        .FDDR_CAS_N            ( FDDR_CAS_N_1_net_0 ),
        .FDDR_CKE              ( FDDR_CKE_1_net_0 ),
        .FDDR_CLK              ( FDDR_CLK_1_net_0 ),
        .FDDR_CLK_N            ( FDDR_CLK_N_1_net_0 ),
        .FDDR_CS_N             ( FDDR_CS_N_1_net_0 ),
        .FDDR_ODT              ( FDDR_ODT_1_net_0 ),
        .FDDR_RAS_N            ( FDDR_RAS_N_1_net_0 ),
        .FDDR_RESET_N          ( FDDR_RESET_N_1_net_0 ),
        .FDDR_WE_N             ( FDDR_WE_N_1_net_0 ),
        .FDDR_DQS_TMATCH_0_OUT ( FDDR_DQS_TMATCH_0_OUT_1_net_0 ),
        .FDDR_DQS_TMATCH_1_OUT ( FDDR_DQS_TMATCH_1_OUT_1_net_0 ),
        .AHB0_S_HREADYOUT      ( CoreAHBLite_0_AHBmslave8_HREADYOUT ),
        .AHB0_S_HRESP          ( CoreAHBLite_0_AHBmslave8_HRESP ),
        .INIT_DONE             ( DDR_EAST_0_INIT_DONE ),
        .FDDR_ADDR             ( FDDR_ADDR_1_net_0 ),
        .FDDR_BA               ( FDDR_BA_1_net_0 ),
        .AHB0_S_HRDATA         ( CoreAHBLite_0_AHBmslave8_HRDATA ),
        // Inouts
        .FDDR_DM_RDQS          ( FDDR_DM_RDQS_1 ),
        .FDDR_DQS              ( FDDR_DQS_1 ),
        .FDDR_DQS_N            ( FDDR_DQS_N_1 ),
        .FDDR_DQ               ( FDDR_DQ_1 ) 
        );

//--------DDR_MEMORY_CTRL
DDR_MEMORY_CTRL DDR_WEST_0(
        // Inputs
        .FDDR_DQS_TMATCH_0_IN  ( FDDR_DQS_TMATCH_0_IN_0 ),
        .FDDR_DQS_TMATCH_1_IN  ( FDDR_DQS_TMATCH_1_IN_0 ),
        .INIT_CLK_50MHZ        ( RTG4FCCC_0_GL1 ),
        .INIT_RESET_N          ( AND2_0_Y_1 ),
        .CORE_RESET_N          ( AND2_0_Y_1 ),
        .CLK_BASE              ( RTG4FCCC_0_GL0_3 ),
        .AHB0_S_HSEL           ( CoreAHBLite_3_AHBmslave16_HSELx ),
        .AHB0_S_HMASTLOCK      ( CoreAHBLite_3_AHBmslave16_HMASTLOCK ),
        .AHB0_S_HWRITE         ( CoreAHBLite_3_AHBmslave16_HWRITE ),
        .AHB0_S_HREADY         ( CoreAHBLite_3_AHBmslave16_HREADY ),
        .AHB0_S_HADDR          ( CoreAHBLite_3_AHBmslave16_HADDR ),
        .AHB0_S_HBURST         ( CoreAHBLite_3_AHBmslave16_HBURST ),
        .AHB0_S_HSIZE          ( CoreAHBLite_3_AHBmslave16_HSIZE_0 ),
        .AHB0_S_HTRANS         ( CoreAHBLite_3_AHBmslave16_HTRANS ),
        .AHB0_S_HWDATA         ( CoreAHBLite_3_AHBmslave16_HWDATA ),
        // Outputs
        .FDDR_CAS_N            ( FDDR_CAS_N_0_net_0 ),
        .FDDR_CKE              ( FDDR_CKE_0_net_0 ),
        .FDDR_CLK              ( FDDR_CLK_0_net_0 ),
        .FDDR_CLK_N            ( FDDR_CLK_N_0_net_0 ),
        .FDDR_CS_N             ( FDDR_CS_N_0_net_0 ),
        .FDDR_ODT              ( FDDR_ODT_0_net_0 ),
        .FDDR_RAS_N            ( FDDR_RAS_N_0_net_0 ),
        .FDDR_RESET_N          ( FDDR_RESET_N_0_net_0 ),
        .FDDR_WE_N             ( FDDR_WE_N_0_net_0 ),
        .FDDR_DQS_TMATCH_0_OUT ( FDDR_DQS_TMATCH_0_OUT_0_net_0 ),
        .FDDR_DQS_TMATCH_1_OUT ( FDDR_DQS_TMATCH_1_OUT_0_net_0 ),
        .AHB0_S_HREADYOUT      ( CoreAHBLite_3_AHBmslave16_HREADYOUT ),
        .AHB0_S_HRESP          ( CoreAHBLite_3_AHBmslave16_HRESP ),
        .INIT_DONE             (  ),
        .FDDR_ADDR             ( FDDR_ADDR_0_net_0 ),
        .FDDR_BA               ( FDDR_BA_0_net_0 ),
        .AHB0_S_HRDATA         ( CoreAHBLite_3_AHBmslave16_HRDATA ),
        // Inouts
        .FDDR_DM_RDQS          ( FDDR_DM_RDQS_0 ),
        .FDDR_DQS              ( FDDR_DQS_0 ),
        .FDDR_DQS_N            ( FDDR_DQS_N_0 ),
        .FDDR_DQ               ( FDDR_DQ_0 ) 
        );

//--------RCOSC_50MHZ
RCOSC_50MHZ RCOSC_50MHZ_0(
        // Outputs
        .CLKOUT ( RCOSC_50MHZ_0_CLKOUT ) 
        );

//--------RTG4_CoreRISCV_AXI4_BaseDesign_RTG4FCCC_0_RTG4FCCC   -   Actel:SgCore:RTG4FCCC:1.1.216
RTG4_CoreRISCV_AXI4_BaseDesign_RTG4FCCC_0_RTG4FCCC RTG4FCCC_0(
        // Inputs
        .RCOSC_50MHZ ( RCOSC_50MHZ_0_CLKOUT ),
        // Outputs
        .LOCK        ( RTG4FCCC_0_LOCK ),
        .GL0         ( RTG4FCCC_0_GL0_3 ),
        .GL1         ( RTG4FCCC_0_GL1 ) 
        );

//--------SYSRESET
SYSRESET SYSRESET_0(
        // Inputs
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N ( SYSRESET_0_POWER_ON_RESET_N ) 
        );


endmodule
