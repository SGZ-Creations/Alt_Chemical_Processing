---@class data.SettingsStartup
local SS = settings.startup
---@class module
local Module = data.raw["module"]
---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]

if mods["base"] then
	Module["efficiency-module"].subgroup = "Efficiency"
	Module["efficiency-module"].order = "A[Efficiency]"
	Module["efficiency-module-2"].subgroup = "Efficiency"
	Module["efficiency-module-2"].order = "B[Efficiency]"
	Module["efficiency-module-3"].subgroup = "Efficiency"
	Module["efficiency-module-3"].order = "C[Efficiency]"
	Module["speed-module"].subgroup = "Speed"
	Module["speed-module"].order = "A[Speed]"
	Module["speed-module-2"].subgroup = "Speed"
	Module["speed-module-2"].order = "B[Speed]"
	Module["speed-module-3"].subgroup = "Speed"
	Module["speed-module-3"].order = "C[Speed]"
	Module["productivity-module"].subgroup = "Productivity"
	Module["productivity-module"].order = "A[Productivity]"
	Module["productivity-module-2"].subgroup = "Productivity"
	Module["productivity-module-2"].order = "B[Productivity]"
	Module["productivity-module-3"].subgroup = "Productivity"
	Module["productivity-module-3"].order = "C[Productivity]"
end

if mods["quality"]then
	Module["quality-module"].subgroup = "Quality"
	Module["quality-module"].order = "A[Quality]"
	Module["quality-module-2"].subgroup = "Quality"
	Module["quality-module-2"].order = "B[Quality]"
	Module["quality-module-3"].subgroup = "Quality"
	Module["quality-module-3"].order = "C[Quality]"
end

if mods["secretas"] then
	Module["efficiency-module-4-S"].subgroup = "Efficiency"
	Module["efficiency-module-4-S"].order = "D[Efficiency]"
	Module["speed-module-4-S"].subgroup = "Speed"
	Module["speed-module-4-S"].order = "D[Speed]"
	Module["productivity-module-4-S"].subgroup = "Productivity"
	Module["productivity-module-4-S"].order = "D[Productivity]"
	Module["quality-module-4-S"].subgroup = "Quality"
	Module["quality-module-4-S"].order = "D[Quality]"

	Module["quality-module-4-S"].effect.quality = 1
end

if mods["dea-dia-system"]then
	Module["stationkeeping-module"].subgroup = "StationKeeping"
	Module["stationkeeping-module"].order = "A[StationKeeping]"
	Module["stationkeeping-module-2"].subgroup = "StationKeeping"
	Module["stationkeeping-module-2"].order = "B[StationKeeping]"
	Module["stationkeeping-module-3"].subgroup = "StationKeeping"
	Module["stationkeeping-module-3"].order = "C[StationKeeping]"
	Module["stationkeeping-module-4"].subgroup = "StationKeeping"
	Module["stationkeeping-module-4"].order = "D[StationKeeping]"
--Recipes
	Recipe["stationkeeping-module"].subgroup = "StationKeeping"
	Recipe["stationkeeping-module"].order = "A[StationKeeping]"
	Recipe["stationkeeping-module-2"].subgroup = "StationKeeping"
	Recipe["stationkeeping-module-2"].order = "B[StationKeeping]"
	Recipe["stationkeeping-module-3"].subgroup = "StationKeeping"
	Recipe["stationkeeping-module-3"].order = "C[StationKeeping]"
	Recipe["stationkeeping-module-4"].subgroup = "StationKeeping"
	Recipe["stationkeeping-module-4"].order = "D[StationKeeping]"
end

if mods["metal-and-stars"] then
	Module["overclock-module"].subgroup = "OverClock"
	Module["overclock-module"].order = "A[OverClock]"
	Module["overclock-module-2"].subgroup = "OverClock"
	Module["overclock-module-2"].order = "B[OverClock]"
	Module["overclock-module-3"].subgroup = "OverClock"
	Module["overclock-module-3"].order = "C[OverClock]"
end

if mods["god-module"] and mods["quality"] then
	Module["god-module-efficiency"].subgroup = "Efficiency"
	Module["god-module-efficiency"].order = "S[Efficiency]"
	Module["god-module-speed"].subgroup = "Speed"
	Module["god-module-speed"].order = "S[Speed]"
	Module["god-module-productivity"].subgroup = "Productivity"
	Module["god-module-productivity"].order = "S[Productivity]"
	Module["god-module-quality"].subgroup = "Quality"
	Module["god-module-quality"].order = "S[Quality]"
	Module["god-module-no-prod"].subgroup = "GodModuleMod"
	Module["god-module-no-prod"].order = "z[god-modules]ABA"
	Module["god-module-no-prod-has-quality"].subgroup = "GodModuleMod"
	Module["god-module-no-prod-has-quality"].order = "z[god-modules]ABB"
	Module["god-module"].subgroup = "GodModuleMod"
	Module["god-module"].order = "z[god-modules]ABC"
	Module["god-module-has-quality"].subgroup = "GodModuleMod"
	Module["god-module-has-quality"].order = "z[god-modules]ABD"
end

if mods["rubia"] then
	data.raw.recipe["rubia-efficiency-module4"].hidden = true
end