
source [find HelperScripts/SROM_Defines.tcl]
source [find HelperScripts/utility_srom.tcl]
source [find HelperScripts/CustomFunctions.tcl]

acquire_TestMode_SROM;

global CYREG_IPC_STRUCT_LOCK_STATUS;


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


#init
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
mww_ll 0 0x0800141c 0xf6c5406d
mww_ll 0 0x08001420 0x36ecd0fb
mww_ll 0 0x08001424 0x0462d332
mww_ll 0 0x08001428 0xc8dc7202
mww_ll 0 0x0800142c 0x03e90b84
mww_ll 0 0x08001430 0x6e21ea5e
mww_ll 0 0x08001434 0xe3b40ac6
mww_ll 0 0x08001438 0xb5c270fa
mww_ll 0 0x0800143c 0xe251bdd3
mww_ll 0 0x08001440 0xddcc5d55
mww_ll 0 0x08001444 0xf3938cb9
mww_ll 0 0x08001448 0x5d1a5dee
mww_ll 0 0x0800144c 0x670b0eca
mww_ll 0 0x08001450 0xf87ee19b
mww_ll 0 0x08001454 0x04498949
mww_ll 0 0x08001458 0x0ed81484
mww_ll 0 0x0800145c 0x116f17f4
mww_ll 0 0x08001460 0x49a8d1da
mww_ll 0 0x08001464 0x9f0eadbd
mww_ll 0 0x08001468 0xa84d1bce
mww_ll 0 0x0800146c 0x8d050512
mww_ll 0 0x08001470 0x5d7b1890
mww_ll 0 0x08001474 0x24eb1dac
mww_ll 0 0x08001478 0xc6fb09c6
mww_ll 0 0x0800147c 0xead71083
mww_ll 0 0x08001480 0xe9474062
mww_ll 0 0x08001484 0x934abbfc
mww_ll 0 0x08001488 0x0a7fe378
mww_ll 0 0x0800148c 0xe8e343ce
mww_ll 0 0x08001490 0x1df48f90
mww_ll 0 0x08001494 0x3238bfb3
mww_ll 0 0x08001498 0x26691592
mww_ll 0 0x0800149c 0x5e934d56
mww_ll 0 0x080014a0 0xd5650698
mww_ll 0 0x080014a4 0xdbc2e200
mww_ll 0 0x080014a8 0xe0b7649c
mww_ll 0 0x080014ac 0x41db4555
mww_ll 0 0x080014b0 0xd861f6b9
mww_ll 0 0x080014b4 0x27a2cd40
mww_ll 0 0x080014b8 0xc131cc20
mww_ll 0 0x080014bc 0xeaac9694
mww_ll 0 0x080014c0 0xde1d5188
mww_ll 0 0x080014c4 0xa31953a0
mww_ll 0 0x080014c8 0xab84b4f1
mww_ll 0 0x080014cc 0xcaeb1243
mww_ll 0 0x080014d0 0xac3dc2d7
mww_ll 0 0x080014d4 0x279d269c
mww_ll 0 0x080014d8 0x12878c6d
mww_ll 0 0x080014dc 0x4a670f95
mww_ll 0 0x080014e0 0x9f879491
mww_ll 0 0x080014e4 0xb8ca59dd
mww_ll 0 0x080014e8 0x0f04429a
mww_ll 0 0x080014ec 0x94bae84a
mww_ll 0 0x080014f0 0xdd8376f6
mww_ll 0 0x080014f4 0xc6e12ae0
mww_ll 0 0x080014f8 0xf4176457
mww_ll 0 0x080014fc 0xff33989a
mww_ll 0 0x08001500 0xcf505200
mww_ll 0 0x08001504 0x91b70c19
mww_ll 0 0x08001508 0xd5a200a0
mww_ll 0 0x0800150c 0xe93f5ce6
mww_ll 0 0x08001510 0x01014acb
mww_ll 0 0x08001514 0xe839207f
mww_ll 0 0x08001518 0x20648427

