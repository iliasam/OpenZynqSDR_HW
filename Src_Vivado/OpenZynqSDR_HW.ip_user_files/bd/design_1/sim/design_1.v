//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Apr 20 00:00:46 2025
//Host        : IDEAPAD running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=23,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=6,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=3,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_board_cnt=1,da_clkrst_cnt=11,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_clk,
    adc_in,
    adc_ovr_led_n,
    test_out2);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output adc_clk;
  input [11:0]adc_in;
  output adc_ovr_led_n;
  output test_out2;

  wire adc_ovr_detect_0_led_n;
  wire [11:0]adc_sim_conv_0_sim_data_out;
  wire [63:0]axi_mem_intercon_1_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_1_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_1_M00_AXI_AWCACHE;
  wire [0:0]axi_mem_intercon_1_M00_AXI_AWID;
  wire [3:0]axi_mem_intercon_1_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_1_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_1_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_1_M00_AXI_AWQOS;
  wire axi_mem_intercon_1_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_1_M00_AXI_AWSIZE;
  wire axi_mem_intercon_1_M00_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_1_M00_AXI_BID;
  wire axi_mem_intercon_1_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_1_M00_AXI_BRESP;
  wire axi_mem_intercon_1_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_1_M00_AXI_WDATA;
  wire [0:0]axi_mem_intercon_1_M00_AXI_WID;
  wire axi_mem_intercon_1_M00_AXI_WLAST;
  wire axi_mem_intercon_1_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_1_M00_AXI_WSTRB;
  wire axi_mem_intercon_1_M00_AXI_WVALID;
  wire [63:0]axi_mem_intercon_1_M01_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_1_M01_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_1_M01_AXI_AWCACHE;
  wire [0:0]axi_mem_intercon_1_M01_AXI_AWID;
  wire [3:0]axi_mem_intercon_1_M01_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_1_M01_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_1_M01_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_1_M01_AXI_AWQOS;
  wire axi_mem_intercon_1_M01_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_1_M01_AXI_AWSIZE;
  wire axi_mem_intercon_1_M01_AXI_AWVALID;
  wire [5:0]axi_mem_intercon_1_M01_AXI_BID;
  wire axi_mem_intercon_1_M01_AXI_BREADY;
  wire [1:0]axi_mem_intercon_1_M01_AXI_BRESP;
  wire axi_mem_intercon_1_M01_AXI_BVALID;
  wire [63:0]axi_mem_intercon_1_M01_AXI_WDATA;
  wire [0:0]axi_mem_intercon_1_M01_AXI_WID;
  wire axi_mem_intercon_1_M01_AXI_WLAST;
  wire axi_mem_intercon_1_M01_AXI_WREADY;
  wire [7:0]axi_mem_intercon_1_M01_AXI_WSTRB;
  wire axi_mem_intercon_1_M01_AXI_WVALID;
  wire [31:0]axi_mem_intercon_M00_AXI_AWADDR;
  wire [1:0]axi_mem_intercon_M00_AXI_AWBURST;
  wire [3:0]axi_mem_intercon_M00_AXI_AWCACHE;
  wire [3:0]axi_mem_intercon_M00_AXI_AWLEN;
  wire [1:0]axi_mem_intercon_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_intercon_M00_AXI_AWPROT;
  wire [3:0]axi_mem_intercon_M00_AXI_AWQOS;
  wire axi_mem_intercon_M00_AXI_AWREADY;
  wire [2:0]axi_mem_intercon_M00_AXI_AWSIZE;
  wire axi_mem_intercon_M00_AXI_AWVALID;
  wire axi_mem_intercon_M00_AXI_BREADY;
  wire [1:0]axi_mem_intercon_M00_AXI_BRESP;
  wire axi_mem_intercon_M00_AXI_BVALID;
  wire [63:0]axi_mem_intercon_M00_AXI_WDATA;
  wire axi_mem_intercon_M00_AXI_WLAST;
  wire axi_mem_intercon_M00_AXI_WREADY;
  wire [7:0]axi_mem_intercon_M00_AXI_WSTRB;
  wire axi_mem_intercon_M00_AXI_WVALID;
  wire interrupt_out;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_SPI_0_IO0_O;
  wire processing_system7_0_SPI_0_SCK_O;
  wire processing_system7_0_SPI_0_SS_I;
  wire processing_system7_0_SPI_0_SS_O;
  wire [0:0]rst_design_1_10M_interconnect_aresetn;
  wire [0:0]rst_design_1_10M_peripheral_aresetn;
  wire [31:0]sound_rx_common_0_snd_axis_TDATA;
  wire sound_rx_common_0_snd_axis_TLAST;
  wire [15:0]sound_rx_common_0_snd_axis_TUSER;
  wire sound_rx_common_0_snd_axis_TVALID;
  wire [31:0]sound_sender_0_m_axi_out_bus_AWADDR;
  wire [1:0]sound_sender_0_m_axi_out_bus_AWBURST;
  wire [3:0]sound_sender_0_m_axi_out_bus_AWCACHE;
  wire [0:0]sound_sender_0_m_axi_out_bus_AWID;
  wire [7:0]sound_sender_0_m_axi_out_bus_AWLEN;
  wire [1:0]sound_sender_0_m_axi_out_bus_AWLOCK;
  wire [2:0]sound_sender_0_m_axi_out_bus_AWPROT;
  wire [3:0]sound_sender_0_m_axi_out_bus_AWQOS;
  wire sound_sender_0_m_axi_out_bus_AWREADY;
  wire [3:0]sound_sender_0_m_axi_out_bus_AWREGION;
  wire [2:0]sound_sender_0_m_axi_out_bus_AWSIZE;
  wire sound_sender_0_m_axi_out_bus_AWVALID;
  wire [0:0]sound_sender_0_m_axi_out_bus_BID;
  wire sound_sender_0_m_axi_out_bus_BREADY;
  wire [1:0]sound_sender_0_m_axi_out_bus_BRESP;
  wire sound_sender_0_m_axi_out_bus_BVALID;
  wire [31:0]sound_sender_0_m_axi_out_bus_WDATA;
  wire sound_sender_0_m_axi_out_bus_WLAST;
  wire sound_sender_0_m_axi_out_bus_WREADY;
  wire [3:0]sound_sender_0_m_axi_out_bus_WSTRB;
  wire sound_sender_0_m_axi_out_bus_WVALID;
  wire [3:0]spi_receiver_0_command;
  wire [35:0]spi_receiver_0_data;
  wire spi_receiver_0_data_ready;
  wire waterfall_sender_0_interrupt_out;
  wire [63:0]waterfall_sender_0_m_axi_out_bus_AWADDR;
  wire [1:0]waterfall_sender_0_m_axi_out_bus_AWBURST;
  wire [3:0]waterfall_sender_0_m_axi_out_bus_AWCACHE;
  wire [0:0]waterfall_sender_0_m_axi_out_bus_AWID;
  wire [7:0]waterfall_sender_0_m_axi_out_bus_AWLEN;
  wire [1:0]waterfall_sender_0_m_axi_out_bus_AWLOCK;
  wire [2:0]waterfall_sender_0_m_axi_out_bus_AWPROT;
  wire [3:0]waterfall_sender_0_m_axi_out_bus_AWQOS;
  wire waterfall_sender_0_m_axi_out_bus_AWREADY;
  wire [3:0]waterfall_sender_0_m_axi_out_bus_AWREGION;
  wire [2:0]waterfall_sender_0_m_axi_out_bus_AWSIZE;
  wire waterfall_sender_0_m_axi_out_bus_AWVALID;
  wire [0:0]waterfall_sender_0_m_axi_out_bus_BID;
  wire waterfall_sender_0_m_axi_out_bus_BREADY;
  wire [1:0]waterfall_sender_0_m_axi_out_bus_BRESP;
  wire waterfall_sender_0_m_axi_out_bus_BVALID;
  wire [63:0]waterfall_sender_0_m_axi_out_bus_WDATA;
  wire waterfall_sender_0_m_axi_out_bus_WLAST;
  wire waterfall_sender_0_m_axi_out_bus_WREADY;
  wire [7:0]waterfall_sender_0_m_axi_out_bus_WSTRB;
  wire waterfall_sender_0_m_axi_out_bus_WVALID;
  wire waterfall_sender_1_interrupt_out;
  wire [63:0]waterfall_sender_1_m_axi_out_bus_AWADDR;
  wire [1:0]waterfall_sender_1_m_axi_out_bus_AWBURST;
  wire [3:0]waterfall_sender_1_m_axi_out_bus_AWCACHE;
  wire [0:0]waterfall_sender_1_m_axi_out_bus_AWID;
  wire [7:0]waterfall_sender_1_m_axi_out_bus_AWLEN;
  wire [1:0]waterfall_sender_1_m_axi_out_bus_AWLOCK;
  wire [2:0]waterfall_sender_1_m_axi_out_bus_AWPROT;
  wire [3:0]waterfall_sender_1_m_axi_out_bus_AWQOS;
  wire waterfall_sender_1_m_axi_out_bus_AWREADY;
  wire [3:0]waterfall_sender_1_m_axi_out_bus_AWREGION;
  wire [2:0]waterfall_sender_1_m_axi_out_bus_AWSIZE;
  wire waterfall_sender_1_m_axi_out_bus_AWVALID;
  wire [0:0]waterfall_sender_1_m_axi_out_bus_BID;
  wire waterfall_sender_1_m_axi_out_bus_BREADY;
  wire [1:0]waterfall_sender_1_m_axi_out_bus_BRESP;
  wire waterfall_sender_1_m_axi_out_bus_BVALID;
  wire [63:0]waterfall_sender_1_m_axi_out_bus_WDATA;
  wire waterfall_sender_1_m_axi_out_bus_WLAST;
  wire waterfall_sender_1_m_axi_out_bus_WREADY;
  wire [7:0]waterfall_sender_1_m_axi_out_bus_WSTRB;
  wire waterfall_sender_1_m_axi_out_bus_WVALID;
  wire wf_proc_0_start_out;
  wire [31:0]wf_proc_0_wf_axis_TDATA;
  wire wf_proc_0_wf_axis_TVALID;
  wire wf_proc_1_start_out;
  wire [31:0]wf_proc_1_wf_axis_TDATA;
  wire wf_proc_1_wf_axis_TVALID;
  wire [2:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign adc_clk = processing_system7_0_FCLK_CLK0;
  assign adc_ovr_led_n = adc_ovr_detect_0_led_n;
  assign adc_sim_conv_0_sim_data_out = adc_in[11:0];
  assign test_out2 = interrupt_out;
  design_1_adc_ovr_detect_0_0 adc_ovr_detect_0
       (.adc_data_in(adc_sim_conv_0_sim_data_out),
        .clk_main(processing_system7_0_FCLK_CLK0),
        .led_n(adc_ovr_detect_0_led_n),
        .rst_n(rst_design_1_10M_interconnect_aresetn));
  design_1_axi_mem_intercon_2 axi_mem_intercon
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_design_1_10M_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_design_1_10M_peripheral_aresetn),
        .M00_AXI_awaddr(axi_mem_intercon_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_mem_intercon_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_intercon_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_M00_AXI_BVALID),
        .M00_AXI_wdata(axi_mem_intercon_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_intercon_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_design_1_10M_peripheral_aresetn),
        .S00_AXI_awaddr(sound_sender_0_m_axi_out_bus_AWADDR),
        .S00_AXI_awburst(sound_sender_0_m_axi_out_bus_AWBURST),
        .S00_AXI_awcache(sound_sender_0_m_axi_out_bus_AWCACHE),
        .S00_AXI_awid(sound_sender_0_m_axi_out_bus_AWID),
        .S00_AXI_awlen(sound_sender_0_m_axi_out_bus_AWLEN),
        .S00_AXI_awlock(sound_sender_0_m_axi_out_bus_AWLOCK),
        .S00_AXI_awprot(sound_sender_0_m_axi_out_bus_AWPROT),
        .S00_AXI_awqos(sound_sender_0_m_axi_out_bus_AWQOS),
        .S00_AXI_awready(sound_sender_0_m_axi_out_bus_AWREADY),
        .S00_AXI_awregion(sound_sender_0_m_axi_out_bus_AWREGION),
        .S00_AXI_awsize(sound_sender_0_m_axi_out_bus_AWSIZE),
        .S00_AXI_awvalid(sound_sender_0_m_axi_out_bus_AWVALID),
        .S00_AXI_bid(sound_sender_0_m_axi_out_bus_BID),
        .S00_AXI_bready(sound_sender_0_m_axi_out_bus_BREADY),
        .S00_AXI_bresp(sound_sender_0_m_axi_out_bus_BRESP),
        .S00_AXI_bvalid(sound_sender_0_m_axi_out_bus_BVALID),
        .S00_AXI_wdata(sound_sender_0_m_axi_out_bus_WDATA),
        .S00_AXI_wlast(sound_sender_0_m_axi_out_bus_WLAST),
        .S00_AXI_wready(sound_sender_0_m_axi_out_bus_WREADY),
        .S00_AXI_wstrb(sound_sender_0_m_axi_out_bus_WSTRB),
        .S00_AXI_wvalid(sound_sender_0_m_axi_out_bus_WVALID));
  design_1_axi_mem_intercon_1_1 axi_mem_intercon_1
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_design_1_10M_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_design_1_10M_peripheral_aresetn),
        .M00_AXI_awaddr(axi_mem_intercon_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_1_M00_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_1_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_1_M00_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_1_M00_AXI_BVALID),
        .M00_AXI_wdata(axi_mem_intercon_1_M00_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_1_M00_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_1_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_design_1_10M_peripheral_aresetn),
        .S00_AXI_awaddr(waterfall_sender_0_m_axi_out_bus_AWADDR),
        .S00_AXI_awburst(waterfall_sender_0_m_axi_out_bus_AWBURST),
        .S00_AXI_awcache(waterfall_sender_0_m_axi_out_bus_AWCACHE),
        .S00_AXI_awid(waterfall_sender_0_m_axi_out_bus_AWID),
        .S00_AXI_awlen(waterfall_sender_0_m_axi_out_bus_AWLEN),
        .S00_AXI_awlock(waterfall_sender_0_m_axi_out_bus_AWLOCK),
        .S00_AXI_awprot(waterfall_sender_0_m_axi_out_bus_AWPROT),
        .S00_AXI_awqos(waterfall_sender_0_m_axi_out_bus_AWQOS),
        .S00_AXI_awready(waterfall_sender_0_m_axi_out_bus_AWREADY),
        .S00_AXI_awregion(waterfall_sender_0_m_axi_out_bus_AWREGION),
        .S00_AXI_awsize(waterfall_sender_0_m_axi_out_bus_AWSIZE),
        .S00_AXI_awvalid(waterfall_sender_0_m_axi_out_bus_AWVALID),
        .S00_AXI_bid(waterfall_sender_0_m_axi_out_bus_BID),
        .S00_AXI_bready(waterfall_sender_0_m_axi_out_bus_BREADY),
        .S00_AXI_bresp(waterfall_sender_0_m_axi_out_bus_BRESP),
        .S00_AXI_bvalid(waterfall_sender_0_m_axi_out_bus_BVALID),
        .S00_AXI_wdata(waterfall_sender_0_m_axi_out_bus_WDATA),
        .S00_AXI_wlast(waterfall_sender_0_m_axi_out_bus_WLAST),
        .S00_AXI_wready(waterfall_sender_0_m_axi_out_bus_WREADY),
        .S00_AXI_wstrb(waterfall_sender_0_m_axi_out_bus_WSTRB),
        .S00_AXI_wvalid(waterfall_sender_0_m_axi_out_bus_WVALID));
  design_1_axi_mem_intercon_1_2 axi_mem_intercon_2
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(rst_design_1_10M_peripheral_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(rst_design_1_10M_peripheral_aresetn),
        .M00_AXI_awaddr(axi_mem_intercon_1_M01_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_intercon_1_M01_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_intercon_1_M01_AXI_AWCACHE),
        .M00_AXI_awid(axi_mem_intercon_1_M01_AXI_AWID),
        .M00_AXI_awlen(axi_mem_intercon_1_M01_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_intercon_1_M01_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_intercon_1_M01_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_intercon_1_M01_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_intercon_1_M01_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_intercon_1_M01_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_intercon_1_M01_AXI_AWVALID),
        .M00_AXI_bid(axi_mem_intercon_1_M01_AXI_BID),
        .M00_AXI_bready(axi_mem_intercon_1_M01_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_intercon_1_M01_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_intercon_1_M01_AXI_BVALID),
        .M00_AXI_wdata(axi_mem_intercon_1_M01_AXI_WDATA),
        .M00_AXI_wid(axi_mem_intercon_1_M01_AXI_WID),
        .M00_AXI_wlast(axi_mem_intercon_1_M01_AXI_WLAST),
        .M00_AXI_wready(axi_mem_intercon_1_M01_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_intercon_1_M01_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_intercon_1_M01_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(rst_design_1_10M_peripheral_aresetn),
        .S00_AXI_awaddr(waterfall_sender_1_m_axi_out_bus_AWADDR),
        .S00_AXI_awburst(waterfall_sender_1_m_axi_out_bus_AWBURST),
        .S00_AXI_awcache(waterfall_sender_1_m_axi_out_bus_AWCACHE),
        .S00_AXI_awid(waterfall_sender_1_m_axi_out_bus_AWID),
        .S00_AXI_awlen(waterfall_sender_1_m_axi_out_bus_AWLEN),
        .S00_AXI_awlock(waterfall_sender_1_m_axi_out_bus_AWLOCK),
        .S00_AXI_awprot(waterfall_sender_1_m_axi_out_bus_AWPROT),
        .S00_AXI_awqos(waterfall_sender_1_m_axi_out_bus_AWQOS),
        .S00_AXI_awready(waterfall_sender_1_m_axi_out_bus_AWREADY),
        .S00_AXI_awregion(waterfall_sender_1_m_axi_out_bus_AWREGION),
        .S00_AXI_awsize(waterfall_sender_1_m_axi_out_bus_AWSIZE),
        .S00_AXI_awvalid(waterfall_sender_1_m_axi_out_bus_AWVALID),
        .S00_AXI_bid(waterfall_sender_1_m_axi_out_bus_BID),
        .S00_AXI_bready(waterfall_sender_1_m_axi_out_bus_BREADY),
        .S00_AXI_bresp(waterfall_sender_1_m_axi_out_bus_BRESP),
        .S00_AXI_bvalid(waterfall_sender_1_m_axi_out_bus_BVALID),
        .S00_AXI_wdata(waterfall_sender_1_m_axi_out_bus_WDATA),
        .S00_AXI_wlast(waterfall_sender_1_m_axi_out_bus_WLAST),
        .S00_AXI_wready(waterfall_sender_1_m_axi_out_bus_WREADY),
        .S00_AXI_wstrb(waterfall_sender_1_m_axi_out_bus_WSTRB),
        .S00_AXI_wvalid(waterfall_sender_1_m_axi_out_bus_WVALID));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SPI0_MISO_I(1'b0),
        .SPI0_MOSI_I(1'b0),
        .SPI0_MOSI_O(processing_system7_0_SPI_0_IO0_O),
        .SPI0_SCLK_I(1'b0),
        .SPI0_SCLK_O(processing_system7_0_SPI_0_SCK_O),
        .SPI0_SS_I(processing_system7_0_SPI_0_SS_I),
        .SPI0_SS_O(processing_system7_0_SPI_0_SS_O),
        .S_AXI_HP0_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARBURST({1'b0,1'b1}),
        .S_AXI_HP0_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARVALID(1'b0),
        .S_AXI_HP0_AWADDR(axi_mem_intercon_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(axi_mem_intercon_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_mem_intercon_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(axi_mem_intercon_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_mem_intercon_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_mem_intercon_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(axi_mem_intercon_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(axi_mem_intercon_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_mem_intercon_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_mem_intercon_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(axi_mem_intercon_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(axi_mem_intercon_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(axi_mem_intercon_M00_AXI_BVALID),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RREADY(1'b0),
        .S_AXI_HP0_WDATA(axi_mem_intercon_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(axi_mem_intercon_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(axi_mem_intercon_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_mem_intercon_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(axi_mem_intercon_M00_AXI_WVALID),
        .S_AXI_HP1_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP1_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARBURST({1'b0,1'b1}),
        .S_AXI_HP1_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP1_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP1_ARVALID(1'b0),
        .S_AXI_HP1_AWADDR(axi_mem_intercon_1_M00_AXI_AWADDR[31:0]),
        .S_AXI_HP1_AWBURST(axi_mem_intercon_1_M00_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(axi_mem_intercon_1_M00_AXI_AWCACHE),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_1_M00_AXI_AWID}),
        .S_AXI_HP1_AWLEN(axi_mem_intercon_1_M00_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK(axi_mem_intercon_1_M00_AXI_AWLOCK),
        .S_AXI_HP1_AWPROT(axi_mem_intercon_1_M00_AXI_AWPROT),
        .S_AXI_HP1_AWQOS(axi_mem_intercon_1_M00_AXI_AWQOS),
        .S_AXI_HP1_AWREADY(axi_mem_intercon_1_M00_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(axi_mem_intercon_1_M00_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(axi_mem_intercon_1_M00_AXI_AWVALID),
        .S_AXI_HP1_BID(axi_mem_intercon_1_M00_AXI_BID),
        .S_AXI_HP1_BREADY(axi_mem_intercon_1_M00_AXI_BREADY),
        .S_AXI_HP1_BRESP(axi_mem_intercon_1_M00_AXI_BRESP),
        .S_AXI_HP1_BVALID(axi_mem_intercon_1_M00_AXI_BVALID),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RREADY(1'b0),
        .S_AXI_HP1_WDATA(axi_mem_intercon_1_M00_AXI_WDATA),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_1_M00_AXI_WID}),
        .S_AXI_HP1_WLAST(axi_mem_intercon_1_M00_AXI_WLAST),
        .S_AXI_HP1_WREADY(axi_mem_intercon_1_M00_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(axi_mem_intercon_1_M00_AXI_WSTRB),
        .S_AXI_HP1_WVALID(axi_mem_intercon_1_M00_AXI_WVALID),
        .S_AXI_HP2_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_HP2_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARBURST({1'b0,1'b1}),
        .S_AXI_HP2_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP2_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP2_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP2_ARSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP2_ARVALID(1'b0),
        .S_AXI_HP2_AWADDR(axi_mem_intercon_1_M01_AXI_AWADDR[31:0]),
        .S_AXI_HP2_AWBURST(axi_mem_intercon_1_M01_AXI_AWBURST),
        .S_AXI_HP2_AWCACHE(axi_mem_intercon_1_M01_AXI_AWCACHE),
        .S_AXI_HP2_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_1_M01_AXI_AWID}),
        .S_AXI_HP2_AWLEN(axi_mem_intercon_1_M01_AXI_AWLEN),
        .S_AXI_HP2_AWLOCK(axi_mem_intercon_1_M01_AXI_AWLOCK),
        .S_AXI_HP2_AWPROT(axi_mem_intercon_1_M01_AXI_AWPROT),
        .S_AXI_HP2_AWQOS(axi_mem_intercon_1_M01_AXI_AWQOS),
        .S_AXI_HP2_AWREADY(axi_mem_intercon_1_M01_AXI_AWREADY),
        .S_AXI_HP2_AWSIZE(axi_mem_intercon_1_M01_AXI_AWSIZE),
        .S_AXI_HP2_AWVALID(axi_mem_intercon_1_M01_AXI_AWVALID),
        .S_AXI_HP2_BID(axi_mem_intercon_1_M01_AXI_BID),
        .S_AXI_HP2_BREADY(axi_mem_intercon_1_M01_AXI_BREADY),
        .S_AXI_HP2_BRESP(axi_mem_intercon_1_M01_AXI_BRESP),
        .S_AXI_HP2_BVALID(axi_mem_intercon_1_M01_AXI_BVALID),
        .S_AXI_HP2_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP2_RREADY(1'b0),
        .S_AXI_HP2_WDATA(axi_mem_intercon_1_M01_AXI_WDATA),
        .S_AXI_HP2_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_mem_intercon_1_M01_AXI_WID}),
        .S_AXI_HP2_WLAST(axi_mem_intercon_1_M01_AXI_WLAST),
        .S_AXI_HP2_WREADY(axi_mem_intercon_1_M01_AXI_WREADY),
        .S_AXI_HP2_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP2_WSTRB(axi_mem_intercon_1_M01_AXI_WSTRB),
        .S_AXI_HP2_WVALID(axi_mem_intercon_1_M01_AXI_WVALID));
  design_1_rst_design_1_10M_0 rst_design_1_10M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(rst_design_1_10M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_design_1_10M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_sound_rx_common_0_0 sound_rx_common_0
       (.adc_data(adc_sim_conv_0_sim_data_out),
        .command_i(spi_receiver_0_command),
        .data_i(spi_receiver_0_data),
        .data_ready_i(spi_receiver_0_data_ready),
        .in_aclk(processing_system7_0_FCLK_CLK0),
        .resn_i(rst_design_1_10M_interconnect_aresetn),
        .snd_axis_tdata(sound_rx_common_0_snd_axis_TDATA),
        .snd_axis_tlast(sound_rx_common_0_snd_axis_TLAST),
        .snd_axis_tuser(sound_rx_common_0_snd_axis_TUSER),
        .snd_axis_tvalid(sound_rx_common_0_snd_axis_TVALID));
  design_1_sound_sender_0_2 sound_sender_0
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(rst_design_1_10M_peripheral_aresetn),
        .in_bus_TDATA(sound_rx_common_0_snd_axis_TDATA),
        .in_bus_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .in_bus_TLAST(sound_rx_common_0_snd_axis_TLAST),
        .in_bus_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_bus_TUSER(sound_rx_common_0_snd_axis_TUSER),
        .in_bus_TVALID(sound_rx_common_0_snd_axis_TVALID),
        .interrupt_out(interrupt_out),
        .m_axi_out_bus_ARREADY(1'b0),
        .m_axi_out_bus_AWADDR(sound_sender_0_m_axi_out_bus_AWADDR),
        .m_axi_out_bus_AWBURST(sound_sender_0_m_axi_out_bus_AWBURST),
        .m_axi_out_bus_AWCACHE(sound_sender_0_m_axi_out_bus_AWCACHE),
        .m_axi_out_bus_AWID(sound_sender_0_m_axi_out_bus_AWID),
        .m_axi_out_bus_AWLEN(sound_sender_0_m_axi_out_bus_AWLEN),
        .m_axi_out_bus_AWLOCK(sound_sender_0_m_axi_out_bus_AWLOCK),
        .m_axi_out_bus_AWPROT(sound_sender_0_m_axi_out_bus_AWPROT),
        .m_axi_out_bus_AWQOS(sound_sender_0_m_axi_out_bus_AWQOS),
        .m_axi_out_bus_AWREADY(sound_sender_0_m_axi_out_bus_AWREADY),
        .m_axi_out_bus_AWREGION(sound_sender_0_m_axi_out_bus_AWREGION),
        .m_axi_out_bus_AWSIZE(sound_sender_0_m_axi_out_bus_AWSIZE),
        .m_axi_out_bus_AWVALID(sound_sender_0_m_axi_out_bus_AWVALID),
        .m_axi_out_bus_BID(sound_sender_0_m_axi_out_bus_BID),
        .m_axi_out_bus_BREADY(sound_sender_0_m_axi_out_bus_BREADY),
        .m_axi_out_bus_BRESP(sound_sender_0_m_axi_out_bus_BRESP),
        .m_axi_out_bus_BVALID(sound_sender_0_m_axi_out_bus_BVALID),
        .m_axi_out_bus_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_out_bus_RID(1'b0),
        .m_axi_out_bus_RLAST(1'b0),
        .m_axi_out_bus_RRESP({1'b0,1'b0}),
        .m_axi_out_bus_RVALID(1'b0),
        .m_axi_out_bus_WDATA(sound_sender_0_m_axi_out_bus_WDATA),
        .m_axi_out_bus_WLAST(sound_sender_0_m_axi_out_bus_WLAST),
        .m_axi_out_bus_WREADY(sound_sender_0_m_axi_out_bus_WREADY),
        .m_axi_out_bus_WSTRB(sound_sender_0_m_axi_out_bus_WSTRB),
        .m_axi_out_bus_WVALID(sound_sender_0_m_axi_out_bus_WVALID));
  design_1_spi_receiver_0_0 spi_receiver_0
       (.clk_main(processing_system7_0_FCLK_CLK0),
        .command(spi_receiver_0_command),
        .csn_i(processing_system7_0_SPI_0_SS_O),
        .csn_o(processing_system7_0_SPI_0_SS_I),
        .data(spi_receiver_0_data),
        .data_ready(spi_receiver_0_data_ready),
        .mosi(processing_system7_0_SPI_0_IO0_O),
        .resn_i(rst_design_1_10M_interconnect_aresetn),
        .spi_clk(processing_system7_0_SPI_0_SCK_O));
  design_1_waterfall_sender_0_0 waterfall_sender_0
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(rst_design_1_10M_peripheral_aresetn),
        .in_bus_TDATA(wf_proc_0_wf_axis_TDATA),
        .in_bus_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .in_bus_TLAST(1'b0),
        .in_bus_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_bus_TVALID(wf_proc_0_wf_axis_TVALID),
        .interrupt_out(waterfall_sender_0_interrupt_out),
        .m_axi_out_bus_ARREADY(1'b0),
        .m_axi_out_bus_AWADDR(waterfall_sender_0_m_axi_out_bus_AWADDR),
        .m_axi_out_bus_AWBURST(waterfall_sender_0_m_axi_out_bus_AWBURST),
        .m_axi_out_bus_AWCACHE(waterfall_sender_0_m_axi_out_bus_AWCACHE),
        .m_axi_out_bus_AWID(waterfall_sender_0_m_axi_out_bus_AWID),
        .m_axi_out_bus_AWLEN(waterfall_sender_0_m_axi_out_bus_AWLEN),
        .m_axi_out_bus_AWLOCK(waterfall_sender_0_m_axi_out_bus_AWLOCK),
        .m_axi_out_bus_AWPROT(waterfall_sender_0_m_axi_out_bus_AWPROT),
        .m_axi_out_bus_AWQOS(waterfall_sender_0_m_axi_out_bus_AWQOS),
        .m_axi_out_bus_AWREADY(waterfall_sender_0_m_axi_out_bus_AWREADY),
        .m_axi_out_bus_AWREGION(waterfall_sender_0_m_axi_out_bus_AWREGION),
        .m_axi_out_bus_AWSIZE(waterfall_sender_0_m_axi_out_bus_AWSIZE),
        .m_axi_out_bus_AWVALID(waterfall_sender_0_m_axi_out_bus_AWVALID),
        .m_axi_out_bus_BID(waterfall_sender_0_m_axi_out_bus_BID),
        .m_axi_out_bus_BREADY(waterfall_sender_0_m_axi_out_bus_BREADY),
        .m_axi_out_bus_BRESP(waterfall_sender_0_m_axi_out_bus_BRESP),
        .m_axi_out_bus_BVALID(waterfall_sender_0_m_axi_out_bus_BVALID),
        .m_axi_out_bus_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_out_bus_RID(1'b0),
        .m_axi_out_bus_RLAST(1'b0),
        .m_axi_out_bus_RRESP({1'b0,1'b0}),
        .m_axi_out_bus_RVALID(1'b0),
        .m_axi_out_bus_WDATA(waterfall_sender_0_m_axi_out_bus_WDATA),
        .m_axi_out_bus_WLAST(waterfall_sender_0_m_axi_out_bus_WLAST),
        .m_axi_out_bus_WREADY(waterfall_sender_0_m_axi_out_bus_WREADY),
        .m_axi_out_bus_WSTRB(waterfall_sender_0_m_axi_out_bus_WSTRB),
        .m_axi_out_bus_WVALID(waterfall_sender_0_m_axi_out_bus_WVALID),
        .module_idx(xlconstant_0_dout),
        .start_send(wf_proc_0_start_out));
  design_1_waterfall_sender_0_1 waterfall_sender_1
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(rst_design_1_10M_peripheral_aresetn),
        .in_bus_TDATA(wf_proc_1_wf_axis_TDATA),
        .in_bus_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .in_bus_TLAST(1'b0),
        .in_bus_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_bus_TVALID(wf_proc_1_wf_axis_TVALID),
        .interrupt_out(waterfall_sender_1_interrupt_out),
        .m_axi_out_bus_ARREADY(1'b0),
        .m_axi_out_bus_AWADDR(waterfall_sender_1_m_axi_out_bus_AWADDR),
        .m_axi_out_bus_AWBURST(waterfall_sender_1_m_axi_out_bus_AWBURST),
        .m_axi_out_bus_AWCACHE(waterfall_sender_1_m_axi_out_bus_AWCACHE),
        .m_axi_out_bus_AWID(waterfall_sender_1_m_axi_out_bus_AWID),
        .m_axi_out_bus_AWLEN(waterfall_sender_1_m_axi_out_bus_AWLEN),
        .m_axi_out_bus_AWLOCK(waterfall_sender_1_m_axi_out_bus_AWLOCK),
        .m_axi_out_bus_AWPROT(waterfall_sender_1_m_axi_out_bus_AWPROT),
        .m_axi_out_bus_AWQOS(waterfall_sender_1_m_axi_out_bus_AWQOS),
        .m_axi_out_bus_AWREADY(waterfall_sender_1_m_axi_out_bus_AWREADY),
        .m_axi_out_bus_AWREGION(waterfall_sender_1_m_axi_out_bus_AWREGION),
        .m_axi_out_bus_AWSIZE(waterfall_sender_1_m_axi_out_bus_AWSIZE),
        .m_axi_out_bus_AWVALID(waterfall_sender_1_m_axi_out_bus_AWVALID),
        .m_axi_out_bus_BID(waterfall_sender_1_m_axi_out_bus_BID),
        .m_axi_out_bus_BREADY(waterfall_sender_1_m_axi_out_bus_BREADY),
        .m_axi_out_bus_BRESP(waterfall_sender_1_m_axi_out_bus_BRESP),
        .m_axi_out_bus_BVALID(waterfall_sender_1_m_axi_out_bus_BVALID),
        .m_axi_out_bus_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_out_bus_RID(1'b0),
        .m_axi_out_bus_RLAST(1'b0),
        .m_axi_out_bus_RRESP({1'b0,1'b0}),
        .m_axi_out_bus_RVALID(1'b0),
        .m_axi_out_bus_WDATA(waterfall_sender_1_m_axi_out_bus_WDATA),
        .m_axi_out_bus_WLAST(waterfall_sender_1_m_axi_out_bus_WLAST),
        .m_axi_out_bus_WREADY(waterfall_sender_1_m_axi_out_bus_WREADY),
        .m_axi_out_bus_WSTRB(waterfall_sender_1_m_axi_out_bus_WSTRB),
        .m_axi_out_bus_WVALID(waterfall_sender_1_m_axi_out_bus_WVALID),
        .module_idx(xlconstant_1_dout),
        .start_send(wf_proc_1_start_out));
  design_1_wf_proc_0_0 wf_proc_0
       (.adc_data(adc_sim_conv_0_sim_data_out),
        .command_i(spi_receiver_0_command),
        .data_i(spi_receiver_0_data),
        .data_ready_i(spi_receiver_0_data_ready),
        .in_aclk(processing_system7_0_FCLK_CLK0),
        .resn_i(rst_design_1_10M_interconnect_aresetn),
        .start_out(wf_proc_0_start_out),
        .wf_axis_tdata(wf_proc_0_wf_axis_TDATA),
        .wf_axis_tvalid(wf_proc_0_wf_axis_TVALID));
  design_1_wf_proc_0_1 wf_proc_1
       (.adc_data(adc_sim_conv_0_sim_data_out),
        .command_i(spi_receiver_0_command),
        .data_i(spi_receiver_0_data),
        .data_ready_i(spi_receiver_0_data_ready),
        .in_aclk(processing_system7_0_FCLK_CLK0),
        .resn_i(rst_design_1_10M_interconnect_aresetn),
        .start_out(wf_proc_1_start_out),
        .wf_axis_tdata(wf_proc_1_wf_axis_TDATA),
        .wf_axis_tvalid(wf_proc_1_wf_axis_TVALID));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(interrupt_out),
        .In1(waterfall_sender_0_interrupt_out),
        .In2(waterfall_sender_1_interrupt_out),
        .dout(xlconcat_0_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module design_1_axi_mem_intercon_1_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_mem_intercon_1_ACLK_net;
  wire axi_mem_intercon_1_ARESETN_net;
  wire [63:0]axi_mem_intercon_1_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_1_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_1_to_s00_couplers_AWCACHE;
  wire [0:0]axi_mem_intercon_1_to_s00_couplers_AWID;
  wire [7:0]axi_mem_intercon_1_to_s00_couplers_AWLEN;
  wire [1:0]axi_mem_intercon_1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_1_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_1_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_1_to_s00_couplers_AWREADY;
  wire [3:0]axi_mem_intercon_1_to_s00_couplers_AWREGION;
  wire [2:0]axi_mem_intercon_1_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_1_to_s00_couplers_AWVALID;
  wire [0:0]axi_mem_intercon_1_to_s00_couplers_BID;
  wire axi_mem_intercon_1_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_1_to_s00_couplers_BRESP;
  wire axi_mem_intercon_1_to_s00_couplers_BVALID;
  wire [63:0]axi_mem_intercon_1_to_s00_couplers_WDATA;
  wire axi_mem_intercon_1_to_s00_couplers_WLAST;
  wire axi_mem_intercon_1_to_s00_couplers_WREADY;
  wire [7:0]axi_mem_intercon_1_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_1_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_1_AWADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_1_AWBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_1_AWCACHE;
  wire [0:0]s00_couplers_to_axi_mem_intercon_1_AWID;
  wire [3:0]s00_couplers_to_axi_mem_intercon_1_AWLEN;
  wire [1:0]s00_couplers_to_axi_mem_intercon_1_AWLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_1_AWPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_1_AWQOS;
  wire s00_couplers_to_axi_mem_intercon_1_AWREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_1_AWSIZE;
  wire s00_couplers_to_axi_mem_intercon_1_AWVALID;
  wire [5:0]s00_couplers_to_axi_mem_intercon_1_BID;
  wire s00_couplers_to_axi_mem_intercon_1_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_1_BRESP;
  wire s00_couplers_to_axi_mem_intercon_1_BVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_1_WDATA;
  wire [0:0]s00_couplers_to_axi_mem_intercon_1_WID;
  wire s00_couplers_to_axi_mem_intercon_1_WLAST;
  wire s00_couplers_to_axi_mem_intercon_1_WREADY;
  wire [7:0]s00_couplers_to_axi_mem_intercon_1_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_1_WVALID;

  assign M00_AXI_awaddr[63:0] = s00_couplers_to_axi_mem_intercon_1_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_mem_intercon_1_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_mem_intercon_1_AWCACHE;
  assign M00_AXI_awid[0] = s00_couplers_to_axi_mem_intercon_1_AWID;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_axi_mem_intercon_1_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_axi_mem_intercon_1_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_1_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_mem_intercon_1_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_mem_intercon_1_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_1_BREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_mem_intercon_1_WDATA;
  assign M00_AXI_wid[0] = s00_couplers_to_axi_mem_intercon_1_WID;
  assign M00_AXI_wlast = s00_couplers_to_axi_mem_intercon_1_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_mem_intercon_1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_awready = axi_mem_intercon_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_mem_intercon_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_1_to_s00_couplers_BVALID;
  assign S00_AXI_wready = axi_mem_intercon_1_to_s00_couplers_WREADY;
  assign axi_mem_intercon_1_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_1_ARESETN_net = M00_ARESETN;
  assign axi_mem_intercon_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_mem_intercon_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_1_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_mem_intercon_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_mem_intercon_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_1_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_axi_mem_intercon_1_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_1_WREADY = M00_AXI_wready;
  s00_couplers_imp_1FI55ZU s00_couplers
       (.M_ACLK(axi_mem_intercon_1_ACLK_net),
        .M_ARESETN(axi_mem_intercon_1_ARESETN_net),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_1_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_mem_intercon_1_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_mem_intercon_1_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_mem_intercon_1_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_mem_intercon_1_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_mem_intercon_1_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_1_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_mem_intercon_1_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_1_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_mem_intercon_1_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_1_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_mem_intercon_1_BID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_1_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_1_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_1_BVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_1_WDATA),
        .M_AXI_wid(s00_couplers_to_axi_mem_intercon_1_WID),
        .M_AXI_wlast(s00_couplers_to_axi_mem_intercon_1_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_1_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_awaddr(axi_mem_intercon_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_mem_intercon_1_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_mem_intercon_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_1_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_mem_intercon_1_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_mem_intercon_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_mem_intercon_1_to_s00_couplers_BID),
        .S_AXI_bready(axi_mem_intercon_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_1_to_s00_couplers_BVALID),
        .S_AXI_wdata(axi_mem_intercon_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_1_to_s00_couplers_WVALID));
endmodule

module design_1_axi_mem_intercon_1_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_mem_intercon_2_ACLK_net;
  wire axi_mem_intercon_2_ARESETN_net;
  wire [63:0]axi_mem_intercon_2_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_2_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_2_to_s00_couplers_AWCACHE;
  wire [0:0]axi_mem_intercon_2_to_s00_couplers_AWID;
  wire [7:0]axi_mem_intercon_2_to_s00_couplers_AWLEN;
  wire [1:0]axi_mem_intercon_2_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_2_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_2_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_2_to_s00_couplers_AWREADY;
  wire [3:0]axi_mem_intercon_2_to_s00_couplers_AWREGION;
  wire [2:0]axi_mem_intercon_2_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_2_to_s00_couplers_AWVALID;
  wire [0:0]axi_mem_intercon_2_to_s00_couplers_BID;
  wire axi_mem_intercon_2_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_2_to_s00_couplers_BRESP;
  wire axi_mem_intercon_2_to_s00_couplers_BVALID;
  wire [63:0]axi_mem_intercon_2_to_s00_couplers_WDATA;
  wire axi_mem_intercon_2_to_s00_couplers_WLAST;
  wire axi_mem_intercon_2_to_s00_couplers_WREADY;
  wire [7:0]axi_mem_intercon_2_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_2_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_2_AWADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_2_AWBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_2_AWCACHE;
  wire [0:0]s00_couplers_to_axi_mem_intercon_2_AWID;
  wire [3:0]s00_couplers_to_axi_mem_intercon_2_AWLEN;
  wire [1:0]s00_couplers_to_axi_mem_intercon_2_AWLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_2_AWPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_2_AWQOS;
  wire s00_couplers_to_axi_mem_intercon_2_AWREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_2_AWSIZE;
  wire s00_couplers_to_axi_mem_intercon_2_AWVALID;
  wire [5:0]s00_couplers_to_axi_mem_intercon_2_BID;
  wire s00_couplers_to_axi_mem_intercon_2_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_2_BRESP;
  wire s00_couplers_to_axi_mem_intercon_2_BVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_2_WDATA;
  wire [0:0]s00_couplers_to_axi_mem_intercon_2_WID;
  wire s00_couplers_to_axi_mem_intercon_2_WLAST;
  wire s00_couplers_to_axi_mem_intercon_2_WREADY;
  wire [7:0]s00_couplers_to_axi_mem_intercon_2_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_2_WVALID;

  assign M00_AXI_awaddr[63:0] = s00_couplers_to_axi_mem_intercon_2_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_mem_intercon_2_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_mem_intercon_2_AWCACHE;
  assign M00_AXI_awid[0] = s00_couplers_to_axi_mem_intercon_2_AWID;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_axi_mem_intercon_2_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_axi_mem_intercon_2_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_2_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_mem_intercon_2_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_mem_intercon_2_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_2_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_2_BREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_mem_intercon_2_WDATA;
  assign M00_AXI_wid[0] = s00_couplers_to_axi_mem_intercon_2_WID;
  assign M00_AXI_wlast = s00_couplers_to_axi_mem_intercon_2_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_mem_intercon_2_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_2_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_awready = axi_mem_intercon_2_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_mem_intercon_2_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_2_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_2_to_s00_couplers_BVALID;
  assign S00_AXI_wready = axi_mem_intercon_2_to_s00_couplers_WREADY;
  assign axi_mem_intercon_2_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_2_ARESETN_net = M00_ARESETN;
  assign axi_mem_intercon_2_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_mem_intercon_2_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_2_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_2_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_2_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign axi_mem_intercon_2_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_2_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign axi_mem_intercon_2_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_2_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_2_BID = M00_AXI_bid[5:0];
  assign s00_couplers_to_axi_mem_intercon_2_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_2_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_2_WREADY = M00_AXI_wready;
  s00_couplers_imp_ZRKJIY s00_couplers
       (.M_ACLK(axi_mem_intercon_2_ACLK_net),
        .M_ARESETN(axi_mem_intercon_2_ARESETN_net),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_2_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_mem_intercon_2_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_mem_intercon_2_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_mem_intercon_2_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_mem_intercon_2_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_mem_intercon_2_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_2_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_mem_intercon_2_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_2_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_mem_intercon_2_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_2_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_mem_intercon_2_BID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_2_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_2_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_2_BVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_2_WDATA),
        .M_AXI_wid(s00_couplers_to_axi_mem_intercon_2_WID),
        .M_AXI_wlast(s00_couplers_to_axi_mem_intercon_2_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_2_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_2_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_2_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_awaddr(axi_mem_intercon_2_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_2_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_2_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_mem_intercon_2_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_mem_intercon_2_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_2_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_2_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_2_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_2_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_mem_intercon_2_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_mem_intercon_2_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_2_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_mem_intercon_2_to_s00_couplers_BID),
        .S_AXI_bready(axi_mem_intercon_2_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_2_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_2_to_s00_couplers_BVALID),
        .S_AXI_wdata(axi_mem_intercon_2_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_2_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_2_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_2_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_2_to_s00_couplers_WVALID));
endmodule

module design_1_axi_mem_intercon_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_mem_intercon_ACLK_net;
  wire axi_mem_intercon_ARESETN_net;
  wire [31:0]axi_mem_intercon_to_s00_couplers_AWADDR;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWBURST;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWCACHE;
  wire [0:0]axi_mem_intercon_to_s00_couplers_AWID;
  wire [7:0]axi_mem_intercon_to_s00_couplers_AWLEN;
  wire [1:0]axi_mem_intercon_to_s00_couplers_AWLOCK;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWPROT;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWQOS;
  wire axi_mem_intercon_to_s00_couplers_AWREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_AWREGION;
  wire [2:0]axi_mem_intercon_to_s00_couplers_AWSIZE;
  wire axi_mem_intercon_to_s00_couplers_AWVALID;
  wire [0:0]axi_mem_intercon_to_s00_couplers_BID;
  wire axi_mem_intercon_to_s00_couplers_BREADY;
  wire [1:0]axi_mem_intercon_to_s00_couplers_BRESP;
  wire axi_mem_intercon_to_s00_couplers_BVALID;
  wire [31:0]axi_mem_intercon_to_s00_couplers_WDATA;
  wire axi_mem_intercon_to_s00_couplers_WLAST;
  wire axi_mem_intercon_to_s00_couplers_WREADY;
  wire [3:0]axi_mem_intercon_to_s00_couplers_WSTRB;
  wire axi_mem_intercon_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_mem_intercon_AWADDR;
  wire [1:0]s00_couplers_to_axi_mem_intercon_AWBURST;
  wire [3:0]s00_couplers_to_axi_mem_intercon_AWCACHE;
  wire [3:0]s00_couplers_to_axi_mem_intercon_AWLEN;
  wire [1:0]s00_couplers_to_axi_mem_intercon_AWLOCK;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWPROT;
  wire [3:0]s00_couplers_to_axi_mem_intercon_AWQOS;
  wire s00_couplers_to_axi_mem_intercon_AWREADY;
  wire [2:0]s00_couplers_to_axi_mem_intercon_AWSIZE;
  wire s00_couplers_to_axi_mem_intercon_AWVALID;
  wire s00_couplers_to_axi_mem_intercon_BREADY;
  wire [1:0]s00_couplers_to_axi_mem_intercon_BRESP;
  wire s00_couplers_to_axi_mem_intercon_BVALID;
  wire [63:0]s00_couplers_to_axi_mem_intercon_WDATA;
  wire s00_couplers_to_axi_mem_intercon_WLAST;
  wire s00_couplers_to_axi_mem_intercon_WREADY;
  wire [7:0]s00_couplers_to_axi_mem_intercon_WSTRB;
  wire s00_couplers_to_axi_mem_intercon_WVALID;

  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_mem_intercon_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_mem_intercon_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_mem_intercon_AWCACHE;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_axi_mem_intercon_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_axi_mem_intercon_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_mem_intercon_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_mem_intercon_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_mem_intercon_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_mem_intercon_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_mem_intercon_BREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_axi_mem_intercon_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_mem_intercon_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_axi_mem_intercon_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_mem_intercon_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_awready = axi_mem_intercon_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_mem_intercon_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_mem_intercon_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_mem_intercon_to_s00_couplers_BVALID;
  assign S00_AXI_wready = axi_mem_intercon_to_s00_couplers_WREADY;
  assign axi_mem_intercon_ACLK_net = M00_ACLK;
  assign axi_mem_intercon_ARESETN_net = M00_ARESETN;
  assign axi_mem_intercon_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_mem_intercon_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_mem_intercon_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_mem_intercon_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_mem_intercon_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_mem_intercon_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_mem_intercon_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_mem_intercon_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_mem_intercon_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_mem_intercon_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_mem_intercon_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_mem_intercon_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_mem_intercon_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_mem_intercon_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_mem_intercon_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_mem_intercon_WREADY = M00_AXI_wready;
  s00_couplers_imp_7HNO1D s00_couplers
       (.M_ACLK(axi_mem_intercon_ACLK_net),
        .M_ARESETN(axi_mem_intercon_ARESETN_net),
        .M_AXI_awaddr(s00_couplers_to_axi_mem_intercon_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_mem_intercon_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_mem_intercon_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_mem_intercon_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_mem_intercon_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_mem_intercon_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_mem_intercon_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_mem_intercon_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_mem_intercon_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_mem_intercon_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_mem_intercon_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_mem_intercon_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_mem_intercon_BVALID),
        .M_AXI_wdata(s00_couplers_to_axi_mem_intercon_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_mem_intercon_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_mem_intercon_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_mem_intercon_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_mem_intercon_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_awaddr(axi_mem_intercon_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_mem_intercon_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_mem_intercon_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_mem_intercon_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_mem_intercon_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_mem_intercon_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_mem_intercon_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_mem_intercon_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_mem_intercon_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_mem_intercon_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_mem_intercon_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_mem_intercon_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_mem_intercon_to_s00_couplers_BID),
        .S_AXI_bready(axi_mem_intercon_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_mem_intercon_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_mem_intercon_to_s00_couplers_BVALID),
        .S_AXI_wdata(axi_mem_intercon_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_mem_intercon_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_mem_intercon_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_mem_intercon_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_mem_intercon_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_1FI55ZU
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_s00_couplers_AWID;
  wire [3:0]auto_pc_to_s00_couplers_AWLEN;
  wire [1:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [5:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [63:0]auto_pc_to_s00_couplers_WDATA;
  wire [0:0]auto_pc_to_s00_couplers_WID;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [7:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [0:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_awaddr[63:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_s00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_s00_couplers_WID),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_7HNO1D
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_auto_us_AWADDR;
  wire [1:0]auto_pc_to_auto_us_AWBURST;
  wire [3:0]auto_pc_to_auto_us_AWCACHE;
  wire [0:0]auto_pc_to_auto_us_AWID;
  wire [3:0]auto_pc_to_auto_us_AWLEN;
  wire [1:0]auto_pc_to_auto_us_AWLOCK;
  wire [2:0]auto_pc_to_auto_us_AWPROT;
  wire [3:0]auto_pc_to_auto_us_AWQOS;
  wire auto_pc_to_auto_us_AWREADY;
  wire [2:0]auto_pc_to_auto_us_AWSIZE;
  wire auto_pc_to_auto_us_AWVALID;
  wire [0:0]auto_pc_to_auto_us_BID;
  wire auto_pc_to_auto_us_BREADY;
  wire [1:0]auto_pc_to_auto_us_BRESP;
  wire auto_pc_to_auto_us_BVALID;
  wire [31:0]auto_pc_to_auto_us_WDATA;
  wire auto_pc_to_auto_us_WLAST;
  wire auto_pc_to_auto_us_WREADY;
  wire [3:0]auto_pc_to_auto_us_WSTRB;
  wire auto_pc_to_auto_us_WVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [3:0]auto_us_to_s00_couplers_AWLEN;
  wire [1:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [63:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [7:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [0:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(auto_pc_to_auto_us_AWADDR),
        .m_axi_awburst(auto_pc_to_auto_us_AWBURST),
        .m_axi_awcache(auto_pc_to_auto_us_AWCACHE),
        .m_axi_awid(auto_pc_to_auto_us_AWID),
        .m_axi_awlen(auto_pc_to_auto_us_AWLEN),
        .m_axi_awlock(auto_pc_to_auto_us_AWLOCK),
        .m_axi_awprot(auto_pc_to_auto_us_AWPROT),
        .m_axi_awqos(auto_pc_to_auto_us_AWQOS),
        .m_axi_awready(auto_pc_to_auto_us_AWREADY),
        .m_axi_awsize(auto_pc_to_auto_us_AWSIZE),
        .m_axi_awvalid(auto_pc_to_auto_us_AWVALID),
        .m_axi_bid(auto_pc_to_auto_us_BID),
        .m_axi_bready(auto_pc_to_auto_us_BREADY),
        .m_axi_bresp(auto_pc_to_auto_us_BRESP),
        .m_axi_bvalid(auto_pc_to_auto_us_BVALID),
        .m_axi_wdata(auto_pc_to_auto_us_WDATA),
        .m_axi_wlast(auto_pc_to_auto_us_WLAST),
        .m_axi_wready(auto_pc_to_auto_us_WREADY),
        .m_axi_wstrb(auto_pc_to_auto_us_WSTRB),
        .m_axi_wvalid(auto_pc_to_auto_us_WVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
  design_1_auto_us_0 auto_us
       (.m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(auto_pc_to_auto_us_AWADDR),
        .s_axi_awburst(auto_pc_to_auto_us_AWBURST),
        .s_axi_awcache(auto_pc_to_auto_us_AWCACHE),
        .s_axi_awid(auto_pc_to_auto_us_AWID),
        .s_axi_awlen(auto_pc_to_auto_us_AWLEN),
        .s_axi_awlock(auto_pc_to_auto_us_AWLOCK),
        .s_axi_awprot(auto_pc_to_auto_us_AWPROT),
        .s_axi_awqos(auto_pc_to_auto_us_AWQOS),
        .s_axi_awready(auto_pc_to_auto_us_AWREADY),
        .s_axi_awsize(auto_pc_to_auto_us_AWSIZE),
        .s_axi_awvalid(auto_pc_to_auto_us_AWVALID),
        .s_axi_bid(auto_pc_to_auto_us_BID),
        .s_axi_bready(auto_pc_to_auto_us_BREADY),
        .s_axi_bresp(auto_pc_to_auto_us_BRESP),
        .s_axi_bvalid(auto_pc_to_auto_us_BVALID),
        .s_axi_wdata(auto_pc_to_auto_us_WDATA),
        .s_axi_wlast(auto_pc_to_auto_us_WLAST),
        .s_axi_wready(auto_pc_to_auto_us_WREADY),
        .s_axi_wstrb(auto_pc_to_auto_us_WSTRB),
        .s_axi_wvalid(auto_pc_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_ZRKJIY
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_s00_couplers_AWID;
  wire [3:0]auto_pc_to_s00_couplers_AWLEN;
  wire [1:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [5:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [63:0]auto_pc_to_s00_couplers_WDATA;
  wire [0:0]auto_pc_to_s00_couplers_WID;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [7:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [0:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_awaddr[63:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_s00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_s00_couplers_WID),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK[0]),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
