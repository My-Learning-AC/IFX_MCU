#source [find interface/jlink.cfg]
source [find HelperScripts/SROM_Defines.tcl]
source [find HelperScripts/utility_srom.tcl]
source [find HelperScripts/CustomFunctions.tcl]

acquire_TestMode_SROM;

# Writes 'val' to address 'addr' via AP 'ap'
proc mww_ll { ap addr val } {
	global _CHIPNAME
	$_CHIPNAME.dap apreg $ap 0x04 $addr
	$_CHIPNAME.dap apreg $ap 0x0C $val
}

# Reads and displays data from address 'addr' via AP 'ap'
proc mdw_ll { ap addr } {
	global _CHIPNAME
	$_CHIPNAME.dap apreg $ap 0x04 $addr
	$_CHIPNAME.dap apreg $ap 0x0C
}

# Reads data from address 'addr' via AP 'ap' and returns it
# Can be used to read data and pass it to other commands
proc mrw_ll { ap addr } {
	global _CHIPNAME
	$_CHIPNAME.dap apreg $ap 0x04 $addr
	set ap [ocd_$_CHIPNAME.dap apreg $ap 0x0C]
	regsub -all {(\s*\n)+} $ap "" ap
	return $ap
}


init
#mww_ll 0 0x4026207C 0x1;
#re_boot;
#shutdown;

# Now you can access memory via SYSAP :
puts "Acquire Check"
IOWap 0 0x08001000 0x12345678
IORap 0 0x08001000
IORap 0 $CYREG_IPC_STRUCT_DATA



puts "API parameters"
mww_ll 0 0x08001404 0x00000014
mww_ll 0 0x08001408 0x120029f0
mww_ll 0 0x0800140c 0x9E352240
mww_ll 0 0x08001410 0x03E4371C
mww_ll 0 0x08001414 0x00061920
mww_ll 0 0x08001418 0x0800141c;
mww_ll 0 0x0800141C 0xf2054840
mww_ll 0 0x08001420 0xb621638b
mww_ll 0 0x08001424 0x368525a8
mww_ll 0 0x08001428 0x0d17da55
mww_ll 0 0x0800142C 0x321a38ae
mww_ll 0 0x08001430 0x5f64b825
mww_ll 0 0x08001434 0xa384f22d
mww_ll 0 0x08001438 0xbdaf8ccd
mww_ll 0 0x0800143C 0xc74e2bd9
mww_ll 0 0x08001440 0x8459e01d
mww_ll 0 0x08001444 0x6e9ee0ea
mww_ll 0 0x08001448 0x56de5e05
mww_ll 0 0x0800144C 0x13c726da
mww_ll 0 0x08001450 0x155183db
mww_ll 0 0x08001454 0xc621b2fd
mww_ll 0 0x08001458 0xa3c0e5ff
mww_ll 0 0x0800145C 0xbe866b37
mww_ll 0 0x08001460 0x54bfcf14
mww_ll 0 0x08001464 0xe21d7008
mww_ll 0 0x08001468 0xd647a85c
mww_ll 0 0x0800146C 0x7e72db87
mww_ll 0 0x08001470 0xe9992d4b
mww_ll 0 0x08001474 0x34d0e2f6
mww_ll 0 0x08001478 0x5b95846f
mww_ll 0 0x0800147C 0xe9ccbed1
mww_ll 0 0x08001480 0x9ee1dfef
mww_ll 0 0x08001484 0x18490ca8
mww_ll 0 0x08001488 0x76a371b6
mww_ll 0 0x0800148C 0xb1233e22
mww_ll 0 0x08001490 0xf3838a7b
mww_ll 0 0x08001494 0x654a2ef6
mww_ll 0 0x08001498 0xab014494
mww_ll 0 0x0800149C 0xaf351643
mww_ll 0 0x080014A0 0x3553c75d
mww_ll 0 0x080014A4 0x5b723382
mww_ll 0 0x080014A8 0x57cf064f
mww_ll 0 0x080014AC 0x6eab2cb5
mww_ll 0 0x080014B0 0xe0337582
mww_ll 0 0x080014B4 0xe5d00dfd
mww_ll 0 0x080014B8 0x62688a84
mww_ll 0 0x080014BC 0x6b3d6a15
mww_ll 0 0x080014C0 0x1d5d9fba
mww_ll 0 0x080014C4 0x0bc96b51
mww_ll 0 0x080014C8 0xb1a45dd2
mww_ll 0 0x080014CC 0x03831c33
mww_ll 0 0x080014D0 0x859d3d23
mww_ll 0 0x080014D4 0x6c41b995
mww_ll 0 0x080014D8 0x8b647c83
mww_ll 0 0x080014DC 0x69642563
mww_ll 0 0x080014E0 0x17c916cf
mww_ll 0 0x080014E4 0x251c3d7a
mww_ll 0 0x080014E8 0x463de9a3
mww_ll 0 0x080014EC 0xdea9461b
mww_ll 0 0x080014F0 0x2d20067a
mww_ll 0 0x080014F4 0x549ed8b8
mww_ll 0 0x080014F8 0x2f221170
mww_ll 0 0x080014FC 0xcb2754ef
mww_ll 0 0x08001500 0x2eb573fd
mww_ll 0 0x08001504 0xff7ca179
mww_ll 0 0x08001508 0xfcecfe35
mww_ll 0 0x0800150C 0xa8785f8d
mww_ll 0 0x08001510 0x8d413b78
mww_ll 0 0x08001514 0xdcab2942
mww_ll 0 0x08001518 0x40efdae9
mww_ll 0 0x0800151C 0xc0407b91
mww_ll 0 0x08001520 0x69d4f44a
mww_ll 0 0x08001524 0xc63148d5
mww_ll 0 0x08001528 0xabef7d80
mww_ll 0 0x0800152C 0xcedff2c9
mww_ll 0 0x08001530 0xca57d291
mww_ll 0 0x08001534 0x6c94a007
mww_ll 0 0x08001538 0xebde2c65
mww_ll 0 0x0800153C 0xff86377c
mww_ll 0 0x08001540 0xbed1705f
mww_ll 0 0x08001544 0x22cd195b
mww_ll 0 0x08001548 0x43d61231
mww_ll 0 0x0800154C 0x8bb138f7
mww_ll 0 0x08001550 0xda85fd9c
mww_ll 0 0x08001554 0xe393b80c
mww_ll 0 0x08001558 0xa1a12b10
mww_ll 0 0x0800155C 0xb03adabe
mww_ll 0 0x08001560 0xffe5f398
mww_ll 0 0x08001564 0x24091e6e
mww_ll 0 0x08001568 0xd38f7a81
mww_ll 0 0x0800156C 0xd9ce8e93
mww_ll 0 0x08001570 0x9c2adcf7
mww_ll 0 0x08001574 0xda677e33
mww_ll 0 0x08001578 0x0c76d1a8
mww_ll 0 0x0800157C 0x5fb2ab17
mww_ll 0 0x08001580 0x169a0cd8
mww_ll 0 0x08001584 0x8e88445e
mww_ll 0 0x08001588 0x3e08084e
mww_ll 0 0x0800158C 0xae825e6e
mww_ll 0 0x08001590 0x8e5a7552
mww_ll 0 0x08001594 0xb4a68e75
mww_ll 0 0x08001598 0xb6f5cc56

