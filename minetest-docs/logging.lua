---@meta

--- Equivalent to `minetest.log(table.concat({...}, "\t"))`
function minetest.debug(...) end

---@overload fun(message:string)
---@param level logLevel
---@param message string
function minetest.log(level, message) end

minetest.log("none")
