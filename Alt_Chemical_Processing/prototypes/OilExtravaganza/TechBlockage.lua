---@class data.TechnologyPrototype
local Tech = data.raw["technology"]

if mods["James-Oil-Processing"] then
	Tech["oil-processing"].research_trigger = {type ="craft-item", item ="pumpjack", amount = 5}

	if mods["space-age"]then
		table.insert(Tech["basic-syngas-processing"].effects, {type ="unlock-recipe", recipe ="ChemicalSyngas"})
	end
end