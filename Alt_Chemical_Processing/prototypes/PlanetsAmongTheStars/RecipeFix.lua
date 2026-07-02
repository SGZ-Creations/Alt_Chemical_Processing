--local RemoveIngredient = require("__Alt_Chemical_Processing__/prototypes/Base/Function.lua")
---@class data.RecipePrototype
local Recipe = data.raw.recipe

function RemoveIngredient(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipe[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipe[recipe_name].ingredients, i)
        elseif ingredient.name == nil then
            error("ERROR.. \""..ingredient_name.."\" Ingrediant name Failed to Load!")
        elseif Recipe[recipe_name] == nil then
            error("ERROR... \""..recipe_name.."\" Recipe name Failed to Load!")
        end
    end
end

if mods["planetaris-hyarion"] and not mods["TIMSABA"] then
	RemoveIngredient("hyarion-geode-mining-drill", "burner-mining-drill")
	RemoveIngredient("hyarion-geode-mining-drill", "electronic-circuit")
	table.insert(Recipe["hyarion-geode-mining-drill"].ingredients, {type = "item", name = "big-mining-drill", amount = 1})
end
--[[
---@class FluidPrototype
local Fluid = data.raw.fluid
if mods["bobrevamp"] and mods["planet-muluna"] then
    Fluid["bob-carbon-dioxide"].min_temperature = 15
    Fluid["bob-carbon-dioxide"].max_temperature = 100
    Fluid["bob-carbon-dioxide"].heat_capacity = 500
end
]]