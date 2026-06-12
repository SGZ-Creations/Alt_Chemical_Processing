---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class data.TechnologyPrototype
local Tech = data.raw.technology

if mods["space-age"] then
	if mods["bobrevamp"] and mods["bobplates"] and mods["bobtech"]then
		Recipe["rocket-part"].ingredients = {
			{type = "item", name = "low-density-structure", amount = 5},
			{type = "item", name = "bob-heat-shield-tile", amount = 5},
			{type = "item", name = "processing-unit", amount = 2},
			{type = "item", name = "bob-gold-plate", amount = 2},
			{type = "item", name = "rocket-fuel", amount = 2}
		}

		Recipe["rocket-silo"].ingredients = {
			{type = "item", name = "processing-unit", amount = 100},
			{type = "item", name = "bob-heat-shield-tile", amount = 100},
			{type = "item", name = "low-density-structure", amount = 100},
			{type = "item", name = "electric-engine-unit", amount = 200},
			{type = "item", name = "refined-concrete", amount = 200},
			{type = "item", name = "bob-aluminium-plate", amount = 500},
			{type = "item", name = "bob-titanium-plate", amount = 500},
		}

		Tech["rocket-silo"].prerequisites = {
			"concrete",
			"rocket-fuel",
			"bob-heat-shield",
			"low-density-structure",
			"processing-unit",
		}
	end
end