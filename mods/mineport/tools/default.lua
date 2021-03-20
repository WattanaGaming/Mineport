-- The default "tool"
minetest.register_item(":", {
    type = "none",
    wield_image = "wieldhand.png",
    wield_scale = {x=1,y=1,z=2.5},
    tool_capabilities = {
        max_drop_level = 0,
        groupcaps = mineport.defaultGroupcaps(),
        damage_groups = {fleshy=1},
    }
})
