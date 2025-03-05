set basic_app_path_name ""
set secure_app_path_name ""
set secure_app_no_sign_path_name ""

set FAMILY ""

switch $G(OPT_FAMILY) "$G(FAMILY:TVII-BH-8M)" {
		set FAMILY tviibh8m
		if { $is_psvp  == 0 } {
				source [find target/traveo2_8m_b0.cfg]
				#source [find target/traveo2_6m.cfg]
				#targets traveo2_6m.cpu.cm0

		} else {
				source [find target/traveo2_8m_psvp_b.cfg]
		}
	} "$G(FAMILY:TVII-BE-1M)" {
		set FAMILY tviibe1m
		source [find target/traveo2_1m_a0.cfg]
		puts "--->  traveo2_1m_a0.cfg is used for testing."
	} "$G(FAMILY:TVII-BH-4M)" {
		set FAMILY tviibh4m
		source [find target/traveo2_4m.cfg]
	}  "$G(FAMILY:TVII-BE-2M)" {            
		set FAMILY tviibe2m
		source [find target/traveo2_2m.cfg]
		puts "---> x traveo2_2m.cfg is used for testing."
	}  "$G(FAMILY:TVII-BE-4M)" {            
		set FAMILY tviibe4m
		source [find target/traveo2_be_4m.cfg]
		puts "---> x traveo2_be_4m.cfg is used for testing."
	}  "$G(FAMILY:TVII-C2D4M)" {            
		set FAMILY tviic2d4m
		#targets traveo2_c2d_4m.cpu.cm0
		source [find target/traveo2_c2d_4m.cfg]
		puts "--->  traveo2_c2d_4m.cfg is used for testing."
	}  "$G(FAMILY:TVII-C2D6M)" {            
		set FAMILY tviic2d6m
		source [find target/traveo2_6m.cfg]
		puts "--->"
		puts "--->  traveo2_6m.cfg is used for testing."
		puts "--->"
	} default {   
        puts stderr "Cannot set target: Unsupported device family"
		puts stderr "Cannot set App paths: Unsupported device family"
	}


set PSVPSUFF ""
if { $is_psvp == 1 } { 
	set PSVPSUFF "_psvp"
}

set G(HEXPATH) 						"../../hexout"
set G(_CHIPNAME) ${_CHIPNAME}

set FAMWSUFF $FAMILY$PSVPSUFF

set G(CONVERT_TO_NORMAL_FILENAM) 	"../${FAMWSUFF}_FB_ConvertToNormal.bat"

set G(FAMWSUFF)						$FAMWSUFF
set G(basic_app_path_name) 			"$G(HEXPATH)/$FAMWSUFF/basic_blinky_$FAMWSUFF.hex"
set G(sa_basic_app_path_name) 		"$G(HEXPATH)/$FAMWSUFF/sa_basic_blinky_$FAMWSUFF.hex"
set G(stack_testing_app_path_name) 	"$G(HEXPATH)/$FAMWSUFF/stack_testing_$FAMWSUFF.hex"

set G(corrupted_app_path_name) 		"$G(HEXPATH)/${FAMILY}_corrupted/basic_blinky_${FAMILY}_corrupted.hex"
set G(secure_2k_app_path_name) 		"$G(HEXPATH)/$FAMWSUFF/key2k_secure_blinky_$FAMWSUFF.hex"
set G(secure_3k_app_path_name) 		"$G(HEXPATH)/$FAMWSUFF/key3k_secure_blinky_$FAMWSUFF.hex"
set G(secure_4k_app_path_name) 		"$G(HEXPATH)/$FAMWSUFF/key4k_secure_blinky_$FAMWSUFF.hex"
set G(secure_app_no_sign_path_name)    "$G(HEXPATH)/$FAMWSUFF/secure_blinky_$FAMWSUFF.no_sign.hex"

set G(invalid_secure_app)    "$G(HEXPATH)/$FAMWSUFF/key2k_secure_blinky_${FAMWSUFF}_invalid.hex"

#set G(secure_2k_API_tst_app_path_name) "$G(HEXPATH)/$FAMILY/key2k_secure_blinky_${FAMWSUFF}_tstapi.hex"
#set G(secure_3k_API_tst_app_path_name) "$G(HEXPATH)/$FAMILY/key2k_secure_blinky_${FAMWSUFF}_tstapi.hex"
set G(secure_2k_API_tst_app_path_name) "$G(HEXPATH)/$FAMWSUFF/key2k_secure_blinky_${FAMWSUFF}_tstapi.hex"
set G(secure_3k_API_tst_app_path_name) "$G(HEXPATH)/$FAMWSUFF/key3k_secure_blinky_${FAMWSUFF}_tstapi.hex"
set G(secure_4k_API_tst_app_path_name) "$G(HEXPATH)/$FAMWSUFF/key4k_secure_blinky_${FAMWSUFF}_tstapi.hex"

set G(fb_already_programmed) 		0
set G(fb_already_converted_to_normal) 	0
