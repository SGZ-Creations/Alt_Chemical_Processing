local SS = settings.startup
if mods["StoneWaterWell-ActuallyUpdated"]and mods["space-age"] then
	data.raw["offshore-pump"]["stone-waterwell"].surface_conditions = {{property = "pressure", min = SS["WaterWellPressureMin"].value, max = SS["WaterWellPressureMax"].value}}
end