local DRT = data.raw.technology
local SS = settings.startup

if mods["AtomicArtillery2"] then
	if SS["NawArtilleryRecipe"].value then
		table.insert(DRT["artillery"].effects, {type="unlock-recipe",recipe="atomic-artillery-bullet"})
	end
end