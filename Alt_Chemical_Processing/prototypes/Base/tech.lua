local SS = settings.startup
local Tech = data.raw["technology"]

if SS["LiquidCoal"].value then
	table.insert(Tech["coal-liquefaction"].effects, {type = "unlock-recipe", recipe = "acid-coal-liquefaction"})
end