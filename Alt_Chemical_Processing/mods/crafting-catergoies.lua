---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]

data:extend({
	{
		type = "recipe-category",
		name = "electronics-or-handcrafting"
	},
	{
		type = "recipe-category",
		name = "chemical-hands"
	},
	{
		type = "recipe-category",
		name = "BioCryo"
	},
})


table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories, "chemical-hands")

table.insert(data.raw["character"]["character"].crafting_categories, "electronics-or-handcrafting")
table.insert(data.raw["character"]["character"].crafting_categories, "chemical-hands")

if mods["space-age"] then
	table.insert(data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories, "electronics-or-handcrafting")
	table.insert(data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories, "chemical-hands")
	table.insert(data.raw["assembling-machine"]["biochamber"].crafting_categories, "BioCryo")
	table.insert(data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories, "BioCryo")
end

if mods["space-age"] then
	if not mods["electromagnetic-plant-expanded"] then
		Recipe["burner-inserter"].category = "electronics"
		Recipe["inserter"].category = "electronics"
		Recipe["long-handed-inserter"].category = "electronics"
		Recipe["fast-inserter"].category = "electronics"
		Recipe["bulk-inserter"].category = "electronics"
		Recipe["stack-inserter"].category = "electronics"
	end
end