mdw_ll 0 0x08001404
mdw_ll 0 0x08001408
mdw_ll 0 0x0800140c
mdw_ll 0 0x08001410
mdw_ll 0 0x08001414
mdw_ll 0 0x08001418
mdw_ll 0 0x0800141C
mdw_ll 0 0x08001420
mdw_ll 0 0x08001424
mdw_ll 0 0x08001428
mdw_ll 0 0x0800142C
mdw_ll 0 0x08001430
mdw_ll 0 0x08001434
mdw_ll 0 0x08001438
mdw_ll 0 0x0800143C
mdw_ll 0 0x08001440
mdw_ll 0 0x08001444
mdw_ll 0 0x08001448
mdw_ll 0 0x0800144C
mdw_ll 0 0x08001450
mdw_ll 0 0x08001454
mdw_ll 0 0x08001458
mdw_ll 0 0x0800145C
mdw_ll 0 0x08001460
mdw_ll 0 0x08001464
mdw_ll 0 0x08001468
mdw_ll 0 0x0800146C
mdw_ll 0 0x08001470
mdw_ll 0 0x08001474
mdw_ll 0 0x08001478
mdw_ll 0 0x0800147C
mdw_ll 0 0x08001480
mdw_ll 0 0x08001484
mdw_ll 0 0x08001488
mdw_ll 0 0x0800148C
mdw_ll 0 0x08001490
mdw_ll 0 0x08001494
mdw_ll 0 0x08001498
mdw_ll 0 0x0800149C
mdw_ll 0 0x080014A0
mdw_ll 0 0x080014A4
mdw_ll 0 0x080014A8
mdw_ll 0 0x080014AC
mdw_ll 0 0x080014B0
mdw_ll 0 0x080014B4
mdw_ll 0 0x080014B8
mdw_ll 0 0x080014BC
mdw_ll 0 0x080014C0
mdw_ll 0 0x080014C4
mdw_ll 0 0x080014C8
mdw_ll 0 0x080014CC
mdw_ll 0 0x080014D0
mdw_ll 0 0x080014D4
mdw_ll 0 0x080014D8
mdw_ll 0 0x080014DC
mdw_ll 0 0x080014E0
mdw_ll 0 0x080014E4
mdw_ll 0 0x080014E8
mdw_ll 0 0x080014EC
mdw_ll 0 0x080014F0
mdw_ll 0 0x080014F4
mdw_ll 0 0x080014F8
mdw_ll 0 0x080014FC
mdw_ll 0 0x08001500
mdw_ll 0 0x08001504
mdw_ll 0 0x08001508
mdw_ll 0 0x0800150C
mdw_ll 0 0x08001510
mdw_ll 0 0x08001514
mdw_ll 0 0x08001518
mdw_ll 0 0x0800151C
mdw_ll 0 0x08001520
mdw_ll 0 0x08001524
mdw_ll 0 0x08001528
mdw_ll 0 0x0800152C
mdw_ll 0 0x08001530
mdw_ll 0 0x08001534
mdw_ll 0 0x08001538
mdw_ll 0 0x0800153C
mdw_ll 0 0x08001540
mdw_ll 0 0x08001544
mdw_ll 0 0x08001548
mdw_ll 0 0x0800154C
mdw_ll 0 0x08001550
mdw_ll 0 0x08001554
mdw_ll 0 0x08001558
mdw_ll 0 0x0800155C
mdw_ll 0 0x08001560
mdw_ll 0 0x08001564
mdw_ll 0 0x08001568
mdw_ll 0 0x0800156C
mdw_ll 0 0x08001570
mdw_ll 0 0x08001574
mdw_ll 0 0x08001578
mdw_ll 0 0x0800157C
mdw_ll 0 0x08001580
mdw_ll 0 0x08001584
mdw_ll 0 0x08001588
mdw_ll 0 0x0800158C
mdw_ll 0 0x08001590
mdw_ll 0 0x08001594
mdw_ll 0 0x08001598


