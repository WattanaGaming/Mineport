-- Dummy node for testing stuff. Might be useful if you need something very distracting for mapgen n stuff.
minetest.register_node("mineport:dummy_node", {
    description = "Le big dumdum has arrived",
    tiles = {"thisshouldnotexist.png"},
    groups = {
        oddly_breakable_by_hand = 1
    }
})

minetest.register_node("mineport:stone", {
    description = "Stone",
    tiles = {"stone.png"},
    groups = {
        oddly_breakable_by_hand = 1,
        stone = 1
    }
})

minetest.register_node("mineport:dirt", {
    description = "Dirt",
    tiles = {"dirt.png"},
    groups = {
        dirt = 1
    }
})

minetest.register_node("mineport:grass_block", {
	description = "Grass",
	tiles = {"grass_block_top.png", "dirt.png",
		{name = "dirt.png^grass_block_side_overlay.png",
			tileable_vertical = false}},
	groups = {oddly_breakable_by_hand = 3},
	drop = "mineport:dirt"
})
