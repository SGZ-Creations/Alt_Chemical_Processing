local SS = settings.startup

if mods["k2-space-age"] then
	if SS["FilterResearch"].value == "Costly" then
		data.raw["recipe"][""].ingredients = {
			{type ="item", name="god-module-speed", amount = 1},
		}
	end
	if SS["FilterResearch"].value == "Normal" then
		data.raw["recipe"][""].ingredients = {
			{type ="item", name="god-module-speed", amount = 1},
		}
	end
	if SS["FilterResearch"].value == "Water" then
		data.raw["recipe"][""].ingredients = {
			{type ="item", name="god-module-speed", amount = 1},
		}
	end
end