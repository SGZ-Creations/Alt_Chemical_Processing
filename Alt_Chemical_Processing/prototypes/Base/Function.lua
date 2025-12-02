function RemoveIngredient(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipe[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipe[recipe_name].ingredients, i)
        elseif ingredient.name == nil then
            error("ERROR.. \""..ingredient_name.."\" Ingrediant name Failed to Load!")
        elseif data.raw.recipe[recipe_name] == nil then
            error("ERROR... \""..recipe_name.."\" Recipe name Failed to Load!")
        end
    end
end