---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]

data:extend({
	{
		type = "recipe-category",
		name = "electronics-or-handcrafting"
	}
})

table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["character"]["character"].crafting_categories, "electronics-or-handcrafting")

if mods["space-age"] then
	table.insert(data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories, "electronics-or-handcrafting")
end


if not mods["electromagnetic-plant-expanded"] then
	Recipe["burner-inserter"].category = "electronics"
	Recipe["inserter"].category = "electronics"
	Recipe["long-handed-inserter"].category = "electronics"
	Recipe["fast-inserter"].category = "electronics"
	Recipe["bulk-inserter"].category = "electronics"
	Recipe["stack-inserter"].category = "electronics"
end