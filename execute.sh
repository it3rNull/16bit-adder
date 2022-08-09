git pull
ghdl -a fa.vhd
ghdl -a adder.vhd
ghdl -a adder_tb.vhd
ghdl -e adder_tb
ghdl -r adder_tb --stop-time=120ns --wave=adder_tb.ghw
gtkwave adder_tb.ghw