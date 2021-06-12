---@class InvRef
local InvRef = {
    --- Set size of a list
    --- * returns `false` on error (e.g. invalid `listname` or `size`)
    ---@param listname string
    ---@param size number
    set_size = function(self, listname, size) end,

    --- Set width of list; currently used for crafting
    ---@param listname string
    ---@param width number
    set_width = function(self, listname, width) end,
}
