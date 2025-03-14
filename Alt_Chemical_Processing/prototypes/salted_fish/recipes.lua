if mods["SaltedFish"] then
	data:extend({
		{
			type = "recipe",
			name = "salted-nutrients",
			category = "organic",
			enabled = false,
			energy_required = 1,
			ingredients = {
				{type = "item", name = "salt", amount = 2}
			},
			results = {
				{type = "item", name = "nutrients", amount = 25}
			},
			subgroup = "agriculture-processes",
			order = "ac-[nutrient]-a[salt]",
			auto_recycle = false,
		},
	})
end