mdw_ll 0 0x08001404
mdw_ll 0 0x08001408
mdw_ll 0 0x0800140c
mdw_ll 0 0x08001410
mdw_ll 0 0x08001414
mdw_ll 0 0x08001418
mdw_ll 0 0x0800141c
mdw_ll 0 0x08001420
mdw_ll 0 0x08001424
mdw_ll 0 0x08001428
mdw_ll 0 0x0800142c
mdw_ll 0 0x08001430
mdw_ll 0 0x08001434
mdw_ll 0 0x08001438
mdw_ll 0 0x0800143c
mdw_ll 0 0x08001440
mdw_ll 0 0x08001444
mdw_ll 0 0x08001448
mdw_ll 0 0x0800144c
mdw_ll 0 0x08001450
mdw_ll 0 0x08001454
mdw_ll 0 0x08001458
mdw_ll 0 0x0800145c
mdw_ll 0 0x08001460
mdw_ll 0 0x08001464
mdw_ll 0 0x08001468
mdw_ll 0 0x0800146c
mdw_ll 0 0x08001470
mdw_ll 0 0x08001474
mdw_ll 0 0x08001478
mdw_ll 0 0x0800147c
mdw_ll 0 0x08001480
mdw_ll 0 0x08001484
mdw_ll 0 0x08001488
mdw_ll 0 0x0800148c
mdw_ll 0 0x08001490
mdw_ll 0 0x08001494
mdw_ll 0 0x08001498
mdw_ll 0 0x0800149c
mdw_ll 0 0x080014a0
mdw_ll 0 0x080014a4
mdw_ll 0 0x080014a8
mdw_ll 0 0x080014ac
mdw_ll 0 0x080014b0
mdw_ll 0 0x080014b4
mdw_ll 0 0x080014b8
mdw_ll 0 0x080014bc
mdw_ll 0 0x080014c0
mdw_ll 0 0x080014c4
mdw_ll 0 0x080014c8
mdw_ll 0 0x080014cc
mdw_ll 0 0x080014d0
mdw_ll 0 0x080014d4
mdw_ll 0 0x080014d8
mdw_ll 0 0x080014dc
mdw_ll 0 0x080014e0
mdw_ll 0 0x080014e4
mdw_ll 0 0x080014e8
mdw_ll 0 0x080014ec
mdw_ll 0 0x080014f0
mdw_ll 0 0x080014f4
mdw_ll 0 0x080014f8
mdw_ll 0 0x080014fc
mdw_ll 0 0x08001500
mdw_ll 0 0x08001504
mdw_ll 0 0x08001508
mdw_ll 0 0x0800150c
mdw_ll 0 0x08001510
mdw_ll 0 0x08001514
mdw_ll 0 0x08001518


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
mdw_ll 0 0x402C0100;

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
mww_ll 0 0x0800141c 0xf6c5406d
mww_ll 0 0x08001420 0x36ecd0fb
mww_ll 0 0x08001424 0x0462d332
mww_ll 0 0x08001428 0xc8dc7202
mww_ll 0 0x0800142c 0x03e90b84
mww_ll 0 0x08001430 0x6e21ea5e
mww_ll 0 0x08001434 0xe3b40ac6
mww_ll 0 0x08001438 0xb5c270fa
mww_ll 0 0x0800143c 0xe251bdd3
mww_ll 0 0x08001440 0xddcc5d55
mww_ll 0 0x08001444 0xf3938cb9
mww_ll 0 0x08001448 0x5d1a5dee
mww_ll 0 0x0800144c 0x670b0eca
mww_ll 0 0x08001450 0xf87ee19b
mww_ll 0 0x08001454 0x04498949
mww_ll 0 0x08001458 0x0ed81484
mww_ll 0 0x0800145c 0x116f17f4
mww_ll 0 0x08001460 0x49a8d1da
mww_ll 0 0x08001464 0x9f0eadbd
mww_ll 0 0x08001468 0xa84d1bce
mww_ll 0 0x0800146c 0x8d050512
mww_ll 0 0x08001470 0x5d7b1890
mww_ll 0 0x08001474 0x24eb1dac
mww_ll 0 0x08001478 0xc6fb09c6
mww_ll 0 0x0800147c 0xead71083
mww_ll 0 0x08001480 0xe9474062
mww_ll 0 0x08001484 0x934abbfc
mww_ll 0 0x08001488 0x0a7fe378
mww_ll 0 0x0800148c 0xe8e343ce
mww_ll 0 0x08001490 0x1df48f90
mww_ll 0 0x08001494 0x3238bfb3
mww_ll 0 0x08001498 0x26691592
mww_ll 0 0x0800149c 0x5e934d56
mww_ll 0 0x080014a0 0xd5650698
mww_ll 0 0x080014a4 0xdbc2e200
mww_ll 0 0x080014a8 0xe0b7649c
mww_ll 0 0x080014ac 0x41db4555
mww_ll 0 0x080014b0 0xd861f6b9
mww_ll 0 0x080014b4 0x27a2cd40
mww_ll 0 0x080014b8 0xc131cc20
mww_ll 0 0x080014bc 0xeaac9694
mww_ll 0 0x080014c0 0xde1d5188
mww_ll 0 0x080014c4 0xa31953a0
mww_ll 0 0x080014c8 0xab84b4f1
mww_ll 0 0x080014cc 0xcaeb1243
mww_ll 0 0x080014d0 0xac3dc2d7
mww_ll 0 0x080014d4 0x279d269c
mww_ll 0 0x080014d8 0x12878c6d
mww_ll 0 0x080014dc 0x4a670f95
mww_ll 0 0x080014e0 0x9f879491
mww_ll 0 0x080014e4 0xb8ca59dd
mww_ll 0 0x080014e8 0x0f04429a
mww_ll 0 0x080014ec 0x94bae84a
mww_ll 0 0x080014f0 0xdd8376f6
mww_ll 0 0x080014f4 0xc6e12ae0
mww_ll 0 0x080014f8 0xf4176457
mww_ll 0 0x080014fc 0xff33989a
mww_ll 0 0x08001500 0xcf505200
mww_ll 0 0x08001504 0x91b70c19
mww_ll 0 0x08001508 0xd5a200a0
mww_ll 0 0x0800150c 0xe93f5ce6
mww_ll 0 0x08001510 0x01014acb
mww_ll 0 0x08001514 0xe839207f
mww_ll 0 0x08001518 0x20648427

