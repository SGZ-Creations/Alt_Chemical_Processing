local DRT = data.raw.technology
local SS = settings.startup

if mods["Wood_Gasification_updated"]and mods["space-age"] then
		table.insert(DRT["yumako"].effects, {type = "unlock-recipe", recipe = "nutrient-yumako-seed"})
		table.insert(DRT["jellynut"].effects, {type = "unlock-recipe", recipe = "nutrient-jellynut-seed"})
	if SS["yumako-jellynut"].value == true then
		table.insert(DRT["yumako"].effects, {type = "unlock-recipe", recipe = "no-pressure-yumako"})
		table.insert(DRT["jellynut"].effects, {type = "unlock-recipe", recipe = "no-pressure-jellynut"})
	end
end