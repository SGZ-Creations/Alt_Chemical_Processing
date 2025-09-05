---@class data.TechnologyPrototype
local Tech = data.raw["technology"]


if mods["Quantum-diffuser"]then
	Tech["Quantum-Tech"].prerequisites = nil
	Tech["Quantum-Tech"].hidden = true
	Tech["quantum-emitter"].prerequisites = {"effect-transmission"}
	Tech["quantum-emitter"].unit.ingredients = {
		{"automation-science-pack",      1},
		{"logistic-science-pack",        1},
		{"chemical-science-pack",        1},
		{"production-science-pack",      1},
	}
	if mods["space-age"] then
		Tech["quantum-emitter"].unit.ingredients = {
			{"automation-science-pack",      1},
			{"logistic-science-pack",        1},
			{"chemical-science-pack",        1},
			{"production-science-pack",      1},
			{"utility-science-pack",         1},
			{"space-science-pack",           1},
			{"metallurgic-science-pack",     1},
			{"electromagnetic-science-pack", 1}
		}
	end
	if mods["god-module"]then
		table.insert(Tech["quantum-emitter"].prerequisites, "god-module")
	end
end