mdw_ll 0 0x08001404
mdw_ll 0 0x08001408
mdw_ll 0 0x0800140c
mdw_ll 0 0x08001410
mdw_ll 0 0x08001414
mdw_ll 0 0x08001418
mdw_ll 0 0x0800141c
mdw_ll 0 0x08001420
mdw_ll 0 0x08001424
mdw_ll 0 0x08001428
mdw_ll 0 0x0800142c
mdw_ll 0 0x08001430
mdw_ll 0 0x08001434
mdw_ll 0 0x08001438
mdw_ll 0 0x0800143c
mdw_ll 0 0x08001440
mdw_ll 0 0x08001444
mdw_ll 0 0x08001448
mdw_ll 0 0x0800144c
mdw_ll 0 0x08001450
mdw_ll 0 0x08001454
mdw_ll 0 0x08001458
mdw_ll 0 0x0800145c
mdw_ll 0 0x08001460
mdw_ll 0 0x08001464
mdw_ll 0 0x08001468
mdw_ll 0 0x0800146c
mdw_ll 0 0x08001470
mdw_ll 0 0x08001474
mdw_ll 0 0x08001478
mdw_ll 0 0x0800147c
mdw_ll 0 0x08001480
mdw_ll 0 0x08001484
mdw_ll 0 0x08001488
mdw_ll 0 0x0800148c
mdw_ll 0 0x08001490
mdw_ll 0 0x08001494
mdw_ll 0 0x08001498
mdw_ll 0 0x0800149c
mdw_ll 0 0x080014a0
mdw_ll 0 0x080014a4
mdw_ll 0 0x080014a8
mdw_ll 0 0x080014ac
mdw_ll 0 0x080014b0
mdw_ll 0 0x080014b4
mdw_ll 0 0x080014b8
mdw_ll 0 0x080014bc
mdw_ll 0 0x080014c0
mdw_ll 0 0x080014c4
mdw_ll 0 0x080014c8
mdw_ll 0 0x080014cc
mdw_ll 0 0x080014d0
mdw_ll 0 0x080014d4
mdw_ll 0 0x080014d8
mdw_ll 0 0x080014dc
mdw_ll 0 0x080014e0
mdw_ll 0 0x080014e4
mdw_ll 0 0x080014e8
mdw_ll 0 0x080014ec
mdw_ll 0 0x080014f0
mdw_ll 0 0x080014f4
mdw_ll 0 0x080014f8
mdw_ll 0 0x080014fc
mdw_ll 0 0x08001500
mdw_ll 0 0x08001504
mdw_ll 0 0x08001508
mdw_ll 0 0x0800150c
mdw_ll 0 0x08001510
mdw_ll 0 0x08001514
mdw_ll 0 0x08001518


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
mww_ll 0 0x0800141c 0xf6c5406d
mww_ll 0 0x08001420 0x36ecd0fb
mww_ll 0 0x08001424 0x0462d332
mww_ll 0 0x08001428 0xc8dc7202
mww_ll 0 0x0800142c 0x03e90b84
mww_ll 0 0x08001430 0x6e21ea5e
mww_ll 0 0x08001434 0xe3b40ac6
mww_ll 0 0x08001438 0xb5c270fa
mww_ll 0 0x0800143c 0xe251bdd3
mww_ll 0 0x08001440 0xddcc5d55
mww_ll 0 0x08001444 0xf3938cb9
mww_ll 0 0x08001448 0x5d1a5dee
mww_ll 0 0x0800144c 0x670b0eca
mww_ll 0 0x08001450 0xf87ee19b
mww_ll 0 0x08001454 0x04498949
mww_ll 0 0x08001458 0x0ed81484
mww_ll 0 0x0800145c 0x116f17f4
mww_ll 0 0x08001460 0x49a8d1da
mww_ll 0 0x08001464 0x9f0eadbd
mww_ll 0 0x08001468 0xa84d1bce
mww_ll 0 0x0800146c 0x8d050512
mww_ll 0 0x08001470 0x5d7b1890
mww_ll 0 0x08001474 0x24eb1dac
mww_ll 0 0x08001478 0xc6fb09c6
mww_ll 0 0x0800147c 0xead71083
mww_ll 0 0x08001480 0xe9474062
mww_ll 0 0x08001484 0x934abbfc
mww_ll 0 0x08001488 0x0a7fe378
mww_ll 0 0x0800148c 0xe8e343ce
mww_ll 0 0x08001490 0x1df48f90
mww_ll 0 0x08001494 0x3238bfb3
mww_ll 0 0x08001498 0x26691592
mww_ll 0 0x0800149c 0x5e934d56
mww_ll 0 0x080014a0 0xd5650698
mww_ll 0 0x080014a4 0xdbc2e200
mww_ll 0 0x080014a8 0xe0b7649c
mww_ll 0 0x080014ac 0x41db4555
mww_ll 0 0x080014b0 0xd861f6b9
mww_ll 0 0x080014b4 0x27a2cd40
mww_ll 0 0x080014b8 0xc131cc20
mww_ll 0 0x080014bc 0xeaac9694
mww_ll 0 0x080014c0 0xde1d5188
mww_ll 0 0x080014c4 0xa31953a0
mww_ll 0 0x080014c8 0xab84b4f1
mww_ll 0 0x080014cc 0xcaeb1243
mww_ll 0 0x080014d0 0xac3dc2d7
mww_ll 0 0x080014d4 0x279d269c
mww_ll 0 0x080014d8 0x12878c6d
mww_ll 0 0x080014dc 0x4a670f95
mww_ll 0 0x080014e0 0x9f879491
mww_ll 0 0x080014e4 0xb8ca59dd
mww_ll 0 0x080014e8 0x0f04429a
mww_ll 0 0x080014ec 0x94bae84a
mww_ll 0 0x080014f0 0xdd8376f6
mww_ll 0 0x080014f4 0xc6e12ae0
mww_ll 0 0x080014f8 0xf4176457
mww_ll 0 0x080014fc 0xff33989a
mww_ll 0 0x08001500 0xcf505200
mww_ll 0 0x08001504 0x91b70c19
mww_ll 0 0x08001508 0xd5a200a0
mww_ll 0 0x0800150c 0xe93f5ce6
mww_ll 0 0x08001510 0x01014acb
mww_ll 0 0x08001514 0xe839207f
mww_ll 0 0x08001518 0x20648427

