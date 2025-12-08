---@class data.TechnologyPrototype
local Tech = data.raw.technology
---@class LuaSettings
local SS = settings.startup

if mods["Better_Robots_Extended"] and mods["boblogistics"] then
		Tech["bob-robots-1"].prerequisites = nil
		Tech["bob-robots-1"].dependencies = nil
		Tech["bob-robots-1"].hidden = true

		Tech["bob-robots-2"].prerequisites = nil
		Tech["bob-robots-2"].dependencies = nil
		Tech["bob-robots-2"].hidden = true

		Tech["bob-robots-3"].prerequisites = nil
		Tech["bob-robots-3"].dependencies = nil
		Tech["bob-robots-3"].hidden = true

		Tech["bob-robots-4"].prerequisites = nil
		Tech["bob-robots-4"].dependencies = nil
		Tech["bob-robots-4"].hidden = true
end