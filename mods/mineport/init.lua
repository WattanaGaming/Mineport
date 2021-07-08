mineport = {
    path = mtworks.get_current_modpath(),
}

minetest.log("action", "Running scripts")
mtworks.dirTree(mineport.path.."/scripts", function(path)
    if path:match("^.+(%..+)$") == ".lua" then
        minetest.log("action", "> "..path)
        dofile(path)
    end
end)
