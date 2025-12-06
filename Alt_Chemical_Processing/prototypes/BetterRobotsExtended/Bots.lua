---@class data.TechnologyPrototype
local Tech = data.raw.technology
---@class data.RecipePrototype
local Recipe = data.raw.recipe


if mods["Better_Robots_Extended"] then
	if settings.startup["BRE-erzwinge-MK1-Bots"].value == true then
		Recipe["BRE-logistic-robot"].order = "AA[robot]-AA[logistic-robot]"
		Recipe["BRE-construction-robotics"].order = "AA[robot]-BA[construction-robot]"
	end
	Recipe["BRE-logistic-robotics-mk2"].order = "AA[robot]-AB[logistic-robot]"
	Recipe["BRE-logistic-robotics-mk3"].order = "AA[robot]-AC[logistic-robot]"
	Recipe["BRE-logistic-robotics-mk4"].order = "AA[robot]-AD[logistic-robot]"
	Recipe["BRE-logistic-robotics-mk5"].order = "AA[robot]-AE[logistic-robot]"
	Recipe["BRE-construction-robotics-mk2"].order = "AA[robot]-BB[construction-robot]"
	Recipe["BRE-construction-robotics-mk3"].order = "AA[robot]-BC[construction-robot]"
	Recipe["BRE-construction-robotics-mk4"].order = "AA[robot]-BD[construction-robot]"
	Recipe["BRE-construction-robotics-mk5"].order = "AA[robot]-BE[construction-robot]"
end

if mods["Better_Robots_Extended"] then
	if settings.startup["BRE-erzwinge-MK1-Bots"].value == true then
		table.insert(Tech["construction-robotics"].effects, {type = "unlock-recipe", recipe = "BRE-construction-robotics"})
		table.insert(Tech["logistic-robotics"].effects, {type = "unlock-recipe", recipe = "BRE-logistic-robot"})
		table.insert(Tech["construction-robotics"].effects, {type = "unlock-recipe", recipe = "BRE-roboport"})
		table.insert(Tech["logistic-robotics"].effects, {type = "unlock-recipe", recipe = "BRE-roboport"})
		Tech["BRE-construction-robotics-2"].effects = {{type = "unlock-recipe", recipe = "BRE-construction-robotics-mk2"}, {type = "unlock-recipe", recipe = "bre-roboport-mk2"}}
		Tech["BRE-logistic-robotics-2"].effects = {{type = "unlock-recipe", recipe = "BRE-logistic-robotics-mk2"}, {type = "unlock-recipe", recipe = "bre-roboport-mk2"}}

		if mods["boblogistics"] then
			Recipe["logistic-robot"].hidden = true
			Recipe["logistic-robot"].enabled = false
			Recipe["construction-robot"].hidden = true
			Recipe["construction-robot"].enabled = false
			Recipe["roboport"].hidden = true
			Recipe["roboport"].enabled = false
			Recipe["bob-robot-brain"].enabled = false
			Recipe["bob-robot-brain"].hidden = true
			Recipe["bob-robot-tool-logistic"].enabled = false
			Recipe["bob-robot-tool-logistic"].hidden = true
			Recipe["bob-robot-tool-construction"].enabled = false
			Recipe["bob-robot-tool-construction"].hidden = true

			if mods["bobelectronics"] then
				Recipe["BRE-logistic-robot"].ingredients = {
					{type = "item", name = "bob-basic-circuit-board", amount = 2},
					{type = "item", name = "flying-robot-frame", amount = 1},
				}
				Recipe["BRE-construction-robotics"].ingredients = {
					{type = "item", name = "bob-basic-circuit-board", amount = 2},
					{type = "item", name = "flying-robot-frame", amount = 1},
				}
				Recipe["logistic-robot"].ingredients = {
					{type = "item", name = "bob-basic-circuit-board", amount = 2},
					{type = "item", name = "flying-robot-frame", amount = 1},
				}
				Recipe["construction-robot"].ingredients = {
					{type = "item", name = "bob-basic-circuit-board", amount = 2},
					{type = "item", name = "flying-robot-frame", amount = 1},
				}
			end
		end
	end
end