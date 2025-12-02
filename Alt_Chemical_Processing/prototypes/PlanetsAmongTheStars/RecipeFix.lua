--local RemoveIngredient = require("__Alt_Chemical_Processing__/prototypes/Base/Function.lua")
---@class data.RecipePrototype
local Recipe = data.raw.recipe

function RemoveIngredient(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipe[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipe[recipe_name].ingredients, i)
        elseif ingredient.name == nil then
            log("ERROR.. \""..ingredient_name.."\" Had an issue!")
        elseif Recipe[recipe_name] == nil then
            log("ERROR... \""..recipe_name.."\" Had am issue!")
        end
    end
end

if mods["planetaris-hyarion"] then
	RemoveIngredient("hyarion-geode-mining-drill", "burner-mining-drill")
	RemoveIngredient("hyarion-geode-mining-drill", "electronic-circuit")
	table.insert(Recipe["hyarion-geode-mining-drill"].ingredients, {type = "item", name = "big-mining-drill", amount = 1})
end