mww_ll 0 0x08001400 0x29000000
mdw_ll 0 0x08001400
puts "IPC Acquire "
mdw_ll 0 $CYREG_IPC_STRUCT_ACQUIRE
mww_ll 0 $CYREG_IPC_STRUCT_ACQUIRE 0x80000f03
mdw_ll 0 $CYREG_IPC_STRUCT_ACQUIRE

puts "SRAM SCRATCH into IPC2 DATA0"
mww_ll 0 $CYREG_IPC_STRUCT_DATA 0x08001400
mdw_ll 0 $CYREG_IPC_STRUCT_DATA 
puts "Notify"
mww_ll 0 $CYREG_IPC_STRUCT_NOTIFY 0x00000001


#mdw_ll 0 0x40221000;
#puts "INTR Addr"

puts "Wait for IPC Release"
after 100
for {set i 0} {$i<100} {incr i} {
	mdw_ll 0 $CYREG_IPC_STRUCT_LOCK_STATUS;
}


puts "Read IPC DATA"
mdw_ll 0 $CYREG_IPC_STRUCT_DATA
mdw_ll 0 0x08001400

mdw_ll 0 0x402200EC
mdw_ll 0 $CYREG_IPC_STRUCT_DATA;

puts "Test Addr"
mdw_ll 0 0x40221008;

puts "INTR Addr"
mdw_ll 0 0x40221000;

puts "EFUSE for lifecycle";
mdw_ll 0 0x402C0800;

puts "Interrupt checks";
mdw_ll 1 0xE000E100;
mww_ll 1 0xE000E100 0x3;
mdw_ll 1 0xE000E100;

mdw_ll 0 0x40208000;

mdw_ll 1 0xE000E400;
mww_ll 1 0xE000E400 0x1;
mdw_ll 1 0xE000E400;

#puts "Silicon ID";
SROM_SiliconID $SYS_CALL_GREATER32BIT 0x1;

mdw_ll 0 0x17002018;

#shutdown;

after 100;
puts "\nFault Status register\n";
#STATUS
mdw_ll 0 0x4010000C

puts "\nFault DATA register\n";
#DATA
mdw_ll 0 0x40100010
mdw_ll 0 0x40100014
mdw_ll 0 0x40100018
mdw_ll 0 0x4010001C

puts "\nFault Pending register\n";
#Pending
mdw_ll 0 0x40100040
mdw_ll 0 0x40100044
mdw_ll 0 0x40100048
mdw_ll 0 0x17000004;

puts " SRAM location 0x28010000"
mdw_ll 0 0x08010000
puts " FlashBoot location"
mdw_ll 0 0x17002000
puts " SFLASH Row 0"
mdw_ll 0 0x17000000
puts " FM CTL"
mdw_ll 0 0x40240000
puts " WOUNDING"
mdw_ll 0 0x402020c0
puts " PROTECTION Register"
mdw_ll 0 0x402020c4

puts "Read SFLASH"

set SFLASH_START_ADDR 0x17000000;
set SFLASH_SIZE	0x8000;

Enable_MainFlash_Operations;
Enable_WorkFlash_Operations;
IOW $CYREG_MAIN_FLASH_SAFETY 0x1;
IOW $CYREG_WORK_FLASH_SAFETY 0x1;

