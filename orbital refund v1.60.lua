g_lua.register()

AUDIO.PLAY_SOUND_FRONTEND(-1, "CHECKPOINT_NORMAL", "HUD_MINI_GAME_SOUNDSET", true)

g_gui.add_toast("Welcome " .. PLAYER.GET_PLAYER_NAME(PLAYER.PLAYER_ID()) .. " to APO MONEY", 7000)


local player_char = STATS.STAT_GET_INT(g_util.joaat("MPPLY_LAST_MP_CHAR"))
local log_file = MISC.GET_APPDATA_PATH("Cherax\\Lua\\", "NIGHTCLUB_RECOVERY_LOG.txt")
local nc_max_tries = 1
local nc_current_tries = 0
local afk_nc = false
local show_hud = false
local show_confirmation = true
nc_delay = 4

function write_file(text)
    check_log_file()
    local time = (os.date("%m/%d/%Y %X"))
    assert(io.open(log_file, "a")):write(time .. " [LUA] " .. text .. "\n")
    assert(io.open(log_file, "a")):close()
end

local demo_menu = menu.add_submenu("Orbital Refund")
local refund_index = 1964179
local index1 = 262145 + 23211
local index2 = 262145 + 22855
local index3 = 262145 + 22857
 
demo_menu:add_action("Orbital Refund 500000", function()
	globals.set_int(refund_index, (1 << 0)) -- set bit 0
	sleep(0.1)
	globals.set_int(refund_index, 0) -- Clear in case the script does not
end, function()
	return script("freemode"):is_active()
end)
 
demo_menu:add_action("Orbital Refund 750000", function()
	globals.set_int(refund_index, (1 << 1)) -- set bit 1
	sleep(0.1)
	globals.set_int(refund_index, 0) -- Clear in case the script does not
end, function()
	return script("freemode"):is_active()
end)
 
while g_isRunning do
    g_util.yield(100)
end

g_hooking.unregister_hook(confirmation_hook)
g_hooking.unregister_hook(hud_hook)
g_lua.unregister()