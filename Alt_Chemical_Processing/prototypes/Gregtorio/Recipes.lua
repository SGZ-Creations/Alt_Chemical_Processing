if mods["Gregtorio"] then
	data:extend({
		{
			type = "recipe",
			category = "lv-macerator-recipes",
			name = "raw-tin-crushing",
			localised_name = "Raw tin crushing",
			enabled = false,
			subgroup = "subgroup-macerator-crushed",
			order = "a[crafting-or-assembling-recipes]-[crushed-tin]",
			allow_productivity = true,
			allow_decomposition = true,
			hide_from_player_crafting = true,
			energy_required = 1.0,
			ingredients = {
				{type="item", name="raw-tin", amount=1},
			},
			results = {
				{type="item", name="tin-dust", amount=3},
			},
		},
	})

end