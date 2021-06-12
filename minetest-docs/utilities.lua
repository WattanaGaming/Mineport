---@meta

--- Returns the currently loading mod's name, when loading a mod.
---@return string
function minetest.get_current_modname() end

--- Returns the directory path for a mod, e.g. `"/home/user/.minetest/usermods/modname"`.
--- * Returns nil if the mod is not enabled or does not exist (not installed).
--- * Works regardless of whether the mod has been loaded yet.
--- * Useful for loading additional `.lua` modules or static data from a mod,
---@param modname string
---@return string|nil
function minetest.get_modpath(modname) end

--- Returns a list of enabled mods, sorted alphabetically.
--- * Does not include disabled mods, even if they are installed.
---@return table
function minetest.get_modnames() end

--- Returns e.g. `"/home/user/.minetest/world"`.
--- * Useful for storing custom data.
---@return string
function minetest.get_worldpath() end

---@return boolean
function minetest.is_singleplayer() end

--- Table containing API feature flags.
minetest.features = {
    glasslike_framed = true,  -- 0.4.7
    nodebox_as_selectionbox = true,  -- 0.4.7
    get_all_craft_recipes_works = true,  -- 0.4.7
    -- The transparency channel of textures can optionally be used on
    -- nodes (0.4.7)
    use_texture_alpha = true,
    -- Tree and grass ABMs are no longer done from C++ (0.4.8)
    no_legacy_abms = true,
    -- Texture grouping is possible using parentheses (0.4.11)
    texture_names_parens = true,
    -- Unique Area ID for AreaStore:insert_area (0.4.14)
    area_store_custom_ids = true,
    -- add_entity supports passing initial staticdata to on_activate
    -- (0.4.16)
    add_entity_with_staticdata = true,
    -- Chat messages are no longer predicted (0.4.16)
    no_chat_message_prediction = true,
    -- The transparency channel of textures can optionally be used on
    -- objects (ie: players and lua entities) (5.0.0)
    object_use_texture_alpha = true,
    -- Object selectionbox is settable independently from collisionbox
    -- (5.0.0)
    object_independent_selectionbox = true,
    -- Specifies whether binary data can be uploaded or downloaded using
    -- the HTTP API (5.1.0)
    httpfetch_binary_data = true,
    -- Whether formspec_version[<version>] may be used (5.1.0)
    formspec_version_element = true,
    -- Whether AreaStore's IDs are kept on save/load (5.1.0)
    area_store_persistent_ids = true,
    -- Whether minetest.find_path is functional (5.2.0)
    pathfinder_works = true,
    -- Whether Collision info is available to an objects' on_step (5.3.0)
    object_step_has_moveresult = true,
    -- Whether get_velocity() and add_velocity() can be used on players (5.4.0)
    direct_velocity_on_players = true,
    -- nodedef's use_texture_alpha accepts new string modes (5.4.0)
    use_texture_alpha_string_modes = true,
}

--- Returns `boolean, missing_features`.
--- * `arg`: string or table in format `{foo=true, bar=true}`
--- * `missing_features`: `{foo=true, bar=true}`
---@param arg string|table
---@return boolean, table missing_features
function minetest.has_feature(arg) end

--- Table containing information about a player.
---@param player_name string
---@return playerData
function minetest.get_player_information(player_name) end

--- Creates a directory specified by `path`, creating parent directories if they don't exist.
---@param path string
---@return boolean success
function minetest.mkdir(path) end

--- Returns list of entry names.
--- * is_dir is one of:
---     * nil: return all entries,
---     * true: return only subdirectory names, or
---     * false: return only file names.
---@param path string
---@param is_dir boolean
function minetest.get_dir_list(path, is_dir) end

--- Returns boolean indicating success.
--- * Replaces contents of file at path with new contents in a safe (atomic)
---   way. Use this instead of below code when writing e.g. database files:
---   `local f = io.open(path, "wb"); f:write(content); f:close()`
---@param path string
---@param content any
---@return boolean success
function minetest.safe_file_write(path, content) end

--- Returns a table containing components of the engine version.  Components:
--- * `project`: Name of the project, eg, "Minetest"
--- * `string`: Simple version, eg, "1.2.3-dev"
--- * `hash`: Full git version (only set if available),
---   eg, "1.2.3-dev-01234567-dirty".
---
--- Use this for informational purposes only. The information in the returned
--- table does not represent the capabilities of the engine, nor is it
--- reliable or verifiable. Compatible forks will have a different name and
--- version entirely. To check for the presence of engine features, test
--- whether the functions exported by the wanted features exist. For example:
--- `if minetest.check_for_falling then ... end`.
---@return engineVersion
function minetest.get_version() end

--- Returns the sha1 hash of data
--- * `data`: string of data to hash
--- * `raw`: return raw bytes instead of hex digits, default: false
---@param data string
---@param raw boolean
---@return string|integer
function minetest.sha1(data, raw) end
