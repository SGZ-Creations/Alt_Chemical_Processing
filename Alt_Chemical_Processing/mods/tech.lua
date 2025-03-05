local DRT = data.raw.technology
local SS = settings.startup

if SS["iron-utillity"].value then
	table.insert(DRT["utility-science-pack"].effects, {type="unlock-recipe", recipe="iron-ore-utillity"})
end