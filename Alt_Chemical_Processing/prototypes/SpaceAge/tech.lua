---@class data.TechnologyPrototype
local Tech = data.raw.technology
---@class data.SettingsStartup
local SS = settings.startup
--[[
if mods["space-age"] then
	data:extend({
		{
			type = "technology",
			name = "GotSeeds",
			icon_size = 64,
			icon = "__base__/graphics/icons/wood-processing.png",
			effects = {{type="unlock-recipe", recipe="wood-processing"}},
			research_trigger = {type ="build-entity", name ="tree-plant"},
			order = "Seed"
		},
	})
end
]]
if mods["space-age"] then
	--if SS["MoltenPlates"] == true then
		table.insert(Tech["foundry"].effects, {type = "unlock-recipe", recipe = "MoltenCopperPlates"})
		table.insert(Tech["foundry"].effects, {type = "unlock-recipe", recipe = "MoltenIronPlates"})
	--end 
		table.insert(Tech["fish-breeding"].effects, {type="unlock-recipe", recipe="fed-fish"})
		table.insert(Tech["lithium-processing"].effects, {type="unlock-recipe", recipe="ice-cubes"})
		table.insert(Tech["foundry"].effects, {type="unlock-recipe", recipe="casted-space-foundation"})
	if SS["seed-spoilage"].value then
		table.insert(Tech["biochamber"].effects, {type="unlock-recipe", recipe="spoiled-seed"})
	end
	if SS["LavaCraft"].value then
		table.insert(Tech["foundry"].effects, {type = "unlock-recipe", recipe = "slow-lava"})
		table.insert(Tech["artillery"].effects, {type = "unlock-recipe", recipe = "fast-lava"})
		table.insert(Tech["foundry"].effects, {type = "unlock-recipe", recipe = "lava-calcite"})
	end
	if SS["CryoRecycle"].value then
		table.insert(Tech["cryogenic-science-pack"].effects, {type = "unlock-recipe", recipe = "recycle-craft-cryo"})
	end
	--if SS["NewCarbonFiber"].value then
		table.insert(Tech["carbon-fiber"].effects, {type = "unlock-recipe", recipe = "SynteticCarbonFiber"})
	--end
	--if SS["Lava2Brick"].value then
	table.insert(Tech["foundry"].effects, {type = "unlock-recipe", recipe = "LavaBrick"})
	--end
end