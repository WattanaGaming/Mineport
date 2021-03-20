minetest.log("action", "Initializing Mineport...")

mineport = {}
mineport.water_range = 6
mineport.drowning = 2

mineport.woodtypes = {
    "Oak",
}

mineport.colors = {
    grass = "#90C450",
    water_post_effect = "#95c7bb4F",
}

mineport.colors.leaves = {
    oak = "#6eac3d"
}

mineport.blocksound = function(sound)
    return {
        footstep = sound.."_footstep",
        dig = sound.."_footstep",
        dug = sound.."_dug",
        place = sound.."_dug",
    }
end

mineport.defaultGroupcaps = function(overrides)
    local groupcaps = {
        oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}, -- Kept for testing
        grass = {times = {0.9}},
        crumbly = {times = {0.75}},
        wood = {times = {3}},
        leaf = {times = {0.3}},
        plant = {times = {0}},
        stone = {times = {7.5}},
        cobbled = {times = {10}}
    }
    if overrides then
        assert(type(overrides) == "table")
        for groupToOverride, overrideValue in pairs(overrides) do
            groupcaps[groupToOverride] = overrideValue
        end
    end
    return groupcaps
end

minetest.log("action", "Setting up GUI...")
minetest.register_on_joinplayer(function(player)
	-- Set hotbar textures
	player:hud_set_hotbar_image("gui_hotbar.png")
	player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")
end)

do
    local modpath = minetest.get_modpath("mineport")
    -- A list of directories that contain the scripts we want to execute.
    local dirs = {
        "nodes",
        "biomes",
        "items",
        "tools",
        "recipes",
        "scripts",
    }

    minetest.log("action", "Running other scripts...")
    for _,dir in ipairs(dirs) do
        local fullDirPath = modpath.."/"..dir
        local files = minetest.get_dir_list(fullDirPath, false)

        for _,file in ipairs(files) do
            local extension = file:match("^.+(%..+)$")
            if extension == ".lua" then
                minetest.log("action", dir.."/"..file)
                dofile(fullDirPath.."/"..file)
            elseif extension == ".amogus" then
                minetest.log("none", "When the imposter is sus")
            else
                minetest.log("warning", dir.."/"..file.." is not a Lua script. Skipping.")
            end
        end
    end
end

minetest.log("action", "Done. Welcome to Mineport!")
