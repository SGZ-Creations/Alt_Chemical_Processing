if mods["bobplates"] and mods["space-age"] then
    local replacements = {
        ["bob-carbon"] = "carbon",
        ["bob-tungsten-plate"] = "tungsten-plate",
        ["bob-tungsten-carbide"] = "tungsten-carbide",
        ["bob-tungsten-ore"] = "tungsten-ore",
        ["bob-lithium"] = "lithium-plate",
        ["bob-seedling"] = "tree-seed",
        ["bob-ammonia"] = "ammonia",
    }
    for _, recipe in pairs(data.raw.recipe) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local replace = replacements[ingredient.name]
				if replace then
                ingredient.name = replace
            end
        end

		for _, result in pairs(recipe.results or {}) do
			local replace = replacements[result.name]
				if replace then
				result.name = replace
			end
		end

        if recipe.main_product then
			local replace = replacements[recipe.main_product]
		if replace then recipe.main_product = replace end
        end
    end
end

if mods["bobplates"] and mods["SaltedFish"] then
    local replacements = {
        ["bob-salt"] = "salt",
    }
    for _, recipe in pairs(data.raw.recipe) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local replace = replacements[ingredient.name]
				if replace then
                ingredient.name = replace
            end
        end

		for _, result in pairs(recipe.results or {}) do
			local replace = replacements[result.name]
				if replace then
				result.name = replace
			end
		end

        if recipe.main_product then
			local replace = replacements[recipe.main_product]
		if replace then recipe.main_product = replace end
        end
    end
end

if mods["bobplates"]and mods["bobelectronics"] and mods["metal-and-stars"] then
    local replacements = {
        ["glass-plate"] = "bob-glass",
        ["gold-plate"] = "bob-gold-plate",
        ["gold-cable"] = "bob-gilded-copper-cable",
        ["thorium"] = "bob-thorium-232"
    }
    for _, recipe in pairs(data.raw.recipe) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local replace = replacements[ingredient.name]
				if replace then
                ingredient.name = replace
            end
        end

		for _, result in pairs(recipe.results or {}) do
			local replace = replacements[result.name]
				if replace then
				result.name = replace
			end
		end

        if recipe.main_product then
			local replace = replacements[recipe.main_product]
		if replace then recipe.main_product = replace end
        end
    end
end

if mods["Clowns-Nuclear"]and mods["metal-and-stars"] then
    local replacements = {
        ["uranuim-233"] = "uranium-235"
    }
    for _, recipe in pairs(data.raw.recipe) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local replace = replacements[ingredient.name]
				if replace then
                ingredient.name = replace
            end
        end

		for _, result in pairs(recipe.results or {}) do
			local replace = replacements[result.name]
				if replace then
				result.name = replace
			end
		end

        if recipe.main_product then
			local replace = replacements[recipe.main_product]
		if replace then recipe.main_product = replace end
        end
    end
end

if mods["James-Oil-Processing"] and mods["metal-and-stars"] then
    local replacements = {
        ["VPE-bitumen"] = "bitumen",
    }
    for _, recipe in pairs(data.raw.recipe) do
        for _, ingredient in pairs(recipe.ingredients or {}) do
            local replace = replacements[ingredient.name]
				if replace then
                ingredient.name = replace
            end
        end

		for _, result in pairs(recipe.results or {}) do
			local replace = replacements[result.name]
				if replace then
				result.name = replace
			end
		end

        if recipe.main_product then
			local replace = replacements[recipe.main_product]
		if replace then recipe.main_product = replace end
        end
    end
end

if mods["bobplates"] and mods["space-age"] and mods["James-Oil-Processing"] then
    data.raw.item["carbon"].icon = "__space-age__/graphics/icons/carbon.png"
    data.raw.item["carbon"].icon_size = 64
elseif mods["bobplates"] and mods["space-age"] then
    data.raw.item["carbon"].icon = "__space-age__/graphics/icons/carbon.png"
    data.raw.item["carbon"].icon_size = 64
end