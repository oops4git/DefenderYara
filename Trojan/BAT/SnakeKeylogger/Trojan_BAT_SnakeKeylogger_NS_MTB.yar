
rule Trojan_BAT_SnakeKeylogger_NS_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.NS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {01 00 00 34 01 00 00 1e 03 00 00 33 00 00 00 0d 00 00 00 b7 00 00 00 64 01 00 00 0d 00 00 00 10 00 00 00 01 00 } //1
		$a_01_1 = {57 15 a2 0b 09 1f 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 9a 00 00 00 15 00 00 00 c4 00 00 00 5f 03 00 00 12 } //1
		$a_01_2 = {42 75 67 54 72 61 63 6b 65 72 46 69 6e 61 6c 50 72 6f 6a 65 63 74 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 } //1 BugTrackerFinalProject.Resources.resource
		$a_01_3 = {07 00 00 00 05 00 00 00 05 00 00 00 05 00 00 00 0f 00 00 00 02 00 00 00 00 00 01 } //1
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //1 FromBase64CharArray
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}