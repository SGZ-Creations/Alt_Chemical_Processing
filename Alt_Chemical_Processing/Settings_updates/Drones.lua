if mods["Transport_Drones_Meglinge_Fork"]and mods["SeaBlocks"] then
	data:extend({
		{
			type = "double-setting",
			setting_type = "startup",
			name = "science-pack-drain-multiplier-decrease-pre-level",
			default_value = 0.01,
			maximum_value = 1,
			order = "e",
		}
	})
end