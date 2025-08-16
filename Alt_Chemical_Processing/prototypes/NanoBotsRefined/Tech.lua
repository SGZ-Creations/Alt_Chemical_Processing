---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
local SS =settings.startup

if mods["nanobots-refined"] then
	if SS["EasyNanoTech"].value == true then
		Tech["nano-range-1"].unit.count = 25
		Tech["nano-range-2"].unit.count = 25
		Tech["nano-range-3"].unit.count = 25
		Tech["nano-range-4"].unit.count = 25
		Tech["nano-speed-1"].unit.count = 25
		Tech["nano-speed-2"].unit.count = 25
		Tech["nano-speed-3"].unit.count = 25
		Tech["nano-speed-4"].unit.count = 25

		Tech["nano-range-1"].unit.ingredients = {{"automation-science-pack", 1}}
		Tech["nano-range-2"].unit.ingredients = {{"automation-science-pack", 1}}
		Tech["nano-range-3"].unit.ingredients = {{"automation-science-pack", 1}}
		Tech["nano-range-4"].unit.ingredients = {{"automation-science-pack", 1}}
		Tech["nano-speed-1"].unit.ingredients = {{"automation-science-pack", 1}}
		Tech["nano-speed-2"].unit.ingredients = {{"automation-science-pack", 1}}
		Tech["nano-speed-3"].unit.ingredients = {{"automation-science-pack", 1}}
		Tech["nano-speed-4"].unit.ingredients = {{"automation-science-pack", 1}}

		Tech["nano-range-1"].prerequisites = {"nanobots"}
		Tech["nano-range-2"].prerequisites = {"nano-range-1"}
		Tech["nano-range-3"].prerequisites = {"nano-range-2"}
		Tech["nano-range-4"].prerequisites = {"nano-range-3"}
		Tech["nano-speed-1"].prerequisites = {"nanobots"}
		Tech["nano-speed-2"].prerequisites = {"nano-speed-1"}
		Tech["nano-speed-3"].prerequisites = {"nano-speed-2"}
		Tech["nano-speed-4"].prerequisites = {"nano-speed-3"}
	end
end