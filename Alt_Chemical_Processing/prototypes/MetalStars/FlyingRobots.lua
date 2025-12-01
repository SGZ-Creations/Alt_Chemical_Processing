---@class FlyingRobotPrototype
local LogicBot = data.raw["logistic-robot"]
---@class FlyingRobotPrototype
local ConstructBot = data.raw["construction-robot"]

--Use Entity name when modifying bots with exception to stack size
if mods["metal-and-stars"] then
	LogicBot["antimatter-logistic-robot"].speed = 50
	LogicBot["antimatter-logistic-robot"].max_payload_size = 20
	ConstructBot["antimatter-construction-robot"].speed = 50
	ConstructBot["antimatter-construction-robot"].max_payload_size = 20
end
