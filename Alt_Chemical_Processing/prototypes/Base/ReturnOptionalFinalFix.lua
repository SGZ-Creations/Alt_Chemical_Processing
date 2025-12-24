---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]


function Remove(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipe[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipe[recipe_name].ingredients, i)
        elseif ingredient.name == nil then
            log("ERROR.. \""..ingredient_name.."\" had an issue!")
        elseif Recipe[recipe_name] == nil then
            log("ERROR... \""..recipe_name.."\" Had am issue!")
        end
    end
end

if SS["CliffRemovalService"].value == true then
	if SS["CliffAltItem"].value == true then
		if not mods["bobores"] then
			Remove("early-nades", "stone")
			Remove("grenade", "stone")
			table.insert(Recipe["early-nades"].ingredients, {type = "item", name = "copper-plate", amount = 10})
			table.insert(Recipe["grenade"].ingredients, {type = "item", name = "copper-plate", amount = 10})
		end
	end
end