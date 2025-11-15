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

if mods["god-module"] and mods["secretas"]then
	table.insert(Recipe["god-module-efficiency"].ingredients, {type ="item", name="efficiency-module-4-S", amount = 1})
	table.insert(Recipe["god-module-speed"].ingredients, {type ="item", name="speed-module-4-S", amount = 1})
	table.insert(Recipe["god-module-productivity"].ingredients, {type ="item", name="productivity-module-4-S", amount = 1})
	table.insert(Recipe["god-module-quality"].ingredients, {type ="item", name="quality-module-4-S", amount = 1})
end