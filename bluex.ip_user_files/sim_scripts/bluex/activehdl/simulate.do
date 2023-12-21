transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+bluex  -L xil_defaultlib -L util_vector_logic_v2_0_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.bluex xil_defaultlib.glbl

do {bluex.udo}

run 1000ns

endsim

quit -force
