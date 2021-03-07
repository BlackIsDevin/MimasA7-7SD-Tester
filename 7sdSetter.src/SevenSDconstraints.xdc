# set enable pins and IO standard
set_property PACKAGE_PIN L4 [get_ports {enableOut[0]}]
set_property PACKAGE_PIN P1 [get_ports {enableOut[1]}]
set_property PACKAGE_PIN R1 [get_ports {enableOut[2]}]
set_property PACKAGE_PIN N3 [get_ports {enableOut[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {enableOut[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enableOut[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enableOut[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {enableOut[3]}]

# set display pins and IO standard
set_property PACKAGE_PIN P4 [get_ports {displayOut[0]}]
set_property PACKAGE_PIN N4 [get_ports {displayOut[1]}]
set_property PACKAGE_PIN M3 [get_ports {displayOut[2]}]
set_property PACKAGE_PIN M5 [get_ports {displayOut[3]}]
set_property PACKAGE_PIN L5 [get_ports {displayOut[4]}]
set_property PACKAGE_PIN L6 [get_ports {displayOut[5]}]
set_property PACKAGE_PIN M6 [get_ports {displayOut[6]}]
set_property PACKAGE_PIN P5 [get_ports {displayOut[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {displayOut[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {displayOut[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {displayOut[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {displayOut[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {displayOut[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {displayOut[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {displayOut[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {displayOut[0]}]

