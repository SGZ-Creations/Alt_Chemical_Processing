local DRT = data.raw.technology
local SS = settings.startup

if SS["iron-utillity"].value then
	table.insert(DRT["utility-science-pack"].effects, {type="unlock-recipe", recipe="iron-ore-utillity"})
end

if mods["space-age"] then
	if SS["seed-spoilage"].value then
		table.insert(DRT["biochamber"].effects, {type="unlock-recipe", recipe="spoiled-seed"})
	end
end