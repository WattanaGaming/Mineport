mtworks = {
    path = minetest.get_modpath(minetest.get_current_modname())
}

-- Get the path to the currently loading mod.
---@return string
function mtworks.get_current_modpath()
    return minetest.get_modpath(minetest.get_current_modname())
end

-- Recursively iterate through files in a specified directory.
---@param dir string
---@param fileHandler fun(path: string)
function mtworks.dirTree(dir, fileHandler)
    assert(dir, "directory must be specified")
    fileHandler = fileHandler or function() end

    local files = minetest.get_dir_list(dir, false)
    for _,file in ipairs(files) do
        fileHandler(dir.."/"..file)
    end

    local directories = minetest.get_dir_list(dir, true)
    for _,directory in ipairs(directories) do
        mtworks.dirTree(dir.."/"..directory, fileHandler)
    end
end
