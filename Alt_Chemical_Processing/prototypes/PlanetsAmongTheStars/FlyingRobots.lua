---@class FlyingRobotPrototype
local LogicBot = data.raw["logistic-robot"]
---@class FlyingRobotPrototype
local ConstructBot = data.raw["construction-robot"]
---@class LuaSettings
local SS = settings.startup


--Use Entity name when modifying bots with exception to stack size
if mods["metal-and-stars"] and mods["skewer_planet_vesta"]then
	if SS["ske_disable_metal_and_stars_bots"].value == false then
		LogicBot["fusion-logistic-robot"].speed = 0.6
		LogicBot["fusion-logistic-robot"].max_payload_size = 20
		ConstructBot["fusion-construction-robot"].speed = 0.6
		ConstructBot["fusion-construction-robot"].max_payload_size = 20

		LogicBot["antimatter-logistic-robot"].speed = 0.8
		LogicBot["antimatter-logistic-robot"].max_payload_size = 40
		ConstructBot["antimatter-construction-robot"].speed = 0.8
		ConstructBot["antimatter-construction-robot"].max_payload_size = 40
	end
end

if mods["metal-and-stars"] and not mods["skewer_planet_vesta"]then
	LogicBot["antimatter-logistic-robot"].speed = 0.5
	LogicBot["antimatter-logistic-robot"].max_payload_size = 20
	ConstructBot["antimatter-construction-robot"].speed = 0.5
	ConstructBot["antimatter-construction-robot"].max_payload_size = 20
end