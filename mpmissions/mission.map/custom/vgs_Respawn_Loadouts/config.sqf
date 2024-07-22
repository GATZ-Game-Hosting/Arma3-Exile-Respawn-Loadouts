/*
VGS Respawn Loadouts
By Crito @Vanaheim Gaming Servers
https://discord.gg/WEFzqPa
v1.0 10/18/2023
*/

vgsLoadoutRep = true;	//Want to require respect for each item just like it would if bought from trader than set this to true.
						//items unlock as player reaches the required respect lvl.
						//respect for each item is pulled from trader files.

vgsLoadoutTabs = true; //Want to charge player for each item they put into a loadout set this to true.	
						//player is not charged for cost of loadout until the spawn button is clicked.
						//prices for each item is calculated form trader files pricing list.

//list of class names for primary weapons to display. Handguns will not work since they are secondary weapons.
respawnPrimaryWpn = [
						"arifle_Katiba_F",
						"arifle_Katiba_C_F",
						"arifle_Katiba_GL_F",
						"arifle_Mk20_F",
						"arifle_Mk20_plain_F",
						"arifle_Mk20C_F",
						"arifle_Mk20C_plain_F",
						"arifle_Mk20_GL_F",
						"arifle_Mk20_GL_plain_F",
						"arifle_MXC_F",
						"arifle_MX_F",
						"arifle_MX_GL_F",
						"arifle_MXM_F",
						"arifle_MXC_Black_F",
						"arifle_MX_Black_F",
						"arifle_MX_GL_Black_F",
						"arifle_MXM_Black_F",
						"arifle_SDAR_F",
						"arifle_TRG21_F",
						"arifle_TRG20_F",
						"arifle_TRG21_GL_F",
						"arifle_MX_khk_F",
						"arifle_MX_GL_khk_F",
						"arifle_MXC_khk_F",
						"arifle_MXM_khk_F",
						"arifle_AK12_F",
						"arifle_AK12_GL_F",
						"arifle_AKM_F",
						"arifle_AKS_F",
						"arifle_ARX_blk_F",
						"arifle_ARX_ghex_F",
						"arifle_ARX_hex_F",
						"arifle_CTAR_blk_F",
						"arifle_CTAR_hex_F",
						"arifle_CTAR_ghex_F",
						"arifle_CTAR_GL_blk_F",
						"arifle_CTAR_GL_hex_F",
						"arifle_CTAR_GL_ghex_F",
						"arifle_CTARS_blk_F",
						"arifle_CTARS_hex_F",
						"arifle_CTARS_ghex_F",
						"arifle_SPAR_01_blk_F",
						"arifle_SPAR_01_khk_F",
						"arifle_SPAR_01_snd_F",
						"arifle_SPAR_01_GL_blk_F",
						"arifle_SPAR_01_GL_khk_F",
						"arifle_SPAR_01_GL_snd_F",
						"arifle_AK12_lush_F",
						"arifle_AK12_arid_F",
						"arifle_AK12_GL_lush_F",
						"arifle_AK12_GL_arid_F",
						"arifle_RPK12_F",
						"arifle_RPK12_lush_F",
						"arifle_RPK12_arid_F",
						"arifle_AK12U_F",
						"arifle_AK12U_lush_F",
						"arifle_AK12U_arid_F",
						"arifle_MSBS65_F",
						"arifle_MSBS65_Mark_F",
						"arifle_MSBS65_GL_F",
						"arifle_MSBS65_UBS_F",
						"arifle_MSBS65_black_F",
						"arifle_MSBS65_Mark_black_F",
						"arifle_MSBS65_GL_black_F",
						"arifle_MSBS65_UBS_black_F",
						"arifle_MSBS65_sand_F",
						"arifle_MSBS65_Mark_sand_F",
						"arifle_MSBS65_GL_sand_F",
						"arifle_MSBS65_UBS_sand_F",
						"arifle_MSBS65_camo_F",
						"arifle_MSBS65_Mark_camo_F",
						"arifle_MSBS65_GL_camo_F",
						"arifle_MSBS65_UBS_camo_F",
						"SMG_01_F",
						"SMG_02_F",
						"SMG_03_TR_black",
						"SMG_03_TR_camo",
						"SMG_03_TR_khaki",
						"SMG_03_TR_hex",
						"SMG_03C_TR_black",
						"SMG_03C_TR_camo",
						"SMG_03C_TR_khaki",
						"SMG_03C_TR_hex",
						"SMG_03_black",
						"SMG_03_camo",
						"SMG_03_khaki",
						"SMG_03_hex",
						"SMG_03C_black",
						"SMG_03C_camo",
						"SMG_03C_khaki",
						"SMG_03C_hex",
						"SMG_05_F",
						"LMG_Mk200_F",
						"LMG_Zafir_F",
						"LMG_03_F",
						"LMG_Mk200_black_F",
						"srifle_DMR_01_F",
						"srifle_EBR_F",
						"srifle_GM6_F",
						"srifle_GM6_camo_F",
						"srifle_LRR_F",
						"srifle_LRR_camo_F",
						"srifle_DMR_02_F",
						"srifle_DMR_02_camo_F",
						"srifle_DMR_02_sniper_F",
						"srifle_DMR_03_F",
						"srifle_DMR_03_khaki_F",
						"srifle_DMR_03_tan_F",
						"srifle_DMR_03_multicam_F",
						"srifle_DMR_03_woodland_F",
						"srifle_DMR_04_F",
						"srifle_DMR_04_Tan_F",
						"srifle_DMR_05_blk_F",
						"srifle_DMR_05_hex_F",
						"srifle_DMR_05_tan_f",
						"srifle_DMR_06_camo_F",
						"srifle_DMR_06_olive_F",
						"srifle_LRR_tna_F",
						"srifle_GM6_ghex_F",
						"srifle_DMR_07_blk_F",
						"srifle_DMR_07_hex_F",
						"srifle_DMR_07_ghex_F",
						"arifle_SPAR_03_blk_F",
						"arifle_SPAR_03_khk_F",
						"arifle_SPAR_03_snd_F",
						"srifle_DMR_06_hunter_F"
					];

