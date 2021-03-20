for _, type in ipairs(mineport.woodtypes) do
    minetest.register_craft({
        type = "shapeless",
        output = "mineport:"..string.lower(type).."_planks 4",
        recipe = {
            "mineport:"..string.lower(type).."_log"
        }
    })
end
