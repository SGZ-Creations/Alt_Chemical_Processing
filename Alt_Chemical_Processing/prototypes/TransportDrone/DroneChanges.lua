---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
---@class LuaSettings
local SS = settings.startup


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

if mods["SeaBlock"] and mods["Transport_Drones_Meglinge_Fork"] then
	Tech["transport-system"].research_trigger = {type ="craft-fluid", fluid ="angels-gas-hydrogen", amount = 5000}
	Tech["transport-system"].prerequisites = nil
	Tech["transport-system"].unit = nil
end

if mods["SeaBlock"] and mods["Transport_Drones_Meglinge_Fork"] then
	RemoveIngredient("transport-drone", "engine-unit")
	table.insert(Recipe["transport-drone"].ingredients, {type="item", name= "bob-basic-circuit-board", amount=2})
	RemoveIngredient("road", "coal")
	table.insert(Recipe["road"].ingredients, {type="item", name= "angels-wood-charcoal", amount=10})
end