local SS = settings.startup
---@class dat.RecipePrototype
local Recipe = data.raw["recipe"]

if SS["iron-utillity"].value then
	data:extend({
		{
			type = "recipe",
			name = "iron-ore-utillity",
			enabled = false,
			energy_required = 10,
            allow_productivity = true,
			ingredients = {{type = "item", name = "iron-ore", amount = 1000}},
			results = {{type = "item", name = "utility-science-pack", amount = 5}}
		}
	})
end

--[[ 
Propper intermediates mod for modpack make this use gunpowder made of sulfur, charcoal, potassium nitrate (saltpeter) which is supposedly easy to make
	- Saltpeter mined with water
	- Charcoal made in furnace from wood
	- Sulfur mined with steam
	- Gunpowder can then be made in assembly & chemically.
]]
if SS["CliffRemovalService"].value then
	data:extend({
		{
			type = "recipe",
			name = "cliff-explosive-removal",
            main_product = "cliff-explosives",
            category = "chemistry-or-cryogenics",
			order = "e[cliff-explosive]",
			subgroup = "terrain",
			--enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "item", name = "steel-plate", amount = 10},
				{type = "item", name = "stone", amount = 5},
				{type = "item", name = "coal", amount = 5},
			},
			results = {{type = "item", name = "cliff-explosives", amount = 1}}
		}
	})
	Recipe["cliff-explosives"].results = {{type = "item", name = "cliff-explosives", amount = 5}}
end


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