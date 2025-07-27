---@class data.CapsulePrototype
local Caps = data.raw["capsule"]


if mods["SaltedFish"] then
	Caps["salted-fish"].capsule_action.attack_parameters.ammo_type.action.action_delivery.target_effects[1].damage = {type = "physical", amount = -160}
end