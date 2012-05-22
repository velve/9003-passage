8b,dPPYba,   ,adPPYYba,  ,adPPYba,  ,adPPYba,  ,adPPYYba,   ,adPPYb,d8   ,adPPYba,  
88P'    "8a  ""     `Y8  I8[    ""  I8[    ""  ""     `Y8  a8"    `Y88  a8P_____88  
88       d8  ,adPPPPP88   `"Y8ba,    `"Y8ba,   ,adPPPPP88  8b       88  8PP"""""""  
88b,   ,a8"  88,    ,88  aa    ]8I  aa    ]8I  88,    ,88  "8a,   ,d88  "8b,   ,aa  
88`YbbdP"'   `"8bbdP"Y8  `"YbbdP"'  `"YbbdP"'  `"8bbdP"Y8   `"YbbdP"Y8   `"Ybbd8"'  
88                                                          aa,    ,88              
88                                                           "Y8bbdP"               

								Project and Designed by Velve aka (also know as)
											<Criscione Salvatore>

 This file is encoded with UTF-8.
 Contains no 8======D
 Contains no (.)(.)
 Contains no APPLE
 Contains no EVIL
 
Title: [KERNEL][22 MAY]Passage.void |.v0.1.00 | 2.6.35
About:
	Passage kernel is very optimized kernel for android STOCK XXK* , PLEASE DO NOT CONSIDER ME AND NO WORK FOR ICS, 
	I'M NOT ABLE TO PORTING 3.X KERNEL,IT NEED MODULE DEBUG WITH A EPIC KNOWLEDGE OF THIS THINGS. I'm not.
	
	My philosophy is: battery life, over all, with no performance penality
	
	this is my first public android work.
	
Installation:
	1) Flash PDA-*-GT-I9003.tar with Heimdall
Installation for stupid:
	1) Flash PDA-*-GT-I9003.tar with Odin

Disclaimer:
	I'm not responsible for your cat, dog and device, it's your fault, android has 2 boot: boot.bin normalboot.img:
	boot.bin => Download mode
	normalboot.img => Normal mode ( it's only kernel i will replace )
	
	Flash my zip will ever permits to go download mode also with Flash-problem
	
Details:
Battery=B | Performance=P
	Governor:
		- Lulzactive V2 ( enabled by default ) BBPP [ battery: 2 | performance: 2 ]
		- OndemandX ( porting 3.0 governor ) BPPP [ battery: 1 | performance: 3 ]
		- Performance ( Stupid governor ) PPPP [ battery: 0 | performance: 4 ]
		- Conservative ( High Tweaked and re-writter for our battery life ) BBBB [ battery: 4 | performance: 0 ]
		- InteractiveX ( params tweaked ) BBBP [ battery: 3 | performance: 1 ]
	
	Scheduling IO:
		- No-op
		- Sio
		- CFQ

[code]
	Release v0.1 21 / 05 / 2012
	- Added Lulzactive , OndemandX and InteractiveX Governor
	- Added Lulzactive App Control integrated in ramdisk, if you don't have it already installed , install by default in /data
	- Using TinyRCU Patch from immortality kernel for samsung S Vibrant(src: http://immortality-kernel.googlecode.com/svn/tinyrcu.patch )
	- omap: pm: update omap_pm_set_min_mpu_freq to be complaint with cpufreq 
	( src: http://omapzoom.org/?p=kernel/omap.git;a=commitdiff;h=c47f3723489453a592a840f5e1d302421ee7bacd )
	- omap kernel: fix ptrace slowness 
	( src: http://omapzoom.org/?p=kernel/omap.git;a=blobdiff;f=kernel/signal.c;h=1c8814481a117d5df731465b5a56bbf4738c48c1;hp=2a74fe87c0ddb7c46ede38a542c7e2331a5aa44e;hb=53da1d9456fe7f87a920a78fdbdcf1225d197cb7;hpb=b0dcb4a91ddb79f2e213205cf8d86b467f8559c7 )
	- MIPS: Tracing: Clean up
	( src: http://omapzoom.org/?p=kernel/omap.git;a=blobdiff;f=arch/mips/kernel/ftrace.c;h=40ef34ccb76b48120b5882c897f5837b275c06f7;hp=5970286131dd500a98e61e1d19feb2d8754ba697;hb=2816e325969396af5bd1d5f70c7360074ae1d63c;hpb=d9cdb2f1038143c945fcb1a366aae4fa2998419e )
	- InteractiveX Tweaked up! 
[/code]



=== SECOND POST ===

Stock Voltage:[code]
	/* MPU OPP1 - OPP50 */
	OMAP_OPP_DEF("mpu", true,  300000000,  1025000), 
	/* MPU OPP2 - OPP100 */
	OMAP_OPP_DEF("mpu", true,  600000000,  1200000),   
	/* MPU OPP3 - OPP-Turbo */
	OMAP_OPP_DEF("mpu", true,  800000000,   1330000),
	/* MPU OPP4 - OPP-SB */
	OMAP_OPP_DEF("mpu", true,  1000000000, 1387500),
[/code]
Passage Voltage:[code]
	/* MPU OPP1 - OPP50 */
	OMAP_OPP_DEF("mpu", true,  300000000,  1000000), 
	/* MPU OPP2 - OPP100 */
	OMAP_OPP_DEF("mpu", true,  600000000,  1175000),   
	/* MPU OPP3 - OPP-Turbo */
	OMAP_OPP_DEF("mpu", true,  800000000,  1300000),
	/* MPU OPP4 - OPP-SB */
	OMAP_OPP_DEF("mpu", true,  1000000000, 1350000),
[/code]
