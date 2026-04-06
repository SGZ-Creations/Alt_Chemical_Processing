---@class LuaSettings
local SS = settings.startup

if SS["WeightCalculatioins"].value ==true then
    for item_type in pairs(defines.prototypes.item) do
        local prototypes = data.raw[item_type]
        if prototypes then
            for _, item_prototype in pairs(prototypes) do
                item_prototype.weight = SS["GlobalGrams"].value
            end
        end
    end
end