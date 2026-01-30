local MAX_ITEM_AMOUNT  = 65535     -- engine hard limit
local MAX_FLUID_AMOUNT = 1000000   -- sane upper bound (adjust if you want)

for _, recipe in pairs(data.raw.recipe or {}) do
	-- multi-result recipes
	if recipe.results then
		for _, result in pairs(recipe.results) do

			if result.type == "item" or not result.type then -- item clamp
				if result.amount and result.amount > MAX_ITEM_AMOUNT then
					result.amount = MAX_ITEM_AMOUNT
				end
				if result.amount_min and result.amount_min > MAX_ITEM_AMOUNT then
					result.amount_min = MAX_ITEM_AMOUNT
				end
				if result.amount_max and result.amount_max > MAX_ITEM_AMOUNT then
					result.amount_max = MAX_ITEM_AMOUNT
				end
			end

			if result.type == "fluid" then -- fluid clamp
				if result.amount and result.amount > MAX_FLUID_AMOUNT then
					result.amount = MAX_FLUID_AMOUNT
				end
				if result.amount_min and result.amount_min > MAX_FLUID_AMOUNT then
					result.amount_min = MAX_FLUID_AMOUNT
				end
				if result.amount_max and result.amount_max > MAX_FLUID_AMOUNT then
					result.amount_max = MAX_FLUID_AMOUNT
				end
			end
		end
	end
end