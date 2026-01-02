---@class LuaSettings
local SS = settings.startup
---@class data.LampPrototype
local Lamp = data.raw["lamp"]
---@class ItemPrototype
local Item = data.raw["item"]
---@class ItemPrototype
local Miner = data.raw["mining-drill"]


if mods["base"] then
	data.raw.projectile["cliff-explosives"].action[1].action_delivery.target_effects[3].radius = SS["ExplosiveRadius"].value
	data.raw.capsule["cliff-explosives"].capsule_action.attack_parameters.range = SS["ExplosiveRange"].value
end

if mods["base"] then
	Lamp["small-lamp"].light = {intensity = 1, size = 50, color = {1, 1, 1}}
	Miner["electric-mining-drill"].mining_speed = SS["MiningSpeedSetting"].value
end

if not mods["BigBags"] then
	Item["nuclear-fuel"].stack_size = SS["FuelStacks"].value
elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be available for Bigbags to not default back.
	Item["nuclear-fuel"].stack_size = 50
end