---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]

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
if SS["CliffRemovalService"].value then
	if not mods["bobores"] then
		table.insert(Recipe["early-explosives"].ingredients, {type = "item", name = "stone", amount = 10})
		table.insert(Recipe["early-nades"].ingredients, {type = "item", name = "stone", amount = 10})
		table.insert(Recipe["grenade"].ingredients, {type = "item", name = "stone", amount = 10})
	else
		table.insert(Recipe["early-explosives"].ingredients, {type = "item", name = "sulfur", amount = 10})
		table.insert(Recipe["early-nades"].ingredients, {type = "item", name = "sulfur", amount = 10})
		table.insert(Recipe["grenade"].ingredients, {type = "item", name = "sulfur", amount = 10})
	end
end