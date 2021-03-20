minetest.register_node("mineport:grass", {
    description = "Grass",
    tiles = {
        {name = "grass.png^[multiply:"..mineport.colors.grass},
    },
    use_texture_alpha = "clip",
    drawtype = "plantlike",

    paramtype = "light",

    sunlight_propagates = true,
    walkable = false,

    groups = {
        plant = 1
    },
    waving = 1,
    sounds = mineport.blocksound("grass"),
})
