local Recipe = data.raw["recipe"]

if mods["aai-signal-transmission"] and mods["pypostprocessing"] then
	Recipe["aai-signal-sender"].ingredients = {
		{type = "item", name = "steel-plate", amount=15},
		{type = "item", name = "aluminium-plate", amount=20},
		{type = "item", name = "titanium-plate", amount=20},
		{type = "item", name = "small-parts-01", amount=30},
		{type = "item", name = "battery-mk00", amount=10},
	}
	Recipe["aai-signal-reciver"].ingredients = {
		{type = "item", name = "steel-plate", amount=15},
		{type = "item", name = "lead-plate", amount=20},
		{type = "item", name = "titanium-plate", amount=20},
		{type = "item", name = "small-parts-01", amount=30},
		{type = "item", name = "battery-mk00", amount=10},
	}
end