---@class data.SettingsStartup
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]

if mods["god-module"] then
	Recipe["god-module"].ingredients = {
		{type ="item", name="god-module-speed", amount = 1},
		{type ="item", name="god-module-efficiency", amount = 1},
		{type ="item", name="god-module-productivity", amount = 1 },
	}
	Recipe["god-module-no-prod"].ingredients = {
		{type ="item", name="god-module-speed", amount = 1},
		{type ="item", name="god-module-efficiency", amount = 1},
	}
	if mods["space-age"] then
		if SS["god-module-recipe-require-quality"].value == true then
			Recipe["god-module-has-quality"].ingredients = {
				{type ="item", name="god-module-speed", amount = 1},
				{type ="item", name="god-module-quality", amount = 1},
				{type ="item", name="god-module-efficiency", amount = 1},
				{type ="item", name="god-module-productivity", amount = 1},
			}
			Recipe["god-module-no-prod-has-quality"].ingredients = {
				{type ="item", name="god-module-speed", amount = 1},
				{type ="item", name="god-module-quality", amount = 1},
				{type ="item", name="god-module-efficiency", amount = 1},
			}
		end
		if SS["god-module-recipe-require-quality"].value == false then
			Recipe["god-module-has-quality"].ingredients = {
				{type ="item", name="god-module-speed", amount = 1},
				{type ="item", name="god-module-efficiency", amount = 1},
				{type ="item", name="god-module-productivity", amount = 1},
			}
			Recipe["god-module-no-prod-has-quality"].ingredients = {
				{type ="item", name="god-module-speed", amount = 1},
				{type ="item", name="god-module-efficiency", amount = 1},
			}
		end
	end
	if mods["space-age"] then
		if SS["god-module-easier-craft"].value == false then
			Recipe["god-module-speed"].ingredients = {
				{type ="item", name="speed-module-3", amount = 2},
			}
			Recipe["god-module-productivity"].ingredients = {
				{type ="item", name="productivity-module-3", amount = 2},
			}
			Recipe["god-module-efficiency"].ingredients = {
				{type ="item", name="efficiency-module-3", amount = 2},
			}
			Recipe["god-module-quality"].ingredients = {
				{type ="item", name="quality-module-3", amount = 2},
			}
		end
		if SS["god-module-easier-craft"].value == true then
			Recipe["god-module-speed"].ingredients = {
				{type ="item", name="speed-module-2", amount = 1},
			}
			Recipe["god-module-productivity"].ingredients = {
				{type ="item", name="productivity-module-2", amount = 1},
			}
			Recipe["god-module-efficiency"].ingredients = {
				{type ="item", name="efficiency-module-2", amount = 1},
			}
			Recipe["god-module-quality"].ingredients = {
				{type ="item", name="quality-module-2", amount = 1},
			}
		end
	end
end

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

if mods["god-module"] and mods["secretas"]then
	Remove("god-module-efficiency", "efficiency-module-3")
	Remove("god-module-speed", "speed-module-3")
	Remove("god-module-productivity", "productivity-module-3")
	Remove("god-module-quality", "quality-module-3")

	table.insert(Recipe["god-module-efficiency"].ingredients, {type ="item", name="efficiency-module-4-S", amount = 2})
	table.insert(Recipe["god-module-speed"].ingredients, {type ="item", name="speed-module-4-S", amount = 2})
	table.insert(Recipe["god-module-productivity"].ingredients, {type ="item", name="productivity-module-4-S", amount = 2})
	table.insert(Recipe["god-module-quality"].ingredients, {type ="item", name="quality-module-4-S", amount = 2})
end