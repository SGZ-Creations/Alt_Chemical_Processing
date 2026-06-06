local SS = settings.startup
if mods["quality"]then
	data.raw["furnace"]["recycler"].result_inventory_size = SS["ScrapingMachineInventory"].value
end