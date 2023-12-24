#create_clock -period 20.000 -name clk_50M [get_ports clk]

create_clock -period 10.300 -name clk_100M -waveform {0.000 5.150} [get_ports clk]

