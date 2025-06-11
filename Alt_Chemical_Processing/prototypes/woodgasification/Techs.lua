---@class data.TechnologyPrototype
local Tech = data.raw.technology
---@class data.SettingsStartup
local SS = settings.startup

if mods["Wood_Gasification_updated"]and mods["space-age"] then
		table.insert(Tech["yumako"].effects, {type = "unlock-recipe", recipe = "nutrient-yumako-seed"})
		table.insert(Tech["jellynut"].effects, {type = "unlock-recipe", recipe = "nutrient-jellynut-seed"})
	if SS["yumako-jellynut"].value == true then
		table.insert(Tech["yumako"].effects, {type = "unlock-recipe", recipe = "no-pressure-yumako"})
		table.insert(Tech["jellynut"].effects, {type = "unlock-recipe", recipe = "no-pressure-jellynut"})
	end
end