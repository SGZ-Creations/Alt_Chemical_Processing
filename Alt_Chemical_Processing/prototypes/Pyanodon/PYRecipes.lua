local SS = settings.startup
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

	if SS["Explosives"].value then
		Recipe["cliff-explosives-1"].category = "crafting-with-fluid"
		Recipe["explosives-0"].category = "crafting-with-fluid"
		Recipe["explosives-0"].ingredients = {
			{type = "item", name = "gunpowder", amount = 10},
			{type = "fluid", name = "tar", amount = 50},
		}
	end

	if SS["Grenades"].value then
		Recipe["early-nades"].ingredients = {
			{type = "item", name = "gunpowder", amount = 10},
			{type = "item", name = "iron-plate", amount = 10},
			{type = "item", name = "ceramic", amount = 10},
		}
		Recipe["grenade"].ingredients = {
			{type = "item", name = "gunpowder", amount = 10},
			{type = "item", name = "iron-plate", amount = 10},
			{type = "item", name = "ceramic", amount = 10},
		}
	end

	if not mods["boblogistics"]and mods["bobinserters"] then
		Recipe["long-handed-inserter-2"].hidden = true
		Recipe["long-handed-inserter-2"].enable = false
	end
	if mods["pyalienlife"] then
		Recipe["moondrop-seeds"].icon = "__pyalienlifegraphics__/graphics/icons/moondrop-seeds.png"
		Recipe["moondrop-seeds"].results = {
			{type = "item", name = "moondrop", probability = 0.25, amount_min = 1, amount_max = 5},
			{type = "item", name = "moondrop", amount = 5},
			{type = "item", name = "moondrop-seeds", probability = 0.25, amount_min = 1, amount_max = 5},
			{type = "item", name = "moondrop-seeds", amount = 5},
		}
	end
end