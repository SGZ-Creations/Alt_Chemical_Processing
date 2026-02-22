---@class data.ItemPrototype
local Item = data.raw["item"]
---@class data.SettingsStartup
local SS = settings.startup

if mods["Transport_Drones_Continued"] and mods["BigBags"] then
	Item["transport-drone"].stack_size = SS["DroneStacksContinued"].value
end