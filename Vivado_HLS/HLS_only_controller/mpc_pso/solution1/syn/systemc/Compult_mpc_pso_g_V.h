// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __Compult_mpc_pso_g_V_H__
#define __Compult_mpc_pso_g_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Compult_mpc_pso_g_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 29;
  static const unsigned AddressRange = 40;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Compult_mpc_pso_g_V_ram) {
        ram[0] = "0b00000000100101110010000011111";
        ram[1] = "0b00000010010101001101100010000";
        ram[2] = "0b00000101001011011111100101111";
        ram[3] = "0b00001001000101111100001101000";
        ram[4] = "0b00001110000001111101110110100";
        ram[5] = "0b00010011111101000101010011100";
        ram[6] = "0b00011010110100111001010111101";
        ram[7] = "0b00100010100111000110101010011";
        ram[8] = "0b00101011010001011111011001001";
        ram[9] = "0b00110100110001111011001001010";
        ram[10] = "0b00111111000110010110101011101";
        ram[11] = "0b01001010001100110011101111100";
        ram[12] = "0b01010110000011011000110110111";
        ram[13] = "0b01100010101000010001001010010";
        ram[14] = "0b01101111111001101100001110001";
        ram[15] = "0b01111101110101111101111000000";
        ram[16] = "0b10001100011011011110000011111";
        ram[17] = "0b10011011101000101000101010010";
        ram[18] = "0b10101011011011111101010111000";
        ram[19] = "0b10111011110011111111011111100";
        ram[20] = "0b00000000000000000000000000000";
        ram[21] = "0b00000000100101110010000011111";
        ram[22] = "0b00000011011100000100000111110";
        ram[23] = "0b00000111010110100000101110110";
        ram[24] = "0b00001100010010100010011000011";
        ram[25] = "0b00010010001101101001110101011";
        ram[26] = "0b00011001000101011101111001100";
        ram[27] = "0b00100000110111101011001100010";
        ram[28] = "0b00101001100010000011111011000";
        ram[29] = "0b00110011000010011111101011001";
        ram[30] = "0b00111101010110111011001101100";
        ram[31] = "0b01001000011101011000010001011";
        ram[32] = "0b01010100010011111101011000101";
        ram[33] = "0b01100000111000110101101100000";
        ram[34] = "0b01101110001010010000110000000";
        ram[35] = "0b01111100000110100010011001111";
        ram[36] = "0b10001010101100000010100101110";
        ram[37] = "0b10011001111001001101001100001";
        ram[38] = "0b10101001101100100001111000111";
        ram[39] = "0b10111010000100100100000001010";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(Compult_mpc_pso_g_V) {


static const unsigned DataWidth = 29;
static const unsigned AddressRange = 40;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Compult_mpc_pso_g_V_ram* meminst;


SC_CTOR(Compult_mpc_pso_g_V) {
meminst = new Compult_mpc_pso_g_V_ram("Compult_mpc_pso_g_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Compult_mpc_pso_g_V() {
    delete meminst;
}


};//endmodule
#endif
