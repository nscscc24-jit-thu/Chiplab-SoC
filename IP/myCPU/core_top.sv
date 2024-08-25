module core_top
#(
	parameter TLBNUM = 32
)
(
    input           aclk,
    input           aresetn,
    input    [ 7:0] intrpt, 
    output   [ 3:0] arid,
    output   [31:0] araddr,
    output   [ 7:0] arlen,
    output   [ 2:0] arsize,
    output   [ 1:0] arburst,
    output   [ 1:0] arlock,
    output   [ 3:0] arcache,
    output   [ 2:0] arprot,
    output          arvalid,
    input           arready,
    input    [ 3:0] rid,
    input    [31:0] rdata,
    input    [ 1:0] rresp,
    input           rlast,
    input           rvalid,
    output          rready,
    output   [ 3:0] awid,
    output   [31:0] awaddr,
    output   [ 7:0] awlen,
    output   [ 2:0] awsize,
    output   [ 1:0] awburst,
    output   [ 1:0] awlock,
    output   [ 3:0] awcache,
    output   [ 2:0] awprot,
    output          awvalid,
    input           awready,
    output   [ 3:0] wid,
    output   [31:0] wdata,
    output   [ 3:0] wstrb,
    output          wlast,
    output          wvalid,
    input           wready,
    input    [ 3:0] bid,
    input    [ 1:0] bresp,
    input           bvalid,
    output          bready,
    input           break_point,
    input           infor_flag,
    input  [ 4:0]   reg_num,
    output          ws_valid,
    output [31:0]   rf_rdata,


    output [31:0] debug0_wb_pc,
    output [ 3:0] debug0_wb_rf_wen,
    output [ 4:0] debug0_wb_rf_wnum,
    output [31:0] debug0_wb_rf_wdata,
    output [31:0] debug0_wb_inst,

    output [31:0] debug1_wb_pc,
    output [ 3:0] debug1_wb_rf_wen,
    output [ 4:0] debug1_wb_rf_wnum,
    output [31:0] debug1_wb_rf_wdata,
    output [31:0] debug1_wb_inst,

    output [31:0] debug2_wb_pc,
    output [ 3:0] debug2_wb_rf_wen,
    output [ 4:0] debug2_wb_rf_wnum,
    output [31:0] debug2_wb_rf_wdata,
    output [31:0] debug2_wb_inst
);

reg [2:0]  DretireMask     ;
reg [31:0] DretireAddr_0   ;
reg [31:0] DretireAddr_1   ;
reg [31:0] DretireAddr_2   ;
reg [31:0] DretireInst_0   ;
reg [31:0] DretireInst_1   ;
reg [31:0] DretireInst_2   ;
reg [2:0]  DretireWen      ;
reg [4:0]  DretireWaddr_0  ;
reg [4:0]  DretireWaddr_1  ;
reg [4:0]  DretireWaddr_2  ;
reg [31:0] DretireWresult_0;
reg [31:0] DretireWresult_1;
reg [31:0] DretireWresult_2;
reg [2:0]  DuniqueRetire   ; 


// wire [63:0]  DifftestBundle_DifftestCSRRegStateCRMD     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStatePRMD     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateEUEN     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateECFG     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateESTAT    ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateERA      ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateBADV     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateEENTRY   ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTLBIDX   ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTLBEHI   ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTLBELO0  ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTLBELO1  ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateASID     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStatePGDL     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStatePGDH     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateSAVE0    ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateSAVE1    ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateSAVE2    ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateSAVE3    ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTID      ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTCFG     ; 
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTVAL     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTICLR    ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateLLBCTL   ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateTLBRENTRY;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateDMW0     ;
// wire [63:0]  DifftestBundle_DifftestCSRRegStateDMW1     ;

wire [31:0] DaRAT_val_0 ;
wire [31:0] DaRAT_val_1 ;
wire [31:0] DaRAT_val_2 ;
wire [31:0] DaRAT_val_3 ;
wire [31:0] DaRAT_val_4 ;
wire [31:0] DaRAT_val_5 ;
wire [31:0] DaRAT_val_6 ;
wire [31:0] DaRAT_val_7 ;
wire [31:0] DaRAT_val_8 ;
wire [31:0] DaRAT_val_9 ;
wire [31:0] DaRAT_val_10;
wire [31:0] DaRAT_val_11;
wire [31:0] DaRAT_val_12;
wire [31:0] DaRAT_val_13;
wire [31:0] DaRAT_val_14;
wire [31:0] DaRAT_val_15;
wire [31:0] DaRAT_val_16;
wire [31:0] DaRAT_val_17;
wire [31:0] DaRAT_val_18;
wire [31:0] DaRAT_val_19;
wire [31:0] DaRAT_val_20;
wire [31:0] DaRAT_val_21;
wire [31:0] DaRAT_val_22;
wire [31:0] DaRAT_val_23;
wire [31:0] DaRAT_val_24;
wire [31:0] DaRAT_val_25;
wire [31:0] DaRAT_val_26;
wire [31:0] DaRAT_val_27;
wire [31:0] DaRAT_val_28;
wire [31:0] DaRAT_val_29;
wire [31:0] DaRAT_val_30;

