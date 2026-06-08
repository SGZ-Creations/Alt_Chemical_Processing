---@class data.ItemPrototype
local Item = data.raw["item"]
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]

if mods["pypostprocessing"]then
	Recipe["road"].ingredients = {
		{type = "fluid", name = "tar", amount = 10},
		{type = "item", name = "stone", amount = 5},
		{type = "item", name = "gravel", amount = 10},
		{type = "item", name = "soil", amount = 20},
	}
	if mods["vanilla-loaders-hd"]then
		Recipe["fast-road"].ingredients = {
			{type = "item", name = "road", amount = 1},
			{type = "fluid", name = "pitch", amount = 20},
			{type = "item", name = "concrete", amount = 20},
			{type = "item", name = "stone-brick", amount = 20},
		}
	end
end