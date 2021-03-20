local tree_fill_ratio = 0.01

-- Oak tree (short)(forest biome)
minetest.register_decoration({
    deco_type = "schematic",
    place_on = "mineport:grass_block",
    fill_ratio = tree_fill_ratio,

    biomes = {
        "forest"
    },
    y_min = 1,

    schematic = "schematics/oak_tree_short.mts",
    flags = "place_center_x, place_center_z",
})

-- Oak tree (medium)(forest biome)
minetest.register_decoration({
    deco_type = "schematic",
    place_on = "mineport:grass_block",
    fill_ratio = tree_fill_ratio,

    biomes = {
        "forest"
    },
    y_min = 1,

    schematic = "schematics/oak_tree_medium.mts",
    flags = "place_center_x, place_center_z",
})

-- Oak tree (tall)(forest biome)
minetest.register_decoration({
    deco_type = "schematic",
    place_on = "mineport:grass_block",
    fill_ratio = tree_fill_ratio,

    biomes = {
        "forest"
    },
    y_min = 1,

    schematic = "schematics/oak_tree_tall.mts",
    flags = "place_center_x, place_center_z",
})

-- Grass (forest biome)
minetest.register_decoration({
    deco_type = "simple",
    place_on = "mineport:grass_block",
    fill_ratio = 0.5,

    biomes = {
        "forest"
    },
    y_min = 1,

    decoration = "mineport:grass",
})