wire     [63:0]   DifftestBundle_DifftestCSRRegStateCRMD     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStatePRMD     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateEUEN     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateECFG     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateESTAT    ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateERA      ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateBADV     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateEENTRY   ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTLBIDX   ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTLBEHI   ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTLBELO0  ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTLBELO1  ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateASID     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStatePGDL     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStatePGDH     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateSAVE0    ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateSAVE1    ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateSAVE2    ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateSAVE3    ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTID      ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTCFG     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTVAL     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTICLR    ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateLLBCTL   ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateTLBRENTRY;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateDMW0     ;
wire     [63:0]   DifftestBundle_DifftestCSRRegStateDMW1     ;


wire     [7:0]    DifftestDelayBundle_DifftestInstrCommitIndex_0;
wire     [7:0]    DifftestDelayBundle_DifftestInstrCommitIndex_1;
wire     [7:0]    DifftestDelayBundle_DifftestInstrCommitIndex_2;
(* MARK_DEBUG = "TRUE" *)wire              DifftestDelayBundle_DifftestInstrCommitValid_0;
(* MARK_DEBUG = "TRUE" *)wire              DifftestDelayBundle_DifftestInstrCommitValid_1;
(* MARK_DEBUG = "TRUE" *)wire              DifftestDelayBundle_DifftestInstrCommitValid_2;
(* MARK_DEBUG = "TRUE" *)wire     [63:0]   DifftestDelayBundle_DifftestInstrCommitPC_0   ;
(* MARK_DEBUG = "TRUE" *)wire     [63:0]   DifftestDelayBundle_DifftestInstrCommitPC_1   ;
(* MARK_DEBUG = "TRUE" *)wire     [63:0]   DifftestDelayBundle_DifftestInstrCommitPC_2   ;
wire     [31:0]   DifftestDelayBundle_DifftestInstrCommitInstr_0;
wire     [31:0]   DifftestDelayBundle_DifftestInstrCommitInstr_1;
wire     [31:0]   DifftestDelayBundle_DifftestInstrCommitInstr_2;
wire              DifftestDelayBundle_DifftestSkip_0            ;
wire              DifftestDelayBundle_DifftestSkip_1            ;
wire              DifftestDelayBundle_DifftestSkip_2            ;
wire              DifftestDelayBundle_DifftestIsTlbFill_0       ;
wire              DifftestDelayBundle_DifftestIsTlbFill_1       ;
wire              DifftestDelayBundle_DifftestIsTlbFill_2       ;
wire     [4:0]    DifftestDelayBundle_DifftestTlbFillIndex_0    ;
wire     [4:0]    DifftestDelayBundle_DifftestTlbFillIndex_1    ;
wire     [4:0]    DifftestDelayBundle_DifftestTlbFillIndex_2    ;
wire              DifftestDelayBundle_DifftestIsCount_0         ;
wire              DifftestDelayBundle_DifftestIsCount_1         ;
wire              DifftestDelayBundle_DifftestIsCount_2         ;
wire     [63:0]   DifftestDelayBundle_DifftestCount_0           ;
wire     [63:0]   DifftestDelayBundle_DifftestCount_1           ;
wire     [63:0]   DifftestDelayBundle_DifftestCount_2           ;
wire              DifftestDelayBundle_DifftestWen_0             ;
wire              DifftestDelayBundle_DifftestWen_1             ;
wire              DifftestDelayBundle_DifftestWen_2             ;
wire     [7:0]    DifftestDelayBundle_DifftestWdest_0           ;
wire     [7:0]    DifftestDelayBundle_DifftestWdest_1           ;
wire     [7:0]    DifftestDelayBundle_DifftestWdest_2           ;
wire     [63:0]   DifftestDelayBundle_DifftestWdata_0           ;
wire     [63:0]   DifftestDelayBundle_DifftestWdata_1           ;
wire     [63:0]   DifftestDelayBundle_DifftestWdata_2           ;
wire              DifftestDelayBundle_DifftestCsrRstat_0        ;
wire              DifftestDelayBundle_DifftestCsrRstat_1        ;
wire              DifftestDelayBundle_DifftestCsrRstat_2        ;
wire     [31:0]   DifftestDelayBundle_DifftestCsrData_0         ;
wire     [31:0]   DifftestDelayBundle_DifftestCsrData_1         ;
wire     [31:0]   DifftestDelayBundle_DifftestCsrData_2         ;
wire              DifftestDelayBundle_DifftestExcpEventExcpValid;
wire              DifftestDelayBundle_DifftestExcpEventEret     ;
wire     [31:0]   DifftestDelayBundle_DifftestExcpEventIntrNO   ;
wire     [31:0]   DifftestDelayBundle_DifftestExcpEventCause    ;
wire     [63:0]   DifftestDelayBundle_DifftestExcpEventEPC      ;
wire     [31:0]   DifftestDelayBundle_DifftestExcpEventInst     ;
wire     [7:0]    DifftestDelayBundle_DifftestStoreEventValid   ;
wire     [63:0]   DifftestDelayBundle_DifftestStoreEventPAddr   ;
wire     [63:0]   DifftestDelayBundle_DifftestStoreEventVAddr   ;
wire     [63:0]   DifftestDelayBundle_DifftestStoreEventData    ;
wire     [7:0]    DifftestDelayBundle_DifftestLoadEventValid    ;
wire     [63:0]   DifftestDelayBundle_DifftestLoadEventPAddr    ;
wire     [63:0]   DifftestDelayBundle_DifftestLoadEventVAddr    ;