mww_ll 0 0x40210050 0xFFFFFFFF;
mww_ll 0 0x40210054 0xFFFFFFFF;
mww_ll 0 0x40210058 0xFFFFFFFF;
mdw_ll 0 0x4021000C;
mdw_ll 0 0x40210010;
mdw_ll 0 0x40210014;
mdw_ll 0 0x40210018;

set SFLASH_END_ADDR	[expr $SFLASH_START_ADDR + $SFLASH_SIZE - 1] ;

puts [format "Silicon ID low-level"]


#Read_GPRs_For_Debug;

mdw_ll 0 0x4022000C;
mdw_ll 0 0x4022002C;
mdw_ll 0 $CYREG_IPC_STRUCT_DATA;
mdw_ll 0 0x4022006C;
mdw_ll 0 0x4022008C;
mdw_ll 0 0x402200AC;
mdw_ll 0 0x402200CC;
mdw_ll 0 0x402200EC;

mdw_ll 0 0x4021000C;
mdw_ll 0 0x40210010;
mdw_ll 0 0x40210014;
mdw_ll 0 0x40210018;
# for {set i $SFLASH_START_ADDR} {$i < $SFLASH_END_ADDR} {incr i 4} {
	# set read [mdw_ll 0 $i];
	# puts [format "0x%x => $read" $i];
# }

set PKEY [ReturnSFlashRow 50];
set UID [ReturnSFlashRow 3];
# lset PKEY 0 0x00000448;
test_compare 0xa0000000 [SROM_WriteRow $SYS_CALL_GREATER32BIT 0 0x17006400 0 $UID];

puts "API parameters"
mww_ll 0 0x08001404 0x00000014
mww_ll 0 0x08001408 0x120029f0
mww_ll 0 0x0800140c 0x9E352240
mww_ll 0 0x08001410 0x03E4371C
mww_ll 0 0x08001414 0x00061920
mww_ll 0 0x08001418 0x0800141c;
mww_ll 0 0x0800141C 0xf2054840
mww_ll 0 0x08001420 0xb621638b
mww_ll 0 0x08001424 0x368525a8
mww_ll 0 0x08001428 0x0d17da55
mww_ll 0 0x0800142C 0x321a38ae
mww_ll 0 0x08001430 0x5f64b825
mww_ll 0 0x08001434 0xa384f22d
mww_ll 0 0x08001438 0xbdaf8ccd
mww_ll 0 0x0800143C 0xc74e2bd9
mww_ll 0 0x08001440 0x8459e01d
mww_ll 0 0x08001444 0x6e9ee0ea
mww_ll 0 0x08001448 0x56de5e05
mww_ll 0 0x0800144C 0x13c726da
mww_ll 0 0x08001450 0x155183db
mww_ll 0 0x08001454 0xc621b2fd
mww_ll 0 0x08001458 0xa3c0e5ff
mww_ll 0 0x0800145C 0xbe866b37
mww_ll 0 0x08001460 0x54bfcf14
mww_ll 0 0x08001464 0xe21d7008
mww_ll 0 0x08001468 0xd647a85c
mww_ll 0 0x0800146C 0x7e72db87
mww_ll 0 0x08001470 0xe9992d4b
mww_ll 0 0x08001474 0x34d0e2f6
mww_ll 0 0x08001478 0x5b95846f
mww_ll 0 0x0800147C 0xe9ccbed1
mww_ll 0 0x08001480 0x9ee1dfef
mww_ll 0 0x08001484 0x18490ca8
mww_ll 0 0x08001488 0x76a371b6
mww_ll 0 0x0800148C 0xb1233e22
mww_ll 0 0x08001490 0xf3838a7b
mww_ll 0 0x08001494 0x654a2ef6
mww_ll 0 0x08001498 0xab014494
mww_ll 0 0x0800149C 0xaf351643
mww_ll 0 0x080014A0 0x3553c75d
mww_ll 0 0x080014A4 0x5b723382
mww_ll 0 0x080014A8 0x57cf064f
mww_ll 0 0x080014AC 0x6eab2cb5
mww_ll 0 0x080014B0 0xe0337582
mww_ll 0 0x080014B4 0xe5d00dfd
mww_ll 0 0x080014B8 0x62688a84
mww_ll 0 0x080014BC 0x6b3d6a15
mww_ll 0 0x080014C0 0x1d5d9fba
mww_ll 0 0x080014C4 0x0bc96b51
mww_ll 0 0x080014C8 0xb1a45dd2
mww_ll 0 0x080014CC 0x03831c33
mww_ll 0 0x080014D0 0x859d3d23
mww_ll 0 0x080014D4 0x6c41b995
mww_ll 0 0x080014D8 0x8b647c83
mww_ll 0 0x080014DC 0x69642563
mww_ll 0 0x080014E0 0x17c916cf
mww_ll 0 0x080014E4 0x251c3d7a
mww_ll 0 0x080014E8 0x463de9a3
mww_ll 0 0x080014EC 0xdea9461b
mww_ll 0 0x080014F0 0x2d20067a
mww_ll 0 0x080014F4 0x549ed8b8
mww_ll 0 0x080014F8 0x2f221170
mww_ll 0 0x080014FC 0xcb2754ef
mww_ll 0 0x08001500 0x2eb573fd
mww_ll 0 0x08001504 0xff7ca179
mww_ll 0 0x08001508 0xfcecfe35
mww_ll 0 0x0800150C 0xa8785f8d
mww_ll 0 0x08001510 0x8d413b78
mww_ll 0 0x08001514 0xdcab2942
mww_ll 0 0x08001518 0x40efdae9
mww_ll 0 0x0800151C 0xc0407b91
mww_ll 0 0x08001520 0x69d4f44a
mww_ll 0 0x08001524 0xc63148d5
mww_ll 0 0x08001528 0xabef7d80
mww_ll 0 0x0800152C 0xcedff2c9
mww_ll 0 0x08001530 0xca57d291
mww_ll 0 0x08001534 0x6c94a007
mww_ll 0 0x08001538 0xebde2c65
mww_ll 0 0x0800153C 0xff86377c
mww_ll 0 0x08001540 0xbed1705f
mww_ll 0 0x08001544 0x22cd195b
mww_ll 0 0x08001548 0x43d61231
mww_ll 0 0x0800154C 0x8bb138f7
mww_ll 0 0x08001550 0xda85fd9c
mww_ll 0 0x08001554 0xe393b80c
mww_ll 0 0x08001558 0xa1a12b10
mww_ll 0 0x0800155C 0xb03adabe
mww_ll 0 0x08001560 0xffe5f398
mww_ll 0 0x08001564 0x24091e6e
mww_ll 0 0x08001568 0xd38f7a81
mww_ll 0 0x0800156C 0xd9ce8e93
mww_ll 0 0x08001570 0x9c2adcf7
mww_ll 0 0x08001574 0xda677e33
mww_ll 0 0x08001578 0x0c76d1a8
mww_ll 0 0x0800157C 0x5fb2ab17
mww_ll 0 0x08001580 0x169a0cd8
mww_ll 0 0x08001584 0x8e88445e
mww_ll 0 0x08001588 0x3e08084e
mww_ll 0 0x0800158C 0xae825e6e
mww_ll 0 0x08001590 0x8e5a7552
mww_ll 0 0x08001594 0xb4a68e75
mww_ll 0 0x08001598 0xb6f5cc56

