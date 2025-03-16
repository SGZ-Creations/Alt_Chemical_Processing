if mods["bobplates"] and mods["bobrevamp"] and mods["space-age"] then
	data:extend({
		{
			type = "recipe",
			name = "tungsten-conversion-1",
			enabled = false,
			energy_required = 1.0,
			subgroup = "bob-ores",
			order = "b-d[bob-tungsten-ore]",
			hide_from_player_crafting = true,
			ingredients = {
				{type="item", name="bob-tungsten-ore", amount=1},
			},
			results = {{type="item", name="tungsten-ore", amount=1}},
		},
		{
			type = "recipe",
			name = "tungsten-conversion-2",
			enabled = false,
			energy_required = 1.0,
			subgroup = "bob-ores",
			order = "b-d[bob-tungsten-ore]",
			hide_from_player_crafting = true,
			ingredients = {
				{type="item", name="bob-tungsten-ore", amount=100},
			},
			results = {{type="item", name="tungsten-ore", amount=100}},
		},
	})
end