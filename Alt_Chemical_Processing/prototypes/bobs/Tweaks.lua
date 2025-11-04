---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw.recipe
---@class data.ItemPrototype
local Accumulators = data.raw["accumulators"]

if mods["bobpower"] then
	if SS["SingularAccumulators"].value then
		Recipe["bob-fast-accumulator"].enabled = false
		Recipe["bob-fast-accumulator"].hidden = true
		Recipe["bob-slow-accumulator"].enabled = false
		Recipe["bob-slow-accumulator"].hidden = true
	end
	if SS["BoostedEffects"].value then
		Accumulators["accumulator"].energy_source.input_flow_limit = tostring(SS["AccumulatorIF1"].value) .. "MJ"
		Accumulators["accumulator"].energy_source.output_flow_limit = tostring(SS["AccumulatorOF1"].value) .. "MJ"
	end
end