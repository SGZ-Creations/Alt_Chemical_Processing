---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class LuaSettings
local SS = settings.startup

if mods["metal-and-stars"] and mods["Better_Robots_Extended"]then
	if SS["BRE_Tier-Stufe"].value == "MK5" then
		Recipe["antimatter-logistic-robot"].ingredients = {
			{type ="item", name="antimatter", amount = 1},
			{type ="item", name="BRE-logistic-robotics-mk5", amount = 1},
		}
		Recipe["antimatter-construction-robot"].ingredients = {
			{type ="item", name="antimatter", amount = 1},
			{type ="item", name="BRE-construction-robotics-mk5", amount = 1},
		}
	elseif SS["BRE_Tier-Stufe"].value == "MK4" then
		Recipe["antimatter-logistic-robot"].ingredients = {
			{type ="item", name="antimatter", amount = 1},
			{type ="item", name="BRE-logistic-robotics-mk4", amount = 1},
		}
		Recipe["antimatter-construction-robot"].ingredients = {
			{type ="item", name="antimatter", amount = 1},
			{type ="item", name="BRE-construction-robotics-mk4", amount = 1},
		}
	elseif SS["BRE_Tier-Stufe"].value == "MK3" then
		Recipe["antimatter-logistic-robot"].ingredients = {
			{type ="item", name="antimatter", amount = 1},
			{type ="item", name="BRE-logistic-robotics-mk3", amount = 1},
		}
		Recipe["antimatter-construction-robot"].ingredients = {
			{type ="item", name="antimatter", amount = 1},
			{type ="item", name="BRE-construction-robotics-mk3", amount = 1},
		}
	elseif SS["BRE_Tier-Stufe"].value == "MK2" then
		Recipe["antimatter-logistic-robot"].ingredients = {
			{type ="item", name="antimatter", amount = 1},
			{type ="item", name="BRE-logistic-robotics-mk2", amount = 1},
		}
		Recipe["antimatter-construction-robot"].ingredients = {
			{type ="item", name="antimatter", amount = 1},
			{type ="item", name="BRE-construction-robotics-mk2", amount = 1},
		}
	end
end