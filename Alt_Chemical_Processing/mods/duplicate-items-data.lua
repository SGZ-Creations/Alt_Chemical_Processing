if mods["bobplates"] and mods["space-age"] then
    local replacements = {
        ["bob-tungsten-ore"] = "tungsten-ore",
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