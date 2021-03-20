for _, type in ipairs(mineport.woodtypes) do
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
end
