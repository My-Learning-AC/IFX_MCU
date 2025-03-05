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



puts "\nUpdating FB Flags to support 2K Public Key:"
flash rmw 0x170001fc 15

shutdown
