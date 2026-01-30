---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]
---@class data.TechnologyPrototype
local Tech = data.raw["technology"]

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