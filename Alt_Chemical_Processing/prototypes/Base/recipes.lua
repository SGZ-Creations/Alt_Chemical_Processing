local SS = settings.startup

if SS["LiquidCoal"].value then
	data:extend({
		{
			type = "recipe",
			name = "acid-coal-liquefaction",
			category = "oil-processing",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "item", name = "coal", amount = 25},
				{type = "fluid", name = "steam", amount = 50},
				{type = "fluid", name = "sulfuric-acid", amount = 65},
			},
			results = {
				{type = "fluid", name = "heavy-oil", amount = 120},
				{type = "fluid", name = "light-oil", amount = 50},
				{type = "fluid", name = "petroleum-gas", amount = 25},
				{type = "item", name = "sulfur", amount = 5},
			},
			allow_productivity = true,
			icon = "__base__/graphics/icons/fluid/coal-liquefaction.png",
			subgroup = "fluid-recipes",
			order = "a[oil-processing]-d[coal-liquefaction]",
			allow_decomposition = false
		},
	})
end