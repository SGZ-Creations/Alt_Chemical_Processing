---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]
---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
local SS = settings.startup

if mods["Nanobots3"]then
	if mods["SeaBlock"] then
		Tech["nanobots"].research_trigger = {type ="craft-item", item ="bob-basic-circuit-board", amount = 20}
		Tech["nanobots"].unit = nil
		Tech["nanobots"].prerequisites = nil
		Recipe["gun-nano-emitter"].ingredients = {
			{type ="item", name="bob-basic-circuit-board", amount = 10},
			{type ="item", name="copper-plate", amount = 5},
			{type ="item", name="iron-plate", amount = 5},
		}
	end
	if mods["pypostprocessing"] then
		Tech["nanobots"].research_trigger = {type ="craft-item", item ="repair-pack", amount = 1}
		Tech["nanobots"].unit = nil
		Tech["nanobots"].prerequisites = "repair-packs"
		Recipe["gun-nano-emitter"].ingredients = {
			{type ="item", name="repair-pack", amount = 5},
			{type ="item", name="copper-plate", amount = 5},
			{type ="item", name="iron-plate", amount = 5},
		}
	end
	if SS["FreeNanobots"].value == true then
		Recipe["ammo-nano-constructors"].ingredients = nil
		Recipe["ammo-nano-termites"].ingredients = nil
	end
	if SS["NanobotsTermites"].value == true then
		--if Recipe["ammo-nano-termites"].ingredients == nil then return end
	--else
		Recipe["ammo-nano-termites"].enabled = false
		Recipe["ammo-nano-termites"].hiddden = true
		Recipe["ammo-nano-termites"].hidden_in_factoriopedia = true
	end
end