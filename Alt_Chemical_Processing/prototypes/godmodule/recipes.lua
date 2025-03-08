local DRR = data.raw.recipe
local SS = settings.startup

if mods["god-module"] then
	DRR["god-module"].ingredients = {
		{type ="item", name="god-module-speed", amount = 1},
		{type ="item", name="god-module-efficiency", amount = 1},
		{type ="item", name="god-module-productivity", amount = 1 },
	}
	DRR["god-module-no-prod"].ingredients = {
		{type ="item", name="god-module-speed", amount = 1},
		{type ="item", name="god-module-efficiency", amount = 1},
	}
	if SS["god-module-recipe-require-quality"].value == true then
		DRR["god-module-has-quality"].ingredients = {
			{type ="item", name="god-module-speed", amount = 1},
			{type ="item", name="god-module-quality", amount = 1},
			{type ="item", name="god-module-efficiency", amount = 1},
			{type ="item", name="god-module-productivity", amount = 1},
		}
		DRR["god-module-no-prod-has-quality"].ingredients = {
			{type ="item", name="god-module-speed", amount = 1},
			{type ="item", name="god-module-quality", amount = 1},
			{type ="item", name="god-module-efficiency", amount = 1},
		}
	end
	if SS["god-module-recipe-require-quality"].value == false then
		DRR["god-module-has-quality"].ingredients = {
			{type ="item", name="god-module-speed", amount = 1},
			{type ="item", name="god-module-efficiency", amount = 1},
			{type ="item", name="god-module-productivity", amount = 1},
		}
		DRR["god-module-no-prod-has-quality"].ingredients = {
			{type ="item", name="god-module-speed", amount = 1},
			{type ="item", name="god-module-efficiency", amount = 1},
		}
	end
	if SS["god-module-easier-craft"].value == false then
		DRR["god-module-speed"].ingredients = {
			{type ="item", name="speed-module-3", amount = 1},
		}
		DRR["god-module-productivity"].ingredients = {
			{type ="item", name="productivity-module-3", amount = 1},
		}
		DRR["god-module-efficiency"].ingredients = {
			{type ="item", name="efficiency-module-3", amount = 1},
		}
		DRR["god-module-quality"].ingredients = {
			{type ="item", name="quality-module-3", amount = 1},
		}
	end
	if SS["god-module-easier-craft"].value == true then
		DRR["god-module-speed"].ingredients = {
			{type ="item", name="speed-module-2", amount = 2},
		}
		DRR["god-module-productivity"].ingredients = {
			{type ="item", name="productivity-module-2", amount = 2},
		}
		DRR["god-module-efficiency"].ingredients = {
			{type ="item", name="efficiency-module-2", amount = 2},
		}
		DRR["god-module-quality"].ingredients = {
			{type ="item", name="quality-module-2", amount = 2},
		}
	end
end