// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module waterfall_sender_waterfall_sender_Pipeline_VITIS_LOOP_72_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_bus_TVALID,
        m_axi_out_bus_AWVALID,
        m_axi_out_bus_AWREADY,
        m_axi_out_bus_AWADDR,
        m_axi_out_bus_AWID,
        m_axi_out_bus_AWLEN,
        m_axi_out_bus_AWSIZE,
        m_axi_out_bus_AWBURST,
        m_axi_out_bus_AWLOCK,
        m_axi_out_bus_AWCACHE,
        m_axi_out_bus_AWPROT,
        m_axi_out_bus_AWQOS,
        m_axi_out_bus_AWREGION,
        m_axi_out_bus_AWUSER,
        m_axi_out_bus_WVALID,
        m_axi_out_bus_WREADY,
        m_axi_out_bus_WDATA,
        m_axi_out_bus_WSTRB,
        m_axi_out_bus_WLAST,
        m_axi_out_bus_WID,
        m_axi_out_bus_WUSER,
        m_axi_out_bus_ARVALID,
        m_axi_out_bus_ARREADY,
        m_axi_out_bus_ARADDR,
        m_axi_out_bus_ARID,
        m_axi_out_bus_ARLEN,
        m_axi_out_bus_ARSIZE,
        m_axi_out_bus_ARBURST,
        m_axi_out_bus_ARLOCK,
        m_axi_out_bus_ARCACHE,
        m_axi_out_bus_ARPROT,
        m_axi_out_bus_ARQOS,
        m_axi_out_bus_ARREGION,
        m_axi_out_bus_ARUSER,
        m_axi_out_bus_RVALID,
        m_axi_out_bus_RREADY,
        m_axi_out_bus_RDATA,
        m_axi_out_bus_RLAST,
        m_axi_out_bus_RID,
        m_axi_out_bus_RFIFONUM,
        m_axi_out_bus_RUSER,
        m_axi_out_bus_RRESP,
        m_axi_out_bus_BVALID,
        m_axi_out_bus_BREADY,
        m_axi_out_bus_BRESP,
        m_axi_out_bus_BID,
        m_axi_out_bus_BUSER,
        select_ln72,
        in_bus_TDATA,
        in_bus_TREADY,
        in_bus_TKEEP,
        in_bus_TSTRB,
        in_bus_TLAST
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   in_bus_TVALID;
output   m_axi_out_bus_AWVALID;
input   m_axi_out_bus_AWREADY;
output  [63:0] m_axi_out_bus_AWADDR;
output  [0:0] m_axi_out_bus_AWID;
output  [31:0] m_axi_out_bus_AWLEN;
output  [2:0] m_axi_out_bus_AWSIZE;
output  [1:0] m_axi_out_bus_AWBURST;
output  [1:0] m_axi_out_bus_AWLOCK;
output  [3:0] m_axi_out_bus_AWCACHE;
output  [2:0] m_axi_out_bus_AWPROT;
output  [3:0] m_axi_out_bus_AWQOS;
output  [3:0] m_axi_out_bus_AWREGION;
output  [0:0] m_axi_out_bus_AWUSER;
output   m_axi_out_bus_WVALID;
input   m_axi_out_bus_WREADY;
output  [63:0] m_axi_out_bus_WDATA;
output  [7:0] m_axi_out_bus_WSTRB;
output   m_axi_out_bus_WLAST;
output  [0:0] m_axi_out_bus_WID;
output  [0:0] m_axi_out_bus_WUSER;
output   m_axi_out_bus_ARVALID;
input   m_axi_out_bus_ARREADY;
output  [63:0] m_axi_out_bus_ARADDR;
output  [0:0] m_axi_out_bus_ARID;
output  [31:0] m_axi_out_bus_ARLEN;
output  [2:0] m_axi_out_bus_ARSIZE;
output  [1:0] m_axi_out_bus_ARBURST;
output  [1:0] m_axi_out_bus_ARLOCK;
output  [3:0] m_axi_out_bus_ARCACHE;
output  [2:0] m_axi_out_bus_ARPROT;
output  [3:0] m_axi_out_bus_ARQOS;
output  [3:0] m_axi_out_bus_ARREGION;
output  [0:0] m_axi_out_bus_ARUSER;
input   m_axi_out_bus_RVALID;
output   m_axi_out_bus_RREADY;
input  [63:0] m_axi_out_bus_RDATA;
input   m_axi_out_bus_RLAST;
input  [0:0] m_axi_out_bus_RID;
input  [8:0] m_axi_out_bus_RFIFONUM;
input  [0:0] m_axi_out_bus_RUSER;
input  [1:0] m_axi_out_bus_RRESP;
input   m_axi_out_bus_BVALID;
output   m_axi_out_bus_BREADY;
input  [1:0] m_axi_out_bus_BRESP;
input  [0:0] m_axi_out_bus_BID;
input  [0:0] m_axi_out_bus_BUSER;
input  [21:0] select_ln72;
input  [31:0] in_bus_TDATA;
output   in_bus_TREADY;
input  [3:0] in_bus_TKEEP;
input  [3:0] in_bus_TSTRB;
input  [0:0] in_bus_TLAST;

