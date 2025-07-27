local SS = settings.startup
---@class data.LampPrototype
local Lamp = data.raw["lamp"]

if mods["base"] then
	data.raw.projectile["cliff-explosives"].action[1].action_delivery.target_effects[3].radius = SS["ExplosiveRadius"].value
	data.raw.capsule["cliff-explosives"].capsule_action.attack_parameters.range = SS["ExplosiveRange"].value
end

if mods["base"] then
	Lamp["small-lamp"].light = {intensity = 1, size = 50, color = {1, 1, 1}}
end