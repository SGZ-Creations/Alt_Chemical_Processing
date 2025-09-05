---@class Prototype
local Tech = data.raw["technology"]
local SS = settings.startup
if mods["Teleporters"] then
	if SS["ScienceExtension"].value then
		table.insert(Tech["teleporter"].unit.ingredients, {"production-science-pack", 1})
		table.insert(Tech["teleporter"].unit.ingredients, {"utility-science-pack",    1})
	end
end