//list of class names for possible primary weapon optics to display. when gun is selected only optics that work for that particular gun will show.				
respawnSights = [
					"optic_Arco",
					"optic_Hamr",
					"optic_Aco",
					"optic_ACO_grn",
					"optic_Aco_smg",
					"optic_ACO_grn_smg",
					"optic_Holosight",
					"optic_Holosight_smg",
					"optic_SOS",
					"optic_MRCO",
					"optic_DMS",
					"optic_Yorris",
					"optic_MRD",
					"optic_LRPS",
					"optic_AMS",
					"optic_AMS_khk",
					"optic_AMS_snd",
					"optic_KHS_blk",
					"optic_KHS_hex",
					"optic_KHS_old",
					"optic_KHS_tan",
					"optic_Arco_blk_F",
					"optic_Arco_ghex_F",
					"optic_DMS_ghex_F",
					"optic_Hamr_khk_F",
					"optic_ERCO_blk_F",
					"optic_ERCO_khk_F",
					"optic_ERCO_snd_F",
					"optic_SOS_khk_F",
					"optic_LRPS_tna_F",
					"optic_LRPS_ghex_F",
					"optic_Holosight_blk_F",
					"optic_Holosight_khk_F",
					"optic_Holosight_smg_blk_F",
					"optic_Holosight_smg_khk_F",
					"optic_ico_01_f",
					"optic_ico_01_black_f",
					"optic_ico_01_sand_f",
					"optic_ico_01_camo_f",
					"optic_Holosight_lush_F",
					"optic_Holosight_arid_F",
					"optic_Arco_lush_F",
					"optic_Arco_arid_F",
					"optic_Arco_AK_blk_F",
					"optic_Arco_AK_lush_F",
					"optic_Arco_AK_arid_F",
					"optic_DMS_weathered_F",
					"optic_DMS_weathered_Kir_F",
					"optic_MRD_black"
				];
				
