_G.SafeHousePlus = _G.SafeHousePlus or {}

function SafeHousePlus:UnitTool_IsBlocked(name)
	local _list = {
		["5a44f0ce83502c87"] = true,
		["b7851010bb0b6999"] = true,
		["e8598b763a6cfbbe"] = true,
		["3d1dbb71dd09573f"] = true,
		["3d1dbb71dd09573f"] = true,
		["2613bf87710a225d"] = true,
		["96838a6af11cd388"] = true,
		["f523dfbf01be1ad4"] = true,
		["d974de76a56e065b"] = true,
		["77c96b94aac2dc02"] = true,
		["3691929004acc0d3"] = true,
	}
	return _list[name] or false
end

function SafeHousePlus:CarryandProp()
	return {
		{name = "gold", unit_name = "units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_gold"},
		{name = "money", unit_name = "units/payday2/props/bnk_prop_vault_loot/bnk_prop_vault_loot_special_money"},
		{name = "com_prop_jewelry_box_01", unit_name = "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_01"},
		{name = "com_prop_jewelry_box_02", unit_name = "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_02"},
		{name = "com_prop_jewelry_box_03", unit_name = "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_03"},
		{name = "com_prop_jewelry_box_04", unit_name = "units/payday2/props/com_prop_jewelry_jewels/com_prop_jewelry_box_04"},
		{name = "gen_prop_bank_atm_standing", unit_name = "units/payday2/props/gen_prop_bank_atm_standing/gen_prop_bank_atm_standing"}
	}
end

