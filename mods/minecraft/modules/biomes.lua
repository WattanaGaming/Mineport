minetest.register_alias("mapgen_stone", "minecraft:stone")
minetest.register_alias("mapgen_water_source", "minecraft:dummy_node")

minetest.register_biome({
    name = "Plains",

    node_top = "minecraft:grass_block",
    depth_top = 1,

    node_filler = "minecraft:dirt",
    depth_filler = 3,

    y_max = 30,
    y_min = 1,
    vertical_blend = 8
})
