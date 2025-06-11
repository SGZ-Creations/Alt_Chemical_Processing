---@class data.RecipePrototype
local Recipes = data.raw.recipe

if mods["StoneWaterWell-ActuallyUpdated"] then
	Recipes["stone-waterwell"].ingredients = {
		{type ="item", name="stone", amount = 40},
		{type ="item", name="stone-brick", amount = 8},
		{type ="item", name="copper-plate", amount = 5},
		{type ="item", name="offshore-pump", amount = 1},
	}
end