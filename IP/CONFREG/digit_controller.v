module digit_controller(
    output reg [6:0] digitAtoG,
    /* 33MHz */
    input clk,
    input rstn,
    input [31:0] bcd_data,
    output [7:0] digitSelect
    );

reg [3:0] digit;
reg [7:0] digitSelectInv;

assign digitSelect = ~digitSelectInv;

/* 100kHz */
reg digitSelectClk;
reg [31:0] dsCnt;

`define DIV_CLK        32'd330

always @ (posedge clk or negedge rstn) begin
    if (!rstn) begin
        digitSelectClk <= 1'b0;
        dsCnt <= 32'd0;
    end
    else begin
        dsCnt <= dsCnt + 1;
        if (dsCnt >= `DIV_CLK) begin
            dsCnt <= 32'd0;
            digitSelectClk <= ~digitSelectClk;
        end
    end
end

`define FSM_TURN_OFF        4'd0
`define FSM_SELECT          4'd1
`define FSM_TURN_ON         4'd2
`define TURN_OFF_DELAY      8'd2
`define TURN_ON_DELAY       8'd50

reg [3:0] digitFsm;
reg [7:0] turnOffDelay;
reg [7:0] turnOnDelay;

always @ (posedge digitSelectClk or negedge rstn) begin
    if (!rstn) begin
        digitSelectInv <= 8'b0000_0001;
        digitFsm <= `FSM_TURN_OFF;
        turnOffDelay <= 8'd0;
        turnOnDelay <= 8'd0;
    end
    else begin
        if (digitFsm == `FSM_TURN_OFF) begin
            digitAtoG <= 7'b0000000;
            if (turnOffDelay >= `TURN_OFF_DELAY) begin
                digitFsm <= `FSM_SELECT;
                turnOffDelay <= 8'd0;
            end
            else begin
                digitFsm <= `FSM_TURN_OFF;
                turnOffDelay <= turnOffDelay + 1;
            end
        end
        else if (digitFsm == `FSM_SELECT) begin
            if (digitSelectInv == 8'b1000_0000) begin
                digitSelectInv <= 8'b0000_0001;
            end
            else begin
                digitSelectInv <= {digitSelectInv[6:0], 1'b0};
            end
            digitFsm <= `FSM_TURN_ON;
        end
        else if (digitFsm == `FSM_TURN_ON) begin
            case (digit)
                4'd0 : digitAtoG <= 7'b1111110;   //0
                4'd1 : digitAtoG <= 7'b0110000;   //1
                4'd2 : digitAtoG <= 7'b1101101;   //2
                4'd3 : digitAtoG <= 7'b1111001;   //3
                4'd4 : digitAtoG <= 7'b0110011;   //4
                4'd5 : digitAtoG <= 7'b1011011;   //5
                4'd6 : digitAtoG <= 7'b1011111;   //6
                4'd7 : digitAtoG <= 7'b1110000;   //7
                4'd8 : digitAtoG <= 7'b1111111;   //8
                4'd9 : digitAtoG <= 7'b1111011;   //9
                4'd10: digitAtoG <= 7'b1110111;   //a
                4'd11: digitAtoG <= 7'b0011111;   //b
                4'd12: digitAtoG <= 7'b1001110;   //c
                4'd13: digitAtoG <= 7'b0111101;   //d
                4'd14: digitAtoG <= 7'b1001111;   //e
                4'd15: digitAtoG <= 7'b1000111;   //f
            endcase
            if (turnOnDelay >= `TURN_ON_DELAY) begin
                digitFsm <= `FSM_TURN_OFF;
                turnOnDelay <= 8'd0;
            end
            else begin
                digitFsm <= `FSM_TURN_ON;
                turnOnDelay <= turnOnDelay + 1;
            end
        end
    end
end

always @ (*) begin
    case (digitSelectInv)
        8'b0000_0001    :   digit <= bcd_data[3:0];
        8'b0000_0010    :   digit <= bcd_data[7:4];
        8'b0000_0100    :   digit <= bcd_data[11:8];
        8'b0000_1000    :   digit <= bcd_data[15:12];
        8'b0001_0000    :   digit <= bcd_data[19:16];
        8'b0010_0000    :   digit <= bcd_data[23:20];
        8'b0100_0000    :   digit <= bcd_data[27:24];
        8'b1000_0000    :   digit <= bcd_data[31:28];
    endcase
end

endmodule
