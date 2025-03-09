local DRT = data.raw.technology
local SS = settings.startup

if mods["More-Asteroid-Resources-Forked"] then
	if SS["carbon-steel"].value then
		table.insert(DRT["trace-carbonic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(DRT["trace-carbonic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	end
elseif mods["space-age"] then
	if SS["carbon-steel"].value then
		table.insert(DRT["advanced-asteroid-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(DRT["advanced-asteroid-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	end
end