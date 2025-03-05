source [find ../run_config.tcl]

init
reset init
halt

puts "-----------------------------------------------------------------------"

puts "\nProgramming Unique ID: 0x40 22 35 9E : 1C 37 E4 03 : 20 19 06"
flash rmw 0x17000600 4022359E1C37E403201906

puts "-----------------------------------------------------------------------"
puts "\nReading Unique ID: "
set mode [mdw 0x17000600 3] 
puts $mode

puts "-----------------------------------------------------------------------"

# program hex/swpu.hex

resume
reset run

shutdown