//list of class names for uniforms to show			
respawnUniforms = 	[
						"U_C_Poloshirt_blue",
						"U_C_Poloshirt_burgundy",
						"U_C_Poloshirt_stripped",
						"U_C_Poloshirt_tricolour",
						"U_C_Poloshirt_salmon",
						"U_C_Poloshirt_redwhite",
						"U_Rangemaster",
						"U_NikosBody",
						"U_OrestesBody",
						"U_I_CombatUniform",
						"U_I_CombatUniform_tshirt",
						"U_I_CombatUniform_shortsleeve",
						"U_I_pilotCoveralls",
						"U_I_HeliPilotCoveralls",
						"U_I_GhillieSuit",
						"U_I_OfficerUniform",
						"U_I_Wetsuit",
						"U_Competitor",
						"U_MillerBody",
						"U_KerryBody",
						"U_IG_Guerilla1_1",
						"U_IG_Guerilla2_1",
						"U_IG_Guerilla2_2",
						"U_IG_Guerilla2_3",
						"U_IG_Guerilla3_1",
						"U_IG_Guerilla3_2",
						"U_C_Poor_1",
						"U_C_Poor_2",
						"U_C_Commoner2_1",
						"U_C_Commoner2_2",
						"U_C_Commoner2_3",
						"U_C_Poor_shorts_1",
						"U_C_Poor_shorts_2",
						"U_C_Commoner_shorts",
						"U_C_ShirtSurfer_shorts",
						"U_C_TeeSurfer_shorts_1",
						"U_C_TeeSurfer_shorts_2",
						"U_I_G_Story_Protagonist_F",
						"U_I_G_resistanceLeader_F",
						"U_C_Journalist",
						"U_NikosAgedBody",
						"U_IG_Guerrilla_6_1",
						"U_C_Driver_1",
						"U_C_Driver_2",
						"U_C_Driver_3",
						"U_C_Driver_4",
						"U_Marshal",
						"U_C_Driver_1_black",
						"U_C_Driver_1_blue",
						"U_C_Driver_1_green",
						"U_C_Driver_1_red",
						"U_C_Driver_1_white",
						"U_C_Driver_1_yellow",
						"U_C_Driver_1_orange",
						"U_I_FullGhillie_lsh",
						"U_I_FullGhillie_sard",
						"U_I_FullGhillie_ard",
						"U_I_C_Soldier_Para_1_F",
						"U_I_C_Soldier_Para_2_F",
						"U_I_C_Soldier_Para_3_F",
						"U_I_C_Soldier_Para_4_F",
						"U_I_C_Soldier_Para_5_F",
						"U_I_C_Soldier_Bandit_1_F",
						"U_I_C_Soldier_Bandit_2_F",
						"U_I_C_Soldier_Bandit_3_F",
						"U_I_C_Soldier_Bandit_4_F",
						"U_I_C_Soldier_Bandit_5_F",
						"U_I_C_Soldier_Camo_F",
						"U_C_man_sport_1_F",
						"U_C_man_sport_2_F",
						"U_C_man_sport_3_F",
						"U_C_Man_casual_1_F",
						"U_C_Man_casual_2_F",
						"U_C_Man_casual_3_F",
						"U_C_Man_casual_4_F",
						"U_C_Man_casual_5_F",
						"U_C_Man_casual_6_F",
						"U_C_IDAP_Man_shorts_F",
						"U_C_IDAP_Man_casual_F",
						"U_C_IDAP_Man_cargo_F",
						"U_C_IDAP_Man_Tee_F",
						"U_C_IDAP_Man_Jeans_F",
						"U_C_IDAP_Man_TeeShorts_F",
						"U_C_Paramedic_01_F",
						"U_C_Mechanic_01_F",
						"U_C_ConstructionCoverall_Red_F",
						"U_C_ConstructionCoverall_Vrana_F",
						"U_C_ConstructionCoverall_Black_F",
						"U_C_ConstructionCoverall_Blue_F",
						"U_Tank_green_F",
						"U_I_E_Uniform_01_F",
						"U_I_E_Uniform_01_tanktop_F",
						"U_I_E_Uniform_01_shortsleeve_F",
						"U_I_E_Uniform_01_officer_F",
						"U_I_E_Uniform_01_coveralls_F",
						"U_I_E_Uniform_01_sweater_F",
						"U_C_Uniform_Farmer_01_F",
						"U_C_E_LooterJacket_01_F",
						"U_C_Uniform_Scientist_01_F",
						"U_C_Uniform_Scientist_01_formal_F",
						"U_C_Uniform_Scientist_02_F",
						"U_C_Uniform_Scientist_02_formal_F",
						"U_I_L_Uniform_01_camo_F",
						"U_I_L_Uniform_01_deserter_F",
						"U_I_L_Uniform_01_tshirt_skull_F",
						"U_I_L_Uniform_01_tshirt_black_F",
						"U_I_L_Uniform_01_tshirt_sport_F",
						"U_I_L_Uniform_01_tshirt_olive_F",
						"U_C_Poor_2_sick",
						"U_C_Poloshirt_blue_sick",
						"U_C_Poloshirt_burgundy_sick",
						"U_C_Poloshirt_stripped_sick",
						"U_C_Poloshirt_redwhite_sick",
						"U_C_man_sport_2_sick_F",
						"U_C_Man_casual_1_sick_F",
						"U_C_Man_casual_2_sick_F",
						"U_C_Man_casual_3_sick_F",
						"U_C_Man_casual_4_sick_F",
						"U_C_Man_casual_5_sick_F",
						"U_C_Man_casual_6_sick_F",
						"U_C_ArtTShirt_01_v1_F",
						"U_C_ArtTShirt_01_v2_F",
						"U_C_ArtTShirt_01_v3_F",
						"U_C_ArtTShirt_01_v4_F",
						"U_C_ArtTShirt_01_v5_F",
						"U_C_ArtTShirt_01_v6_F",
						"U_C_FormalSuit_01_black_F",
						"U_C_FormalSuit_01_gray_F",
						"U_C_FormalSuit_01_blue_F",
						"U_C_FormalSuit_01_khaki_F",
						"U_C_FormalSuit_01_tshirt_black_F",
						"U_C_FormalSuit_01_tshirt_gray_F",
						"U_I_ParadeUniform_01_AAF_F",
						"U_I_ParadeUniform_01_AAF_decorated_F",
						"U_I_E_ParadeUniform_01_LDF_F",
						"U_I_E_ParadeUniform_01_LDF_decorated_F"
					];
					
