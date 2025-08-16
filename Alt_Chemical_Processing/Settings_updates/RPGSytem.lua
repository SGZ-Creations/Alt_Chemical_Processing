if mods["RPGsystem"] then
	data:extend({
		{
			type = "int-setting",
			name = "charxpmod_LV_Health_Bonus",
			setting_type = "startup",
			default_value = 30,
			minimum_value = 0,
			maximum_value = 100,
			order = "aa"
		},
		{
			type = "double-setting",
			name = "charxpmod_LV_Armor_Bonus",
			setting_type = "startup",
			default_value = 2,
			minimum_value = 0,
			maximum_value = 10.0,
			order = "ab"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_Run_Speed",
			setting_type = "startup",
			default_value = 10,
			minimum_value = 0,
			maximum_value = 100,
			order = "ac"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_Damage_Bonus",
			setting_type = "startup",
			default_value = 4,
			minimum_value = 0,
			maximum_value = 50,
			order = "ad"
		},
		{
			type = "double-setting",
			name = "charxpmod_LV_Damage_Critical",
			setting_type = "startup",
			default_value = 0.5,
			minimum_value = 0,
			maximum_value = 10,
			order = "ae"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_Magic",
			setting_type = "startup",
			default_value = 1,
			minimum_value = 0,
			maximum_value = 10,
			order = "ae2"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_Craft_Speed",
			setting_type = "startup",
			default_value = 20,
			minimum_value = 0,
			maximum_value = 50,
			order = "af"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_Mining_Speed",
			setting_type = "startup",
			default_value = 10,
			minimum_value = 0,
			maximum_value = 50,
			order = "ag"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_Reach_Dist",
			setting_type = "startup",
			default_value = 1,
			minimum_value = 0,
			maximum_value = 10,
			order = "ah"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_Inv_Bonus",
			setting_type = "startup",
			default_value = 5,
			minimum_value = 0,
			maximum_value = 20,
			order = "ai"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_InvTrash_Bonus",
			setting_type = "startup",
			default_value = 5,
			minimum_value = 0,
			maximum_value = 20,
			order = "ak"
		},
		{
			type = "int-setting",
			name = "charxpmod_LV_Robot_Bonus",
			setting_type = "startup",
			default_value = 5,
			minimum_value = 0,
			maximum_value = 20,
			order = "al"
		},
	---------------------------------------------
		{
			type = "int-setting",
			name = "charxpmod_xp_maxlevel",
			setting_type = "startup",
			default_value = 100,
			minimum_value = 40,
			maximum_value = 500, --200
			order = "ba"
		},
		{
			type = "int-setting",
			name = "charxpmod_xp_maxlevel_ability",
			setting_type = "startup",
			default_value = 20,
			minimum_value = 10,
			maximum_value = 50, --30
			order = "bb"
		},
		{
			type = "int-setting",
			name = "charxpmod_xpinilevel",
			setting_type = "startup",
			default_value = 600,
			minimum_value = 10,
			maximum_value = 10000,
			order = "bc"
		},
		{
			type = "double-setting",
			name = "charxpmod_xpmult",
			setting_type = "startup",
			default_value = 1.61,
			minimum_value = 1.5,
			maximum_value = 2,
			order = "bd"
		},
		{
			type = "double-setting",
			name = "charxpmod_xp_mp_reductor",
			setting_type = "startup",
			default_value = 0.023,
			minimum_value = 0,
			maximum_value = 1,
			order = "be"
		},
		{
			type = "double-setting",
			name = "charxpmod_xp_multiplier_bonus",
			setting_type = "startup",
			default_value = 1,
			minimum_value = 0.2,
			maximum_value = 100,
			order = "bf"
		},
		{
			type = "bool-setting",
			name = "charxpmod_enable_potion_loot",
			setting_type = "startup",
			default_value = false,
			order = "loot"
		},
	})
end