mycpu_top inner_cpu(
  .aclk(aclk),
  .aresetn(aresetn),
  .intrpt(intrpt),
  .awvalid(awvalid),
  .awready(awready),
  .awaddr(awaddr),
  .awid(awid),
  .awlen(awlen),
  .awsize(awsize),
  .awburst(awburst),
  .awlock(awlock),
  .awcache(awcache),
  .awprot(awprot),
  .wvalid(wvalid),
  .wready(wready),
  .wdata(wdata),
  .wstrb(wstrb),
  .wlast(wlast),
  .bvalid(bvalid),
  .bready(bready),
  .bid(bid),
  .bresp(bresp),
  .arvalid(arvalid),
  .arready(arready),
  .araddr(araddr),
  .arid(arid),
  .arlen(arlen),
  .arsize(arsize),
  .arburst(arburst),
  .arlock(arlock),
  .arcache(arcache),
  .arprot(arprot),
  .rvalid(rvalid),
  .rready(rready),
  .rdata(rdata),
  .rid(rid),
  .rresp(rresp),
  .rlast(rlast),
  .wid(wid),
  .break_point(break_point),
  .infor_flag(infor_flag),
  .reg_num(reg_num),
  .ws_valid(ws_valid),
  .rf_rdata(rf_rdata),
  .DretireMask     (DretireMask)      ,
  .DretireAddr_0   (DretireAddr_0)    ,
  .DretireAddr_1   (DretireAddr_1)    ,
  .DretireAddr_2   (DretireAddr_2)    ,
  .DretireInst_0   (DretireInst_0)    ,
  .DretireInst_1   (DretireInst_1)    ,
  .DretireInst_2   (DretireInst_2)    ,
  .DretireWen      (DretireWen)       ,
  .DretireWaddr_0  (DretireWaddr_0)   ,
  .DretireWaddr_1  (DretireWaddr_1)   ,
  .DretireWaddr_2  (DretireWaddr_2)   ,
  .DretireWresult_0(DretireWresult_0) ,
  .DretireWresult_1(DretireWresult_1) ,
  .DretireWresult_2(DretireWresult_2) ,
  .DuniqueRetire   (DuniqueRetire),

  // gp regs
  .DaRAT_val_0 (DaRAT_val_0 ),
  .DaRAT_val_1 (DaRAT_val_1 ),
  .DaRAT_val_2 (DaRAT_val_2 ),
  .DaRAT_val_3 (DaRAT_val_3 ),
  .DaRAT_val_4 (DaRAT_val_4 ),
  .DaRAT_val_5 (DaRAT_val_5 ),
  .DaRAT_val_6 (DaRAT_val_6 ),
  .DaRAT_val_7 (DaRAT_val_7 ),
  .DaRAT_val_8 (DaRAT_val_8 ),
  .DaRAT_val_9 (DaRAT_val_9 ),
  .DaRAT_val_10(DaRAT_val_10),
  .DaRAT_val_11(DaRAT_val_11),
  .DaRAT_val_12(DaRAT_val_12),
  .DaRAT_val_13(DaRAT_val_13),
  .DaRAT_val_14(DaRAT_val_14),
  .DaRAT_val_15(DaRAT_val_15),
  .DaRAT_val_16(DaRAT_val_16),
  .DaRAT_val_17(DaRAT_val_17),
  .DaRAT_val_18(DaRAT_val_18),
  .DaRAT_val_19(DaRAT_val_19),
  .DaRAT_val_20(DaRAT_val_20),
  .DaRAT_val_21(DaRAT_val_21),
  .DaRAT_val_22(DaRAT_val_22),
  .DaRAT_val_23(DaRAT_val_23),
  .DaRAT_val_24(DaRAT_val_24),
  .DaRAT_val_25(DaRAT_val_25),
  .DaRAT_val_26(DaRAT_val_26),
  .DaRAT_val_27(DaRAT_val_27),
  .DaRAT_val_28(DaRAT_val_28),
  .DaRAT_val_29(DaRAT_val_29),
  .DaRAT_val_30(DaRAT_val_30),


// delayed signals
.DifftestDelayBundle_DifftestInstrCommitIndex_0(DifftestDelayBundle_DifftestInstrCommitIndex_0),
.DifftestDelayBundle_DifftestInstrCommitIndex_1(DifftestDelayBundle_DifftestInstrCommitIndex_1),
.DifftestDelayBundle_DifftestInstrCommitIndex_2(DifftestDelayBundle_DifftestInstrCommitIndex_2),
.DifftestDelayBundle_DifftestInstrCommitValid_0(DifftestDelayBundle_DifftestInstrCommitValid_0),
.DifftestDelayBundle_DifftestInstrCommitValid_1(DifftestDelayBundle_DifftestInstrCommitValid_1),
.DifftestDelayBundle_DifftestInstrCommitValid_2(DifftestDelayBundle_DifftestInstrCommitValid_2),
.DifftestDelayBundle_DifftestInstrCommitPC_0   (DifftestDelayBundle_DifftestInstrCommitPC_0   ),
.DifftestDelayBundle_DifftestInstrCommitPC_1   (DifftestDelayBundle_DifftestInstrCommitPC_1   ),
.DifftestDelayBundle_DifftestInstrCommitPC_2   (DifftestDelayBundle_DifftestInstrCommitPC_2   ),
.DifftestDelayBundle_DifftestInstrCommitInstr_0(DifftestDelayBundle_DifftestInstrCommitInstr_0),
.DifftestDelayBundle_DifftestInstrCommitInstr_1(DifftestDelayBundle_DifftestInstrCommitInstr_1),
.DifftestDelayBundle_DifftestInstrCommitInstr_2(DifftestDelayBundle_DifftestInstrCommitInstr_2),
.DifftestDelayBundle_DifftestSkip_0            (DifftestDelayBundle_DifftestSkip_0            ),
.DifftestDelayBundle_DifftestSkip_1            (DifftestDelayBundle_DifftestSkip_1            ),
.DifftestDelayBundle_DifftestSkip_2            (DifftestDelayBundle_DifftestSkip_2            ),
.DifftestDelayBundle_DifftestIsTlbFill_0       (DifftestDelayBundle_DifftestIsTlbFill_0       ),
.DifftestDelayBundle_DifftestIsTlbFill_1       (DifftestDelayBundle_DifftestIsTlbFill_1       ),
.DifftestDelayBundle_DifftestIsTlbFill_2       (DifftestDelayBundle_DifftestIsTlbFill_2       ),
.DifftestDelayBundle_DifftestTlbFillIndex_0    (DifftestDelayBundle_DifftestTlbFillIndex_0    ),
.DifftestDelayBundle_DifftestTlbFillIndex_1    (DifftestDelayBundle_DifftestTlbFillIndex_1    ),
.DifftestDelayBundle_DifftestTlbFillIndex_2    (DifftestDelayBundle_DifftestTlbFillIndex_2    ),
.DifftestDelayBundle_DifftestIsCount_0         (DifftestDelayBundle_DifftestIsCount_0         ),
.DifftestDelayBundle_DifftestIsCount_1         (DifftestDelayBundle_DifftestIsCount_1         ),
.DifftestDelayBundle_DifftestIsCount_2         (DifftestDelayBundle_DifftestIsCount_2         ),
.DifftestDelayBundle_DifftestCount_0           (DifftestDelayBundle_DifftestCount_0           ),
.DifftestDelayBundle_DifftestCount_1           (DifftestDelayBundle_DifftestCount_1           ),
.DifftestDelayBundle_DifftestCount_2           (DifftestDelayBundle_DifftestCount_2           ),
.DifftestDelayBundle_DifftestWen_0             (DifftestDelayBundle_DifftestWen_0             ),
.DifftestDelayBundle_DifftestWen_1             (DifftestDelayBundle_DifftestWen_1             ),
.DifftestDelayBundle_DifftestWen_2             (DifftestDelayBundle_DifftestWen_2             ),
.DifftestDelayBundle_DifftestWdest_0           (DifftestDelayBundle_DifftestWdest_0           ),
.DifftestDelayBundle_DifftestWdest_1           (DifftestDelayBundle_DifftestWdest_1           ),
.DifftestDelayBundle_DifftestWdest_2           (DifftestDelayBundle_DifftestWdest_2           ),
.DifftestDelayBundle_DifftestWdata_0           (DifftestDelayBundle_DifftestWdata_0           ),
.DifftestDelayBundle_DifftestWdata_1           (DifftestDelayBundle_DifftestWdata_1           ),
.DifftestDelayBundle_DifftestWdata_2           (DifftestDelayBundle_DifftestWdata_2           ),
.DifftestDelayBundle_DifftestCsrRstat_0        (DifftestDelayBundle_DifftestCsrRstat_0        ),
.DifftestDelayBundle_DifftestCsrRstat_1        (DifftestDelayBundle_DifftestCsrRstat_1        ),
.DifftestDelayBundle_DifftestCsrRstat_2        (DifftestDelayBundle_DifftestCsrRstat_2        ),
.DifftestDelayBundle_DifftestCsrData_0         (DifftestDelayBundle_DifftestCsrData_0         ),
.DifftestDelayBundle_DifftestCsrData_1         (DifftestDelayBundle_DifftestCsrData_1         ),
.DifftestDelayBundle_DifftestCsrData_2         (DifftestDelayBundle_DifftestCsrData_2         ),
.DifftestDelayBundle_DifftestExcpEventExcpValid(DifftestDelayBundle_DifftestExcpEventExcpValid),
.DifftestDelayBundle_DifftestExcpEventEret     (DifftestDelayBundle_DifftestExcpEventEret     ),
.DifftestDelayBundle_DifftestExcpEventIntrNO   (DifftestDelayBundle_DifftestExcpEventIntrNO   ),
.DifftestDelayBundle_DifftestExcpEventCause    (DifftestDelayBundle_DifftestExcpEventCause    ),
.DifftestDelayBundle_DifftestExcpEventEPC      (DifftestDelayBundle_DifftestExcpEventEPC      ),
.DifftestDelayBundle_DifftestExcpEventInst     (DifftestDelayBundle_DifftestExcpEventInst     ),
.DifftestDelayBundle_DifftestStoreEventValid   (DifftestDelayBundle_DifftestStoreEventValid   ),
.DifftestDelayBundle_DifftestStoreEventPAddr   (DifftestDelayBundle_DifftestStoreEventPAddr   ),
.DifftestDelayBundle_DifftestStoreEventVAddr   (DifftestDelayBundle_DifftestStoreEventVAddr   ),
.DifftestDelayBundle_DifftestStoreEventData    (DifftestDelayBundle_DifftestStoreEventData    ),
.DifftestDelayBundle_DifftestLoadEventValid    (DifftestDelayBundle_DifftestLoadEventValid    ),
.DifftestDelayBundle_DifftestLoadEventPAddr    (DifftestDelayBundle_DifftestLoadEventPAddr    ),
.DifftestDelayBundle_DifftestLoadEventVAddr    (DifftestDelayBundle_DifftestLoadEventVAddr    ),  


// CSR
.DifftestBundle_DifftestCSRRegStateCRMD     (DifftestBundle_DifftestCSRRegStateCRMD     ),
.DifftestBundle_DifftestCSRRegStatePRMD     (DifftestBundle_DifftestCSRRegStatePRMD     ),
.DifftestBundle_DifftestCSRRegStateEUEN     (DifftestBundle_DifftestCSRRegStateEUEN     ),
.DifftestBundle_DifftestCSRRegStateECFG     (DifftestBundle_DifftestCSRRegStateECFG     ),
.DifftestBundle_DifftestCSRRegStateESTAT    (DifftestBundle_DifftestCSRRegStateESTAT    ),
.DifftestBundle_DifftestCSRRegStateERA      (DifftestBundle_DifftestCSRRegStateERA      ),
.DifftestBundle_DifftestCSRRegStateBADV     (DifftestBundle_DifftestCSRRegStateBADV     ),
.DifftestBundle_DifftestCSRRegStateEENTRY   (DifftestBundle_DifftestCSRRegStateEENTRY   ),
.DifftestBundle_DifftestCSRRegStateTLBIDX   (DifftestBundle_DifftestCSRRegStateTLBIDX   ),
.DifftestBundle_DifftestCSRRegStateTLBEHI   (DifftestBundle_DifftestCSRRegStateTLBEHI   ),
.DifftestBundle_DifftestCSRRegStateTLBELO0  (DifftestBundle_DifftestCSRRegStateTLBELO0  ),
.DifftestBundle_DifftestCSRRegStateTLBELO1  (DifftestBundle_DifftestCSRRegStateTLBELO1  ),
.DifftestBundle_DifftestCSRRegStateASID     (DifftestBundle_DifftestCSRRegStateASID     ),
.DifftestBundle_DifftestCSRRegStatePGDL     (DifftestBundle_DifftestCSRRegStatePGDL     ),
.DifftestBundle_DifftestCSRRegStatePGDH     (DifftestBundle_DifftestCSRRegStatePGDH     ),
.DifftestBundle_DifftestCSRRegStateSAVE0    (DifftestBundle_DifftestCSRRegStateSAVE0    ),
.DifftestBundle_DifftestCSRRegStateSAVE1    (DifftestBundle_DifftestCSRRegStateSAVE1    ),
.DifftestBundle_DifftestCSRRegStateSAVE2    (DifftestBundle_DifftestCSRRegStateSAVE2    ),
.DifftestBundle_DifftestCSRRegStateSAVE3    (DifftestBundle_DifftestCSRRegStateSAVE3    ),
.DifftestBundle_DifftestCSRRegStateTID      (DifftestBundle_DifftestCSRRegStateTID      ),
.DifftestBundle_DifftestCSRRegStateTCFG     (DifftestBundle_DifftestCSRRegStateTCFG     ),
.DifftestBundle_DifftestCSRRegStateTVAL     (DifftestBundle_DifftestCSRRegStateTVAL     ),
.DifftestBundle_DifftestCSRRegStateTICLR    (DifftestBundle_DifftestCSRRegStateTICLR    ),
.DifftestBundle_DifftestCSRRegStateLLBCTL   (DifftestBundle_DifftestCSRRegStateLLBCTL   ),
.DifftestBundle_DifftestCSRRegStateTLBRENTRY(DifftestBundle_DifftestCSRRegStateTLBRENTRY),
.DifftestBundle_DifftestCSRRegStateDMW0     (DifftestBundle_DifftestCSRRegStateDMW0     ),
.DifftestBundle_DifftestCSRRegStateDMW1     (DifftestBundle_DifftestCSRRegStateDMW1     )
);

