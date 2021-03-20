minetest.register_node("mineport:dirt", {
    description = "Dirt",
    tiles = {"dirt.png"},

    groups = {
        crumbly=1,
    },

    sounds = mineport.blocksound("gravel"),
})

minetest.register_node("mineport:grass_block", {
    description = "Grass block",
    
    tiles = {
        {name = "grass_block_top.png^[multiply:"..mineport.colors.grass},
        {name = "dirt.png"},
        {name = "grass_block_side.png"},
    },
    overlay_tiles = {"", "",
        {name = "grass_block_side_overlay.png^[multiply:"..mineport.colors.grass}
    },

    groups = {
        grass=1,
    },

    sounds = mineport.blocksound("grass"),
    drop = "mineport:dirt",
})
