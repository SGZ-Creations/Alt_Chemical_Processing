---@class data.ItemPrototype
local Item = data.raw["item"]
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]
---@class data.EntityPrototype
local Collector = data.raw["asteroid-collector"]
---@class data.SettingsStartup
local SS = settings.startup
---@class data.QualityPrototype
local Quality = data.raw["quality"]
---@class data.CargoLandingPadPrototype
local Pad = data.raw["cargo-landing-pad"]
---@class MiningDrillPrototype
local Miner = data.raw["mining-drill"]


if mods["space-age"] then
	Miner["big-mining-drill"].mining_speed = 2.5 + SS["MiningSpeedSetting"].value

	if SS["WarmAquilo"].value then
		data.raw.planet["aquilo"].entities_require_heating = false
	end
	if SS["QualityArms"].value == true then
		Collector["asteroid-collector"].arm_count_quality_scaling = 0
		Collector["asteroid-collector"].arm_count_base = SS["CollectorArms"].value
		Collector["asteroid-collector"].collection_radius = SS["CollectorRadius"].value
		for _, quality in pairs(Quality) do
			quality.asteroid_collector_collection_radius_bonus = 0
		end
	end
	if SS["QualityLandingPads"].value == true then
		Pad["cargo-landing-pad"].radar_range = nil
		--Pad["cargo-landing-pad"].radar_range = SS["LandingPadCoverage"].value
	end
end

if mods["space-age"] and not mods["bobmining"] then
	if SS["BigMiner"].value then
		Recipe["big-mining-drill"].ingredients = {
			{type = "item", name = "advanced-circuit", amount = 10},
			{type = "item", name = "electric-engine-unit", amount = 10},
			{type = "item", name = "tungsten-carbide", amount = 20},
			{type = "item", name = "electric-mining-drill", amount = 5},
		}
		Recipe["big-mining-drill"].results = {{type = "item", name = "big-mining-drill", amount = 2}}
	end
end