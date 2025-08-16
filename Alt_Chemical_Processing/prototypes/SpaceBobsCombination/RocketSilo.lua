---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class data.TechnologyPrototype
local Tech = data.raw.technology
---@class LuaSettings
local SS = settings.startup


if mods["space-age"] then
	if mods["bobrevamp"] and mods["bobplates"] and mods["bobtech"]then
		if SS["SimpleSilo"].value == true then
			Recipe["rocket-part"].ingredients = {
				{type = "item", name = "bob-advanced-processing-unit", amount = 1},
				{type = "item", name = "low-density-structure", amount = 1},
				{type = "item", name = "bob-heat-shield-tile", amount = 1},
				{type = "item", name = "rocket-fuel", amount = 1}
			}

			Recipe["rocket-silo"].ingredients = {
				{type = "item", name = "bob-advanced-processing-unit", amount = 55},
				{type = "item", name = "bob-heat-shield-tile", amount = 100},
				{type = "item", name = "low-density-structure", amount = 55},
				{type = "item", name = "electric-engine-unit", amount = 200},
				{type = "item", name = "refined-concrete", amount = 200},
				{type = "item", name = "bob-titanium-plate", amount = 200},
			}

			Tech["rocket-silo"].prerequisites = {
				"concrete",
				"rocket-fuel",
				"bob-heat-shield",
				"low-density-structure",
				"bob-advanced-processing-unit",
			}
		end
	end
end