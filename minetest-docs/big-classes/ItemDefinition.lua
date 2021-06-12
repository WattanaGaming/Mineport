---@class ItemDefinition
local ItemDefinition = {
    -- Can contain new lines. "\n" has to be used as new line character.
    -- See also: `get_description` in [`ItemStack`]
    description = "Steel Axe",

    -- Must not contain new lines.
    -- Defaults to nil.
    -- Use an [`ItemStack`] to get the short description, eg:
    --   ItemStack(itemname):get_short_description()
    short_description = "Steel Axe",

    -- key = name, value = rating; rating = 1..3.
    -- If rating not applicable, use 1.
    -- e.g. {wool = 1, fluffy = 3}
    --      {soil = 2, outerspace = 1, crumbly = 1}
    --      {bendy = 2, snappy = 1},
    --      {hard = 1, metal = 1, spikes = 1}
    groups = {},

    inventory_image = "default_tool_steelaxe.png",

    -- An overlay which does not get colorized
    inventory_overlay = "overlay.png",

    wield_image = "",

    wield_overlay = "",

    -- An image file containing the palette of a node.
    -- You can set the currently used color as the "palette_index" field of
    -- the item stack metadata.
    -- The palette is always stretched to fit indices between 0 and 255, to
    -- ensure compatibility with "colorfacedir" and "colorwallmounted" nodes.
    palette = "",

    -- The color of the item. The palette overrides this.
    color = "0xFFFFFFFF",

    wield_scale = {x = 1, y = 1, z = 1},

    -- The default value of 99 may be configured by
    -- users using the setting "default_stack_max"
    stack_max = 99,

    range = 4.0,

    liquids_pointable = false,

    -- When used for nodes: Defines amount of light emitted by node.
    -- Otherwise: Defines texture glow when viewed as a dropped item
    -- To set the maximum (14), use the value 'minetest.LIGHT_MAX'.
    -- A value outside the range 0 to minetest.LIGHT_MAX causes undefined
    -- behavior.
    light_source = 0,

    -- See "Tools" section for an example including explanation
    tool_capabilities = {
        full_punch_interval = 1.0,
        max_drop_level = 0,
        groupcaps = {
            -- For example:
            choppy = {times = {[1] = 2.50, [2] = 1.40, [3] = 1.00},
                        uses = 20, maxlevel = 2},
        },
        -- Damage values must be between -32768 and 32767 (2^15)
        damage_groups = {groupname = 1},

        -- Amount of uses this tool has for attacking players and entities
        -- by punching them (0 = infinite uses).
        -- For compatibility, this is automatically set from the first
        -- suitable groupcap using the forumla "uses * 3^(maxlevel - 1)".
        -- It is recommend to set this explicitly instead of relying on the
        -- fallback behavior.
        punch_attack_uses = nil,
    },

    -- If nil and item is node, prediction is made automatically.
    -- If nil and item is not a node, no prediction is made.
    -- If "" and item is anything, no prediction is made.
    -- Otherwise should be name of node which the client immediately places
    -- on ground when the player places the item. Server will always update
    -- actual result to client in a short moment.
    node_placement_prediction = nil,

    -- if "", no prediction is made.
    -- if "air", node is removed.
    -- Otherwise should be name of node which the client immediately places
    -- upon digging. Server will always update actual result shortly.
    node_dig_prediction = "air",

    -- Definition of items sounds to be played at various events.
    -- All fields in this table are optional.
    sound = {

        -- When tool breaks due to wear. Ignored for non-tools
        ---@type SimpleSoundSpecField
        breaks = nil,

        -- When item is eaten with `minetest.do_item_eat`
        ---@type SimpleSoundSpecField
        eat = nil,
    },

    -- Shall place item and return the leftover itemstack.
    -- The placer may be any ObjectRef or nil.
    -- default: minetest.item_place
    ---@type fun(itemstack: any, placer: any, pointed_thing: any)
    on_place = minetest.item_place,

    -- Same as on_place but called when not pointing at a node.
    -- The user may be any ObjectRef or nil.
    -- default: nil
    ---@type fun(itemstack: any, user: any, pointed_thing: any)
    on_secondary_use = nil,

    -- Shall drop item and return the leftover itemstack.
    -- The dropper may be any ObjectRef or nil.
    -- default: minetest.item_drop
    ---@type fun(itemstack: any, dropper: any, pos: any)
    on_drop = minetest.item_drop,

    -- default: nil
    -- Function must return either nil if no item shall be removed from
    -- inventory, or an itemstack to replace the original itemstack.
    -- e.g. itemstack:take_item(); return itemstack
    -- Otherwise, the function is free to do what it wants.
    -- The user may be any ObjectRef or nil.
    -- The default functions handle regular use cases.
    ---@type fun(itemstack: any, user: any, pointed_thing: any)
    on_use = nil,

    -- default: nil
    -- If defined, should return an itemstack and will be called instead of
    -- wearing out the tool. If returns nil, does nothing.
    -- If after_use doesn't exist, it is the same as:
    --   function(itemstack, user, node, digparams)
    --     itemstack:add_wear(digparams.wear)
    --     return itemstack
    --   end
    -- The user may be any ObjectRef or nil.
    ---@type fun(itemstack: any, user: any, node: Node, digparams: any)
    after_use = nil,

    -- Add your own custom fields. By convention, all custom field names
    -- should start with `_` to avoid naming collisions with future engine
    -- usage.
    _custom_field = nil,
}
