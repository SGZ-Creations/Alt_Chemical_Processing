---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
--[[
Tech["EasyWindTurbine3"].hidden = false
Tech["EasyWindTurbine3"].enabled = true
]]
if mods["easy-wind-turbine"] then
	--if SS[BrokenWindTech"].value then
		data:extend({
			{
				type = "technology",
				name = "EWT-3",
				icon = "__easy-wind-turbine__/graphics/windturbine3.png",
				icon_size = 128,
				prerequisites = {"EasyWindTurbine2"},
				effects = {
					{
						type = "unlock-recipe",
						recipe = "EasyWindTurbine3"
					},
					{
						type = "unlock-recipe",
						recipe = "UpgradeWindTurbine2"
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
	--end
end