local SS = settings.startup
local Tech = data.raw["technology"]

if SS["iron-utillity"].value then
	table.insert(Tech["utility-science-pack"].effects, {type="unlock-recipe", recipe="iron-ore-utillity"})
end

if SS["LiquidCoal"].value then
	table.insert(Tech["coal-liquefaction"].effects, {type = "unlock-recipe", recipe = "acid-coal-liquefaction"})
end