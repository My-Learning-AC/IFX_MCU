#!/usr/local/bin/openocd2
source [find fb/startup_tv2bh8m.tcl]

reset init
reset run
halt


mdb 0x17007000 256

flash rmw 0x17007036 FF93

mdb 0x17007000 256

shutdown
-------


