---@class data.ItemPrototype
local Item = data.raw["item"]
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]

if mods["pypostprocessing"]then
	Recipe["splitter"].ingredients = {
		{type = "item", name = "burner-inserter", amount = 2},
		{type = "item", name = "transport-belt", amount = 4},
		{type = "item", name = "iron-plate", amount = 5},
	}
	if mods["vanilla-loaders-hd"]then
		Recipe["loader"].ingredients = {
			{type = "item", name = "burner-inserter", amount = 4},
			{type = "item", name = "small-parts-01", amount = 20},
			{type = "item", name = "transport-belt", amount = 4},
			{type = "item", name = "ceramic", amount = 5},
		}
	end
	Recipe["cliff-explosives"].category = "crafting-with-fluid"
	Recipe["explosives"].category = "crafting-with-fluid"
end