---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw.recipe
---@class data.TechnologyPrototype
local Tech = data.raw["technology"]¨

if mods["bobplates"]then
    data:extend({
        {
            type = "item-subgroup",
            name = "PlanetFluidGasses",
            group = "fluids",
            order = "GassLiquids",
        },
        {
            type = "item-subgroup",
            name = "GassSeperations",
            group = "fluids",
            order = "GassLiquids",
        },
    })
end

if mods["bobplates"]then
    data.extend({
        {
            type = "recipe",
            category = "chemistry",
            name = "carbon-dioxide-separation",
            main_product = "bob-oxygen",
            subgroup = "GassSeperations",
            order = "a[GassSeperations]",
            enabled = false,
            allow_productivity = true,
            allow_decomposition = true,
            energy_required = 10.0,
            ingredients = {
                {type="fluid", name="bob-carbon-dioxide", amount=25},
            },
            results = {
                {type="item", name="bob-carbon", amount=1},
                {type="fluid", name="bob-oxygen", amount=25}
            },
        },
        {
            type = "recipe",
            category = "chemistry",
            name = "sulfur-dioxide-separation",
            main_product = "bob-oxygen",
            subgroup = "GassSeperations",
            order = "b[GassSeperations]",
            enabled = false,
            allow_productivity = true,
            allow_decomposition = true,
            energy_required = 10.0,
            ingredients = {
                {type="fluid", name="bob-sulfur-dioxide", amount=50},
            },
            results = {
                {type="item", name="sulfur", amount=5},
                {type="fluid", name="bob-oxygen", amount=50}
            },
        },
        {
            type = "recipe",
            category = "chemistry",
            name = "hydrogen-sulfide-separation",
            main_product = "bob-hydrogen",
            subgroup = "GassSeperations",
            order = "c[GassSeperations]",
            enabled = false,
            allow_productivity = true,
            allow_decomposition = true,
            energy_required = 10.0,
            ingredients = {
                {type="fluid", name="bob-hydrogen-sulfide", amount=80},
            },
            results = {
                {type="item", name="sulfur", amount=5},
                {type="fluid", name="bob-hydrogen", amount=80}
            },
        },
    })

    table.insert(Tech["bob-chemical-processing-2"].effects, {type="unlock-recipe", recipe="carbon-dioxide-separation"})
    table.insert(Tech["bob-chemical-processing-2"].effects, {type="unlock-recipe", recipe="sulfur-dioxide-separation"})
    table.insert(Tech["bob-chemical-processing-2"].effects, {type="unlock-recipe", recipe="hydrogen-sulfide-separation"})

    if mods["space-age"]then
        data.extend({
            {
                type = "recipe",
                category = "chemistry-or-cryogenics",
                name = "Fulgora_air_filtrations",
                main_product = "bob-sulfur-dioxide",
                subgroup = "PlanetFluidGasses",
                order = "a[PlanetFluidGasses]",
                enabled = false,
                allow_productivity = true,
                allow_decomposition = true,
                energy_required = 10.0,
                surface_condition = {
                    {property = "magnetic-field", min = 90, max = 100},
                    {property = "gravity", min = 5, max = 10},
                    {property = "pressure", min = 100, max = 1000},
                },
                ingredients = {
                    {type="fluid", name="bob-liquid-air", amount=100},
                },
                results = {
                    {type="fluid", name="bob-carbon-dioxide", amount=30},
                    {type="fluid", name="bob-sulfur-dioxide", amount=70}
                },
            },
            {
                type = "recipe",
                category = "chemistry-or-cryogenics",
                name = "Gleba_air_filtrations",
                main_product = "bob-carbon-dioxide",
                subgroup = "PlanetFluidGasses",
                order = "a[PlanetFluidGasses]",
                enabled = false,
                allow_productivity = true,
                allow_decomposition = true,
                energy_required = 10.0,
                surface_condition = {
                    {property = "magnetic-field", min = 10, max = 50},
                    {property = "gravity", min = 10, max = 30},
                    {property = "pressure", min = 2000, max = 2000},
                },
                ingredients = {
                    {type="fluid", name="water", amount=200},
                    {type="item", name="bob-limestone", amount=10},
                    {type="item", name="jelly", amount=10},
                },
                results = {
                    {type="fluid", name="bob-carbon-dioxide", amount=130},
                    {type="fluid", name="bob-nitric-acid", amount=70}
                },
            },
            {
                type = "recipe",
                category = "chemistry-or-cryogenics",
                name = "Vulcanus_air_filtrations",
                main_product = "bob-sulfur-dioxide",
                subgroup = "PlanetFluidGasses",
                order = "a[PlanetFluidGasses]",
                enabled = false,
                allow_productivity = true,
                allow_decomposition = true,
                energy_required = 10.0,
                surface_condition = {
                    {property = "magnetic-field", min = 10, max = 50},
                    {property = "gravity", min = 40, max = 40},
                    {property = "pressure", min = 4000, max = 4000},
                },
                ingredients = {
                    {type="fluid", name="bob-liquid-air", amount=200},
                },
                results = {
                    {type="fluid", name="bob-hydrogen-sulfide", amount=90},
                    {type="fluid", name="bob-sulfur-dioxide", amount=110}
                },
            },
        })
        Recipe["carbon-dioxide-separation"].category = "chemistry-or-cryogenics"
        Recipe["sulfur-dioxide-separation"].category = "chemistry-or-cryogenics"
        Recipe["hydrogen-sulfide-separation"].category = "chemistry-or-cryogenics"

        table.insert(Tech["planet-discovery-vulcanus"].effects, {type="unlock-recipe", recipe="Vulcanus_air_filtrations"})
        table.insert(Tech["planet-discovery-fulgora"].effects, {type="unlock-recipe", recipe="Fulgora_air_filtrations"})
        table.insert(Tech["planet-discovery-gleba"].effects, {type="unlock-recipe", recipe="Gleba_air_filtrations"})
    end
end