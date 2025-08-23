if mods["Configurable-Qualities"] then
	data:extend({
		{
			type = "double-setting",
			setting_type = "startup",
			order = "e",
			name = "science-pack-drain-multiplier-decrease-pre-level",
			default_value = 0.01,
			maximum_value = 1
		}
	})
end