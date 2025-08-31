---@class data.ItemPrototype
local Item = data.raw["item"]

if mods["Quantum-diffuser"]then
	Recipe["quantum-emitter"].ingredients = {
			{type = "item", name = "steel-plate", amount = 500},
			{type = "item", name = "processing-unit", amount = 50},
			{type = "item", name = "beacon", amount = 10}
		}
	if mods["space-age"]then
		Recipe["quantum-emitter"].ingredients = {
			{type = "item", name = "superconductor", amount = 200},
			{type = "item", name = "tungsten-carbide", amount = 200},
			{type = "item", name = "carbon-fiber", amount =200},
			{type = "item", name = "processing-unit", amount = 50},
			{type = "item", name = "beacon", amount = 2}
		}
	end
	Item["quantum-emitter"].stack_size = 10
end