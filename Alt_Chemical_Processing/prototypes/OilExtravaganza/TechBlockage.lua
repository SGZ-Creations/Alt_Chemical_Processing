---@class data.TechnologyPrototype
local Tech = data.raw["technology"]

if mods["James-Oil-Processing"] then
	Tech["oil-processing"].research_trigger = {type ="craft-item", item ="pumpjack", amount = 5}
end