//list of class names for vest to show								
respawnVest =	[
					"V_Rangemaster_belt",
					"V_BandollierB_khk",
					"V_BandollierB_cbr",
					"V_BandollierB_rgr",
					"V_BandollierB_blk",
					"V_BandollierB_oli",
					"V_PlateCarrier1_rgr",
					"V_PlateCarrier2_rgr",
					"V_PlateCarrier2_blk",
					"V_PlateCarrier3_rgr",
					"V_PlateCarrierGL_rgr",
					"V_PlateCarrierGL_blk",
					"V_PlateCarrierGL_mtp",
					"V_PlateCarrier1_blk",
					"V_PlateCarrierSpec_rgr",
					"V_PlateCarrierSpec_blk",
					"V_PlateCarrierSpec_mtp",
					"V_Chestrig_khk",
					"V_Chestrig_rgr",
					"V_Chestrig_blk",
					"V_Chestrig_oli",
					"V_TacVest_khk",
					"V_TacVest_brn",
					"V_TacVest_oli",
					"V_TacVest_blk",
					"V_TacVest_camo",
					"V_TacVest_blk_POLICE",
					"V_TacVestIR_blk",
					"V_TacVestCamo_khk",
					"V_HarnessO_brn",
					"V_HarnessOGL_brn",
					"V_HarnessO_gry",
					"V_HarnessOGL_gry",
					"V_HarnessOSpec_brn",
					"V_HarnessOSpec_gry",
					"V_PlateCarrierIA1_dgtl",
					"V_PlateCarrierIA2_dgtl",
					"V_PlateCarrierIAGL_dgtl",
					"V_PlateCarrierIAGL_oli",
					"V_RebreatherB",
					"V_RebreatherIR",
					"V_RebreatherIA",
					"V_PlateCarrier_Kerry",
					"V_PlateCarrierL_CTRG",
					"V_PlateCarrierH_CTRG",
					"V_I_G_resistanceLeader_F",
					"V_Press_F",
					"V_TacChestrig_grn_F",
					"V_TacChestrig_oli_F",
					"V_TacChestrig_cbr_F",
					"V_PlateCarrier1_tna_F",
					"V_PlateCarrier2_tna_F",
					"V_PlateCarrierSpec_tna_F",
					"V_PlateCarrierGL_tna_F",
					"V_HarnessO_ghex_F",
					"V_HarnessOGL_ghex_F",
					"V_BandollierB_ghex_F",
					"V_TacVest_gen_F",
					"V_PlateCarrier1_rgr_noflag_F",
					"V_PlateCarrier2_rgr_noflag_F",
					"V_DeckCrew_yellow_F",
					"V_DeckCrew_blue_F",
					"V_DeckCrew_green_F",
					"V_DeckCrew_red_F",
					"V_DeckCrew_white_F",
					"V_DeckCrew_brown_F",
					"V_DeckCrew_violet_F",
					"V_Plain_medical_F",
					"V_Plain_crystal_F",
					"V_Pocketed_olive_F",
					"V_Pocketed_coyote_F",
					"V_Pocketed_black_F",
					"V_Safety_yellow_F",
					"V_Safety_orange_F",
					"V_Safety_blue_F",
					"V_LegStrapBag_black_F",
					"V_LegStrapBag_coyote_F",
					"V_LegStrapBag_olive_F",
					"V_EOD_blue_F",
					"V_EOD_olive_F",
					"V_EOD_coyote_F",
					"V_EOD_IDAP_blue_F",
					"V_CarrierRigKBT_01_EAF_F",
					"V_CarrierRigKBT_01_light_EAF_F",
					"V_CarrierRigKBT_01_heavy_EAF_F",
					"V_CarrierRigKBT_01_Olive_F",
					"V_CarrierRigKBT_01_light_Olive_F",
					"V_CarrierRigKBT_01_heavy_Olive_F",
					"V_SmershVest_01_F",
					"V_SmershVest_01_radio_F",
					"V_PlateCarrier1_wdl",
					"V_PlateCarrier2_wdl",
					"V_PlateCarrierGL_wdl",
					"V_PlateCarrierSpec_wdl"
				];
				
