local DRI = data.raw.item
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