assign debug0_wb_pc       =    DretireAddr_0 ;
assign debug0_wb_rf_wen   =     DretireWen[0];
assign debug0_wb_rf_wnum  =   DretireWaddr_0 ;
assign debug0_wb_rf_wdata = DretireWresult_0 ;
assign debug0_wb_inst     =    DretireInst_0 ;

assign debug1_wb_pc       =    DretireAddr_1 ;
assign debug1_wb_rf_wen   =     DretireWen[1];
assign debug1_wb_rf_wnum  =   DretireWaddr_1 ;
assign debug1_wb_rf_wdata = DretireWresult_1 ;
assign debug1_wb_inst     =    DretireInst_1 ;

assign debug2_wb_pc       =    DretireAddr_2 ;
assign debug2_wb_rf_wen   =     DretireWen[2];
assign debug2_wb_rf_wnum  =   DretireWaddr_2 ;
assign debug2_wb_rf_wdata = DretireWresult_2 ;
assign debug2_wb_inst     =    DretireInst_2 ;

// difftest

// DifftestInstrCommit                                DifftestInstrCommit0(
//     .clock              (aclk           ),                         // 0
//     .coreid             (0              ),                         // 0
//     .index              (                                             0),
//     .valid              (DifftestDelayBundle_DifftestInstrCommitValid_0),
//     .pc                 (   DifftestDelayBundle_DifftestInstrCommitPC_0),
//     .instr              (DifftestDelayBundle_DifftestInstrCommitInstr_0),
//     .skip               (            DifftestDelayBundle_DifftestSkip_0),
//     .is_TLBFILL         (       DifftestDelayBundle_DifftestIsTlbFill_0),
//     .TLBFILL_index      (    DifftestDelayBundle_DifftestTlbFillIndex_0),
//     .is_CNTinst         (         DifftestDelayBundle_DifftestIsCount_0),
//     .timer_64_value     (           DifftestDelayBundle_DifftestCount_0),
//     .wen                (             DifftestDelayBundle_DifftestWen_0),
//     .wdest              (           DifftestDelayBundle_DifftestWdest_0),
//     .wdata              (           DifftestDelayBundle_DifftestWdata_0),
//     .csr_rstat          (        DifftestDelayBundle_DifftestCsrRstat_0),
//     .csr_data           (         DifftestDelayBundle_DifftestCsrData_0)
// );

