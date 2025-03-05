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

puts "Program FlashBoot"
program flashboot_tviic2d6m_b0_psvp_3.1.0.536.hex

shutdown
