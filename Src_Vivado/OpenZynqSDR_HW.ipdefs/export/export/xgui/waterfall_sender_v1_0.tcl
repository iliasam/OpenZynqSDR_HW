# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #Adding Group
  set group_0 [ipgui::add_group $IPINST -name "group 0" -parent ${Page_0} -display_name {m axi dev reg (AXI4 Master Interface)}]
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_ENABLE_ID_PORTS" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_ID_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_DATA_WIDTH" -parent ${group_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_ENABLE_USER_PORTS" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_AWUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_WUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_BUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_ARUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_RUSER_WIDTH" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_USER_VALUE" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_PROT_VALUE" -parent ${group_0}
  ipgui::add_param $IPINST -name "C_M_AXI_OUT_BUS_CACHE_VALUE" -parent ${group_0}



}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_OUT_BUS_ENABLE_ID_PORTS } {
	# Procedure called to update C_M_AXI_OUT_BUS_ENABLE_ID_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_ENABLE_ID_PORTS { PARAM_VALUE.C_M_AXI_OUT_BUS_ENABLE_ID_PORTS } {
	# Procedure called to validate C_M_AXI_OUT_BUS_ENABLE_ID_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH } {
	# Procedure called to update C_M_AXI_OUT_BUS_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_OUT_BUS_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_OUT_BUS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_OUT_BUS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_OUT_BUS_ENABLE_USER_PORTS } {
	# Procedure called to update C_M_AXI_OUT_BUS_ENABLE_USER_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_ENABLE_USER_PORTS { PARAM_VALUE.C_M_AXI_OUT_BUS_ENABLE_USER_PORTS } {
	# Procedure called to validate C_M_AXI_OUT_BUS_ENABLE_USER_PORTS
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_OUT_BUS_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_OUT_BUS_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_OUT_BUS_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_OUT_BUS_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_OUT_BUS_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_OUT_BUS_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_OUT_BUS_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_OUT_BUS_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_OUT_BUS_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_OUT_BUS_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE { PARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE } {
	# Procedure called to update C_M_AXI_OUT_BUS_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE { PARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE } {
	# Procedure called to validate C_M_AXI_OUT_BUS_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE { PARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE } {
	# Procedure called to update C_M_AXI_OUT_BUS_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE { PARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_OUT_BUS_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE { PARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_OUT_BUS_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE { PARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_OUT_BUS_CACHE_VALUE
	return true
}


proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH PARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH PARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH PARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH PARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH PARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE PARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE PARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE PARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_OUT_BUS_CACHE_VALUE}
}

