--[[
CC GNU Lesser General Public License version 3
https://opensource.org/license/lgpl-3.0
]]

local Tech = data.raw["technology"]
local Recipe = data.raw["recipe"]

if mods["Transport_Drones_Continued"] then
	Tech["fast-road"].research_trigger = {type ="craft-item", item ="road", count = 1000}
    Tech["fast-road"].unit = nil
	if Recipe["active-depot"].enabled == false then Tech["transport-active-supply"].hidden = true end
	if Recipe["active-depot"].enabled == false then Tech["transport-active-supply"].enabled = false end

    if mods["pypostprocessing"]then
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

	if mods["bobplates"] and mods["bobrevamp"] then
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
end
