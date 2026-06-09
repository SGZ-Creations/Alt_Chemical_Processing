---@class data.RecipePrototype
local Tech = data.raw["technology"]

if mods["pypostprocessing"]then
	Tech["logistics"].prerequisites = {"automation"}

	if not mods["boblogistics"] and mods["bobinserters"] then
		Tech["fast-inserter-2"].effects = {type = "unlock-recipe", recipe = "fast-inserter-2"}
	end
	--[[
	if not mods["boblogistics"] and mods["pypetroleumhandling"] then
		Tech[""].effects = {type = "unlock-recipe", recipe = "fast-inserter-2"}
	end]]
end