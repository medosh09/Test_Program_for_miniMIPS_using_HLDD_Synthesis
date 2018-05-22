#!/bin/sh
./compile_minimips.sh || { echo "MINIMIPS COMPILE ERROR." ; exit 1; }

./compile_tst.sh || { echo "COMPILE ERROR." ; exit 1; }

vsim -do vsim_gui.tcl || { echo "LOGIC SIMULATION ERROR." ; exit 1; }
