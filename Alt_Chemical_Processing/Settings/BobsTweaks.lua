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

if mods["bobpower"]then
	data:extend({
		{
			type = "int-setting",
			name = "AccumulatorIF1",
			setting_type = "startup",
			default_value = 600,
			order = "1ZZZ"
		},
		{
			type = "int-setting",
			name = "AccumulatorOF1",
			setting_type = "startup",
			default_value = 600,
			order = "1ZZZ"
		},
	})
end