// DifftestInstrCommit                                DifftestInstrCommit1(
//     .clock              (aclk           ),                         // 1
//     .coreid             (0              ),                         // 1
//     .index              (                                             1),
//     .valid              (DifftestDelayBundle_DifftestInstrCommitValid_1),
//     .pc                 (   DifftestDelayBundle_DifftestInstrCommitPC_1),
//     .instr              (DifftestDelayBundle_DifftestInstrCommitInstr_1),
//     .skip               (            DifftestDelayBundle_DifftestSkip_1),
//     .is_TLBFILL         (       DifftestDelayBundle_DifftestIsTlbFill_1),
//     .TLBFILL_index      (    DifftestDelayBundle_DifftestTlbFillIndex_1),
//     .is_CNTinst         (         DifftestDelayBundle_DifftestIsCount_1),
//     .timer_64_value     (           DifftestDelayBundle_DifftestCount_1),
//     .wen                (             DifftestDelayBundle_DifftestWen_1),
//     .wdest              (           DifftestDelayBundle_DifftestWdest_1),
//     .wdata              (           DifftestDelayBundle_DifftestWdata_1),
//     .csr_rstat          (        DifftestDelayBundle_DifftestCsrRstat_1),
//     .csr_data           (         DifftestDelayBundle_DifftestCsrData_1)
// );