mdw_ll 0 0x08001404
mdw_ll 0 0x08001408
mdw_ll 0 0x0800140c
mdw_ll 0 0x08001410
mdw_ll 0 0x08001414
mdw_ll 0 0x08001418
mdw_ll 0 0x0800141c
mdw_ll 0 0x08001420
mdw_ll 0 0x08001424
mdw_ll 0 0x08001428
mdw_ll 0 0x0800142c
mdw_ll 0 0x08001430
mdw_ll 0 0x08001434
mdw_ll 0 0x08001438
mdw_ll 0 0x0800143c
mdw_ll 0 0x08001440
mdw_ll 0 0x08001444
mdw_ll 0 0x08001448
mdw_ll 0 0x0800144c
mdw_ll 0 0x08001450
mdw_ll 0 0x08001454
mdw_ll 0 0x08001458
mdw_ll 0 0x0800145c
mdw_ll 0 0x08001460
mdw_ll 0 0x08001464
mdw_ll 0 0x08001468
mdw_ll 0 0x0800146c
mdw_ll 0 0x08001470
mdw_ll 0 0x08001474
mdw_ll 0 0x08001478
mdw_ll 0 0x0800147c
mdw_ll 0 0x08001480
mdw_ll 0 0x08001484
mdw_ll 0 0x08001488
mdw_ll 0 0x0800148c
mdw_ll 0 0x08001490
mdw_ll 0 0x08001494
mdw_ll 0 0x08001498
mdw_ll 0 0x0800149c
mdw_ll 0 0x080014a0
mdw_ll 0 0x080014a4
mdw_ll 0 0x080014a8
mdw_ll 0 0x080014ac
mdw_ll 0 0x080014b0
mdw_ll 0 0x080014b4
mdw_ll 0 0x080014b8
mdw_ll 0 0x080014bc
mdw_ll 0 0x080014c0
mdw_ll 0 0x080014c4
mdw_ll 0 0x080014c8
mdw_ll 0 0x080014cc
mdw_ll 0 0x080014d0
mdw_ll 0 0x080014d4
mdw_ll 0 0x080014d8
mdw_ll 0 0x080014dc
mdw_ll 0 0x080014e0
mdw_ll 0 0x080014e4
mdw_ll 0 0x080014e8
mdw_ll 0 0x080014ec
mdw_ll 0 0x080014f0
mdw_ll 0 0x080014f4
mdw_ll 0 0x080014f8
mdw_ll 0 0x080014fc
mdw_ll 0 0x08001500
mdw_ll 0 0x08001504
mdw_ll 0 0x08001508
mdw_ll 0 0x0800150c
mdw_ll 0 0x08001510
mdw_ll 0 0x08001514
mdw_ll 0 0x08001518


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
