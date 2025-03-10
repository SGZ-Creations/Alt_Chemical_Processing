local DRT = data.raw.technology
local SS = settings.startup

if SS["iron-utillity"].value then
	table.insert(DRT["utility-science-pack"].effects, {type="unlock-recipe", recipe="iron-ore-utillity"})
end

if mods["space-age"] then
	if SS["seed-spoilage"].value then
		table.insert(DRT["biochamber"].effects, {type="unlock-recipe", recipe="spoiled-seed"})
	end
	if SS["LavaCraft"].value then
		table.insert(DRT["foundry"].effects, {type = "unlock-recipe", recipe = "slow-lava"})
		table.insert(DRT["artillery"].effects, {type = "unlock-recipe", recipe = "fast-lava"})
	end
end