// DifftestInstrCommit                                DifftestInstrCommit2(
//     .clock              (aclk           ),                         // 2
//     .coreid             (0              ),                         // 2
//     .index              (                                             2),
//     .valid              (DifftestDelayBundle_DifftestInstrCommitValid_2),
//     .pc                 (   DifftestDelayBundle_DifftestInstrCommitPC_2),
//     .instr              (DifftestDelayBundle_DifftestInstrCommitInstr_2),
//     .skip               (            DifftestDelayBundle_DifftestSkip_2),
//     .is_TLBFILL         (       DifftestDelayBundle_DifftestIsTlbFill_2),
//     .TLBFILL_index      (    DifftestDelayBundle_DifftestTlbFillIndex_2),
//     .is_CNTinst         (         DifftestDelayBundle_DifftestIsCount_2),
//     .timer_64_value     (           DifftestDelayBundle_DifftestCount_2),
//     .wen                (             DifftestDelayBundle_DifftestWen_2),
//     .wdest              (           DifftestDelayBundle_DifftestWdest_2),
//     .wdata              (           DifftestDelayBundle_DifftestWdata_2),
//     .csr_rstat          (        DifftestDelayBundle_DifftestCsrRstat_2),
//     .csr_data           (         DifftestDelayBundle_DifftestCsrData_2)
// );


