minetest.register_craft({
    output = "mineport:stick",
    recipe = {
        {"group:planks"},
        {"group:planks"},
    }
})

minetest.register_craft({
    output = "mineport:wooden_axe",
    recipe = {
        {"group:planks","group:planks",""},
        {"group:planks","mineport:stick",""},
        {"","mineport:stick",""}
    }
})
