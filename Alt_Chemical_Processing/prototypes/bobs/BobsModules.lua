---@class data.ItemPrototype
local Beacon = data.raw["beacon"]
---@class LuaSettings
local SS = settings.startup

if mods["bobmodules"] then
	Beacon["bob-beacon-1"].module_slots = SS["Beacon1"].value
	Beacon["bob-beacon-2"].module_slots = SS["Beacon2"].value
	Beacon["bob-beacon-3"].module_slots = SS["Beacon3"].value
end