// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __Compult_mul_22ns_30s_52_3__HH__
#define __Compult_mul_22ns_30s_52_3__HH__
#include "ACMP_mul_us.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(Compult_mul_22ns_30s_52_3) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_mul_us<ID, 3, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_mul_us_U;

    SC_CTOR(Compult_mul_22ns_30s_52_3):  ACMP_mul_us_U ("ACMP_mul_us_U") {
        ACMP_mul_us_U.clk(clk);
        ACMP_mul_us_U.reset(reset);
        ACMP_mul_us_U.ce(ce);
        ACMP_mul_us_U.din0(din0);
        ACMP_mul_us_U.din1(din1);
        ACMP_mul_us_U.dout(dout);

    }

};

#endif //