//list of class names for backpacks to show							
respawnBackPacks =	[
						"B_Parachute",
						"B_AssaultPack_khk",
						"B_AssaultPack_dgtl",
						"B_AssaultPack_rgr",
						"B_AssaultPack_sgg",
						"B_AssaultPack_blk",
						"B_AssaultPack_cbr",
						"B_AssaultPack_mcamo",
						"B_AssaultPack_ocamo",
						"B_Kitbag_rgr",
						"B_Kitbag_mcamo",
						"B_Kitbag_sgg",
						"B_Kitbag_cbr",
						"B_Kitbag_tan",
						"B_TacticalPack_rgr",
						"B_TacticalPack_mcamo",
						"B_TacticalPack_ocamo",
						"B_TacticalPack_blk",
						"B_TacticalPack_oli",
						"B_FieldPack_khk",
						"B_FieldPack_ocamo",
						"B_FieldPack_oucamo",
						"B_FieldPack_cbr",
						"B_FieldPack_blk",
						"B_Carryall_ocamo",
						"B_Carryall_oucamo",
						"B_Carryall_mcamo",
						"B_Carryall_khk",
						"B_Carryall_cbr",
						"B_Carryall_blk",
						"B_Bergen_sgg",
						"B_Bergen_mcamo",
						"B_Bergen_rgr",
						"B_Bergen_blk",
						"B_OutdoorPack_blk",
						"B_OutdoorPack_tan",
						"B_OutdoorPack_blu",
						"B_HuntingBackpack",
						"B_AssaultPackG",
						"B_BergenG",
						"B_BergenC_red",
						"B_BergenC_grn",
						"B_BergenC_blu",
						"B_FieldPack_oli",
						"B_Carryall_oli",
						"G_AssaultPack",
						"G_Bergen",
						"C_Bergen_red",
						"C_Bergen_grn",
						"C_Bergen_blu",
						"B_AssaultPack_Kerry",
						"B_Bergen_mcamo_F",
						"B_Bergen_dgtl_F",
						"B_Bergen_hex_F",
						"B_Bergen_tna_F",
						"B_AssaultPack_tna_F",
						"B_Carryall_ghex_F",
						"B_FieldPack_ghex_F",
						"B_ViperHarness_blk_F",
						"B_ViperHarness_ghex_F",
						"B_ViperHarness_hex_F",
						"B_ViperHarness_khk_F",
						"B_ViperHarness_oli_F",
						"B_ViperLightHarness_blk_F",
						"B_ViperLightHarness_ghex_F",
						"B_ViperLightHarness_hex_F",
						"B_ViperLightHarness_khk_F",
						"B_ViperLightHarness_oli_F",
						"B_Messenger_Coyote_F",
						"B_Messenger_Olive_F",
						"B_Messenger_Black_F",
						"B_Messenger_Gray_F",
						"B_Messenger_IDAP_F",
						"B_LegStrapBag_black_F",
						"B_LegStrapBag_coyote_F",
						"B_LegStrapBag_olive_F",
						"B_CombinationUnitRespirator_01_F",
						"B_RadioBag_01_wdl_F",
						"B_RadioBag_01_mtp_F",
						"B_RadioBag_01_tropic_F",
						"B_RadioBag_01_black_F",
						"B_RadioBag_01_hex_F",
						"B_RadioBag_01_oucamo_F",
						"B_RadioBag_01_ghex_F",
						"B_RadioBag_01_digi_F",
						"B_RadioBag_01_eaf_F",
						"B_Carryall_green_F",
						"B_Carryall_taiga_F",
						"B_Carryall_wdl_F",
						"B_Carryall_eaf_F",
						"B_FieldPack_green_F",
						"B_FieldPack_taiga_F",
						"B_AssaultPack_wdl_F",
						"B_AssaultPack_eaf_F",
						"B_CivilianBackpack_01_Sport_Blue_F",
						"B_CivilianBackpack_01_Sport_Red_F",
						"B_CivilianBackpack_01_Sport_Green_F",
						"B_CivilianBackpack_01_Everyday_Black_F",
						"B_CivilianBackpack_01_Everyday_Vrana_F",
						"B_CivilianBackpack_01_Everyday_Astra_F",
						"B_CivilianBackpack_01_Everyday_IDAP_F"
					];

