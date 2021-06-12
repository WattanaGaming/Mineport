mineport = {
    path = mtworks.get_current_modpath(),
}

minetest.log("action", "Running scripts")
mtworks.dirTree(mineport.path.."/scripts", function(path)
    minetest.log("action", "    "..path)
    if path:match("^.+(%..+)$") == ".lua" then
        dofile(path)
    end
end)
