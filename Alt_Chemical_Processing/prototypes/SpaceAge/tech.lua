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
if mods["More-Asteroid-Resources-Forked"] and mods["space-age"] then
	if SS["carbon-steel"].value then
		table.insert(DRT["trace-carbonic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(DRT["trace-carbonic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	elseif mods["space-age"] and not mods["More-Asteroid-Resources-Forked"] then
		table.insert(DRT["advanced-asteroid-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(DRT["advanced-asteroid-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	end
end