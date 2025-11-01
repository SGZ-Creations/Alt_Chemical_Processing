---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
--[[
Tech["easy-wind-turbine-3"].hidden = false
Tech["easy-wind-turbine-3"].enabled = true
]]
if mods["easy-wind-turbine"] then
	data:extend({
		{
			type = "technology",
			name = "EWT-3",
			icon = "__easy-wind-turbine__/graphics/windturbine3.png",
			icon_size = 128,
			prerequisites = {"easy-wind-turbine-2"},
			effects = {
				{
					type = "unlock-recipe",
					recipe = "easy-wind-turbine-3"
				},
				{
					type = "unlock-recipe",
					recipe = "upgrade-wind-turbine-2"
				}
			},
			unit = {
				count = 200,
				ingredients = {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"utility-science-pack", 1},
				},
				time = 20
			}
		}
	})
end