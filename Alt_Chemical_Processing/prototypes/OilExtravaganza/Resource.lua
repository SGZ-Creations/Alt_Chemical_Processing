local resource_autoplace = require("resource-autoplace")
if mods["James-Oil-Processing"] then
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["VPE-tarsand"] = {}
resource_autoplace.initialize_patch_set("VPE-tarsand", true)
	data:extend({
		{
			type = "resource",
			name = "VPE-tarsand",
			icon = "__James-Oil-Processing__/graphics/coal.png",
			icon_size = 32,
			flags = {"placeable-neutral"},
			order="a-b-e",
			tree_removal_probability = 0,
			tree_removal_max_distance = 62 * 62,
			minable = {
				hardness = 0.8,
				mining_particle = "stone-particle",
				mining_time = 2,
				results = {{type="item", name="VPE-tarsand", amount=1}},
				fluid_amount = 20,
				required_fluid = "steam"
			},
			collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
			selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
			autoplace = resource_autoplace.resource_autoplace_settings
			{
				name = "VPE-tarsand",
				order = "z",
				base_density = 2,
				base_spots_per_km2 = 400,
				has_starting_area_placement = true,
				starting_rq_factor_multiplier = 0.85,
				regular_rq_factor_multiplier = 1.75,
				candidate_spot_count = 20
			},
			stage_counts = {4000, 3000, 2000, 1000, 800, 600, 300, 100},
			stages = {
				sheet = {
					filename = "__James-Oil-Processing__/graphics/coal-tile.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					frame_count = 8,
					variation_count = 8,
				}
			},
			effect_animation_period = 5,
			effect_animation_period_deviation = 1,
			effect_darkness_multiplier = 3.6,
			min_effect_alpha = 0.2,
			max_effect_alpha = 0.3,
			map_color = {r=0.7, g=0.37, b=0.58}
		},
	})
end

--[[
resource(
    {
		name = "iron-ore",
		order = "b",
		map_color = {0.415, 0.525, 0.580},
		mining_time = 1,
		walking_sound = tile_sounds.walking.ore,
		driving_sound = tile_sounds.driving.stone,
		mining_visualisation_tint = {r = 0.895, g = 0.965, b = 1.000, a = 1.000}, -- #e4f6ffff
		factoriopedia_simulation = simulations.factoriopedia_iron_ore,
    },
    {
		base_density = 10,
		regular_rq_factor_multiplier = 1.10,
		starting_rq_factor_multiplier = 1.5,
		candidate_spot_count = 22, -- To match 0.17.50 placement
    }
),
]]