---@class data.SettingsStartup
local SS = settings.startup
---@class module
local Module = data.raw["module"]
---@class data.ItemPrototype
local Item = data.raw["item"]

if mods["secretas"] then
	Module["quality-module-4-S"].effect.quality = 65
end


if mods["god-module"] then
	Module["god-module-efficiency"].subgroup = "GodModuleMod"
	Module["god-module-efficiency"].order = "z[god-mudules]AAA"
	Module["god-module-speed"].subgroup = "GodModuleMod"
	Module["god-module-speed"].order = "z[god-mudules]AAB"
	Module["god-module-productivity"].subgroup = "GodModuleMod"
	Module["god-module-productivity"].order = "z[god-mudules]AAC"
	Module["god-module-quality"].subgroup = "GodModuleMod"
	Module["god-module-quality"].order = "z[god-mudules]AAD"
	Module["god-module-no-prod"].subgroup = "GodModuleMod"
	Module["god-module-no-prod"].order = "z[god-mudules]ABA"
	Module["god-module-no-prod-has-quality"].subgroup = "GodModuleMod"
	Module["god-module-no-prod-has-quality"].order = "z[god-mudules]ABB"
	Module["god-module"].subgroup = "GodModuleMod"
	Module["god-module"].order = "z[god-mudules]ABC"
	Module["god-module-has-quality"].subgroup = "GodModuleMod"
	Module["god-module-has-quality"].order = "z[god-mudules]ABD"
end