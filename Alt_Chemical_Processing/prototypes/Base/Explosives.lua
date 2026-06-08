local SS = settings.startup
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]

--[[ 
Proper intermediates mod for modpack make this use gunpowder made of sulfur, charcoal, potassium nitrate (saltpeter) which is supposedly easy to make
	- Saltpetre mined with water
	- Charcoal made in furnace from wood
	- Sulfur mined with steam
	- Gunpowder can then be made in assembly & chemically.
]]

if SS["Explosives"].value then
	data:extend({
		{
			type = "recipe",
			name = "cliff-explosives-1",
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
			name = "explosives-0",
			main_product = "explosives",
			category = "chemical-hands",
			order = "b[chemistry]-a[explosives]",
			subgroup = "intermediate-product",
			energy_required = 10,
			ingredients = {
				{type = "item", name = "coal", amount = 10},
				{type = "fluid", name = "water", amount = 5},
			},
			results = {{type = "item", name = "explosives", amount = 1}}
		}
	})

	if not mods["bobores"] then
		table.insert(Recipe["explosives-0"].ingredients, {type = "item", name = "stone", amount = 10})
	else
		table.insert(Recipe["explosives-0"].ingredients, {type = "item", name = "sulfur", amount = 10})
	end

	Recipe["cliff-explosives"].results = {{type = "item", name = "cliff-explosives", amount = 5}}
	Recipe["explosives"].results = {{type = "item", name = "explosives", amount = 10}}
	Recipe["explosives"].ingredients = {
		{type = "item", name = "coal", amount = 10},
		{type = "item", name = "sulfur", amount = 10},
		{type = "fluid", name = "water", amount = 5}
	}
end
if SS["Grenades"].value then
	data:extend({
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
		}
	})
	Recipe["grenade"].results = {{type = "item", name = "grenade", amount = 5}}
	if not mods["bobores"] then
		table.insert(Recipe["early-nades"].ingredients, {type = "item", name = "stone", amount = 10})
		table.insert(Recipe["grenade"].ingredients, {type = "item", name = "stone", amount = 10})
	else
		table.insert(Recipe["early-nades"].ingredients, {type = "item", name = "sulfur", amount = 10})
		table.insert(Recipe["grenade"].ingredients, {type = "item", name = "sulfur", amount = 10})
	end
end
Recipe["cliff-explosives"].category = "chemical-hands"
Recipe["explosives"].category = "chemical-hands"