---@class data.SettingsStartup
local SS = settings.startup
---@class module
local Module = data.raw["module"]

if mods["god-module"] and mods["quality"]and mods["adjustable-quality"] then
	Module["god-module-no-prod-has-quality"].effect.quality = SS["god-quality-module-quality-bonus"].value /10
	Module["god-module-has-quality"].effect.quality = SS["god-quality-module-quality-bonus"].value /10
end