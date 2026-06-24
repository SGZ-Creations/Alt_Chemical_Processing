---@class data.RecipePrototype
local Recipes = data.raw.recipe

if (mods["StoneWaterWell-ActuallyUpdated"] or mods["StoneWaterWell-NoRestrict"]) then
	Recipes["stone-waterwell"].ingredients = {
		{type ="item", name="stone", amount = 10},
		{type ="item", name="stone-brick", amount = 10},
		{type ="item", name="copper-plate", amount = 10},
		{type ="item", name="offshore-pump", amount = 1},
	}
end