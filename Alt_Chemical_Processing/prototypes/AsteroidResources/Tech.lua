---@class data.prototypeTechnology
local Tech = data.raw.technology
---@class LuaSettings
local SS = settings.startup

if mods["More-Asteroid-Resources-Forked"] then
	if SS["carbon-steel"].value then
		table.insert(Tech["trace-carbonic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(Tech["trace-carbonic-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	end
elseif mods["space-age"] then
	if SS["carbon-steel"].value then
		table.insert(Tech["advanced-asteroid-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel"})
		table.insert(Tech["advanced-asteroid-processing"].effects, {type="unlock-recipe", recipe="foundry-carbon-steel-plate"})
	end
end