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
	Item["god-module-efficiency"].subgroup = "GodModuleMod"
	Item["god-module-efficiency"].order = "AAA"
	Item["god-module-speed"].subgroup = "GodModuleMod"
	Item["god-module-speed-module"].order = "AAB"
	Item["god-module-productivity"].subgroup = "GodModuleMod"
	Item["god-module-productivity"].order = "AAC"
	Item["god-module-quality"].subgroup = "GodModuleMod"
	Item["god-module-quality"].order = "AAD"
	Item["god-no-prod"].subgroup = "GodModuleMod"
	Item["god-no-prod"].order = "ABA"
	Item["god-no-prod-has-quality"].subgroup = "GodModuleMod"
	Item["god-no-prod-has-quality"].order = "ABB"
	Item["god-module"].subgroup = "GodModuleMod"
	Item["god-module"].order = "ABC"
	Item["mod-module-has-quality"].subgroup = "GodModuleMod"
	Item["mod-module-has-quality"].order = "ABD"
end