//list of class names for helmets and hats to show. Glasses and nightvision goggles will not work							
respawnHeadGear =	[
						"H_HelmetB",
						"H_HelmetB_camo",
						"H_HelmetB_paint",
						"H_HelmetB_light",
						"H_Booniehat_khk",
						"H_Booniehat_oli",
						"H_Booniehat_indp",
						"H_Booniehat_mcamo",
						"H_Booniehat_grn",
						"H_Booniehat_tan",
						"H_Booniehat_dirty",
						"H_Booniehat_dgtl",
						"H_Booniehat_khk_hs",
						"H_HelmetB_plain_mcamo",
						"H_HelmetB_plain_blk",
						"H_HelmetSpecB",
						"H_HelmetSpecB_paint1",
						"H_HelmetSpecB_paint2",
						"H_HelmetSpecB_blk",
						"H_HelmetSpecB_snakeskin",
						"H_HelmetSpecB_sand",
						"H_HelmetIA",
						"H_HelmetIA_net",
						"H_HelmetIA_camo",
						"H_Helmet_Kerry",
						"H_HelmetB_grass",
						"H_HelmetB_snakeskin",
						"H_HelmetB_desert",
						"H_HelmetB_black",
						"H_HelmetB_sand",
						"H_Cap_red",
						"H_Cap_blu",
						"H_Cap_oli",
						"H_Cap_headphones",
						"H_Cap_tan",
						"H_Cap_blk",
						"H_Cap_blk_CMMG",
						"H_Cap_brn_SPECOPS",
						"H_Cap_tan_specops_US",
						"H_Cap_khaki_specops_UK",
						"H_Cap_grn",
						"H_Cap_grn_BI",
						"H_Cap_blk_Raven",
						"H_Cap_blk_ION",
						"H_Cap_oli_hs",
						"H_Cap_press",
						"H_Cap_usblack",
						"H_Cap_surfer",
						"H_Cap_police",
						"H_HelmetCrew_B",
						"H_HelmetCrew_O",
						"H_HelmetCrew_I",
						"H_PilotHelmetHeli_B",
						"H_PilotHelmetHeli_O",
						"H_PilotHelmetHeli_I",
						"H_CrewHelmetHeli_B",
						"H_CrewHelmetHeli_O",
						"H_CrewHelmetHeli_I",
						"H_HelmetO_ocamo",
						"H_HelmetLeaderO_ocamo",
						"H_MilCap_ocamo",
						"H_MilCap_mcamo",
						"H_MilCap_oucamo",
						"H_MilCap_rucamo",
						"H_MilCap_gry",
						"H_MilCap_dgtl",
						"H_MilCap_blue",
						"H_HelmetB_light_grass",
						"H_HelmetB_light_snakeskin",
						"H_HelmetB_light_desert",
						"H_HelmetB_light_black",
						"H_HelmetB_light_sand",
						"H_BandMask_blk",
						"H_BandMask_khk",
						"H_BandMask_reaper",
						"H_BandMask_demon",
						"H_HelmetO_oucamo",
						"H_HelmetLeaderO_oucamo",
						"H_HelmetSpecO_ocamo",
						"H_HelmetSpecO_blk",
						"H_Bandanna_surfer",
						"H_Bandanna_khk",
						"H_Bandanna_khk_hs",
						"H_Bandanna_cbr",
						"H_Bandanna_sgg",
						"H_Bandanna_sand",
						"H_Bandanna_surfer_blk",
						"H_Bandanna_surfer_grn",
						"H_Bandanna_gry",
						"H_Bandanna_blu",
						"H_Bandanna_camo",
						"H_Bandanna_mcamo",
						"H_Shemag_khk",
						"H_Shemag_tan",
						"H_Shemag_olive",
						"H_Shemag_olive_hs",
						"H_ShemagOpen_khk",
						"H_ShemagOpen_tan",
						"H_Beret_blk",
						"H_Beret_blk_POLICE",
						"H_Beret_red",
						"H_Beret_grn",
						"H_Beret_grn_SF",
						"H_Beret_brn_SF",
						"H_Beret_ocamo",
						"H_Beret_02",
						"H_Beret_Colonel",
						"H_Watchcap_blk",
						"H_Watchcap_cbr",
						"H_Watchcap_khk",
						"H_Watchcap_camo",
						"H_Watchcap_sgg",
						"H_TurbanO_blk",
						"H_StrawHat",
						"H_StrawHat_dark",
						"H_Hat_blue",
						"H_Hat_brown",
						"H_Hat_camo",
						"H_Hat_grey",
						"H_Hat_checker",
						"H_Hat_tan",
						"H_RacingHelmet_1_F",
						"H_RacingHelmet_2_F",
						"H_RacingHelmet_3_F",
						"H_RacingHelmet_4_F",
						"H_RacingHelmet_1_black_F",
						"H_RacingHelmet_1_blue_F",
						"H_RacingHelmet_1_green_F",
						"H_RacingHelmet_1_red_F",
						"H_RacingHelmet_1_white_F",
						"H_RacingHelmet_1_yellow_F",
						"H_RacingHelmet_1_orange_F",
						"H_Cap_marshal",
						"H_Helmet_Skate",
						"H_HelmetB_TI_tna_F",
						"H_HelmetB_TI_arid_F",
						"H_HelmetB_tna_F",
						"H_HelmetB_Enh_tna_F",
						"H_HelmetB_Light_tna_F",
						"H_HelmetSpecO_ghex_F",
						"H_HelmetLeaderO_ghex_F",
						"H_HelmetO_ghex_F",
						"H_HelmetCrew_O_ghex_F",
						"H_MilCap_tna_F",
						"H_MilCap_ghex_F",
						"H_Booniehat_tna_F",
						"H_Beret_gen_F",
						"H_MilCap_gen_F",
						"H_Cap_oli_Syndikat_F",
						"H_Cap_tan_Syndikat_F",
						"H_Cap_blk_Syndikat_F",
						"H_Cap_grn_Syndikat_F",
						"H_Hat_Safari_sand_F",
						"H_Hat_Safari_olive_F",
						"H_Construction_basic_yellow_F",
						"H_Construction_basic_white_F",
						"H_Construction_basic_orange_F",
						"H_Construction_basic_red_F",
						"H_Construction_basic_vrana_F",
						"H_Construction_basic_black_F",
						"H_Construction_earprot_yellow_F",
						"H_Construction_earprot_white_F",
						"H_Construction_earprot_orange_F",
						"H_Construction_earprot_red_F",
						"H_Construction_earprot_vrana_F",
						"H_Construction_earprot_black_F",
						"H_Construction_headset_yellow_F",
						"H_Construction_headset_white_F",
						"H_Construction_headset_orange_F",
						"H_Construction_headset_red_F",
						"H_Construction_headset_vrana_F",
						"H_Construction_headset_black_F",
						"H_EarProtectors_yellow_F",
						"H_EarProtectors_white_F",
						"H_EarProtectors_orange_F",
						"H_EarProtectors_red_F",
						"H_EarProtectors_black_F",
						"H_HeadSet_yellow_F",
						"H_HeadSet_white_F",
						"H_HeadSet_orange_F",
						"H_HeadSet_red_F",
						"H_HeadSet_black_F",
						"H_PASGT_basic_blue_press_F",
						"H_PASGT_basic_blue_F",
						"H_PASGT_basic_white_F",
						"H_PASGT_basic_olive_F",
						"H_PASGT_basic_black_F",
						"H_PASGT_neckprot_blue_press_F",
						"H_HeadBandage_stained_F",
						"H_HeadBandage_clean_F",
						"H_HeadBandage_bloody_F",
						"H_Cap_White_IDAP_F",
						"H_Cap_Orange_IDAP_F",
						"H_Cap_Black_IDAP_F",
						"H_WirelessEarpiece_F",
						"H_Tank_black_F",
						"H_HelmetHBK_F",
						"H_HelmetHBK_headset_F",
						"H_HelmetHBK_ear_F",
						"H_HelmetHBK_chops_F",
						"H_HelmetAggressor_F",
						"H_HelmetAggressor_cover_F",
						"H_HelmetAggressor_cover_taiga_F",
						"H_Beret_EAF_01_F",
						"H_Hat_Tinfoil_F",
						"H_Booniehat_mgrn",
						"H_Booniehat_taiga",
						"H_Booniehat_eaf",
						"H_Booniehat_wdl",
						"H_MilCap_grn",
						"H_MilCap_taiga",
						"H_MilCap_wdl",
						"H_MilCap_eaf",
						"H_HelmetB_plain_wdl",
						"H_HelmetB_light_wdl",
						"H_HelmetSpecB_wdl",
						"H_HelmetCrew_I_E",
						"H_Tank_eaf_F",
						"H_CrewHelmetHeli_I_E",
						"H_Beret_CSAT_01_F",
						"H_ParadeDressCap_01_US_F",
						"H_ParadeDressCap_01_CSAT_F",
						"H_ParadeDressCap_01_AAF_F",
						"H_ParadeDressCap_01_LDF_F"
					];