reg ap_idle;
reg m_axi_out_bus_WVALID;
reg in_bus_TREADY;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
reg    ap_block_state2_pp0_stage1_iter0;
wire   [0:0] icmp_ln93_fu_140_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    out_bus_blk_n_W;
reg    in_bus_TDATA_blk_n;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [31:0] tmp_data_V_reg_163;
reg   [11:0] item_count_reg_fu_70;
wire   [11:0] add_ln93_fu_134_p2;
wire    ap_loop_init;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_done_reg = 1'b0;
end

waterfall_sender_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0)) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((in_bus_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        item_count_reg_fu_70 <= 12'd0;
    end else if ((~((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0)) & (icmp_ln93_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        item_count_reg_fu_70 <= add_ln93_fu_134_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((in_bus_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_data_V_reg_163 <= in_bus_TDATA;
    end
end

always @ (*) begin
    if (((in_bus_TVALID == 1'b0) | (ap_start_int == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0)) & (icmp_ln93_fu_140_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0)) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
        in_bus_TDATA_blk_n = in_bus_TVALID;
    end else begin
        in_bus_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2)) | (~((in_bus_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        in_bus_TREADY = 1'b1;
    end else begin
        in_bus_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_out_bus_WVALID = 1'b1;
    end else begin
        m_axi_out_bus_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        out_bus_blk_n_W = m_axi_out_bus_WREADY;
    end else begin
        out_bus_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((in_bus_TVALID == 1'b0) | (ap_start_int == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((m_axi_out_bus_WREADY == 1'b0) | (in_bus_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln93_fu_134_p2 = (item_count_reg_fu_70 + 12'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((in_bus_TVALID == 1'b0) | (ap_start_int == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = (in_bus_TVALID == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign icmp_ln93_fu_140_p2 = ((item_count_reg_fu_70 == 12'd4095) ? 1'b1 : 1'b0);

assign m_axi_out_bus_ARADDR = 64'd0;

assign m_axi_out_bus_ARBURST = 2'd0;

assign m_axi_out_bus_ARCACHE = 4'd0;

assign m_axi_out_bus_ARID = 1'd0;

assign m_axi_out_bus_ARLEN = 32'd0;

assign m_axi_out_bus_ARLOCK = 2'd0;

assign m_axi_out_bus_ARPROT = 3'd0;

assign m_axi_out_bus_ARQOS = 4'd0;

assign m_axi_out_bus_ARREGION = 4'd0;

assign m_axi_out_bus_ARSIZE = 3'd0;

assign m_axi_out_bus_ARUSER = 1'd0;

assign m_axi_out_bus_ARVALID = 1'b0;

assign m_axi_out_bus_AWADDR = 64'd0;

assign m_axi_out_bus_AWBURST = 2'd0;

assign m_axi_out_bus_AWCACHE = 4'd0;

assign m_axi_out_bus_AWID = 1'd0;

assign m_axi_out_bus_AWLEN = 32'd0;

assign m_axi_out_bus_AWLOCK = 2'd0;

assign m_axi_out_bus_AWPROT = 3'd0;

assign m_axi_out_bus_AWQOS = 4'd0;

assign m_axi_out_bus_AWREGION = 4'd0;

assign m_axi_out_bus_AWSIZE = 3'd0;

assign m_axi_out_bus_AWUSER = 1'd0;

assign m_axi_out_bus_AWVALID = 1'b0;

assign m_axi_out_bus_BREADY = 1'b0;

assign m_axi_out_bus_RREADY = 1'b0;

assign m_axi_out_bus_WDATA = {{in_bus_TDATA}, {tmp_data_V_reg_163}};

assign m_axi_out_bus_WID = 1'd0;

assign m_axi_out_bus_WLAST = 1'b0;

assign m_axi_out_bus_WSTRB = 8'd255;

assign m_axi_out_bus_WUSER = 1'd0;

endmodule //waterfall_sender_waterfall_sender_Pipeline_VITIS_LOOP_72_1
