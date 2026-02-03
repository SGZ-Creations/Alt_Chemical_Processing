---@class data.RecipePrototype
local Recipes = data.raw.recipe
---@class data.Settings.startup
local SS = settings.startup


function RemoveIngredient(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipes[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipes[recipe_name].ingredients, i)
        elseif ingredient.name == nil then
            error("ERROR.. \""..ingredient_name.."\" Ingrediant name Failed to Load!")
        elseif Recipes[recipe_name] == nil then
            error("ERROR... \""..recipe_name.."\" Recipe name Failed to Load!")
        end
    end
end

if mods["vanilla-loaders-hd"]and mods["boblogistics"] then
	if SS["CheaperLoaders"].value == true then
		--Loader
			RemoveIngredient("loader", "transport-belt")
			RemoveIngredient("loader", "inserter")
		--Fast Loader
			RemoveIngredient("fast-loader", "fast-transport-belt")
			RemoveIngredient("fast-loader", "bob-red-bulk-inserter")
		--Express Loader
			RemoveIngredient("express-loader", "express-transport-belt")
			RemoveIngredient("express-loader", "bulk-inserter")
		--Bob Turbo loader
			RemoveIngredient("bob-turbo-loader", "bob-turbo-transport-belt")
			RemoveIngredient("bob-turbo-loader", "bob-turbo-bulk-inserter")
		--Bob Ultimate Loader
			RemoveIngredient("bob-ultimate-loader", "bob-ultimate-transport-belt")
			RemoveIngredient("bob-ultimate-loader", "bob-express-bulk-inserter")

		if mods["space-age"] then
			if SS["SAgeLoaders"].value == true then
			--Loader
				RemoveIngredient("loader", "transport-belt")
				RemoveIngredient("loader", "inserter")
			--Fast Loader
				RemoveIngredient("fast-loader", "fast-transport-belt")
				RemoveIngredient("fast-loader", "bob-red-bulk-inserter")
			--Express Loader
				RemoveIngredient("express-loader", "express-transport-belt")
				RemoveIngredient("express-loader", "bulk-inserter")
				RemoveIngredient("express-loader", "steel-plate")
				table.insert(data.raw.recipe["express-loader"].ingredients, {type="item", name= "plastic-bar", amount=10})
				table.insert(data.raw.recipe["express-loader"].ingredients, {type="item", name= "carbon", amount=10})
			--Bob Turbo loader
				RemoveIngredient("bob-turbo-loader", "steel-plate")
				RemoveIngredient("bob-turbo-loader", "iron-gear-wheel")
				RemoveIngredient("bob-turbo-loader", "bob-turbo-transport-belt")
				RemoveIngredient("bob-turbo-loader", "bob-turbo-bulk-inserter")
				table.insert(data.raw.recipe["bob-turbo-loader"].ingredients, {type="item", name= "holmium-plate", amount=5})
				table.insert(data.raw.recipe["bob-turbo-loader"].ingredients, {type="item", name= "carbon-fiber", amount=5})
				table.insert(data.raw.recipe["bob-turbo-loader"].ingredients, {type="item", name= "tungsten-plate", amount=5})
				table.insert(data.raw.recipe["bob-turbo-loader"].ingredients, {type="item", name= "tungsten-carbide", amount=5})
				data.raw.recipe["bob-turbo-loader"].results = {{type ="item", name ="bob-turbo-loader", amount=2}}
			--Bob Ultimate Loader
				RemoveIngredient("bob-ultimate-loader", "steel-plate")
				RemoveIngredient("bob-ultimate-loader", "iron-gear-wheel")
				RemoveIngredient("bob-ultimate-loader", "processing-unit")
				RemoveIngredient("bob-ultimate-loader", "bob-ultimate-transport-belt")
				RemoveIngredient("bob-ultimate-loader", "bob-express-bulk-inserter")
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
				RemoveIngredient("express-loader", "plastic-bar")
				RemoveIngredient("express-loader", "carbon")
			--Bob Turbo loader
				RemoveIngredient("bob-turbo-loader", "holmium-plate")
				RemoveIngredient("bob-turbo-loader", "carbon-fiber")
			--Bob Ultimate Loader
				RemoveIngredient("bob-ultimate-loader", "quantum-processor")
				RemoveIngredient("bob-ultimate-loader", "lithium-plate")
				RemoveIngredient("bob-ultimate-loader", "holmium-plate")
				RemoveIngredient("bob-ultimate-loader", "carbon-fiber")
			end
		end
	end
end