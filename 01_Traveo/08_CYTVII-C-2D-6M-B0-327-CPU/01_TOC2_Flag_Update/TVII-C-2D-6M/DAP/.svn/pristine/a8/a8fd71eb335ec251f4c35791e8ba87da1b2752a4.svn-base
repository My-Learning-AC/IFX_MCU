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

puts "\nProgramming 3K RSA PKEY:"
program 3k.public_key_valid.hex

shutdown
