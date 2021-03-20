local types = {
    "Oak",
}

for _, type in ipairs(types) do
    minetest.register_node("mineport:"..string.lower(type).."_log", {
        description = type.." log",
        tiles = {
            string.lower(type).."_log_top.png",
            string.lower(type).."_log_top.png",
            string.lower(type).."_log.png",
        },
        paramtype2 = "facedir",
    
        groups = {
            wood=1,
        },
    
        sounds = mineport.blocksound("wood"),
    
        on_place = minetest.rotate_and_place
    })

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
    })

    minetest.register_craft({
        type = "shapeless",
        output = "mineport:"..string.lower(type).."_planks",
        recipe = {
            "mineport:"..string.lower(type).."_log"
        }
    })
end
