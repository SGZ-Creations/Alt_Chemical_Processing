---@class data.RecipePrototype
local Tech = data.raw["technology"]

if mods["pypostprocessing"]then
	Tech["logistics"].prerequisites = {"automation"}
end