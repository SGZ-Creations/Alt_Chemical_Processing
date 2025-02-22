local DRT = data.raw.technology
if mods["SaltedFish"] then
	table.insert(DRT["salted-fish"].effects, {type="unlock-recipe",recipe="salted-nutrients"})
end