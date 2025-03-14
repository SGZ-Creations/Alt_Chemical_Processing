local DRI = data.raw.item
local DRT = data.raw.technology
local DRR = data.raw.recipe

local function Hide_Item(name)
    local item = DRI[name]
    if item then
        item.hidden = true
    end
end

if mods["bobplates"] and mods["space-age"] then
    Hide_Item("seedling")
    Hide_Item("bob-carbon")
    Hide_Item("bob-lithium")
    Hide_Item("bob-tungsten-plate")
    Hide_Item("bob-tungsten-carbide")
end

if mods["bobplates"] and mods["SaltedFish"] then
    Hide_Item("bob-salt")
end

if mods["space-age"] and mods["vanilla-loaders-hd"] and mods["boblogistics"] then
    DRT["turbo-transport-belt"].enabled = false
    DRT["turbo-transport-belt"].hidden = true
    DRR["turbo-loader"].hidden = true

    --Hide_Item("turbo-transport-belt")
    --Hide_Item("turbo-underground-transport")
    --Hide_Item("turbo-splitter")
end