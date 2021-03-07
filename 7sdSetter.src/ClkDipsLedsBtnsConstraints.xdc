# set clock pin and IO standard
set_property PACKAGE_PIN H4 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# set led pins and IO standard
set_property PACKAGE_PIN K17 [get_ports {leds[0]}]
set_property PACKAGE_PIN J17 [get_ports {leds[1]}]
set_property PACKAGE_PIN L14 [get_ports {leds[2]}]
set_property PACKAGE_PIN L15 [get_ports {leds[3]}]
set_property PACKAGE_PIN L16 [get_ports {leds[4]}]
set_property PACKAGE_PIN K16 [get_ports {leds[5]}]
set_property PACKAGE_PIN M15 [get_ports {leds[6]}]
set_property PACKAGE_PIN M16 [get_ports {leds[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]

# set dip switches pins and IO standard
set_property PACKAGE_PIN B21 [get_ports {dips[0]}]
set_property PACKAGE_PIN A21 [get_ports {dips[1]}]
set_property PACKAGE_PIN E22 [get_ports {dips[2]}]
set_property PACKAGE_PIN D22 [get_ports {dips[3]}]
set_property PACKAGE_PIN E21 [get_ports {dips[4]}]
set_property PACKAGE_PIN D21 [get_ports {dips[5]}]
set_property PACKAGE_PIN G21 [get_ports {dips[6]}]
set_property PACKAGE_PIN G22 [get_ports {dips[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {dips[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dips[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dips[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dips[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dips[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dips[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dips[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dips[7]}]

# set button pins, IO standard, and pullup
set_property PACKAGE_PIN N17 [get_ports btnUp]
set_property PACKAGE_PIN P20 [get_ports btnLeft]
set_property PACKAGE_PIN P19 [get_ports btnDown]
set_property PACKAGE_PIN P17 [get_ports btnRight]

set_property IOSTANDARD LVCMOS33 [get_ports btnUp]
set_property IOSTANDARD LVCMOS33 [get_ports btnLeft]
set_property IOSTANDARD LVCMOS33 [get_ports btnDown]
set_property IOSTANDARD LVCMOS33 [get_ports btnRight]

set_property PULLUP true [get_ports btnUp]
set_property PULLUP true [get_ports btnLeft]
set_property PULLUP true [get_ports btnDown]
set_property PULLUP true [get_ports btnRight]

