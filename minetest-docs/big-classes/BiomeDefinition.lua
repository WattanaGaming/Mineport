---@class BiomeDefinition
local BiomeDefinition = {
    name = "",

    -- Node dropped onto upper surface after all else is generated
    node_dust = "",

    -- Node forming surface layer of biome and thickness of this layer
    node_top = "",
    depth_top = 1,

    -- Node forming lower layer of biome and thickness of this layer
    node_filler = "",
    depth_filler = 3,

    -- Node that replaces all stone nodes between roughly y_min and y_max.
    node_stone = "",

    -- Node forming a surface layer in seawater with the defined thickness
    node_water_top = "",
    depth_water_top = 10,

    -- Node that replaces all seawater nodes not in the surface layer
    node_water = "",

    -- Node that replaces river water in mapgens that use
    -- default:river_water
    node_river_water = "",

    -- Node placed under river water and thickness of this layer
    node_riverbed = "",
    depth_riverbed = 2,

    -- Nodes placed inside 50% of the medium size caves.
    -- Multiple nodes can be specified, each cave will use a randomly
    -- chosen node from the list.
    -- If this field is left out or 'nil', cave liquids fall back to
    -- classic behaviour of lava and water distributed using 3D noise.
    -- For no cave liquid, specify "air".
    ---@type string|table<nil,string>
    node_cave_liquid = "",

    -- Node used for primary dungeon structure.
    -- If absent, dungeon nodes fall back to the 'mapgen_cobble' mapgen
    -- alias, if that is also absent, dungeon nodes fall back to the biome
    -- 'node_stone'.
    -- If present, the following two nodes are also used.
    node_dungeon = "",

    -- Node used for randomly-distributed alternative structure nodes.
    -- If alternative structure nodes are not wanted leave this absent for
    -- performance reasons.
    node_dungeon_alt = "",

    -- Node used for dungeon stairs.
    -- If absent, stairs fall back to 'node_dungeon'.
    node_dungeon_stair = "node_dungeon",

    -- Upper and lower limits for biome.
    y_max = 31000,
    y_min = 1,

    -- xyz limits for biome, an alternative to using 'y_min' and 'y_max'.
    -- Biome is limited to a cuboid defined by these positions.
    -- Any x, y or z field left undefined defaults to -31000 in 'min_pos' or
    -- 31000 in 'max_pos'.
    max_pos = {x = 31000, y = 128, z = 31000},
    min_pos = {x = -31000, y = 9, z = -31000},

    -- Vertical distance in nodes above 'y_max' over which the biome will
    -- blend with the biome above.
    -- Set to 0 for no vertical blend. Defaults to 0.
    vertical_blend = 0,

    -- Characteristic temperature and humidity for the biome.
    -- These values create 'biome points' on a voronoi diagram with heat and
    -- humidity as axes. The resulting voronoi cells determine the
    -- distribution of the biomes.
    -- Heat and humidity have average values of 50, vary mostly between
    -- 0 and 100 but can exceed these values.
    heat_point = 0,
    humidity_point = 50,
}