function SafeHousePlus:AllHumanUnits()
	local _char_map = tweak_data.character.character_map()
	local _using_map = {
		all_common = {
			"units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1",
			"units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2",
			"units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3",
			"units/pd2_dlc_drm/characters/ene_bulldozer_medic/ene_bulldozer_medic",
			"units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun",
			"units/payday2/characters/ene_shield_1/ene_shield_1",
			"units/payday2/characters/ene_shield_2/ene_shield_2",
			"units/payday2/characters/ene_sniper_1/ene_sniper_1",
			"units/payday2/characters/ene_sniper_2/ene_sniper_2",
			"units/payday2/characters/ene_spook_1/ene_spook_1",
			"units/payday2/characters/ene_tazer_1/ene_tazer_1",
			"units/payday2/characters/ene_medic_m4/ene_medic_m4",
			"units/payday2/characters/ene_medic_r870/ene_medic_r870",
			"units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_2/ene_zeal_bulldozer_2",
			"units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_3/ene_zeal_bulldozer_3",
			"units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer/ene_zeal_bulldozer",
			"units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"
		},
	
		all_cops = {
			"units/payday2/characters/ene_cop_1/ene_cop_1",
			"units/payday2/characters/ene_cop_2/ene_cop_2",
			"units/payday2/characters/ene_cop_3/ene_cop_3",
			"units/payday2/characters/ene_cop_4/ene_cop_4",
			"units/payday2/characters/ene_murkywater_1/ene_murkywater_1",
			"units/payday2/characters/ene_murkywater_2/ene_murkywater_2",
			"units/payday2/characters/ene_secret_service_1/ene_secret_service_1",
			"units/payday2/characters/ene_secret_service_2/ene_secret_service_2",
			"units/payday2/characters/ene_security_1/ene_security_1",
			"units/payday2/characters/ene_security_2/ene_security_2",
			"units/payday2/characters/ene_security_3/ene_security_3",
			"units/payday2/characters/ene_security_4/ene_security_4",
			"units/payday2/characters/ene_security_5/ene_security_5",
			"units/payday2/characters/ene_security_6/ene_security_6",
			"units/payday2/characters/ene_security_7/ene_security_7",
			"units/payday2/characters/ene_security_8/ene_security_8",
			"units/payday2/characters/ene_veteran_cop_1/ene_veteran_cop_1",
			"units/payday2/characters/ene_guard_national_1/ene_guard_national_1",
			"units/pd2_dlc1/characters/ene_security_gensec_1/ene_security_gensec_1",
			"units/pd2_dlc1/characters/ene_security_gensec_2/ene_security_gensec_2",
			"units/payday2/characters/ene_prisonguard_female_1/ene_prisonguard_female_1",
			"units/payday2/characters/ene_prisonguard_male_1/ene_prisonguard_male_1",
			"units/payday2/characters/npc_old_hoxton_prisonsuit_1/npc_old_hoxton_prisonsuit_1",
			"units/payday2/characters/npc_old_hoxton_prisonsuit_2/npc_old_hoxton_prisonsuit_2",
			"units/payday2/characters/ene_male_tgt_1/ene_male_tgt_1",
			"units/pd2_mcmansion/characters/ene_hoxton_breakout_guard_1/ene_hoxton_breakout_guard_1",
			"units/pd2_mcmansion/characters/ene_hoxton_breakout_guard_2/ene_hoxton_breakout_guard_2",
			"units/pd2_dlc_arena/characters/ene_guard_security_heavy_2/ene_guard_security_heavy_2",
			"units/pd2_dlc_arena/characters/ene_guard_security_heavy_1/ene_guard_security_heavy_1",
			"units/pd2_dlc_casino/characters/ene_secret_service_1_casino/ene_secret_service_1_casino"
		},

		all_fbi = {
			"units/payday2/characters/ene_fbi_1/ene_fbi_1",
			"units/payday2/characters/ene_fbi_2/ene_fbi_2",
			"units/payday2/characters/ene_fbi_3/ene_fbi_3",
			"units/payday2/characters/ene_fbi_boss_1/ene_fbi_boss_1",
			"units/payday2/characters/ene_fbi_female_1/ene_fbi_female_1",
			"units/payday2/characters/ene_fbi_female_2/ene_fbi_female_2",
			"units/payday2/characters/ene_fbi_female_3/ene_fbi_female_3",
			"units/payday2/characters/ene_fbi_female_4/ene_fbi_female_4",
			"units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1",
			"units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1",
			"units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2",
			"units/payday2/characters/ene_fbi_office_1/ene_fbi_office_1",
			"units/payday2/characters/ene_fbi_office_2/ene_fbi_office_2",
			"units/payday2/characters/ene_fbi_office_3/ene_fbi_office_3",
			"units/payday2/characters/ene_fbi_office_4/ene_fbi_office_4",
			"units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1",
			"units/pd2_dlc_vip/characters/ene_vip_1/ene_vip_1"
		},

		all_swats = {
			"units/payday2/characters/ene_city_swat_1/ene_city_swat_1",
			"units/payday2/characters/ene_city_swat_2/ene_city_swat_2",
			"units/payday2/characters/ene_city_swat_3/ene_city_swat_3",
			"units/payday2/characters/ene_swat_1/ene_swat_1",
			"units/payday2/characters/ene_swat_2/ene_swat_2",
			"units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1",
			--"units/payday2/characters/ene_bulldozer_4/ene_bulldozer_4"
		},

		all_gangs = {
			"units/payday2/characters/ene_biker_1/ene_biker_1",
			"units/payday2/characters/ene_biker_2/ene_biker_2",
			"units/payday2/characters/ene_biker_3/ene_biker_3",
			"units/payday2/characters/ene_biker_4/ene_biker_4",
			"units/payday2/characters/ene_gang_black_1/ene_gang_black_1",
			"units/payday2/characters/ene_gang_black_2/ene_gang_black_2",
			"units/payday2/characters/ene_gang_black_3/ene_gang_black_3",
			"units/payday2/characters/ene_gang_black_4/ene_gang_black_4",
			"units/payday2/characters/ene_gang_mexican_1/ene_gang_mexican_1",
			"units/payday2/characters/ene_gang_mexican_2/ene_gang_mexican_2",
			"units/payday2/characters/ene_gang_mexican_3/ene_gang_mexican_3",
			"units/payday2/characters/ene_gang_mexican_4/ene_gang_mexican_4",
			"units/payday2/characters/ene_gang_russian_1/ene_gang_russian_1",
			"units/payday2/characters/ene_gang_russian_2/ene_gang_russian_2",
			"units/payday2/characters/ene_gang_russian_3/ene_gang_russian_3",
			"units/payday2/characters/ene_gang_russian_4/ene_gang_russian_4",
			"units/payday2/characters/ene_gang_russian_5/ene_gang_russian_5",
			"units/payday2/characters/ene_biker_escape/ene_biker_escape",
			"units/payday2/characters/ene_gang_mobster_1/ene_gang_mobster_1",
			"units/payday2/characters/ene_gang_mobster_2/ene_gang_mobster_2",
			"units/payday2/characters/ene_gang_mobster_3/ene_gang_mobster_3",
			"units/payday2/characters/ene_gang_mobster_4/ene_gang_mobster_4",
			"units/payday2/characters/ene_gang_mobster_boss/ene_gang_mobster_boss",
			"units/pd2_mcmansion/characters/ene_male_hector_1/ene_male_hector_1",
			"units/pd2_mcmansion/characters/ene_male_hector_2/ene_male_hector_2",
			"units/pd2_dlc_holly/characters/ene_gang_hispanic_1/ene_gang_hispanic_1",
			"units/pd2_dlc_holly/characters/ene_gang_hispanic_3/ene_gang_hispanic_3",
			"units/pd2_dlc_holly/characters/ene_gang_hispanic_2/ene_gang_hispanic_2",
		},

		all_civs = {
			"units/payday2/characters/civ_female_bank_1/civ_female_bank_1",
			"units/pd2_dlc_cage/characters/civ_female_bank_2/civ_female_bank_2",
			"units/payday2/characters/civ_female_bank_manager_1/civ_female_bank_manager_1",
			"units/payday2/characters/civ_female_casual_1/civ_female_casual_1",
			"units/payday2/characters/civ_female_casual_2/civ_female_casual_2",
			"units/payday2/characters/civ_female_casual_3/civ_female_casual_3",
			"units/payday2/characters/civ_female_casual_4/civ_female_casual_4",
			"units/payday2/characters/civ_female_casual_5/civ_female_casual_5",
			"units/payday2/characters/civ_female_casual_6/civ_female_casual_6",
			"units/payday2/characters/civ_female_casual_7/civ_female_casual_7",
			"units/payday2/characters/civ_female_casual_8/civ_female_casual_8",
			"units/payday2/characters/civ_female_casual_9/civ_female_casual_9",
			"units/payday2/characters/civ_female_casual_10/civ_female_casual_10",
			"units/payday2/characters/civ_female_crackwhore_1/civ_female_crackwhore_1",
			"units/payday2/characters/civ_female_curator_1/civ_female_curator_1",
			"units/payday2/characters/civ_female_curator_2/civ_female_curator_2",
			"units/payday2/characters/civ_female_hostess_apron_1/civ_female_hostess_apron_1",
			"units/payday2/characters/civ_female_hostess_jacket_1/civ_female_hostess_jacket_1",
			"units/payday2/characters/civ_female_hostess_shirt_1/civ_female_hostess_shirt_1",
			"units/payday2/characters/civ_female_party_1/civ_female_party_1",
			"units/payday2/characters/civ_female_party_2/civ_female_party_2",
			"units/payday2/characters/civ_female_party_3/civ_female_party_3",
			"units/payday2/characters/civ_female_party_4/civ_female_party_4",
			"units/payday2/characters/civ_female_waitress_1/civ_female_waitress_1",
			"units/payday2/characters/civ_female_waitress_2/civ_female_waitress_2",
			"units/payday2/characters/civ_female_waitress_3/civ_female_waitress_3",
			"units/payday2/characters/civ_female_waitress_4/civ_female_waitress_4",
			"units/payday2/characters/civ_female_wife_trophy_1/civ_female_wife_trophy_1",
			"units/payday2/characters/civ_female_wife_trophy_2/civ_female_wife_trophy_2",
			"units/payday2/characters/civ_male_bank_1/civ_male_bank_1",
			"units/payday2/characters/civ_male_bank_2/civ_male_bank_2",
			"units/payday2/characters/civ_male_bank_manager_1/civ_male_bank_manager_1",
			"units/payday2/characters/civ_male_bank_manager_3/civ_male_bank_manager_3",
			"units/payday2/characters/civ_male_bank_manager_4/civ_male_bank_manager_4",
			"units/payday2/characters/civ_male_bartender_1/civ_male_bartender_1",
			"units/payday2/characters/civ_male_bartender_2/civ_male_bartender_2",
			"units/payday2/characters/civ_male_business_1/civ_male_business_1",
			"units/payday2/characters/civ_male_business_2/civ_male_business_2",
			"units/payday2/characters/civ_male_casual_1/civ_male_casual_1",
			"units/payday2/characters/civ_male_casual_2/civ_male_casual_2",
			"units/payday2/characters/civ_male_casual_3/civ_male_casual_3",
			"units/payday2/characters/civ_male_casual_4/civ_male_casual_4",
			"units/payday2/characters/civ_male_casual_5/civ_male_casual_5",
			"units/payday2/characters/civ_male_casual_6/civ_male_casual_6",
			"units/payday2/characters/civ_male_casual_7/civ_male_casual_7",
			"units/payday2/characters/civ_male_casual_8/civ_male_casual_8",
			"units/payday2/characters/civ_male_casual_9/civ_male_casual_9",
			"units/payday2/characters/civ_male_casual_12/civ_male_casual_12",
			"units/payday2/characters/civ_male_casual_13/civ_male_casual_13",
			"units/payday2/characters/civ_male_casual_14/civ_male_casual_14",
			"units/payday2/characters/civ_male_curator_1/civ_male_curator_1",
			"units/payday2/characters/civ_male_curator_2/civ_male_curator_2",
			"units/payday2/characters/civ_male_curator_3/civ_male_curator_3",
			"units/payday2/characters/civ_male_dj_1/civ_male_dj_1",
			"units/payday2/characters/civ_male_italian_robe_1/civ_male_italian_robe_1",
			"units/payday2/characters/civ_male_janitor_1/civ_male_janitor_1",
			"units/payday2/characters/civ_male_janitor_2/civ_male_janitor_2",
			"units/payday2/characters/civ_male_janitor_3/civ_male_janitor_3",
			"units/payday2/characters/civ_male_meth_cook_1/civ_male_meth_cook_1",
			"units/payday2/characters/civ_male_party_1/civ_male_party_1",
			"units/payday2/characters/civ_male_party_2/civ_male_party_2",
			"units/payday2/characters/civ_male_party_3/civ_male_party_3",
			"units/payday2/characters/civ_male_pilot_1/civ_male_pilot_1",
			"units/payday2/characters/civ_male_scientist_1/civ_male_scientist_1",
			"units/payday2/characters/civ_male_taxman/civ_male_taxman",
			"units/payday2/characters/civ_male_taxman/civ_male_taxman_civ",
			"units/payday2/characters/civ_male_miami_store_clerk_1/civ_male_miami_store_clerk_1",
			"units/payday2/characters/civ_male_trucker_1/civ_male_trucker_1",
			"units/payday2/characters/civ_male_worker_docks_1/civ_male_worker_docks_1",
			"units/payday2/characters/civ_male_worker_docks_2/civ_male_worker_docks_2",
			"units/payday2/characters/civ_male_worker_docks_3/civ_male_worker_docks_3",
			"units/payday2/characters/civ_male_worker_1/civ_male_worker_1",
			"units/payday2/characters/civ_male_worker_2/civ_male_worker_2",
			"units/payday2/characters/civ_male_worker_3/civ_male_worker_3",
			"units/payday2/characters/npc_getaway_driver_1/npc_getaway_driver_1",
			"units/pd2_dlc1/characters/civ_male_paramedic_1/civ_male_paramedic_1",
			"units/pd2_dlc1/characters/civ_male_paramedic_2/civ_male_paramedic_2",
			"units/pd2_dlc1/characters/civ_male_firefighter_1/civ_male_firefighter_1",
			"units/pd2_dlc1/characters/civ_male_casual_10/civ_male_casual_10",
			"units/pd2_dlc1/characters/civ_male_casual_11/civ_male_casual_11",
			"units/pd2_dlc1/characters/civ_male_bank_manager_2/civ_male_bank_manager_2",
			"units/pd2_dlc2/characters/civ_female_bank_assistant_1/civ_female_bank_assistant_1",
			"units/pd2_dlc2/characters/civ_female_bank_assistant_2/civ_female_bank_assistant_2",
			"units/pd2_dlc_casino/characters/civ_female_casino_1/civ_female_casino_1",
			"units/pd2_dlc_casino/characters/civ_female_casino_2/civ_female_casino_2",
			"units/pd2_dlc_casino/characters/civ_female_casino_3/civ_female_casino_3",
			"units/pd2_dlc_casino/characters/civ_male_casino_1/civ_male_casino_1",
			"units/pd2_dlc_casino/characters/civ_male_casino_2/civ_male_casino_2",
			"units/pd2_dlc_casino/characters/civ_male_casino_3/civ_male_casino_3",
			"units/pd2_dlc_casino/characters/civ_male_casino_4/civ_male_casino_4",
			"units/pd2_dlc_casino/characters/civ_male_impersonator/civ_male_impersonator",
			"units/pd2_dlc_casino/characters/civ_male_business_casino_1/civ_male_business_casino_1",
			"units/pd2_dlc_casino/characters/civ_male_business_casino_2/civ_male_business_casino_2",
			"units/pd2_dlc_casino/characters/civ_male_casino_pitboss/civ_male_casino_pitboss",
			"units/pd2_dlc_arena/characters/civ_female_fastfood_1/civ_female_fastfood_1",
			"units/pd2_dlc_arena/characters/civ_male_fastfood_1/civ_male_fastfood_1",
			"units/pd2_dlc_arena/characters/civ_male_fastfood_2/civ_male_fastfood_2",
			"units/pd2_dlc_arena/characters/civ_female_party_alesso_1/civ_female_party_alesso_1",
			"units/pd2_dlc_arena/characters/civ_female_party_alesso_2/civ_female_party_alesso_2",
			"units/pd2_dlc_arena/characters/civ_female_party_alesso_3/civ_female_party_alesso_3",
			"units/pd2_dlc_arena/characters/civ_female_party_alesso_4/civ_female_party_alesso_4",
			"units/pd2_dlc_arena/characters/civ_female_party_alesso_5/civ_female_party_alesso_5",
			"units/pd2_dlc_arena/characters/civ_female_party_alesso_6/civ_female_party_alesso_6",
			"units/pd2_dlc_arena/characters/civ_male_party_alesso_1/civ_male_party_alesso_1",
			"units/pd2_dlc_arena/characters/civ_male_party_alesso_2/civ_male_party_alesso_2",
			"units/pd2_dlc_arena/characters/civ_male_alesso_booth/civ_male_alesso_booth",
			"units/pd2_rain_1/characters/civ_male_escort_prisoner/civ_male_escort_prisoner",
			"units/pd2_dlc_holly/characters/civ_male_hobo_1/civ_male_hobo_1",
			"units/pd2_dlc_holly/characters/civ_male_hobo_2/civ_male_hobo_2",
			"units/pd2_dlc_holly/characters/civ_male_hobo_3/civ_male_hobo_3",
			"units/pd2_dlc_holly/characters/civ_male_hobo_4/civ_male_hobo_4",
			"units/pd2_dlc_red/characters/civ_female_inside_man_1/civ_female_inside_man_1",
			"units/pd2_dlc_dinner/characters/civ_male_butcher_2/civ_male_butcher_2",
			"units/pd2_dlc_dinner/characters/civ_male_butcher_1/civ_male_butcher_1"
		},
		
		all_russia = {
			"units/pd2_dlc_mad/characters/civ_male_scientist_01/civ_male_scientist_01",
			"units/pd2_dlc_mad/characters/civ_male_scientist_02/civ_male_scientist_02",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_shield_sr2_smg/ene_akan_fbi_shield_sr2_smg",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_spooc_asval_smg/ene_akan_fbi_spooc_asval_smg",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_ak47_ass/ene_akan_fbi_swat_ak47_ass",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_r870/ene_akan_fbi_swat_dw_r870",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_r870/ene_akan_fbi_swat_r870",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga",
			"units/pd2_dlc_mad/characters/ene_akan_cs_cop_ak47_ass/ene_akan_cs_cop_ak47_ass",
			"units/pd2_dlc_mad/characters/ene_akan_cs_cop_akmsu_smg/ene_akan_cs_cop_akmsu_smg",
			"units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg",
			"units/pd2_dlc_mad/characters/ene_akan_cs_cop_r870/ene_akan_cs_cop_r870",
			"units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass",
			"units/pd2_dlc_mad/characters/ene_akan_cs_shield_c45/ene_akan_cs_shield_c45",
			"units/pd2_dlc_mad/characters/ene_akan_cs_swat_ak47_ass/ene_akan_cs_swat_ak47_ass",
			"units/pd2_dlc_mad/characters/ene_akan_cs_swat_r870/ene_akan_cs_swat_r870",
			"units/pd2_dlc_mad/characters/ene_akan_cs_swat_sniper_svd_snp/ene_akan_cs_swat_sniper_svd_snp",
			"units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"
		},
		
		all_vehicle = {
			"units/pd2_dlc_jolly/vehicles/fps_vehicle_box_truck_1/fps_vehicle_box_truck_1",
			"units/pd2_dlc_jerry/vehicles/fps_vehicle_boat_rib_1/fps_vehicle_boat_rib_1",
			"units/pd2_dlc_cage/vehicles/fps_vehicle_falcogini_1/fps_vehicle_falcogini_1",
			"units/pd2_dlc_shoutout_raid/vehicles/fps_vehicle_forklift_1/fps_vehicle_forklift_1",
			"units/pd2_dlc_shoutout_raid/vehicles/fps_vehicle_muscle_1/fps_vehicle_muscle_1",
			"units/pd2_dlc_born/vehicles/fps_vehicle_bike_1/fps_vehicle_bike_1",
			"units/pd2_dlc_born/vehicles/fps_vehicle_bike_2/fps_vehicle_bike_2"
		},
		
		all_others = {
			"units/pd2_dlc_born/characters/ene_gang_biker_boss/ene_gang_biker_boss",
			"units/pd2_dlc_born/characters/ene_biker_female_1/ene_biker_female_1",
			"units/pd2_dlc_born/characters/ene_biker_female_2/ene_biker_female_2",
			"units/pd2_dlc_born/characters/ene_biker_female_3/ene_biker_female_3",
			"units/pd2_dlc_born/characters/npc_male_mechanic/npc_male_mechanic"
		},
		
		all_sc_mod = {
			"units/payday2/characters/ene_bulldozer_2_hw/ene_bulldozer_2_hw",
			"units/payday2/characters/ene_fbi_swat_3/ene_fbi_swat_3",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_ump/ene_akan_fbi_swat_ump",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_r870/ene_akan_fbi_swat_dw_r870",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ump/ene_akan_fbi_swat_dw_ump",
			"units/pd2_dlc_mad/characters/ene_akan_cs_cop_akmsu_smg/ene_akan_cs_cop_akmsu_smg",
			"units/pd2_dlc_mad/characters/ene_akan_cs_cop_ak47_ass/ene_akan_cs_cop_ak47_ass",
			"units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg",
			"units/pd2_dlc_mad/characters/ene_akan_cs_swat_ak47_ass/ene_akan_cs_swat_ak47_ass",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_dw/ene_akan_fbi_heavy_dw",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_dw_r870/ene_akan_fbi_heavy_dw_r870",
			--"units/pd2_dlc_vip/characters/ene_vip_2/ene_vip_2",
			"units/payday2/characters/ene_veteran_cop_1/ene_veteran_cop_1",
			"units/payday2/characters/ene_veteran_cop_2/ene_veteran_cop_2",
			"units/payday2/characters/ene_acc_boom_helmet/ene_acc_boom_helmet",
			"units/payday2/characters/ene_grenadier_1/ene_grenadier_1",
			"units/pd2_dlc_mad/characters/ene_akan_grenadier_1/ene_akan_grenadier_1",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_1/ene_akan_fbi_1",
			"units/pd2_dlc_mad/characters/ene_akan_fbi_2/ene_akan_fbi_2",
			"units/pd2_dlc_mad/characters/ene_akan_veteran_1/ene_akan_veteran_1"
		},
		
		all_dw_plus = {
			"units/payday2/characters/ene_phalanx_2/ene_phalanx_2",
			"units/payday2/characters/ene_city_swat_4/ene_city_swat_4",
			"units/payday2/characters/ene_fbi_4/ene_fbi_4",
			"units/payday2/characters/ene_bulldozer_5/ene_bulldozer_5",
			"units/payday2/characters/ene_bulldozer_6/ene_bulldozer_6",
			"units/payday2/characters/ene_bulldozer_7/ene_bulldozer_7",
			"units/payday2/characters/ene_tazer_2/ene_tazer_2",
			"units/pd2_dlc_gitgud/characters/ene_zealdozer_benelli/ene_zealdozer_benelli",
			"units/pd2_dlc_gitgud/characters/ene_zealdozer_saiga/ene_zealdozer_saiga",
			"units/pd2_dlc_gitgud/characters/ene_zealdozer_m249/ene_zealdozer_m249",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_benelli/ene_zeal_swat_heavy_benelli",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_ump/ene_zeal_swat_heavy_ump",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_g36/ene_zeal_swat_heavy_g36",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_scar/ene_zeal_swat_heavy_scar",
			"units/pd2_dlc_gitgud/characters/ene_zeal_swat_phalanx/ene_zeal_swat_phalanx",
			"units/pd2_dlc_gitgud/characters/ene_zealdozer_titan/ene_zealdozer_titan"
		}
	}
	if SafeHousePlus.Heavy_Loaded then
		local _bool_list = {}
		for _, _table in pairs(_using_map) do
			for _, _unit_name in pairs(_table) do
				_bool_list[_unit_name] = true
			end
		end
		for _, _table in pairs(_char_map) do
			if _table.path and _table.list then
				for _, _unit_name in pairs(_table.list) do
					local _full_unit_name = _table.path .. _unit_name .. "/" .. _unit_name
					if not _bool_list[_full_unit_name] then
						_bool_list[_full_unit_name] = true
						table.insert(_using_map.all_others, _full_unit_name)
					end
				end
			end
		end
	end
	return _using_map
end