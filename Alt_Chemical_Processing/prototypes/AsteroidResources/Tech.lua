---@class data.prototypeTechnology
local Tech = data.raw.technology
---@class LuaSettings
local SS = settings.startup

if mods["More-Asteroid-Resources-Forked"] then
	if SS["carbon-steel"].value then
		table.insert(Tech["trace-carbonic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(Tech["trace-carbonic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
		table.insert(Tech["trace-metallic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(Tech["trace-metallic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	end
elseif mods["space-age"] then
	if SS["carbon-steel"].value then
		table.insert(Tech["advanced-asteroid-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(Tech["advanced-asteroid-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	end
end

if mods["bobplates"] and mods["space-age"] then
	if SS["carbon-steel"].value then
		table.insert(Tech["electromagnetic-plant"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(Tech["electromagnetic-plant"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	end
end