// DifftestExcpEvent DifftestExcpEvent(
//     .clock              (aclk           ),
//     .coreid             (0              ),
//     .excp_valid         (DifftestDelayBundle_DifftestExcpEventExcpValid),
//     .eret               (DifftestDelayBundle_DifftestExcpEventEret     ),
//     .intrNo             (DifftestDelayBundle_DifftestExcpEventIntrNO   ),
//     .cause              (DifftestDelayBundle_DifftestExcpEventCause    ),
//     .exceptionPC        (DifftestDelayBundle_DifftestExcpEventEPC      ),
//     .exceptionInst      (DifftestDelayBundle_DifftestExcpEventInst     )
// );

// DifftestTrapEvent DifftestTrapEvent(
//     .clock              (aclk),
//     .coreid             (0   ),
//     .valid              (0   ),
//     .code               (),
//     .pc                 (),
//     .cycleCnt           (),
//     .instrCnt           ()
// );

// DifftestStoreEvent DifftestStoreEvent(
//     .clock              (aclk           ),
//     .coreid             (0              ),
//     .index              (0              ),
//     .valid              (DifftestDelayBundle_DifftestStoreEventValid   ),
//     .storePAddr         (DifftestDelayBundle_DifftestStoreEventPAddr   ),
//     .storeVAddr         (DifftestDelayBundle_DifftestStoreEventVAddr   ),
//     .storeData          (DifftestDelayBundle_DifftestStoreEventData    )
// );

// DifftestLoadEvent DifftestLoadEvent(
//     .clock              (aclk           ),
//     .coreid             (0              ),
//     .index              (0              ),
//     .valid              (DifftestDelayBundle_DifftestLoadEventValid    ),
//     .paddr              (DifftestDelayBundle_DifftestLoadEventPAddr    ),
//     .vaddr              (DifftestDelayBundle_DifftestLoadEventVAddr    )
// );

