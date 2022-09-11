-- All spells in this list are as of March 2010 patch

ALTER TABLE `spell_list`
    ADD COLUMN IF NOT EXISTS `spell_radius` smallint(3) unsigned NOT NULL DEFAULT 0 AFTER `spell_range`,
    ADD COLUMN IF NOT EXISTS `spell_radius_type` tinyint(1) unsigned NOT NULL DEFAULT 0 AFTER `spell_radius`,
    ADD COLUMN IF NOT EXISTS `spell_cone` smallint(3) unsigned NOT NULL DEFAULT 0 AFTER `spell_radius_type`;

LOCK TABLES `spell_list` WRITE;

REPLACE INTO `spell_list` (`spellid`,`name`,`jobs`,`group`,`family`,`element`,`zonemisc`,`validTargets`,`skill`,`mpCost`,`castTime`,`recastTime`,`message`,`magicBurstMessage`,`animation`,`animationTime`,`AOE`,`base`,`multiplier`,`CE`,`VE`,`requirements`,`spell_range`,`content_tag`) VALUES
    (16,'blindna',0x00000E00000000000000000000000000000000110000,6,4,7,0,91,33,16,3000,10000,0,0,16,2000,4,0,1.00,1,165,4,204,NULL),
    (20,'cursna',0x00001D00000000000000000000000000000000200000,6,4,7,0,91,33,30,3000,10000,0,0,20,2000,4,0,1.00,1,165,4,204,NULL),
    (28,'banish',0x00000500000007000000000000000000000000000000,6,7,7,0,4,32,15,4000,20000,2,252,28,2000,0,14,1.00,0,0,0,204,NULL),
    (29,'banish_ii',0x00001e00000022000000000000000000000000000000,6,7,7,0,4,32,57,2500,21000,2,252,29,2000,0,85,1.00,0,0,0,204,NULL), -- 4.25 cast time in CoP/ToAU era
    (30,'banish_iii',0x00004100000000000000000000000000000000000000,6,7,7,0,4,32,96,3000,45000,2,252,30,2000,0,198,1.50,0,0,0,204,'COP'), -- 5.5 cast time in CoP/ToAU era
    (38,'banishga',0x00000F0000001E000000000000000000000000000000,6,9,7,0,4,32,41,5000,30000,2,252,38,2000,1,50,1.00,0,0,0,204,NULL),
    (39,'banishga_ii',0x00002800000000000000000000000000000000000000,6,9,7,0,4,32,120,5250,31000,2,252,39,2000,1,180,1.00,0,0,0,204,NULL),
    (53,'blink',0x000013001700000000000000000000000000001D0023,6,0,3,0,1,34,20,7000,10000,230,0,53,2000,4,0,1.00,0,165,0,0,NULL),
    (54,'stoneskin',0x00001C002200000000000000000000000000002C0037,6,0,4,0,1,34,29,8000,30000,230,0,54,2000,4,0,1.00,0,165,0,204,NULL),
    (55,'aquaveil',0x00000A000C00000000000000000000000000000D000F,6,0,6,0,1,34,12,6000,10000,230,0,55,2000,4,0,1.00,0,165,0,0,NULL),
    (94,'sacrifice',0x00004100000000000000000000000000000000000000,6,0,7,0,2,33,18,5000,30000,0,0,299,2000,0,0,1.00,1,165,0,204,'WOTG'),
    (95,'esuna',0x00003D00000000000000000000000000000000000000,6,4,7,0,1,33,24,5000,30000,0,0,300,2000,1,0,1.00,1,165,0,0,'WOTG'),
    (96,'auspice',0x00003700000000000000000000000000000000000000,6,0,7,0,1,34,48,3000,10000,230,0,142,2000,1,0,1.00,1,165,0,0,'WOTG'),
    (99,'sandstorm',0x00000000000000000000000000000000000000290000,6,30,4,0,3,34,30,3000,15000,230,0,776,2000,4,0,1.00,1,165,0,204,'WOTG'),
    (108,'regen',0x00001500150000000000000000000000000000120017,6,28,7,0,3,34,15,4000,12000,230,0,108,2000,4,0,1.00,1,165,0,204,NULL),
    (110,'regen_ii',0x00002C004C0000000000000000000000000000250030,6,28,7,0,3,34,36,4500,16000,230,0,139,2000,4,0,1.00,1,165,0,204,NULL),
    (111,'regen_iii',0x000042000000000000000000000000000000003B0046,6,28,7,0,3,34,64,5000,20000,230,0,140,2000,4,0,1.00,1,165,0,204,NULL),
    (113,'rainstorm',0x000000000000000000000000000000000000002A0000,6,31,6,0,3,34,30,3000,15000,230,0,774,2000,4,0,1.00,1,165,0,204,'WOTG'),
    (114,'windstorm',0x000000000000000000000000000000000000002B0000,6,32,3,0,3,34,30,3000,15000,230,0,777,2000,4,0,1.00,1,165,0,204,'WOTG'),
    (115,'firestorm',0x000000000000000000000000000000000000002C0000,6,33,1,0,3,34,30,3000,15000,230,0,773,2000,4,0,1.00,1,165,0,204,'WOTG'),
    (116,'hailstorm',0x000000000000000000000000000000000000002D0000,6,34,2,0,3,34,30,3000,15000,230,0,778,2000,4,0,1.00,1,165,0,204,'WOTG'),
    (117,'thunderstorm',0x000000000000000000000000000000000000002E0000,6,35,5,0,3,34,30,3000,15000,230,0,775,2000,4,0,1.00,1,165,0,204,'WOTG'),
    (118,'voidstorm',0x000000000000000000000000000000000000002F0000,6,36,8,0,3,34,30,3000,15000,230,0,780,2000,4,0,1.00,1,165,0,204,'WOTG'),
    (119,'aurorastorm',0x00000000000000000000000000000000000000300000,6,37,7,0,3,34,30,3000,15000,230,0,779,2000,4,0,1.00,1,165,0,204,'WOTG'),
    (125,'protectra',0x00000700000000000000000000000000000000000000,6,39,7,0,1,34,9,3000,15000,0,0,127,2000,1,0,1.00,1,100,0,0,NULL),
    (126,'protectra_ii',0x00001B00000000000000000000000000000000000000,6,39,7,0,1,34,28,3750,16000,0,0,128,2000,1,0,1.00,1,100,0,0,NULL),
    (127,'protectra_iii',0x00002F00000000000000000000000000000000000000,6,39,7,0,1,34,46,4500,17000,0,0,129,2000,1,0,1.00,1,100,0,0,NULL),
    (128,'protectra_iv',0x00003F00000000000000000000000000000000000000,6,39,7,0,1,34,65,5250,18000,0,0,130,2000,1,0,1.00,1,100,0,0,NULL),
    (129,'protectra_v',0x00004B00000000000000000000000000000000000000,6,39,7,0,1,34,84,10000,20000,0,0,131,2000,1,0,1.00,1,100,1,0,'TOAU'),
    (130,'shellra',0x00001100000000000000000000000000000000000000,6,40,7,0,1,34,18,3000,15000,0,0,132,2000,1,0,1.00,1,100,0,0,NULL),
    (131,'shellra_ii',0x00002500000000000000000000000000000000000000,6,40,7,0,1,34,37,3750,16000,0,0,133,2000,1,0,1.00,1,100,0,0,NULL),
    (132,'shellra_iii',0x00003900000000000000000000000000000000000000,6,40,7,0,1,34,56,4500,17000,0,0,134,2000,1,0,1.00,1,100,0,0,NULL),
    (133,'shellra_iv',0x00004400000000000000000000000000000000000000,6,40,7,0,1,34,75,5250,18000,0,0,135,2000,1,0,1.00,1,100,0,0,NULL),
    (134,'shellra_v',0x00004B00000000000000000000000000000000000000,6,40,7,0,1,34,93,6000,19000,0,0,136,2000,1,0,1.00,1,100,1,0,'TOAU'),
    (144,'fire',0x0000000D130000170000000000000000000000101300,2,42,1,0,4,36,24,2000,10000,2,252,144,2000,0,35,1.00,0,0,0,204,NULL),
    (145,'fire_ii',0x000000263200003C00000000000000000000002A2E00,2,42,1,0,4,36,68,4000,18500,2,252,145,2000,0,133,1.00,0,0,0,204,NULL),
    (146,'fire_iii',0x0000003E4700005800000000000000000000003F4300,2,42,1,0,4,36,113,6000,26500,2,252,146,2000,0,295,1.00,0,0,0,204,NULL),
    (147,'fire_iv',0x00000049560000000000000000000000000000495500,2,42,1,0,4,36,157,8000,34750,2,252,147,2000,0,472,1.00,0,0,2,204,NULL),
    (149,'blizzard',0x000000111800001D0000000000000000000000141800,2,43,2,0,4,36,30,2500,11500,2,252,149,2000,0,46,1.00,0,0,0,204,NULL),
    (150,'blizzard_ii',0x0000002A3700004200000000000000000000002E3200,2,43,2,0,4,36,77,4500,20000,2,252,150,2000,0,155,1.00,0,0,0,204,NULL),
    (151,'blizzard_iii',0x000000404900005C0000000000000000000000424600,2,43,2,0,4,36,120,6250,27750,2,252,151,2000,0,320,1.50,0,0,0,204,NULL),
    (152,'blizzard_iv',0x0000004A5900000000000000000000000000004A5800,2,43,2,0,4,36,164,8250,36000,2,252,152,2000,0,506,2.00,0,0,2,204,NULL),
    (154,'aero',0x000000090E00001100000000000000000000000C0E00,2,44,3,0,4,36,18,2000,9000,2,252,154,2000,0,25,1.00,0,0,0,204,NULL),
    (155,'aero_ii',0x000000222D0000360000000000000000000000262A00,2,44,3,0,4,36,59,3750,17000,2,252,155,2000,0,113,1.00,0,0,0,204,NULL),
    (156,'aero_iii',0x0000003B4500005400000000000000000000003C4000,2,44,3,0,4,36,105,5750,25250,2,252,156,2000,0,265,1.50,0,0,0,204,NULL),
    (157,'aero_iv',0x00000048530000000000000000000000000000485200,2,44,3,0,4,36,150,7500,33250,2,252,157,2000,0,440,2.00,0,0,2,204,NULL),
    (159,'stone',0x00000001040000050000000000000000000000040400,2,45,4,0,4,36,9,1500,6500,2,252,159,2000,0,10,1.00,0,0,0,204,NULL),
    (160,'stone_ii',0x0000001A2300002A00000000000000000000001E2200,2,45,4,0,4,36,43,3000,14500,2,252,160,2000,0,78,1.00,0,0,0,204,NULL),
    (161,'stone_iii',0x000000334100004C0000000000000000000000363A00,2,45,4,0,4,36,92,5250,22500,2,252,161,2000,0,210,1.50,0,0,0,204,NULL),
    (162,'stone_iv',0x000000444D0000000000000000000000000000464C00,2,45,4,0,4,36,138,7000,30750,2,252,162,2000,0,381,2.00,0,0,2,204,NULL),
    (164,'thunder',0x000000151D0000230000000000000000000000181D00,2,46,5,0,4,36,37,3000,13000,2,252,164,2000,0,60,1.00,0,0,0,204,NULL),
    (165,'thunder_ii',0x0000002E3C0000480000000000000000000000333600,2,46,5,0,4,36,86,5000,21000,2,252,165,2000,0,178,1.00,0,0,0,204,NULL),
    (166,'thunder_iii',0x000000424B0000600000000000000000000000454900,2,46,5,0,4,36,128,6750,29250,2,252,166,2000,0,345,1.50,0,0,0,204,NULL),
    (167,'thunder_iv',0x0000004B5C00000000000000000000000000004B5B00,2,46,5,0,4,36,171,8500,37250,2,252,167,2000,0,541,2.00,0,0,2,204,NULL),
    (169,'water',0x000000050900000B0000000000000000000000080900,2,47,6,0,4,36,13,2000,8000,2,252,169,2000,0,16,1.00,0,0,0,204,NULL),
    (170,'water_ii',0x0000001E280000300000000000000000000000222600,2,47,6,0,4,36,51,3500,15750,2,252,170,2000,0,95,1.00,0,0,0,204,NULL),
    (171,'water_iii',0x00000037430000500000000000000000000000393D00,2,47,6,0,4,36,98,5500,24000,2,252,171,2000,0,236,1.50,0,0,0,204,NULL),
    (172,'water_iv',0x00000046500000000000000000000000000000474F00,2,47,6,0,4,36,144,7250,36000,2,252,172,2000,0,410,2.00,0,0,2,204,NULL),
    (174,'firaga',0x0000001C000000000000000000000000000000000000,2,48,1,0,4,36,71,3500,15250,2,252,174,2000,1,120,1.00,0,0,0,204,NULL),
    (175,'firaga_ii',0x00000035000000000000000000000000000000000000,2,48,1,0,4,36,158,5250,23250,2,252,175,2000,1,312,1.00,0,0,0,204,NULL),
    (176,'firaga_iii',0x00000045000000000000000000000000000000000000,2,48,1,0,4,36,277,7250,31500,2,252,176,2000,1,589,1.50,0,0,0,204,NULL),
    (179,'blizzaga',0x00000020000000000000000000000000000000000000,2,49,2,0,4,36,82,4000,16500,2,252,179,2000,1,145,1.00,0,0,0,204,NULL),
    (180,'blizzaga_ii',0x00000039000000000000000000000000000000000000,2,49,2,0,4,36,175,5500,24500,2,252,180,2000,1,350,1.00,0,0,0,204,NULL),
    (181,'blizzaga_iii',0x00000047000000000000000000000000000000000000,2,49,2,0,4,36,299,7500,32750,2,252,181,2000,1,642,1.50,0,0,0,204,NULL),
    (184,'aeroga',0x00000017000000000000000000000000000000000000,2,50,3,0,4,36,57,3000,13500,2,252,184,2000,1,93,1.00,0,0,0,204,NULL),
    (185,'aeroga_ii',0x00000030000000000000000000000000000000000000,2,50,3,0,4,36,138,5000,21750,2,252,185,2000,1,266,1.00,0,0,0,204,NULL),
    (186,'aeroga_iii',0x00000043000000000000000000000000000000000000,2,50,3,0,4,36,252,6750,29750,2,252,186,2000,1,527,1.50,0,0,0,204,NULL),
    (189,'stonega',0x0000000F000000000000000000000000000000000000,2,51,4,0,4,36,37,2500,11000,2,252,189,2000,1,56,1.00,0,0,0,204,NULL),
    (190,'stonega_ii',0x00000028000000000000000000000000000000000000,2,51,4,0,4,36,109,4250,19000,2,252,190,2000,1,201,1.00,0,0,0,204,NULL),
    (191,'stonega_iii',0x0000003F000000000000000000000000000000000000,2,51,4,0,4,36,211,6250,27250,2,252,191,2000,1,434,1.50,0,0,0,204,NULL),
    (194,'thundaga',0x00000024000000000000000000000000000000000000,2,52,5,0,4,36,95,4000,18000,2,252,194,2000,1,172,1.00,0,0,0,204,NULL),
    (195,'thundaga_ii',0x0000003D000000000000000000000000000000000000,2,52,5,0,4,36,193,6000,26000,2,252,195,2000,1,392,1.00,0,0,0,204,NULL),
    (196,'thundaga_iii',0x00000049000000000000000000000000000000000000,2,52,5,0,4,36,322,7750,34000,2,252,196,2000,1,697,1.50,0,0,0,204,NULL),
    (199,'waterga',0x00000013000000000000000000000000000000000000,2,53,6,0,4,36,47,2750,12250,2,252,199,2000,1,74,1.00,0,0,0,204,NULL),
    (200,'waterga_ii',0x0000002C000000000000000000000000000000000000,2,53,6,0,4,36,123,4500,20250,2,252,200,2000,1,232,1.00,0,0,0,204,NULL),
    (201,'waterga_iii',0x00000041000000000000000000000000000000000000,2,53,6,0,4,36,231,6500,28500,2,252,201,2000,1,480,1.50,0,0,0,204,NULL),
    (204,'flare',0x0000003C000000000000000000000000000000000000,2,54,1,0,4,36,383,19000,44500,2,252,204,2000,0,657,2.00,0,0,0,204,NULL),
    (205,'flare_ii',0x0000004B000000000000000000000000000000000000,2,54,1,0,4,36,287,10000,90000,2,252,205,2000,0,710,2.00,0,0,1,204,'TOAU'),
    (206,'freeze',0x00000032000000000000000000000000000000000000,2,55,2,0,4,36,307,17750,41500,2,252,206,2000,0,526,2.00,0,0,0,204,NULL),
    (207,'freeze_ii',0x0000004B000000000000000000000000000000000000,2,55,2,0,4,36,287,10000,90000,2,252,207,2000,0,710,2.00,0,0,0,204,'TOAU'),
    (208,'tornado',0x00000034000000000000000000000000000000000000,2,56,3,0,4,36,322,18000,42250,2,252,208,2000,0,552,2.00,0,0,0,204,NULL),
    (209,'tornado_ii',0x0000004B000000000000000000000000000000000000,2,56,3,0,4,36,287,10000,90000,2,252,209,2000,0,710,2.00,0,0,0,204,'TOAU'),
    (210,'quake',0x00000036000000000000000000000000000000000000,2,57,4,0,4,36,337,18250,42750,2,252,210,2000,0,577,2.00,0,0,0,204,NULL),
    (211,'quake_ii',0x0000004B000000000000000000000000000000000000,2,57,4,0,4,36,287,10000,90000,2,252,211,2000,0,710,2.00,0,0,0,204,'TOAU'),
    (212,'burst',0x00000038000000000000000000000000000000000000,2,58,5,0,4,36,352,18500,43250,2,252,212,2000,0,603,2.00,0,0,0,204,NULL),
    (213,'burst_ii',0x0000004B000000000000000000000000000000000000,2,58,5,0,4,36,287,10000,90000,2,252,213,2000,0,710,2.00,0,0,0,204,'TOAU'),
    (214,'flood',0x0000003A000000000000000000000000000000000000,2,59,6,0,4,36,368,18750,43750,2,252,214,2000,0,630,2.00,0,0,0,204,NULL),
    (215,'flood_ii',0x0000004B000000000000000000000000000000000000,2,59,6,0,4,36,287,10000,90000,2,252,215,2000,0,710,2.00,0,0,0,204,'TOAU'),
    (288,'fire_spirit',0x00000000000000000000000000000100000000000000,5,85,1,128,1,38,10,1000,10000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (289,'ice_spirit',0x00000000000000000000000000000100000000000000,5,85,2,128,1,38,10,1000,10000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (290,'air_spirit',0x00000000000000000000000000000100000000000000,5,85,3,128,1,38,10,1000,10000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (291,'earth_spirit',0x00000000000000000000000000000100000000000000,5,85,4,128,1,38,10,1000,10000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (292,'thunder_spirit',0x00000000000000000000000000000100000000000000,5,85,5,128,1,38,10,1000,10000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (293,'water_spirit',0x00000000000000000000000000000100000000000000,5,85,6,128,1,38,10,1000,10000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (294,'light_spirit',0x00000000000000000000000000000100000000000000,5,85,7,128,1,38,10,1000,10000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (295,'dark_spirit',0x00000000000000000000000000000100000000000000,5,85,8,128,1,38,10,1000,10000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (296,'carbuncle',0x00000000000000000000000000000100000000000000,5,86,7,128,1,38,5,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (297,'fenrir',0x00000000000000000000000000000100000000000000,5,86,8,128,1,38,15,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (298,'ifrit',0x00000000000000000000000000000100000000000000,5,86,1,128,1,38,7,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (299,'titan',0x00000000000000000000000000000100000000000000,5,86,4,128,1,38,7,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (300,'leviathan',0x00000000000000000000000000000100000000000000,5,86,6,128,1,38,7,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (301,'garuda',0x00000000000000000000000000000100000000000000,5,86,3,128,1,38,7,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (302,'shiva',0x00000000000000000000000000000100000000000000,5,86,2,128,1,38,7,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (303,'ramuh',0x00000000000000000000000000000100000000000000,5,86,5,128,1,38,7,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,NULL),
    (304,'diabolos',0x00000000000000000000000000000100000000000000,5,86,8,128,1,38,15,5000,30000,0,0,288,2000,0,0,1.00,50,165,0,0,'COP'),
    (318,'monomi_ichi',0x00000000000000000000000019000000000000000000,4,0,3,0,1,39,2553,4000,30000,0,0,356,2000,0,10,1.00,20,100,0,0,'WOTG'),
    (353,'tonko_ichi',0x00000000000000000000000009000000000000000000,4,101,3,0,1,39,1194,4000,30000,0,0,353,2000,0,10,1.00,1,0,0,0,NULL);

UNLOCK TABLES;