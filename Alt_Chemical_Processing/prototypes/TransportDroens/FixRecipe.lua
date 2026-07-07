---@class data.ItemPrototype
local Item = data.raw["item"]
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]


if mods["Transport_Drones_Continued"]then
	if mods["pypostprocessing"]then
		Recipe["road"].category = "crafting-with-fluid"
		Recipe["road"].ingredients = {
			{type = "fluid", name = "tar", amount = 10},
			{type = "item", name = "stone", amount = 5},
			{type = "item", name = "gravel", amount = 10},
			{type = "item", name = "soil", amount = 20},
		}
		Recipe["fast-road"].ingredients = {
			{type = "item", name = "road", amount = 1},
			{type = "fluid", name = "pitch", amount = 20},
			{type = "item", name = "concrete", amount = 20},
			{type = "item", name = "stone-brick", amount = 20},
		}
	end
	if mods["bobplates"] and mods["bobrevamp"] then
		--Recipe["road"].category = "crafting-with-fluid"
		Recipe["road"].ingredients = {
			{type = "item", name = "stone-brick", amount = 10},
			{type = "item", name = "", amount = 10},
			{type = "item", name = "", amount = 20},
		}
		Recipe["fast-road"].ingredients = {
			{type = "item", name = "road", amount = 10},
			{type = "fluid", name = "crude-oil", amount = 100},
			{type = "item", name = "concrete", amount = 20},
			{type = "item", name = "stone-brick", amount = 20},
		}
	end
end