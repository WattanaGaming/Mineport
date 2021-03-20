minetest.register_node("mineport:water", {
    drawtype = "liquid",
    waving = 3,
    tiles = {
        {name = "water_still.png", animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 5,
        }},
    },
    
    post_effect_color = mineport.colors.water_post_effect,
    paramtype = "light",
    use_texture_alpha = "blend",
    is_ground_content = false,
    sunlight_propagates = true,
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,

    liquidtype = "source",
    liquid_alternative_flowing = "mineport:flowing_water",
    liquid_alternative_source = "mineport:water",
    liquid_range = mineport.water_range,
    drowning = mineport.drowning,
})

minetest.register_node("mineport:flowing_water", {
    drawtype = "flowingliquid",
    waving = 3,
    special_tiles = {
        {name = "water_flow.png", backface_culling = false, animation = {
            type = "vertical_frames",
            aspect_w = 32,
            aspect_h = 32,
            length = 5/3,
        }},
        {name = "water_flow.png", backface_culling = false, animation = {
            type = "vertical_frames",
            aspect_w = 32,
            aspect_h = 32,
            length = 5/3,
        }},
    },

    post_effect_color = mineport.colors.water_post_effect,
    paramtype = "light",
    paramtype2 = "flowingliquid",
    
    use_texture_alpha = "blend",
    is_ground_content = false,
    sunlight_propagates = true,
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,

    liquidtype = "flowing",
    liquid_alternative_flowing = "mineport:flowing_water",
    liquid_alternative_source = "mineport:water",
    liquid_range = mineport.water_range,
    drowning = mineport.drowning,
})