// DifftestCSRRegState DifftestCSRRegState(
//     .clock              (aclk               ),
//     .coreid             (0                  ),
//     .crmd               (DifftestBundle_DifftestCSRRegStateCRMD     ),
//     .prmd               (DifftestBundle_DifftestCSRRegStatePRMD     ),
//     .euen               (DifftestBundle_DifftestCSRRegStateEUEN     ),
//     .ecfg               (DifftestBundle_DifftestCSRRegStateECFG     ),
//     .estat              (DifftestBundle_DifftestCSRRegStateESTAT    ),
//     .era                (DifftestBundle_DifftestCSRRegStateERA      ),
//     .badv               (DifftestBundle_DifftestCSRRegStateBADV     ),
//     .eentry             (DifftestBundle_DifftestCSRRegStateEENTRY   ),
//     .tlbidx             (DifftestBundle_DifftestCSRRegStateTLBIDX   ),
//     .tlbehi             (DifftestBundle_DifftestCSRRegStateTLBEHI   ),
//     .tlbelo0            (DifftestBundle_DifftestCSRRegStateTLBELO0  ),
//     .tlbelo1            (DifftestBundle_DifftestCSRRegStateTLBELO1  ),
//     .asid               (DifftestBundle_DifftestCSRRegStateASID     ),
//     .pgdl               (DifftestBundle_DifftestCSRRegStatePGDL     ),
//     .pgdh               (DifftestBundle_DifftestCSRRegStatePGDH     ),
//     .save0              (DifftestBundle_DifftestCSRRegStateSAVE0    ),
//     .save1              (DifftestBundle_DifftestCSRRegStateSAVE1    ),
//     .save2              (DifftestBundle_DifftestCSRRegStateSAVE2    ),
//     .save3              (DifftestBundle_DifftestCSRRegStateSAVE3    ),
//     .tid                (DifftestBundle_DifftestCSRRegStateTID      ),
//     .tcfg               (DifftestBundle_DifftestCSRRegStateTCFG     ),
//     .tval               (DifftestBundle_DifftestCSRRegStateTVAL     ),
//     .ticlr              (DifftestBundle_DifftestCSRRegStateTICLR    ),
//     .llbctl             (DifftestBundle_DifftestCSRRegStateLLBCTL   ),
//     .tlbrentry          (DifftestBundle_DifftestCSRRegStateTLBRENTRY),
//     .dmw0               (DifftestBundle_DifftestCSRRegStateDMW0     ),
//     .dmw1               (DifftestBundle_DifftestCSRRegStateDMW1     )
// );

// DifftestGRegState DifftestGRegState(
//     .clock              (aclk        ),
//     .coreid             (0           ),
//     .gpr_0              (0           ),
//     .gpr_1              (DaRAT_val_0 ),
//     .gpr_2              (DaRAT_val_1 ),
//     .gpr_3              (DaRAT_val_2 ),
//     .gpr_4              (DaRAT_val_3 ),
//     .gpr_5              (DaRAT_val_4 ),
//     .gpr_6              (DaRAT_val_5 ),
//     .gpr_7              (DaRAT_val_6 ),
//     .gpr_8              (DaRAT_val_7 ),
//     .gpr_9              (DaRAT_val_8 ),
//     .gpr_10             (DaRAT_val_9 ),
//     .gpr_11             (DaRAT_val_10),
//     .gpr_12             (DaRAT_val_11),
//     .gpr_13             (DaRAT_val_12),
//     .gpr_14             (DaRAT_val_13),
//     .gpr_15             (DaRAT_val_14),
//     .gpr_16             (DaRAT_val_15),
//     .gpr_17             (DaRAT_val_16),
//     .gpr_18             (DaRAT_val_17),
//     .gpr_19             (DaRAT_val_18),
//     .gpr_20             (DaRAT_val_19),
//     .gpr_21             (DaRAT_val_20),
//     .gpr_22             (DaRAT_val_21),
//     .gpr_23             (DaRAT_val_22),
//     .gpr_24             (DaRAT_val_23),
//     .gpr_25             (DaRAT_val_24),
//     .gpr_26             (DaRAT_val_25),
//     .gpr_27             (DaRAT_val_26),
//     .gpr_28             (DaRAT_val_27),
//     .gpr_29             (DaRAT_val_28),
//     .gpr_30             (DaRAT_val_29),
//     .gpr_31             (DaRAT_val_30)
// );

endmodule
