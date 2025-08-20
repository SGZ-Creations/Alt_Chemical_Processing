---@class data.TechnologyPrototype
Tech = data.raw.technology
---@class data.RecipePrototype
Recipe = data.raw.recipe


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
		table.insert(Tech["construction-robotics"].effects, {type = "unlock-recipe", recipe = "BRE-construction-robotics"})
		table.insert(Tech["logistic-robotics"].effects, {type = "unlock-recipe", recipe = "BRE-logistic-robot"})
		table.insert(Tech["construction-robotics"].effects, {type = "unlock-recipe", recipe = "BRE-roboport"})
		table.insert(Tech["logistic-robotics"].effects, {type = "unlock-recipe", recipe = "BRE-roboport"})

		if mods["boblogistics"] then
			Recipe["logistic-robot"].hidden = true
			Recipe["logistic-robot"].enabled = false
			Recipe["construction-robot"].hidden = true
			Recipe["construction-robot"].enabled = false
			Recipe["roboport"].hidden = true
			Recipe["roboport"].enabled = false

			if mods["bobelectronics"] then
				Recipe["BRE-logistic-robot"].ingrediends = {
					{type = "item", name = "bob-basic-circuit-board", amount = 2},
					{type = "item", name = "flying-robot-frame", amount = 1},
				}
				Recipe["BRE-construction-robotics"].ingrediends = {
					{type = "item", name = "bob-basic-circuit-board", amount = 2},
					{type = "item", name = "flying-robot-frame", amount = 1},
				}
			end
		end
	end
end