//list of class names for night vision goggles to show							
respawnNVG = 	[
					"NVGoggles",
					"NVGoggles_INDEP",
					"NVGoggles_OPFOR",
					"NVGoggles_tna_F",
					"O_NVGoggles_ghex_F",
					"O_NVGoggles_hex_F",
					"O_NVGoggles_urb_F"
				];

//list of class names for food to show							
respawnFood =	[
					"Exile_Item_BBQSandwich",
					"Exile_Item_BBQSandwich_Cooked",
					"Exile_Item_BeefParts",
					"Exile_Item_CatFood",
					"Exile_Item_CatFood_Cooked",
					"Exile_Item_Cheathas",
					"Exile_Item_ChristmasTinner",
					"Exile_Item_ChristmasTinner_Cooked",
					"Exile_Item_CockONut",
					"Exile_Item_DogFood",
					"Exile_Item_DogFood_Cooked",
					"Exile_Item_DsNuts",
					"Exile_Item_EMRE",
					"Exile_Item_GloriousKnakworst",
					"Exile_Item_GloriousKnakworst_Cooked",
					"Exile_Item_InstantCoffee",
					"Exile_Item_MacasCheese",
					"Exile_Item_MacasCheese_Cooked",
					"Exile_Item_Moobar",
					"Exile_Item_Noodles",
					"Exile_Item_Raisins",
					"Exile_Item_SausageGravy",
					"Exile_Item_SausageGravy_Cooked",
					"Exile_Item_SeedAstics",
					"Exile_Item_Surstromming",
					"Exile_Item_Surstromming_Cooked",
					"Exile_Item_AlsatianSteak_Raw",
					"Exile_Item_AlsatianSteak_Cooked",
					"Exile_Item_CatSharkFilet_Raw",
					"Exile_Item_CatSharkFilet_Cooked",
					"Exile_Item_ChickenFilet_Raw",
					"Exile_Item_ChickenFilet_Cooked",
					"Exile_Item_FinSteak_Raw",
					"Exile_Item_FinSteak_Cooked",
					"Exile_Item_GoatSteak_Raw",
					"Exile_Item_GoatSteak_Cooked",
					"Exile_Item_MackerelFilet_Raw",
					"Exile_Item_MackerelFilet_Cooked",
					"Exile_Item_MulletFilet_Raw",
					"Exile_Item_MulletFilet_Cooked",
					"Exile_Item_OrnateFilet_Raw",
					"Exile_Item_OrnateFilet_Cooked",
					"Exile_Item_RabbitSteak_Raw",
					"Exile_Item_RabbitSteak_Cooked",
					"Exile_Item_RoosterFilet_Raw",
					"Exile_Item_RoosterFilet_Cooked",
					"Exile_Item_SalemaFilet_Raw",
					"Exile_Item_SalemaFilet_Cooked",
					"Exile_Item_SheepSteak_Raw",
					"Exile_Item_SheepSteak_Cooked",
					"Exile_Item_SnakeFilet_Raw",
					"Exile_Item_SnakeFilet_Cooked",
					"Exile_Item_TunaFilet_Raw",
					"Exile_Item_TunaFilet_Cooked",
					"Exile_Item_TurtleFilet_Raw",
					"Exile_Item_TurtleFilet_Cooked"
				];

