---@ class RecipePrototype
local Recipe = data.raw["recipe"]


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


if mods["James-Oil-Processing"] then
	Recipe["chlorine-plastic-bar"].category = "chemistry-or-cryogenics"
	Recipe["chlorine-plastic-bar"].results = {{type = "item", name = "plastic-bar", amount = 5}}
	Recipe["sulfur-plastic-bar"].results = {{type = "item", name = "plastic-bar", amount = 5}}
	Recipe["sulfur-plastic-bar"].category = "chemistry-or-cryogenics"
	Recipe["sulfur-plastic-bar-from-aromatics"].results = {{type = "item", name = "plastic-bar", amount = 5}}
	Recipe["sulfur-plastic-bar-from-aromatics"].category = "chemistry-or-cryogenics"
	Recipe["chlorine-aromatics-plastic-bar"].results = {{type = "item", name = "plastic-bar", amount = 5}}
	Recipe["chlorine-aromatics-plastic-bar"].category = "chemistry-or-cryogenics"
	Recipe["plastic-bar-from-aromatics"].results = {{type = "item", name = "plastic-bar", amount = 5}}
	Recipe["plastic-bar-from-aromatics"].category = "chemistry-or-cryogenics"
end