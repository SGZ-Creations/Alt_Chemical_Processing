if mods["space-age"]and mods["James-Oil-Processing"] then
	data:extend({
		{
			type = "recipe",
			name = "ChemicalSyngas",
			category = "chemistry-or-cryogenics",
			order = "aab",
			subgroup = "oil-ed-syngas",
			enabled = false,
			energy_required = 1,
			ingredients = {{type = "fluid", name = "water", amount = 10}},
			results = {{type = "fluid", name = "adamo-carbon-syngas", amount = 100}}
		}
	})
end