---@class data.SettingsStartup
local SS = settings.startup
---@class module
local Module = data.raw["module"]
---@class data.ItemPrototype
local Item = data.raw["item"]

if mods["secretas"] then
	Module["quality-module-4-S"].effect.quality = 65
end

data:extend({
    {
        type = "item-subgroup",
        name = "GodModuleMod",
        group = "production",
        order = "ZZZZ",
    }
})

if mods["god-module"] then
	Item["god-efficiency-module"].subgroup = "GodModuleMod"
	Item["god-efficiency-module"].order = "AAA"
	Item["god-speed-module"].subgroup = "GodModuleMod"
	Item["god-speed-module"].order = "AAB"
	Item["god-productivity-module"].subgroup = "GodModuleMod"
	Item["god-productivity-module"].order = "AAC"
	Item["god-quality-module"].subgroup = "GodModuleMod"
	Item["god-quality-module"].order = "AAD"
	Item["god-module-no-prod"].subgroup = "GodModuleMod"
	Item["god-module-no-prod"].order = "ABA"
	Item["god-module-no-prod-has-quality"].subgroup = "GodModuleMod"
	Item["god-module-no-prod-has-quality"].order = "ABB"
	Item["god-module"].subgroup = "GodModuleMod"
	Item["god-module"].order = "ABC"
	Item["mod-module-has-quality"].subgroup = "GodModuleMod"
	Item["mod-module-has-quality"].order = "ABD"
end