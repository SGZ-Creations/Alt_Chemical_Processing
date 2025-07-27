---@class data.TechnologyPrototype
local Tech = data.raw.technology

if mods["SaltedFish"] then
	table.insert(Tech["salted-fish"].effects, {type="unlock-recipe",recipe="salted-nutrients"})
end