mdw_ll 0 0x08001404
mdw_ll 0 0x08001408
mdw_ll 0 0x0800140c
mdw_ll 0 0x08001410
mdw_ll 0 0x08001414
mdw_ll 0 0x08001418
mdw_ll 0 0x0800141C
mdw_ll 0 0x08001420
mdw_ll 0 0x08001424
mdw_ll 0 0x08001428
mdw_ll 0 0x0800142C
mdw_ll 0 0x08001430
mdw_ll 0 0x08001434
mdw_ll 0 0x08001438
mdw_ll 0 0x0800143C
mdw_ll 0 0x08001440
mdw_ll 0 0x08001444
mdw_ll 0 0x08001448
mdw_ll 0 0x0800144C
mdw_ll 0 0x08001450
mdw_ll 0 0x08001454
mdw_ll 0 0x08001458
mdw_ll 0 0x0800145C
mdw_ll 0 0x08001460
mdw_ll 0 0x08001464
mdw_ll 0 0x08001468
mdw_ll 0 0x0800146C
mdw_ll 0 0x08001470
mdw_ll 0 0x08001474
mdw_ll 0 0x08001478
mdw_ll 0 0x0800147C
mdw_ll 0 0x08001480
mdw_ll 0 0x08001484
mdw_ll 0 0x08001488
mdw_ll 0 0x0800148C
mdw_ll 0 0x08001490
mdw_ll 0 0x08001494
mdw_ll 0 0x08001498
mdw_ll 0 0x0800149C
mdw_ll 0 0x080014A0
mdw_ll 0 0x080014A4
mdw_ll 0 0x080014A8
mdw_ll 0 0x080014AC
mdw_ll 0 0x080014B0
mdw_ll 0 0x080014B4
mdw_ll 0 0x080014B8
mdw_ll 0 0x080014BC
mdw_ll 0 0x080014C0
mdw_ll 0 0x080014C4
mdw_ll 0 0x080014C8
mdw_ll 0 0x080014CC
mdw_ll 0 0x080014D0
mdw_ll 0 0x080014D4
mdw_ll 0 0x080014D8
mdw_ll 0 0x080014DC
mdw_ll 0 0x080014E0
mdw_ll 0 0x080014E4
mdw_ll 0 0x080014E8
mdw_ll 0 0x080014EC
mdw_ll 0 0x080014F0
mdw_ll 0 0x080014F4
mdw_ll 0 0x080014F8
mdw_ll 0 0x080014FC
mdw_ll 0 0x08001500
mdw_ll 0 0x08001504
mdw_ll 0 0x08001508
mdw_ll 0 0x0800150C
mdw_ll 0 0x08001510
mdw_ll 0 0x08001514
mdw_ll 0 0x08001518
mdw_ll 0 0x0800151C
mdw_ll 0 0x08001520
mdw_ll 0 0x08001524
mdw_ll 0 0x08001528
mdw_ll 0 0x0800152C
mdw_ll 0 0x08001530
mdw_ll 0 0x08001534
mdw_ll 0 0x08001538
mdw_ll 0 0x0800153C
mdw_ll 0 0x08001540
mdw_ll 0 0x08001544
mdw_ll 0 0x08001548
mdw_ll 0 0x0800154C
mdw_ll 0 0x08001550
mdw_ll 0 0x08001554
mdw_ll 0 0x08001558
mdw_ll 0 0x0800155C
mdw_ll 0 0x08001560
mdw_ll 0 0x08001564
mdw_ll 0 0x08001568
mdw_ll 0 0x0800156C
mdw_ll 0 0x08001570
mdw_ll 0 0x08001574
mdw_ll 0 0x08001578
mdw_ll 0 0x0800157C
mdw_ll 0 0x08001580
mdw_ll 0 0x08001584
mdw_ll 0 0x08001588
mdw_ll 0 0x0800158C
mdw_ll 0 0x08001590
mdw_ll 0 0x08001594
mdw_ll 0 0x08001598


