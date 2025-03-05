#source [find interface/cmsis-dap.cfg]
 source [find interface/kitprog3.cfg]
transport select swd
source [find target/traveo2_ce_4m_psvp.cfg]

targets $_CHIPNAME.cpu.cm0
adapter_khz 200
traveo2 sflash_restrictions 3
init
reset init
halt

puts [format "Programming CM0+ hex"]

program cm0plus.hex


shutdown
