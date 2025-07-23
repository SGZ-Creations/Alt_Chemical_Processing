---@class data.RecipePrototype
local Recipes = data.raw.recipe
---@class data.Settings.startup
local SS = settings.startup

function remove_ingredient(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipes[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipes[recipe_name].ingredients, i)
        end
    end
end

if mods["vanilla-loaders-hd"]and mods["boblogistics"] then
	if SS["CheaperLoaders"].value == true then
		--Loader
			remove_ingredient("loader", "transport-belt")
			remove_ingredient("loader", "inserter")
		--Fast Loader
			remove_ingredient("fast-loader", "fast-transport-belt")
			remove_ingredient("fast-loader", "bob-red-bulk-inserter")
		--Express Loader
			remove_ingredient("express-loader", "express-transport-belt")
			remove_ingredient("express-loader", "bulk-inserter")
		--Bob Turbo loader
			remove_ingredient("bob-turbo-loader", "bob-turbo-transport-belt")
			remove_ingredient("bob-turbo-loader", "bob-turbo-bulk-inserter")
		--Bob Ultimate Loader
			remove_ingredient("bob-ultimate-loader", "bob-ultimate-transport-belt")
			remove_ingredient("bob-ultimate-loader", "bob-express-bulk-inserter")

		if mods["space-age"] then
			if SS["SAgeLoaders"].value == true then
			--Loader
				remove_ingredient("loader", "transport-belt")
				remove_ingredient("loader", "inserter")
			--Fast Loader
				remove_ingredient("fast-loader", "fast-transport-belt")
				remove_ingredient("fast-loader", "bob-red-bulk-inserter")
			--Express Loader
				remove_ingredient("express-loader", "express-transport-belt")
				remove_ingredient("express-loader", "bulk-inserter")
				remove_ingredient("express-loader", "steel-plate")
				table.insert(data.raw.recipe["express-loader"].ingredients, {type="item", name= "plastic-bar", amount=10})
				table.insert(data.raw.recipe["express-loader"].ingredients, {type="item", name= "carbon", amount=10})
			--Bob Turbo loader
				remove_ingredient("bob-turbo-loader", "steel-plate")
				remove_ingredient("bob-turbo-loader", "iron-gear-wheel")
				remove_ingredient("bob-turbo-loader", "bob-turbo-transport-belt")
				remove_ingredient("bob-turbo-loader", "bob-turbo-bulk-inserter")
				table.insert(data.raw.recipe["bob-turbo-loader"].ingredients, {type="item", name= "holmium-plate", amount=5})
				table.insert(data.raw.recipe["bob-turbo-loader"].ingredients, {type="item", name= "carbon-fiber", amount=5})
				table.insert(data.raw.recipe["bob-turbo-loader"].ingredients, {type="item", name= "tungsten-plate", amount=5})
				table.insert(data.raw.recipe["bob-turbo-loader"].ingredients, {type="item", name= "tungsten-carbide", amount=5})
				data.raw.recipe["bob-turbo-loader"].results = {{type ="item", name ="bob-turbo-loader", amount=2}}
			--Bob Ultimate Loader
				remove_ingredient("bob-ultimate-loader", "steel-plate")
				remove_ingredient("bob-ultimate-loader", "iron-gear-wheel")
				remove_ingredient("bob-ultimate-loader", "processing-unit")
				remove_ingredient("bob-ultimate-loader", "bob-ultimate-transport-belt")
				remove_ingredient("bob-ultimate-loader", "bob-express-bulk-inserter")
				table.insert(data.raw.recipe["bob-ultimate-loader"].ingredients, {type="item", name= "holmium-plate", amount=5})
				table.insert(data.raw.recipe["bob-ultimate-loader"].ingredients, {type="item", name= "carbon-fiber", amount=5})
				table.insert(data.raw.recipe["bob-ultimate-loader"].ingredients, {type="item", name= "tungsten-plate", amount=5})
				table.insert(data.raw.recipe["bob-ultimate-loader"].ingredients, {type="item", name= "tungsten-carbide", amount=5})
				table.insert(data.raw.recipe["bob-ultimate-loader"].ingredients, {type="item", name= "quantum-processor", amount=2})
				table.insert(data.raw.recipe["bob-ultimate-loader"].ingredients, {type="item", name= "lithium-plate", amount=5})
				data.raw.recipe["bob-ultimate-loader"].results = {{type ="item", name ="bob-ultimate-loader", amount=2}}
			end
			if mods["bobplates"]and mods["bobelectronics"] then
			--Express Loader
				remove_ingredient("express-loader", "plastic-bar")
				remove_ingredient("express-loader", "carbon")
			--Bob Turbo loader
				remove_ingredient("bob-turbo-loader", "holmium-plate")
				remove_ingredient("bob-turbo-loader", "carbon-fiber")
			--Bob Ultimate Loader
				remove_ingredient("bob-ultimate-loader", "quantum-processor")
				remove_ingredient("bob-ultimate-loader", "lithium-plate")
				remove_ingredient("bob-ultimate-loader", "holmium-plate")
				remove_ingredient("bob-ultimate-loader", "carbon-fiber")
			end
		end
	end
end