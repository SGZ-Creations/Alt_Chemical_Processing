---@class data.RecipePrototype
local Recipe = data.raw.recipe
if mods["bobrevamp"] and mods["bobplates"] then
	Recipe["rocket-part"].ingredients = {
		{type = "item", name = "bob-advanced-processing-unit", amount = 1},
		{type = "item", name = "low-density-structure", amount = 1},
		{type = "item", name = "bob-aluminium-plate", amount = 1},
		{type = "item", name = "bob-heat-shield-tile", amount = 1},
		{type = "item", name = "bob-titanium-plate", amount = 1},
		{type = "item", name = "rocket-fuel", amount = 1}
	}
end