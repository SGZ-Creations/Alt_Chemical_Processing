---@class LuaSettings
local SS = settings.startup
---@class TechPrototype
local Tech = data.raw["technology"]

if SS["LiquidCoal"].value then
	table.insert(Tech["coal-liquefaction"].effects, {type = "unlock-recipe", recipe = "acid-coal-liquefaction"})
end

if mods["Flow Control"] and mods["SeaBlock"] then
	table.insert(Tech["sb-startup3"].effects, {type = "unlock-recipe", recipe = "pipe-straight"})
	table.insert(Tech["sb-startup3"].effects, {type = "unlock-recipe", recipe = "pipe-junction"})
	table.insert(Tech["sb-startup3"].effects, {type = "unlock-recipe", recipe = "pipe-elbow"})
end