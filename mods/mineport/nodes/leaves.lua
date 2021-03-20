for _, type in ipairs(mineport.woodtypes) do
    minetest.register_node("mineport:"..string.lower(type).."_leaves", {
        description = type.." Leaves",
        
        tiles = {
            {name = string.lower(type).."_leaves.png^[multiply:"..mineport.colors.leaves[string.lower(type)]},
        },
        paramtype = "light",
        drawtype = "allfaces_optional",
        use_texture_alpha = "clip",
        waving = 2,
    
        groups = {
            leaf=1,
        },
    
        sounds = mineport.blocksound("grass"),

        drop = "",
    })
end
