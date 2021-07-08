---@class NodeDefinition : ItemDefinition
local nodeDefinition = {
    --- * `normal`
    ---     * A node-sized cube.
    --- * `airlike`
    ---     * Invisible, uses no texture.
    --- * `liquid`
    ---     * The cubic source node for a liquid.
    --- * `flowingliquid`
    ---     * The flowing version of a liquid, appears with various heights and slopes.
    --- * `glasslike`
    ---     * Often used for partially-transparent nodes.
    ---     * Only external sides of textures are visible.
    --- * `glasslike_framed`
    ---     * All face-connected nodes are drawn as one volume within a surrounding
    ---       frame.
    ---     * The frame appearance is generated from the edges of the first texture
    ---       specified in `tiles`. The width of the edges used are 1/16th of texture
    ---       size: 1 pixel for 16x16, 2 pixels for 32x32 etc.
    ---     * The glass 'shine' (or other desired detail) on each node face is supplied
    ---       by the second texture specified in `tiles`.
    --- * `glasslike_framed_optional`
    ---     * This switches between the above 2 drawtypes according to the menu setting
    ---       'Connected Glass'.
    --- * `allfaces`
    ---     * Often used for partially-transparent nodes.
    ---     * External and internal sides of textures are visible.
    --- * `allfaces_optional`
    ---     * Often used for leaves nodes.
    ---     * This switches between `normal`, `glasslike` and `allfaces` according to
    ---       the menu setting: Opaque Leaves / Simple Leaves / Fancy Leaves.
    ---     * With 'Simple Leaves' selected, the texture specified in `special_tiles`
    ---       is used instead, if present. This allows a visually thicker texture to be
    ---       used to compensate for how `glasslike` reduces visual thickness.
    --- * `torchlike`
    ---     * A single vertical texture.
    ---     * If placed on top of a node, uses the first texture specified in `tiles`.
    ---     * If placed against the underside of a node, uses the second texture
    ---       specified in `tiles`.
    ---     * If placed on the side of a node, uses the third texture specified in
    ---       `tiles` and is perpendicular to that node.
    --- * `signlike`
    ---     * A single texture parallel to, and mounted against, the top, underside or
    ---       side of a node.
    --- * `plantlike`
    ---     * Two vertical and diagonal textures at right-angles to each other.
    ---     * See `paramtype2 = "meshoptions"` above for other options.
    --- * `firelike`
    ---     * When above a flat surface, appears as 6 textures, the central 2 as
    ---       `plantlike` plus 4 more surrounding those.
    ---     * If not above a surface the central 2 do not appear, but the texture
    ---       appears against the faces of surrounding nodes if they are present.
    --- * `fencelike`
    ---     * A 3D model suitable for a wooden fence.
    ---     * One placed node appears as a single vertical post.
    ---     * Adjacently-placed nodes cause horizontal bars to appear between them.
    --- * `raillike`
    ---     * Often used for tracks for mining carts.
    ---     * Requires 4 textures to be specified in `tiles`, in order: Straight,
    ---       curved, t-junction, crossing.
    ---     * Each placed node automatically switches to a suitable rotated texture
    ---       determined by the adjacent `raillike` nodes, in order to create a
    ---       continuous track network.
    ---     * Becomes a sloping node if placed against stepped nodes.
    --- * `nodebox`
    ---     * Often used for stairs and slabs.
    ---     * Allows defining nodes consisting of an arbitrary number of boxes.
    ---     * See [Node boxes] below for more information.
    --- * `mesh`
    ---     * Uses models for nodes.
    ---     * Tiles should hold model materials textures.
    ---     * Only static meshes are implemented.
    ---     * For supported model formats see Irrlicht engine documentation.
    --- * `plantlike_rooted`
    ---     * Enables underwater `plantlike` without air bubbles around the nodes.
    ---     * Consists of a base cube at the co-ordinates of the node plus a
    ---       `plantlike` extension above with a height of `param2 / 16` nodes.
    ---     * The `plantlike` extension visually passes through any nodes above the
    ---       base cube without affecting them.
    ---     * The base cube texture tiles are defined as normal, the `plantlike`
    ---       extension uses the defined special tile, for example:
    ---       `special_tiles = {{name = "default_papyrus.png"}},`
    ---@type nodeDrawType
    drawtype = "normal",

    --- Supported for drawtypes "plantlike", "signlike", "torchlike",
    --- "firelike", "mesh", "nodebox", "allfaces".
    --- For plantlike and firelike, the image will start at the bottom of the
    --- node. For torchlike, the image will start at the surface to which the
    --- node "attaches". For the other drawtypes the image will be centered
    --- on the node.
    visual_scale = 1.0,

    --- Textures of node; +Y, -Y, +X, -X, +Z, -Z
    --- Old field name was 'tile_images'.
    --- List can be shortened to needed length.
    ---@type tileDefinitionField
    tiles = {},

    --- Same as `tiles`, but these textures are drawn on top of the base
    --- tiles. You can use this to colorize only specific parts of your
    --- texture. If the texture name is an empty string, that overlay is not
    --- drawn. Since such tiles are drawn twice, it is not recommended to use
    --- overlays on very common nodes.
    ---@type tileDefinitionField
    overlay_tiles = {},

    --- Special textures of node; used rarely.
    --- Old field name was 'special_materials'.
    --- List can be shortened to needed length.
    ---@type tileDefinitionField
    special_tiles = {},

    --- The node's original color will be multiplied with this color.
    --- If the node has a palette, then this setting only has an effect in
    --- the inventory and on the wield item.
    ---@type colorSpecField
    color = {},

    --- Specifies how the texture's alpha channel will be used for rendering.
    --- possible values:
    --- * "opaque": Node is rendered opaque regardless of alpha channel
    --- * "clip": A given pixel is either fully see-through or opaque
    ---   depending on the alpha channel being below/above 50% in value
    --- * "blend": The alpha channel specifies how transparent a given pixel
    ---   of the rendered node is
    --- The default is "opaque" for drawtypes normal, liquid and flowingliquid;
    --- "clip" otherwise.
    --- If set to a boolean value (deprecated): true either sets it to blend
    --- or clip, false sets it to clip or opaque mode depending on the drawtype.
    ---@type alphaMode
    use_texture_alpha = "opaque",

    --- The node's `param2` is used to select a pixel from the image.
    --- Pixels are arranged from left to right and from top to bottom.
    --- The node's color will be multiplied with the selected pixel's color.
    --- Tiles can override this behavior.
    --- Only when `paramtype2` supports palettes.
    palette = "palette.png",

    ---@type colorSpecField
    post_effect_color = "green#0F", -- Screen tint if player is inside node, see "ColorSpec"

    ---@type paramType
    paramtype = "none",  -- See "Nodes"

    ---@type paramType2
    paramtype2 = "none",  -- See "Nodes"

    place_param2 = nil,  -- Force value for param2 when player places node

    --- If false, the cave generator and dungeon generator will not carve
    --- through this node.
    --- Specifically, this stops mod-added nodes being removed by caves and
    --- dungeons when those generate in a neighbor mapchunk and extend out
    --- beyond the edge of that mapchunk.
    is_ground_content = true,

    sunlight_propagates = false, -- If true, sunlight will go infinitely through this node
    
    walkable = true,  -- If true, objects collide with node

    pointable = true,  -- If true, can be pointed at

    diggable = true,  -- If false, can never be dug

    climbable = false,  -- If true, can be climbed on (ladder)

    buildable_to = false,  -- If true, placed nodes can replace this node

    --- If true, liquids flow into and replace this node.
    --- Warning: making a liquid node 'floodable' will cause problems.
    floodable = false,

    ---@type liquidType
    liquidtype = "none",

    liquid_alternative_flowing = "",  -- Flowing version of source liquid

    liquid_alternative_source = "",  -- Source version of flowing liquid

    liquid_viscosity = 0,  -- Higher viscosity = slower flow (max. 7)

    --- If true, a new liquid source can be created by placing two or more
    --- sources nearby
    liquid_renewable = true,

    --- Only valid for "nodebox" drawtype with 'type = "leveled"'.
    --- Allows defining the nodebox height without using param2.
    --- The nodebox height is 'leveled' / 64 nodes.
    --- The maximum value of 'leveled' is `leveled_max`.
    leveled = 0,

    --- Maximum value for `leveled` (0-127), enforced in
    --- `minetest.set_node_level` and `minetest.add_node_level`.
    --- Values above 124 might causes collision detection issues.
    leveled_max = 127,

    liquid_range = 8,  -- Number of flowing nodes around source (max. 8)

    drowning = 0, -- Player will take this amount of damage if no bubbles are left

    damage_per_second = 0, -- If player is inside node, this damage is caused
    
    node_box = {}, -- See "Node boxes"

    --- Used for nodebox nodes with the type == "connected".
    --- Specifies to what neighboring nodes connections will be drawn.
    --- e.g. `{"group:fence", "default:wood"}` or `"default:stone"`
    connects_to = "",

    --- Tells connected nodebox nodes to connect only to these sides of this node
    ---@type table<any,sides>
    connect_sides = {},

    mesh = "mesh.obj", -- File name of mesh when using "mesh" drawtype

    --- Custom selection box definition. Multiple boxes can be defined.
    --- If "nodebox" drawtype is used and selection_box is nil, then node_box
    --- definition is used for the selection box.
    selection_box = {
        type = "fixed",
        fixed = {
            {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
            -- Node box format: see [Node boxes]
        },
    },

    --- Custom collision box definition. Multiple boxes can be defined.
    --- If "nodebox" drawtype is used and collision_box is nil, then node_box
    --- definition is used for the collision box.
    collision_box = {
        type = "fixed",
        fixed = {
            {-2 / 16, -0.5, -2 / 16, 2 / 16, 3 / 16, 2 / 16},
            -- Node box format: see [Node boxes]
        },
    },

    legacy_facedir_simple = false,
    legacy_wallmounted = false,

    --- Valid for drawtypes:
    --- mesh, nodebox, plantlike, allfaces_optional, liquid, flowingliquid.
    --- * 1 wave node like plants (node top moves side-to-side, bottom is fixed)
    --- * 2 wave node like leaves (whole node moves side-to-side)
    --- * 3 wave node like liquids (whole node moves up and down)
    ---
    --- Not all models will properly wave.
    --- plantlike drawtype can only wave like plants.
    --- allfaces_optional drawtype can only wave like leaves.
    --- liquid, flowingliquid drawtypes can only wave like liquids.
    ---@type waveMode
    waving = 0,

    sounds = {
        -- Definition of node sounds to be played at various events.
        -- All fields in this table are optional.

        -- If walkable, played when object walks on it. If node is
        -- climbable or a liquid, played when object moves through it
        ---@type SimpleSoundSpecField
        footstep = "",

        -- While digging node.
        -- If `"__group"`, then the sound will be
        -- `default_dig_<groupname>`, where `<groupname>` is the
        -- name of the tool's digging group with the fastest digging time.
        -- In case of a tie, one of the sounds will be played (but we
        -- cannot predict which one)
        -- Default value: `"__group"`
        ---@type SimpleSoundSpecField
        dig = "",

        -- Node was dug
        ---@type SimpleSoundSpecField
        dug = "",

        -- Node was placed. Also played after falling
        ---@type SimpleSoundSpecField
        place = "",

        -- When node placement failed.
        -- Note: This happens if the _built-in_ node placement failed.
        -- This sound will still be played if the node is placed in the
        -- `on_place` callback manually.
        ---@type SimpleSoundSpecField
        place_failed = "",

        -- When node starts to fall or is detached
        ---@type SimpleSoundSpecField
        fall = "",
    },

    -- Name of dropped item when dug.
    -- Default dropped item is the node itself.
    -- Using a table allows multiple items, drop chances and tool filtering.
    -- Tool filtering was undocumented until recently, tool filtering by string
    -- matching is deprecated.
    drop = {
        -- Maximum number of item lists to drop.
        -- The entries in 'items' are processed in order. For each:
        -- Tool filtering is applied, chance of drop is applied, if both are
        -- successful the entire item list is dropped.
        -- Entry processing continues until the number of dropped item lists
        -- equals 'max_items'.
        -- Therefore, entries should progress from low to high drop chance.
        max_items = 1,
        items = {
            -- Entry examples.
            {
                -- 1 in 1000 chance of dropping a diamond.
                -- Default rarity is '1'.
                rarity = 1000,
                items = {"default:diamond"},
            },
            {
                -- Only drop if using a tool whose name is identical to one
                -- of these.
                tools = {"default:shovel_mese", "default:shovel_diamond"},
                rarity = 5,
                items = {"default:dirt"},
                -- Whether all items in the dropped item list inherit the
                -- hardware coloring palette color from the dug node.
                -- Default is 'false'.
                inherit_color = true,
            },
            {
                -- Only drop if using a tool whose name contains
                -- "default:shovel_" (this tool filtering by string matching
                -- is deprecated).
                tools = {"~default:shovel_"},
                rarity = 2,
                -- The item list dropped.
                items = {"default:sand", "default:desert_sand"},
            },
        },
    },

    -- Node constructor; called after adding node.
    -- Can set up metadata and stuff like that.
    -- Not called for bulk node placement (i.e. schematics and VoxelManip).
    -- default: nil
    ---@type fun(pos: Position)
    on_construct = nil,

    -- Node destructor; called before removing node.
    -- Not called for bulk node placement.
    -- default: nil
    ---@type fun(pos: Position)
    on_destruct = nil,

    -- Node destructor; called after removing node.
    -- Not called for bulk node placement.
    -- default: nil
    ---@type fun(pos: Position, oldnode: Node)
    after_destruct = nil,

    -- Called when a liquid (newnode) is about to flood oldnode, if it has
    -- `floodable = true` in the nodedef. Not called for bulk node placement
    -- (i.e. schematics and VoxelManip) or air nodes. If return true the
    -- node is not flooded, but on_flood callback will most likely be called
    -- over and over again every liquid update interval.
    -- Default: nil
    -- Warning: making a liquid node 'floodable' will cause problems.
    ---@type fun(pos: Position, oldnode: Node, newnode: Node)
    on_flood = nil,

    -- Called when oldnode is about be converted to an item, but before the
    -- node is deleted from the world or the drops are added. This is
    -- generally the result of either the node being dug or an attached node
    -- becoming detached.
    -- oldmeta is the NodeMetaRef of the oldnode before deletion.
    -- drops is a table of ItemStacks, so any metadata to be preserved can
    -- be added directly to one or more of the dropped items. See
    -- "ItemStackMetaRef".
    -- default: nil
    ---@type fun(pos: Position, oldnode: Node, oldmeta: any, drops: any)
    preserve_metadata = nil,

    -- Called after constructing node when node was placed using
    -- minetest.item_place_node / minetest.place_node.
    -- If return true no item is taken from itemstack.
    -- `placer` may be any valid ObjectRef or nil.
    -- default: nil
    ---@type fun(pos: Position, placer: any, itemstack: any, pointed_thing: any)
    after_place_node = nil,

    -- oldmetadata is in table format.
    -- Called after destructing node when node was dug using
    -- minetest.node_dig / minetest.dig_node.
    -- default: nil
    ---@type fun(pos: Position, oldnode: Node, oldmetadata: any, digger: any)
    after_dig_node = nil,

    -- Returns true if node can be dug, or false if not.
    -- default: nil
    ---@type fun(pos: Position, player?: any)
    can_dig = nil,

    -- default: minetest.node_punch
    -- Called when puncher (an ObjectRef) punches the node at pos.
    -- By default calls minetest.register_on_punchnode callbacks.
    ---@type fun(pos: Position, node: Node, puncher: any, pointed_thing: any)
    on_punch = minetest.register_on_punchnode,

    -- default: nil
    -- Called when clicker (an ObjectRef) "rightclicks"
    -- ("rightclick" here stands for the placement key) while pointing at
    -- the node at pos with 'node' being the node table.
    -- itemstack will hold clicker's wielded item.
    -- Shall return the leftover itemstack.
    -- Note: pointed_thing can be nil, if a mod calls this function.
    -- This function does not get triggered by clients <=0.4.16 if the
    -- "formspec" node metadata field is set.
    ---@type fun(pos: Position, node: Node, clicker: any, itemstack: any, pointed_thing: any)
    on_rightclick = nil,

    -- default: minetest.node_dig
    -- By default checks privileges, wears out tool and removes node.
    -- return true if the node was dug successfully, false otherwise.
    -- Deprecated: returning nil is the same as returning true.
    ---@type fun(pos: Position, node: Node, digger: any)
    on_dig = minetest.node_dig,

    -- default: nil
    -- called by NodeTimers, see minetest.get_node_timer and NodeTimerRef.
    -- elapsed is the total time passed since the timer was started.
    -- return true to run the timer for another cycle with the same timeout
    -- value.
    ---@type fun(pos: Position, elapsed: number)
    on_timer = nil,

    -- fields = {name1 = value1, name2 = value2, ...}
    -- Called when an UI form (e.g. sign text input) returns data.
    -- See minetest.register_on_player_receive_fields for more info.
    -- default: nil
    ---@type fun(pos:Position, formname: any, fields: any, sender: any)
    on_receive_fields = nil,

    -- Called when a player wants to move items inside the inventory.
    -- Return value: number of items allowed to move.
    ---@type fun(pos: Position, from_list: any, from_index: any, to_list: any, to_index: any, count: any, player: any)
    allow_metadata_inventory_move = nil,

    -- Called when a player wants to put something into the inventory.
    -- Return value: number of items allowed to put.
    -- Return value -1: Allow and don't modify item count in inventory.
    ---@type fun(pos: Position, listname: any, index: any, stack: any, player: any)
    allow_metadata_inventory_put = nil,

    -- Called when a player wants to take something out of the inventory.
    -- Return value: number of items allowed to take.
    -- Return value -1: Allow and don't modify item count in inventory.
    ---@type fun(pos: Position, listname: any, index: any, stack: any, player: any)
    allow_metadata_inventory_take = nil,

    -- Called after the actual action has happened, according to what was
    -- allowed.
    -- No return value.
    ---@type fun(pos: Position, from_list: any, from_index: any, to_list: any, to_index: any, count: any, player: any)
    on_metadata_inventory_move = nil,
    ---@type fun(pos: Position, listname: any, index: any, stack: any, player: any)
    on_metadata_inventory_put = nil,
    ---@type fun(pos: Position, listname: any, index: any, stack: any, player: any)
    on_metadata_inventory_take = nil,

    -- intensity: 1.0 = mid range of regular TNT.
    -- If defined, called when an explosion touches the node, instead of
    -- removing the node.
    ---@type fun(pos: Position, intensity: number)
    on_blast = nil,

    -- stores which mod actually registered a node
    -- if it can not find a source, returns "??"
    -- useful for getting what mod truly registered something
    -- example: if a node is registered as ":othermodname:nodename",
    -- nodename will show "othermodname", but mod_orgin will say "modname"
    mod_origin = "modname",
}