mww_ll 0 0x08001400 0x29000000
mdw_ll 0 0x08001400
puts "IPC Acquire "
mdw_ll 0 $CYREG_IPC_STRUCT_ACQUIRE
mww_ll 0 $CYREG_IPC_STRUCT_ACQUIRE 0x80000f03
mdw_ll 0 $CYREG_IPC_STRUCT_ACQUIRE

puts "SRAM SCRATCH into IPC2 DATA0"
mww_ll 0 $CYREG_IPC_STRUCT_DATA 0x08001400
mdw_ll 0 $CYREG_IPC_STRUCT_DATA 
puts "Notify"
mww_ll 0 $CYREG_IPC_STRUCT_NOTIFY 0x00000001


#mdw_ll 0 0x40221000;
#puts "INTR Addr"

puts "Wait for IPC Release"
after 100
for {set i 0} {$i<100} {incr i} {
	mdw_ll 0 $CYREG_IPC_STRUCT_LOCK_STATUS;
}


puts "Read IPC DATA"
mdw_ll 0 $CYREG_IPC_STRUCT_DATA
mdw_ll 0 0x08001400

mdw_ll 0 0x402200EC
mdw_ll 0 $CYREG_IPC_STRUCT_DATA;

# mdw_ll 0 0x17006400;

# mdw_ll 0 0x4021000C;
# mdw_ll 0 0x40210010;
# mdw_ll 0 0x40210014;
# mdw_ll 0 0x40210018;

test_compare 0xa0000000 [SROM_WriteRow $SYS_CALL_GREATER32BIT 0 0x17006400 0 $PKEY];

