-- Execute necessary files
local files = {
    "tools.lua",
    "nodes.lua",
    "biomes.lua"
}

for _, file in ipairs(files) do
	dofile(minetest.get_modpath("minecraft").."/"..file)
end
