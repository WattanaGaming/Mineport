minetest.register_craft({
    output = "mineport:stick 4",
    recipe = {
        {"group:plank"},
        {"group:plank"},
    }
})

minetest.register_craft({
    output = "mineport:wooden_axe",
    recipe = {
        {"group:plank","group:plank",""},
        {"group:plank","mineport:stick",""},
        {"","mineport:stick",""}
    }
})

minetest.register_craft({
    output = "mineport:wooden_pickaxe",
    recipe = {
        {"group:plank", "group:plank","group:plank"},
        {"","mineport:stick",""},
        {"","mineport:stick",""},
    }
})
