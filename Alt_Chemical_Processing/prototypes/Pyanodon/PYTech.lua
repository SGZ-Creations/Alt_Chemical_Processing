---@class data.RecipePrototype
local Tech = data.raw["technology"]

if mods["pypostprocessing"]then
	Tech["splitter"].prerequisites = {"automation"}
end