minetest.register_node("mineport:stone", {
    description = "Stone",
    tiles = {"stone.png"},

    groups = {
        stone=1,
    },
    sounds = mineport.blocksound("stone"),

    drop = {
        max_items = 1,
        items = {
            {
                -- TODO: Make this a function that automatically generate a table of pickaxe tools.
                tools = {
                    "mineport:wooden_pickaxe",
                    "mineport:stone_pickaxe",
                    "mineport:iron_pickaxe",
                    "mineport:diamond_pickaxe",
                    "mineport:netherite_pickaxe",
                    "mineport:gold_pickaxe",
                },
                items = {"mineport:cobblestone"}
            },
        },
    },
})

minetest.register_node("mineport:cobblestone", {
    description = "Cobblestone",
    tiles = {"cobblestone.png"},

    groups = {
        cobbled=1,
    },
    sounds = mineport.blocksound("stone"),

    drop = {
        max_items = 1,
        items = {
            {
                -- TODO: Make this a function that automatically generate a table of pickaxe tools.
                tools = {
                    "mineport:wooden_pickaxe",
                    "mineport:stone_pickaxe",
                    "mineport:iron_pickaxe",
                    "mineport:diamond_pickaxe",
                    "mineport:netherite_pickaxe",
                    "mineport:gold_pickaxe",
                },
                items = {"mineport:cobblestone"}
            },
        },
    },
})
