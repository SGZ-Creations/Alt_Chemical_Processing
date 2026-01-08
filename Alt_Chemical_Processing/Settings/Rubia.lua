if mods["rubia"] and mods["cargo-bay-inserters"] then
    data:extend({
		{
			type = "bool-setting",
			name = "RubiaCargoBayCrash",
			setting_type = "startup",
			default_value = false,
			order = "7Aaa"
		}
	})
end