minetest.register_tool("mineport:wooden_axe", {
    description = "Wooden axe",
    inventory_image = "wooden_axe.png",
    wield_image = "wooden_axe.png",
    wield_scale = {x=1,y=1,z=1},

    tool_capabilities = {
        groupcaps = mineport.defaultGroupcaps({wood = {times = {1.5}, uses = 14.75}})
    },

    sound = {
        breaks = "break"
    },
})

minetest.register_tool("mineport:wooden_pickaxe", {
    description = "Wooden pickaxe",
    inventory_image = "wooden_pickaxe.png",
    wield_image = "wooden_pickaxe.png",
    wield_scale = {x=1,y=1,z=1},

    tool_capabilities = {
        groupcaps = mineport.defaultGroupcaps({
            stone = {
                times = {1.15},
                uses = 14.75
            },
            cobbled = {
                times = {1.5},
                uses = 14.75
            }
        })
    },

    sound = {
        breaks = "break"
    },
})
