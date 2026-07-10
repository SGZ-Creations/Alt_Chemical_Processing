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
		Recipe["road"].ingredients = {
			{type = "item", name = "stone-brick", amount = 10},
			{type = "item", name = "coal", amount = 10},
		}
		Recipe["fast-road"].ingredients = {
			{type = "item", name = "road", amount = 10},
			{type = "fluid", name = "crude-oil", amount = 100},
			{type = "item", name = "concrete", amount = 10},
		}
		Recipe["drone-dispatcher"].ingredients = {
			{type = "item", name = "bob-invar-alloy", amount = 10},
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-glass", amount = 100},
			{type = "item", name = "bob-solder", amount = 20},
		}
		Recipe["request-depot"].ingredients = {
			{type = "item", name = "bob-bronze-alloy", amount = 25},
			{type = "item", name = "electronic-circuit", amount = 20},
			{type = "item", name = "bob-glass", amount = 100},
			{type = "item", name = "bob-solder", amount = 20},
		}
		Recipe["supply-depot"].ingredients = {
			{type = "item", name = "bob-bronze-alloy", amount = 25},
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-glass", amount = 100},
			{type = "item", name = "bob-solder", amount = 20},
		}
		Recipe["active-depot"].ingredients = {
			{type = "item", name = "bob-silver-plate", amount = 50},
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-insulated-cable", amount = 25},
			{type = "item", name = "bob-glass", amount = 100},
		}
		Recipe["buffer-depot"].ingredients = {
			{type = "item", name = "bob-silver-plate", amount = 50},
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-insulated-cable", amount = 25},
			{type = "item", name = "bob-glass", amount = 100},
		}
		Recipe["storage-depot"].ingredients = {
			{type = "item", name = "bob-silver-plate", amount = 50},
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-insulated-cable", amount = 25},
			{type = "item", name = "bob-glass", amount = 100},
		}
		Recipe["fluid-depot"].ingredients = {
			{type = "item", name = "bob-bronze-alloy", amount = 25},
			{type = "item", name = "bob-steel-pipe", amount = 10},
			{type = "item", name = "bob-lead-plate", amount = 50},
			{type = "item", name = "copper-plate", amount = 50},
		}
		Recipe["fuel-depot"].ingredients = {
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-silver-plate", amount = 50},
			{type = "item", name = "bob-bronze-alloy", amount = 25},
			{type = "item", name = "bob-glass", amount = 100},
			{type = "item", name = "bob-rubber", amount = 20},
		}
		Recipe["transport-drone"].ingredients = {
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "engine-unit", amount = 10},
		}
		Recipe["transport-drone"].results = {
			{type = "item", name = "transport-drone", amount = 10},
		}
	end
end