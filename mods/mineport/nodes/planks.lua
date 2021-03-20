for _, type in ipairs(mineport.woodtypes) do
    minetest.register_node("mineport:"..string.lower(type).."_planks", {
        description = type.." planks",
        tiles = {string.lower(type).."_planks.png"},
        paramtype2 = "facedir",
    
        groups = {
            wood=1,
            plank=1,
        },
    
        sounds = mineport.blocksound("wood"),
    })
end
