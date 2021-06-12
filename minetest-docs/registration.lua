---@meta

--- Registers a node
---@param name string
---@param nodeDef NodeDefinition
function minetest.register_node(name, nodeDef) end

--- Registers a tool
---@param name string
---@param itemDef ItemDefinition
function minetest.register_tool(name, itemDef) end

--- This adds an alias `alias` for the item called `original_name`.
--- After registering, you can use `alias` to refer to the item `original_name`.
---@param alias string
---@param original_name string
function minetest.register_alias(alias, original_name) end

--- The only difference between `minetest.register_alias` and
--- `minetest.register_alias_force` is that if an item named `alias` already exists,
--- `minetest.register_alias` will do nothing while
--- `minetest.register_alias_force` will unregister it.
---@param alias string
---@param original_name string
function minetest.register_alias_force(alias, original_name) end

--- * Returns an integer object handle uniquely identifying the registered
---   biome on success. To get the biome ID, use `minetest.get_biome_id`.
---@param biomeDef BiomeDefinition
function minetest.register_biome(biomeDef) end