//list of class names for Drinks to show					
respawnDrink =	[
					"Exile_Item_Beer",
					"Exile_Item_ChocolateMilk",
					"Exile_Item_EnergyDrink",
					"Exile_Item_MountainDupe",
					"Exile_Item_PlasticBottleCoffee",
					"Exile_Item_PlasticBottleFreshWater",
					"Exile_Item_PowerDrink"
				];

//list of class names for medical items to show							
respawnMedical = 	[
						"Exile_Item_Bandage",
						"Exile_Item_Heatpack",
						"Exile_Item_InstaDoc",
						"Exile_Item_Vishpirin"
					];

//list of class names for any other items that can go into uniform, vest, or backpack, to show								
respawnMisc =	[
					"Keys",
					"ATMine_Range_Mag",
					"APERSMine_Range_Mag",
					"APERSBoundingMine_Range_Mag",
					"SLAMDirectionalMine_Wire_Mag",
					"APERSTripMine_Wire_Mag",
					"ClaymoreDirectionalMine_Remote_Mag",
					"SatchelCharge_Remote_Mag",
					"DemoCharge_Remote_Mag",
					"IEDUrbanBig_Remote_Mag",
					"IEDLandBig_Remote_Mag",
					"IEDUrbanSmall_Remote_Mag",
					"IEDLandSmall_Remote_Mag",
					"APERSMineDispenser_Mag",
					"1Rnd_HE_Grenade_shell",
					"3Rnd_HE_Grenade_shell",
					"O_IR_Grenade",
					"I_IR_Grenade",
					"B_IR_Grenade",
					"HandGrenade",
					"MiniGrenade",
					"1Rnd_Smoke_Grenade_shell",
					"3Rnd_Smoke_Grenade_shell",
					"1Rnd_SmokeRed_Grenade_shell",
					"3Rnd_SmokeRed_Grenade_shell",
					"1Rnd_SmokeGreen_Grenade_shell",
					"3Rnd_SmokeGreen_Grenade_shell",
					"1Rnd_SmokeYellow_Grenade_shell",
					"3Rnd_SmokeYellow_Grenade_shell",
					"1Rnd_SmokePurple_Grenade_shell",
					"3Rnd_SmokePurple_Grenade_shell",
					"1Rnd_SmokeBlue_Grenade_shell",
					"3Rnd_SmokeBlue_Grenade_shell",
					"1Rnd_SmokeOrange_Grenade_shell",
					"3Rnd_SmokeOrange_Grenade_shell",
					"SmokeShell",
					"SmokeShellRed",
					"SmokeShellGreen",
					"SmokeShellYellow",
					"SmokeShellPurple",
					"SmokeShellBlue",
					"SmokeShellOrange",
					"Chemlight_green",
					"Chemlight_red",
					"Chemlight_yellow",
					"Chemlight_blue",
					"3Rnd_UGL_FlareGreen_F",
					"3Rnd_UGL_FlareRed_F",
					"3Rnd_UGL_FlareWhite_F",
					"3Rnd_UGL_FlareYellow_F",
					"FlareGreen_F",
					"FlareRed_F",
					"FlareWhite_F",
					"FlareYellow_F",
					"UGL_FlareGreen_F",
					"UGL_FlareRed_F",
					"UGL_FlareWhite_F",
					"UGL_FlareYellow_F"
				];