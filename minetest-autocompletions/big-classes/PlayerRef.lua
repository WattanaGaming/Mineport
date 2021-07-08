---@class PlayerRef : ObjectRef
local PlayerRef = {
    --- Returns `""` if is not a player
    ---@return string
    get_player_name = function(self) end,

    --- * Redefine player's inventory form
    --- * Should usually be called in `on_joinplayer`
    ---@param formspec string
    set_inventory_formspec = function(self, formspec) end,

    --- Returns a formspec string
    ---@return string
    get_inventory_formspec = function(self) end,

    --- * the formspec string will be added to every formspec shown to the user,
    ---  except for those with a no_prepend[] tag.
    --- * This should be used to set style elements such as background[] and
    ---    bgcolor[], any non-style elements (eg: label) may result in weird behaviour.
    --- * Only affects formspecs shown after this is called.
    ---@param formspec string
    set_formspec_prepend = function(self, formspec) end,

    --- Returns a formspec string
    ---@return string
    get_formspec_prepend = function(self) end,

    --- Sets number of items in builtin hotbar
    --- * `count`: number of items, must be between `1` and `32`
    ---@param count integer
    hud_set_hotbar_itemcount = function(self, count) end,

    --- Returns number of visible items
    ---@return integer
    hud_get_hotbar_itemcount = function(self) end,

    --- Sets background image for hotbar.
    ---@param texturename string
    hud_set_hotbar_image = function(self, texturename) end,

    --- Returns texturename
    ---@return string texturename
    hud_get_hotbar_image = function(self) end,

    --- Sets image for selected item of hotbar
    ---@param texturename string
    hud_set_hotbar_selected_image = function(self, texturename) end,

    --- Returns texturename
    ---@return string texturename
    hud_get_hotbar_selected_image = function(self) end,
}
