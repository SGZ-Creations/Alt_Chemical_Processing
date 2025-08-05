local Tech = data.raw["technology"]

if mods["Gregtorio"] then
	table.insert(Tech["steel-processing"].effects, {type="unlock-recipe",recipe="steel-furnace"})
	data.raw["furnace"]["steel-furnace"].crafting_speed = 4
	table.insert(Tech["steam-macerator"].effects, {type="unlock-recipe",recipe="raw-tin-crushing"})
end