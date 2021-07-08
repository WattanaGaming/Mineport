---@class playerData
---@field address string             -- IP address of client
---@field ip_version integer         -- IPv4 / IPv6
---@field connection_uptime integer  -- Seconds since client connected
---@field protocol_version integer   -- Protocol version used by client
---@field formspec_version integer   -- Supported formspec version
---@field lang_code string           -- Language code used for translation
-- The following keys can be missing if no stats have been collected yet.
---@field min_rtt number|nil         -- Minimum round trip time
---@field max_rtt number|nil         -- Maximum round trip time
---@field avg_rtt number|nil         -- Average round trip time
---@field min_jitter number|nil      -- Minimum packet time jitter
---@field max_jitter number|nil      -- Maximum packet time jitter
---@field avg_jitter number|nil      -- Average packet time jitter

---@class engineVersion : table
---@field project string -- Name of the project, eg, "Minetest"
---@field string string -- Simple version, eg, "1.2.3-dev"
---@field hash string -- Full git version (only set if available), eg, "1.2.3-dev-01234567-dirty".

---@alias tileDefinitionField table<integer,string|TileDefinition>
---@alias colorSpecField colorSpec|integer|string
---@alias SimpleSoundSpecField string|SimpleSoundSpec

---@class SimpleSoundSpec
---@field name string
---@field gain number
---@field pitch number

---@class Position
---@field x number
---@field y number
---@field z number

---TODO: Document
---@class Node

---@class colorSpec : table
---@field r integer
---@field g integer
---@field b integer

---@class TileDefinition : table
---@field name string
---@field animation tileAnimationDefinition
---@field backface_culling boolean
---@field align_style alignStyle
---@field scale integer

---@class tileAnimationDefinition : table
---@field type tileAnimationType
--- Width of a frame in pixels
---@field aspect_w integer
--- Height of a frame in pixels
---@field aspect_h integer
--- Full loop length
---@field length number
--- Width in number of frames
---@field frames_w integer
--- Height in number of frames
---@field frames_h integer
--- Length of a single frame
---@field frame_length number
