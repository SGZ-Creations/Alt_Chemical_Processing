---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]
---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
---@class LuaSettings
local SS = settings.startup


if mods["Nanobots3"]and mods["SeaBlock"] then
	Tech["nanobots"].research_trigger = {type ="craft-item", item ="bob-basic-circuit-board", amount = 20}
	Tech["nanobots"].unit = nil
	Tech["nanobots"].prerequisites = nil

	Recipe["gun-nano-emitter"].ingredients = {
		{type ="item", name="bob-basic-circuit-board", amount = 10},
		{type ="item", name="copper-plate", amount = 5},
		{type ="item", name="iron-plate", amount = 5},
	}
end

if mods["Nanobots3"]then
	if SS["FreeNanobots"].value == true then
		Recipe["ammo-nano-constructors"].ingredients = nil
		Recipe["ammo-nano-termites"].ingredients = nil
	end
end