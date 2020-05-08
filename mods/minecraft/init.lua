-- Execute necessary files
local files = {
    "modules/groups.lua",
    "modules/tools.lua",
    "modules/nodes.lua",
    "modules/biomes.lua"
}

for _, file in ipairs(files) do
	dofile(minetest.get_modpath("minecraft").."/"..file)
end