puts "API parameters"
mww_ll 0 0x08001404 0x00000014
mww_ll 0 0x08001408 0x120029f0
mww_ll 0 0x0800140c 0x9E352240
mww_ll 0 0x08001410 0x03E4371C
mww_ll 0 0x08001414 0x00061920
mww_ll 0 0x08001418 0x0800141c;
mww_ll 0 0x0800141C 0xf2054840
mww_ll 0 0x08001420 0xb621638b
mww_ll 0 0x08001424 0x368525a8
mww_ll 0 0x08001428 0x0d17da55
mww_ll 0 0x0800142C 0x321a38ae
mww_ll 0 0x08001430 0x5f64b825
mww_ll 0 0x08001434 0xa384f22d
mww_ll 0 0x08001438 0xbdaf8ccd
mww_ll 0 0x0800143C 0xc74e2bd9
mww_ll 0 0x08001440 0x8459e01d
mww_ll 0 0x08001444 0x6e9ee0ea
mww_ll 0 0x08001448 0x56de5e05
mww_ll 0 0x0800144C 0x13c726da
mww_ll 0 0x08001450 0x155183db
mww_ll 0 0x08001454 0xc621b2fd
mww_ll 0 0x08001458 0xa3c0e5ff
mww_ll 0 0x0800145C 0xbe866b37
mww_ll 0 0x08001460 0x54bfcf14
mww_ll 0 0x08001464 0xe21d7008
mww_ll 0 0x08001468 0xd647a85c
mww_ll 0 0x0800146C 0x7e72db87
mww_ll 0 0x08001470 0xe9992d4b
mww_ll 0 0x08001474 0x34d0e2f6
mww_ll 0 0x08001478 0x5b95846f
mww_ll 0 0x0800147C 0xe9ccbed1
mww_ll 0 0x08001480 0x9ee1dfef
mww_ll 0 0x08001484 0x18490ca8
mww_ll 0 0x08001488 0x76a371b6
mww_ll 0 0x0800148C 0xb1233e22
mww_ll 0 0x08001490 0xf3838a7b
mww_ll 0 0x08001494 0x654a2ef6
mww_ll 0 0x08001498 0xab014494
mww_ll 0 0x0800149C 0xaf351643
mww_ll 0 0x080014A0 0x3553c75d
mww_ll 0 0x080014A4 0x5b723382
mww_ll 0 0x080014A8 0x57cf064f
mww_ll 0 0x080014AC 0x6eab2cb5
mww_ll 0 0x080014B0 0xe0337582
mww_ll 0 0x080014B4 0xe5d00dfd
mww_ll 0 0x080014B8 0x62688a84
mww_ll 0 0x080014BC 0x6b3d6a15
mww_ll 0 0x080014C0 0x1d5d9fba
mww_ll 0 0x080014C4 0x0bc96b51
mww_ll 0 0x080014C8 0xb1a45dd2
mww_ll 0 0x080014CC 0x03831c33
mww_ll 0 0x080014D0 0x859d3d23
mww_ll 0 0x080014D4 0x6c41b995
mww_ll 0 0x080014D8 0x8b647c83
mww_ll 0 0x080014DC 0x69642563
mww_ll 0 0x080014E0 0x17c916cf
mww_ll 0 0x080014E4 0x251c3d7a
mww_ll 0 0x080014E8 0x463de9a3
mww_ll 0 0x080014EC 0xdea9461b
mww_ll 0 0x080014F0 0x2d20067a
mww_ll 0 0x080014F4 0x549ed8b8
mww_ll 0 0x080014F8 0x2f221170
mww_ll 0 0x080014FC 0xcb2754ef
mww_ll 0 0x08001500 0x2eb573fd
mww_ll 0 0x08001504 0xff7ca179
mww_ll 0 0x08001508 0xfcecfe35
mww_ll 0 0x0800150C 0xa8785f8d
mww_ll 0 0x08001510 0x8d413b78
mww_ll 0 0x08001514 0xdcab2942
mww_ll 0 0x08001518 0x40efdae9
mww_ll 0 0x0800151C 0xc0407b91
mww_ll 0 0x08001520 0x69d4f44a
mww_ll 0 0x08001524 0xc63148d5
mww_ll 0 0x08001528 0xabef7d80
mww_ll 0 0x0800152C 0xcedff2c9
mww_ll 0 0x08001530 0xca57d291
mww_ll 0 0x08001534 0x6c94a007
mww_ll 0 0x08001538 0xebde2c65
mww_ll 0 0x0800153C 0xff86377c
mww_ll 0 0x08001540 0xbed1705f
mww_ll 0 0x08001544 0x22cd195b
mww_ll 0 0x08001548 0x43d61231
mww_ll 0 0x0800154C 0x8bb138f7
mww_ll 0 0x08001550 0xda85fd9c
mww_ll 0 0x08001554 0xe393b80c
mww_ll 0 0x08001558 0xa1a12b10
mww_ll 0 0x0800155C 0xb03adabe
mww_ll 0 0x08001560 0xffe5f398
mww_ll 0 0x08001564 0x24091e6e
mww_ll 0 0x08001568 0xd38f7a81
mww_ll 0 0x0800156C 0xd9ce8e93
mww_ll 0 0x08001570 0x9c2adcf7
mww_ll 0 0x08001574 0xda677e33
mww_ll 0 0x08001578 0x0c76d1a8
mww_ll 0 0x0800157C 0x5fb2ab17
mww_ll 0 0x08001580 0x169a0cd8
mww_ll 0 0x08001584 0x8e88445e
mww_ll 0 0x08001588 0x3e08084e
mww_ll 0 0x0800158C 0xae825e6e
mww_ll 0 0x08001590 0x8e5a7552
mww_ll 0 0x08001594 0xb4a68e75
mww_ll 0 0x08001598 0xb6f5cc56

