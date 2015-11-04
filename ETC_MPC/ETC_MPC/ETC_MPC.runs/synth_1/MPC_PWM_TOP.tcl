# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7z010clg400-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/ETC_MPC/ETC_MPC/ETC_MPC.cache/wt [current_project]
set_property parent.project_path E:/ETC_MPC/ETC_MPC/ETC_MPC.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_32s_29s_61_6.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_31s_7ns_38_3.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_29s_16ns_44_3.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_27s_27s_54_6.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_29s_29s_56_6.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_19s_57s_75_6.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_fitness.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_fitness_1.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_pso_ww.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_pso_x_V.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_pso_p_V.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_randac.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_pso_y_V.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_30s_18ns_48_3.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_40s_30s_68_6.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_pso_v_V.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_20s_20ns_40_3.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_20s_21ns_41_3.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_22ns_30s_52_3.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mpc_pso_g_V.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_pso.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mpc_pso_Sx_1.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mpc_pso_Sx_0.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_36s_29ns_65_6.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mpc_pso_SxDx_V.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_32s_29ns_61_6.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mpc_pso_Ep_V.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mpc_pso.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_30s_26ns_55_6.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult_mul_31s_10ns_41_3.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/ETC_MPC/pwm_task_logic.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/ETC_MPC/ug480.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/imports/Controller/Compult.v
  E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/sources_1/new/MPC_PWM_TOP.v
}
read_xdc E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/constrs_1/new/MPC.xdc
set_property used_in_implementation false [get_files E:/ETC_MPC/ETC_MPC/ETC_MPC.srcs/constrs_1/new/MPC.xdc]

catch { write_hwdef -file MPC_PWM_TOP.hwdef }
synth_design -top MPC_PWM_TOP -part xc7z010clg400-1
write_checkpoint -noxdef MPC_PWM_TOP.dcp
catch { report_utilization -file MPC_PWM_TOP_utilization_synth.rpt -pb MPC_PWM_TOP_utilization_synth.pb }
