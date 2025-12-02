function RemoveIngredient(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipe[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipe[recipe_name].ingredients, i)
        elseif ingredient.name == nil then
            log("ERROR.. \""..ingredient_name.."\" Had an issue!")
        elseif data.raw.recipe[recipe_name] == nil then
            log("ERROR... \""..recipe_name.."\" Had am issue!")
        end
    end
end