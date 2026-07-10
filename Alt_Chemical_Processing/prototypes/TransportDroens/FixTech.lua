---@class data.RecipePrototype
local Tech = data.raw["technology"]
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]


if mods["pypostprocessing"]then
    if mods["Transport_Drones_Continued"] then
        Tech["fast-road"].research_trigger = {type ="craft-item", item ="road", amount = 1000}
        Tech["fast-road"].unit = nil

        Tech["transport-system"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
        Tech["transport-fluids"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
        Tech["transport-buffering"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
        Tech["transport-active-supply"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
        Tech["transport-multi-pipe"].unit.ingredients = {
			{"automation-science-pack",  2},
			{"py-science-pack-1",  1}
		}
    end
	if mods["bobplates"] and mods["bobrevamp"] and mods["bobtech"] then
	Tech["fast-road"].research_trigger = {type ="craft-item", item ="road", amount = 1000}
        Tech["fast-road"].unit = nil
        Tech["transport-system"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
        Tech["transport-fluids"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
        Tech["transport-buffering"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
        Tech["transport-active-supply"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
        Tech["transport-multi-pipe"].unit.ingredients = {
			{"automation-science-pack",  2},
		}
	end
	if Recipe["active-depot"].hidden == true then Tech["transport-active-supply"].hidden = true end
	if Recipe["active-depot"].hidden == true then Tech["transport-active-supply"].enabled = false end
end
