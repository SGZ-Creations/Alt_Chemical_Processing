---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype
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
Proper intermediates mod for modpack make this use gunpowder made of sulfur, charcoal, potassium nitrate (saltpeter) which is supposedly easy to make
	- Saltpetre mined with water
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
			category = "chemical-hands",
			order = "e[cliff-explosives]",
			subgroup = "terrain",
			energy_required = 10,
			ingredients = {
				{type = "item", name = "grenade", amount = 1},
				{type = "item", name = "explosives", amount = 1},
			},
			results = {{type = "item", name = "cliff-explosives", amount = 1}}
		},
		{
			type = "recipe",
			name = "early-nades",
			main_product = "grenade",
			order = "a[grenade]-a[normal]",
			subgroup = "capsule",
			energy_required = 10,
			ingredients = {
				{type = "item", name = "coal", amount = 10},
				{type = "item", name = "iron-plate", amount = 5},
			},
			results = {{type = "item", name = "grenade", amount = 1}}
		},
		{
			type = "recipe",
			name = "early-explosives",
			main_product = "explosives",
			category = "chemical-hands",
			order = "b[chemistry]-a[explosives]",
			subgroup = "intermediant-product",
			energy_required = 10,
			ingredients = {
				{type = "item", name = "coal", amount = 10},
				{type = "fluid", name = "water", amount = 5},
			},
			results = {{type = "item", name = "explosives", amount = 1}}
		}
	})
	Recipe["explosives"].ingrediends = {
		{type = "item", name = "coal", amount = 10},
		{type = "item", name = "sulfur", amount = 10},
		{type = "fluid", name = "water", amount = 5}
	}
	Recipe["cliff-explosives"].results = {{type = "item", name = "cliff-explosives", amount = 5}}
	Recipe["explosives"].results = {{type = "item", name = "explosives", amount = 10}}
	Recipe["grenade"].results = {{type = "item", name = "grenade", amount = 5}}
	Recipe["cliff-explosives"].category = "chemical-hands"
	Recipe["explosives"].category = "chemical-hands"
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