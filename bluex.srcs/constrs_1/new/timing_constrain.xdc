#create_clock -period 20.000 -name clk_50M [get_ports clk]

create_clock -period 10.000 -name clk_100M -waveform {0.000 5.000} [get_ports clk]
