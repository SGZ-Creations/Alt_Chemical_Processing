if mods["bobmining"]and mods["space-age"] then
	data:extend({
		{
			type = "bool-setting",
			name = "BigMinerBobs",
			setting_type = "startup",
			default_value = false,
			order = "1Afc"
		},
	})
end