mdw_ll 0 0x08001404
mdw_ll 0 0x08001408
mdw_ll 0 0x0800140c
mdw_ll 0 0x08001410
mdw_ll 0 0x08001414
mdw_ll 0 0x08001418
mdw_ll 0 0x0800141C
mdw_ll 0 0x08001420
mdw_ll 0 0x08001424
mdw_ll 0 0x08001428
mdw_ll 0 0x0800142C
mdw_ll 0 0x08001430
mdw_ll 0 0x08001434
mdw_ll 0 0x08001438
mdw_ll 0 0x0800143C
mdw_ll 0 0x08001440
mdw_ll 0 0x08001444
mdw_ll 0 0x08001448
mdw_ll 0 0x0800144C
mdw_ll 0 0x08001450
mdw_ll 0 0x08001454
mdw_ll 0 0x08001458
mdw_ll 0 0x0800145C
mdw_ll 0 0x08001460
mdw_ll 0 0x08001464
mdw_ll 0 0x08001468
mdw_ll 0 0x0800146C
mdw_ll 0 0x08001470
mdw_ll 0 0x08001474
mdw_ll 0 0x08001478
mdw_ll 0 0x0800147C
mdw_ll 0 0x08001480
mdw_ll 0 0x08001484
mdw_ll 0 0x08001488
mdw_ll 0 0x0800148C
mdw_ll 0 0x08001490
mdw_ll 0 0x08001494
mdw_ll 0 0x08001498
mdw_ll 0 0x0800149C
mdw_ll 0 0x080014A0
mdw_ll 0 0x080014A4
mdw_ll 0 0x080014A8
mdw_ll 0 0x080014AC
mdw_ll 0 0x080014B0
mdw_ll 0 0x080014B4
mdw_ll 0 0x080014B8
mdw_ll 0 0x080014BC
mdw_ll 0 0x080014C0
mdw_ll 0 0x080014C4
mdw_ll 0 0x080014C8
mdw_ll 0 0x080014CC
mdw_ll 0 0x080014D0
mdw_ll 0 0x080014D4
mdw_ll 0 0x080014D8
mdw_ll 0 0x080014DC
mdw_ll 0 0x080014E0
mdw_ll 0 0x080014E4
mdw_ll 0 0x080014E8
mdw_ll 0 0x080014EC
mdw_ll 0 0x080014F0
mdw_ll 0 0x080014F4
mdw_ll 0 0x080014F8
mdw_ll 0 0x080014FC
mdw_ll 0 0x08001500
mdw_ll 0 0x08001504
mdw_ll 0 0x08001508
mdw_ll 0 0x0800150C
mdw_ll 0 0x08001510
mdw_ll 0 0x08001514
mdw_ll 0 0x08001518
mdw_ll 0 0x0800151C
mdw_ll 0 0x08001520
mdw_ll 0 0x08001524
mdw_ll 0 0x08001528
mdw_ll 0 0x0800152C
mdw_ll 0 0x08001530
mdw_ll 0 0x08001534
mdw_ll 0 0x08001538
mdw_ll 0 0x0800153C
mdw_ll 0 0x08001540
mdw_ll 0 0x08001544
mdw_ll 0 0x08001548
mdw_ll 0 0x0800154C
mdw_ll 0 0x08001550
mdw_ll 0 0x08001554
mdw_ll 0 0x08001558
mdw_ll 0 0x0800155C
mdw_ll 0 0x08001560
mdw_ll 0 0x08001564
mdw_ll 0 0x08001568
mdw_ll 0 0x0800156C
mdw_ll 0 0x08001570
mdw_ll 0 0x08001574
mdw_ll 0 0x08001578
mdw_ll 0 0x0800157C
mdw_ll 0 0x08001580
mdw_ll 0 0x08001584
mdw_ll 0 0x08001588
mdw_ll 0 0x0800158C
mdw_ll 0 0x08001590
mdw_ll 0 0x08001594
mdw_ll 0 0x08001598


mww_ll 0 0x08001400 0x29000000
mdw_ll 0 0x08001400
puts "IPC Acquire "
mdw_ll 0 $CYREG_IPC_STRUCT_ACQUIRE
mww_ll 0 $CYREG_IPC_STRUCT_ACQUIRE 0x80000f03
mdw_ll 0 $CYREG_IPC_STRUCT_ACQUIRE

puts "SRAM SCRATCH into IPC2 DATA0"
mww_ll 0 $CYREG_IPC_STRUCT_DATA 0x08001400
mdw_ll 0 $CYREG_IPC_STRUCT_DATA 
puts "Notify"
mww_ll 0 $CYREG_IPC_STRUCT_NOTIFY 0x00000001


#mdw_ll 0 0x40221000;
#puts "INTR Addr"

puts "Wait for IPC Release"
after 100
for {set i 0} {$i<100} {incr i} {
	mdw_ll 0 $CYREG_IPC_STRUCT_LOCK_STATUS;
}


puts "Read IPC DATA"
mdw_ll 0 $CYREG_IPC_STRUCT_DATA
mdw_ll 0 0x08001400

mdw_ll 0 0x402200EC
mdw_ll 0 $CYREG_IPC_STRUCT_DATA;

shutdown;
