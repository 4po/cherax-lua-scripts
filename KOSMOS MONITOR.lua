g_lua.register()

AUDIO.PLAY_SOUND_FRONTEND(-1, "CHECKPOINT_NORMAL", "HUD_MINI_GAME_SOUNDSET", true)

local player_charecter = STATS.STAT_GET_INT(g_util.joaat("MPPLY_LAST_MP_CHAR"))

local log_file = MISC.GET_APPDATA_PATH("Cherax\\Lua\\", "KOSMOS_MONITOR.LOG.txt")

function write_file(text)
    if MISC.FILE_EXISTS(log_file) == false then
        local f = io.open(log_file, "w")
        f:close()
        local f = assert(io.open(log_file, 'a'))
        f:write("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━LOADED KOSMOS MONITOR━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".."\n")
        f:close()
    else
        local day_and_time = (os.date("%m/%d/%Y %X"))
        local f = assert(io.open(log_file, 'a'))
        f:write(day_and_time .. " [LUA] " .. text .. "\n")
        f:close()
    end
end

local f = assert(io.open(log_file, 'a'))
f:write("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━LOADED KOSMOS MONITOR━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".."\n")
f:close()

function check_value(int)
    if int >= 1 then
        return "True"
    else
        return "False"
    end
end

function notif_sound()
    if not disable_sound_notifications then
        AUDIO.PLAY_SOUND_FRONTEND(-1, "YES", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
end

g_gui.add_toggle("recovery_business", "Business monitor", function(bool) 
    show_monitor = bool
    notif_sound()
    if show_monitor then
        write_file("Showing business monitor")
    else
        write_file("Business monitor hidden")
    end
end)

g_gui.add_toggle("recovery_business", "Business", function(bool) show_business_tab = bool  notif_sound() end)

function refresh_data()
    if g_isRunning then
        arcade_safe_value = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_SAFE_CASH_VALUE")) // 1000

        club_popularity = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_CLUB_POPULARITY"))
        club_safe_value = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_CLUB_SAFE_CASH_VALUE")) // 1000

        prod_total_0 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_PRODTOTALFORFACTORY0"))
        prod_total_1 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_PRODTOTALFORFACTORY1"))
        prod_total_2 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_PRODTOTALFORFACTORY2"))
        prod_total_3 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_PRODTOTALFORFACTORY3"))
        prod_total_4 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_PRODTOTALFORFACTORY4"))
        prod_total_5 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_PRODTOTALFORFACTORY5"))


        stock_total_0 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_MATTOTALFORFACTORY0"))
        stock_total_1 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_MATTOTALFORFACTORY1"))
        stock_total_2 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_MATTOTALFORFACTORY2"))
        stock_total_3 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_MATTOTALFORFACTORY3"))
        stock_total_4 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_MATTOTALFORFACTORY4"))
        stock_total_5 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_MATTOTALFORFACTORY5"))
        if stock_total_0 > 100 then
            stock_total_0 = 100
        end
        if stock_total_1 > 100 then
            stock_total_1 = 100
        end
        if stock_total_2 > 100 then
            stock_total_2 = 100
        end
        if stock_total_3 > 100 then
            stock_total_3 = 100
        end
        if stock_total_4 > 100 then
            stock_total_4 = 100
        end
        if stock_total_5 > 100 then
            stock_total_5 = 100
        end
        prod_hub_total_0 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_HUB_PROD_TOTAL_0"))
        prod_hub_total_1 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_HUB_PROD_TOTAL_1"))
        prod_hub_total_2 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_HUB_PROD_TOTAL_2"))
        prod_hub_total_3 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_HUB_PROD_TOTAL_3"))
        prod_hub_total_4 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_HUB_PROD_TOTAL_4"))
        prod_hub_total_5 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_HUB_PROD_TOTAL_5"))
        prod_hub_total_6 = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_HUB_PROD_TOTAL_6"))
        prod_hub_all = prod_hub_total_0 + prod_hub_total_1 + prod_hub_total_2 + prod_hub_total_3 +  prod_hub_total_4 + prod_hub_total_5 + prod_hub_total_6

        cocaine_triggered = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP0"))
        bunker_triggered = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP5"))
        meth_triggered = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP1"))
        counterfit_triggered = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP2"))
        weed_triggered = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP3"))
        document_triggered = STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP4"))

        upgrade_0_0 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES0")))
        upgrade_0_1 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES0_1")))
        upgrade_0_2 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES0_2")))

        upgrade_1_0 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES1")))
        upgrade_1_1 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES1_1")))
        upgrade_1_2 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES1_2")))
    
        upgrade_2_0 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES2")))
        upgrade_2_1 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES2_1")))
        upgrade_2_2 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES2_2")))
        
        upgrade_3_0 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES3")))
        upgrade_3_1 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES3_1")))
        upgrade_3_2 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES3_2")))

        upgrade_4_0 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES4")))
        upgrade_4_1 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES4_1")))
        upgrade_4_2 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYUPGRADES4_2")))

        bunker_decor = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_BUNKER_DECOR")))
        bunker_staff = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_BUNKER_STAFF")))
        bunker_equipment = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_BUNKER_EQUIPMENT")))
        bunker_sequrity = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_BUNKER_SECURITY")))
        bunker_savebed = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_BUNKER_SAVEBED")))
        bunker_gunlocker = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_BUNKER_GUNLOCKER")))
        bunker_firing_range = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_BUNKER_FIRING_RANGE")))
        bunker_transportation = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_BUNKER_TRANSPORTATION")))

        arc_machine_0 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_0")))
        arc_machine_1 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_1")))
        arc_machine_2 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_2")))
        arc_machine_3 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_3")))
        arc_machine_4 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_4")))
        arc_machine_5 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_5")))
        arc_machine_6 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_6")))
        arc_machine_7 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_7")))
        arc_machine_8 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_8")))
        arc_machine_9 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_9"))) 
        arc_machine_10 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_10")))
        arc_machine_11 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_11")))
        arc_machine_12 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_MAC_12")))
        arc_business_hub = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_BUS_HUB")))
        arc_drone_stat = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_DRON_ST")))

        arc_floor = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_FLOOR")))
        arc_ceiling = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_CEILING")))
        arc_wall = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_WALL")))
        arc_personal_quarters = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_PERSONAL_QUARTERS")))
        arc_garage = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_GARAGE")))
        arc_neon_lights = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_NEON_LIGHTS")))
        arc_screen = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_SCREENS")))

        nc_style = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_NIGHTCLUB_STYLE")))
        nc_lighting = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_NIGHTCLUB_LIGHTING")))
        nc_mod_4 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_NIGHTCLUB_MOD_4")))
        nc_mod_5 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_NIGHTCLUB_MOD_5")))
        nc_mod_6 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_NIGHTCLUB_MOD_6")))
        nc_mod_7 = check_value(STATS.STAT_GET_INT(g_util.joaat("MP" .. player_charecter .. "_NIGHTCLUB_MOD_7")))
    end
end

function imgui_business_data()
    if show_business_data and show_business_tab and g_isRunning then
        g_imgui.set_next_window_size(vec2(270, 660))
        g_imgui.begin_window("Business data", ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoDecoration)
        g_imgui.begin_child("Business data", vec2(), true)

        g_imgui.add_text("Cocaine Lockup")
        g_imgui.add_text("Equipment upgrade: ".. upgrade_0_0)
        g_imgui.add_text("Staff upgrade: ".. upgrade_0_1)
        g_imgui.add_text("Secuirity upgrade: ".. upgrade_0_2)
        g_imgui.separator()

        g_imgui.add_text("Meth Lab")
        g_imgui.add_text("Equipment upgrade: ".. upgrade_1_0)
        g_imgui.add_text("Staff upgrade: ".. upgrade_1_1)
        g_imgui.add_text("Secuirity upgrade: ".. upgrade_1_2)
        g_imgui.separator()

        g_imgui.add_text("Counterfit Factory")
        g_imgui.add_text("Equipment upgrade: ".. upgrade_2_0)
        g_imgui.add_text("Staff upgrade: ".. upgrade_2_1)
        g_imgui.add_text("Secuirity upgrade: ".. upgrade_2_2)
        g_imgui.separator()

        g_imgui.add_text("Weed Farm")
        g_imgui.add_text("Equipment upgrade: ".. upgrade_3_0)
        g_imgui.add_text("Staff upgrade: ".. upgrade_3_1)
        g_imgui.add_text("Secuirity upgrade: ".. upgrade_3_2)
        g_imgui.separator()

        g_imgui.add_text("Document Forgery")
        g_imgui.add_text("Equipment upgrade: ".. upgrade_4_0)
        g_imgui.add_text("Staff upgrade: ".. upgrade_4_1)
        g_imgui.add_text("Secuirity upgrade: ".. upgrade_4_2)
        g_imgui.separator()

        g_imgui.add_text("Bunker")
        g_imgui.add_text("Equipment upgrade: "..  bunker_equipment)
        g_imgui.add_text("Staff upgrade: ".. bunker_staff)
        g_imgui.add_text("Secuirity upgrade: "..bunker_sequrity)
        g_imgui.add_text("Decor upgrade: "..  bunker_decor)
        g_imgui.add_text("Firing Range upgrade: ".. bunker_firing_range)
        g_imgui.add_text("Gunlocker upgrade: "..bunker_gunlocker)
        g_imgui.add_text("Personal Quarters upgrade: "..  bunker_savebed)
        g_imgui.add_text("Transportation upgrade: ".. bunker_transportation)
        g_imgui.separator()

        g_imgui.add_text("Arcade")
        g_imgui.add_text("Machine 1: " .. arc_machine_0)
        g_imgui.add_text("Machine 2: " .. arc_machine_1)
        g_imgui.add_text("Machine 3: " .. arc_machine_2)
        g_imgui.add_text("Machine 4: " .. arc_machine_3)
        g_imgui.add_text("Machine 5: " .. arc_machine_4)
        g_imgui.add_text("Machine 6: " .. arc_machine_5)
        g_imgui.add_text("Machine 7: " .. arc_machine_6)
        g_imgui.add_text("Machine 8: " .. arc_machine_7)
        g_imgui.add_text("Machine 9: " .. arc_machine_8)
        g_imgui.add_text("Machine 10: " .. arc_machine_9)
        g_imgui.add_text("Machine 11: " .. arc_machine_10)
        g_imgui.add_text("Machine 12: " .. arc_machine_11)
        g_imgui.add_text("Machine 13: " .. arc_machine_12)
        g_imgui.add_text("Drone Station : " .. arc_drone_stat)
        g_imgui.add_text("Business Hub: " .. arc_business_hub)
        g_imgui.add_text("Floor: " .. arc_floor)
        g_imgui.add_text("Style: " .. arc_ceiling)
        g_imgui.add_text("Wall: " .. arc_wall)
        g_imgui.add_text("Personal Quarters: " .. arc_personal_quarters)
        g_imgui.add_text("Garage: " .. arc_garage)
        g_imgui.add_text("Neon Lights: " .. arc_neon_lights)
        g_imgui.add_text("High Score Screen: " .. arc_screen)
        g_imgui.separator()

        g_imgui.add_text("Nightclub")
        g_imgui.add_text("Style: " .. nc_style)
        g_imgui.add_text("Lighting: " .. nc_lighting)
        g_imgui.add_text("Dancers: " .. nc_mod_4)
        g_imgui.add_text("Staff Upgrade: " .. nc_mod_5)
        g_imgui.add_text("DJ (other than Solomon): " .. nc_mod_6)

        g_imgui.end_child()
        g_imgui.end_window()
    end
end

function imgui_business()
    if show_business_tab and g_gui.is_open() and g_isRunning then
        local length = 700
        g_imgui.set_next_window_size(vec2(length,250))
        g_imgui.begin_window("Business", ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoScrollWithMouse)
        if  g_imgui.begin_tab_bar("Business" ) then
            if g_imgui.begin_tab_item("General") then
                g_imgui.add_button("Resupply all", vec2(length,25), function()
                    write_file("Resupplied all businesses")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER0"), 1, true)
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER1"), 1, true)
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER2"), 1, true)
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER3"), 1, true)
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER4"), 1, true)
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER5"), 1, true)
                end)
                g_imgui.end_tab_item()
            end
            if g_imgui.begin_tab_item("Nightclub", ImGuiTabItemFlags_None) then
                g_imgui.add_button("Add $10k to safe", vec2(length,25), function() 
                    write_file("Added $10k to nightclub safe")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_CLUB_POPULARITY"), 10000, true)
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_CLUB_PAY_TIME_LEFT"), -1, true)
                    g_util.yield(100)
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_CLUB_POPULARITY"), 10000, true)
                end)
                g_imgui.add_button("Max popularity", vec2(length,25), function() 
                    write_file("Set nightclub popularity to 10000")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_CLUB_POPULARITY"), 10000, true)
                end)
                g_imgui.end_tab_item()
            end
            if g_imgui.begin_tab_item("Arcade", ImGuiTabItemFlags_None) then
                g_imgui.add_button("Add money to safe", vec2(length,25), function()
                    write_file("Added money to arcade safe")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_ARCADE_PAY_TIME_LEFT"), -1, true)
                end)
                g_imgui.end_tab_item()
            end
            if  g_imgui.begin_tab_item("Cocaine",  ImGuiTabItemFlags_None) then
                g_imgui.add_button("Resupply Cocaine Lockup", vec2(length,25), function() 
                    write_file("Resupplied cocaine lockup")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER0"), 1, true)
                end)
                if wip_features then
                    write_file("Triggered production in cocaine lockup")
                    g_imgui.add_button("Trigger production (WIP)", vec2(length,25), function() 
                        STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP0"), -1, true)
                    end)
                end
                g_imgui.end_tab_item()
            end
            if  g_imgui.begin_tab_item("Meth",  ImGuiTabItemFlags_None) then
                g_imgui.add_button("Resupply Meth Lab", vec2(length,25), function() 
                    write_file("Resupplied meth lab")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER1"), 1, true)
                end)
                if wip_features then
                    g_imgui.add_button("Trigger production (WIP)", vec2(length,25), function()
                        write_file("Triggered production in meth lab")
                        STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP1"), -1, true)
                    end)
                end
                g_imgui.end_tab_item()
            end
            if  g_imgui.begin_tab_item("Bunker", ImGuiTabItemFlags_None) then
                g_imgui.add_button("Resupply Bunker", vec2(length,25), function() 
                    write_file("Resupplied bunker")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER5"), 1, true)
             end)
             if wip_features then
                g_imgui.add_button("Trigger production (WIP)", vec2(length,25), function() 
                    write_file("Triggered production in bunker")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP5"), -1, true)
                end)
            end
             g_imgui.end_tab_item()
         end
            if g_imgui.begin_tab_item("Counterfit", ImGuiTabItemFlags_None) then
                    g_imgui.add_button("Resupply Counterfit Cash Factory", vec2(length,25), function() 
                        write_file("Resupplied counterfit factory")
                        STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER2"), 1, true)
                    end)
                if wip_features then
                    g_imgui.add_button("Trigger production (WIP)", vec2(length,25), function() 
                        write_file("Triggered production in counterfit cash factory")
                        STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP2"), -1, true)
                    end)
                end
                g_imgui.end_tab_item()
            end
            if  g_imgui.begin_tab_item("Weed", ImGuiTabItemFlags_None) then
                g_imgui.add_button("Resupply Weed farm", vec2(length,25), function() 
                    write_file("Resupplied weed farm")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER3"), 1, true)
                end)
                if wip_features then
                    g_imgui.add_button("Trigger production (WIP)", vec2(length,25), function() 
                        write_file("Triggered production in weed farm")
                        STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP3"), -1, true)
                    end)
                end
                g_imgui.end_tab_item()
            end
            if  g_imgui.begin_tab_item("Document", ImGuiTabItemFlags_None) then
                g_imgui.add_button("Resupply Document forgery", vec2(length,25), function() 
                    write_file("Resupplied document forgery")
                    STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_PAYRESUPPLYTIMER4"), 1, true)
                end)
                if wip_features then
                    g_imgui.add_button("Trigger production (WIP)", vec2(length,25), function() 
                        write_file("Triggered production in document forgery")
                        STATS.STAT_SET_INT(g_util.joaat("MP" .. player_charecter .. "_FACTORYSETUP4"), -1, true)
                    end)
                end
                g_imgui.end_tab_item()
            end
            if g_imgui.begin_tab_item("Data", ImGuiTabItemFlags_None) then 
                g_imgui.add_checkbox("WIP features", function(bool) wip_features = bool end)
                if wip_features then
                    g_imgui.add_checkbox("Business data", function(bool) 
                        show_business_data = bool 
                        if show_business_data then
                            write_file("Showing business data")
                        else
                            write_file("Business data hidden")
                        end
                    end)
                else
                    show_business_data = false
                    write_file("Disabled wip features")
                end
                g_imgui.add_button("Refresh data (refreshes all data that is disaplayed anywhere)", vec2(length,25), function() 
                    write_file("Refreshed data")
                    refresh_data()
                end)
                g_imgui.add_text("Cocaine triggered production: ".. check_value(cocaine_triggered))
                g_imgui.add_text("Bunker triggered production: ".. check_value(bunker_triggered))
                g_imgui.add_text("Meth triggered production: ".. check_value(meth_triggered))
                g_imgui.add_text("Counterfit triggered production: ".. check_value(counterfit_triggered))
                g_imgui.add_text("Weed triggered production: ".. check_value(weed_triggered))
                g_imgui.add_text("Document triggered production: ".. check_value(document_triggered))
                g_imgui.end_tab_item()
            end
        end
    end
end

function imgui_monitor()
    if show_monitor and g_isRunning then
	g_imgui.set_next_window_size(vec2(300, 1000))
        g_imgui.begin_window("Monitor", ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoScrollWithMouse)
        g_imgui.add_text("ARCADE")
        if arcade_safe_value == 100 then
            g_imgui.add_text("Arcade safe value: $".. arcade_safe_value .. "k/$100k FULL!")
        else
            g_imgui.add_text("Arcade safe value: $".. arcade_safe_value .. "k/$100k")
        end
        g_imgui.add_text("")

        g_imgui.add_text("NIGHTCLUB")
        if club_popularity == 10000 then
            g_imgui.add_text("Club popularity: " .. club_popularity .. "/10000 FULL!")
        else
            g_imgui.add_text("Club popularity: " .. club_popularity .. "/10000") 
        end
        
        if club_safe_value == 210 then
        g_imgui.add_text("Club safe value: $" .. club_safe_value .. "k/$210k FULL!")
        else
            g_imgui.add_text("Club safe value: $" .. club_safe_value .. "k/$210k") 
        end
        g_imgui.add_text("")

        g_imgui.add_text("BUNKER")
        if prod_total_5 == 100 then
            g_imgui.add_text("Bunker product: " .. prod_total_5 .. "/100 FULL!")
        else
            g_imgui.add_text("Bunker product: " .. prod_total_5 .. "/100")
        end
        if stock_total_5 <= 30 then
            g_imgui.add_text("Bunker stock: " .. stock_total_5 .. "/100 REFILL!")
            stock_refill_5 = true
        else
            g_imgui.add_text("Bunker stock: " .. stock_total_5 .. "/100")
            stock_refill_5 = false
        end
        g_imgui.add_text("")

        g_imgui.add_text("MC PRODUCT")
        if prod_total_0 == 10 then
            g_imgui.add_text("Cocaine product: " .. prod_total_0 .. "/10 FULL!")
            prod_mc_full_0 = true
        else
            g_imgui.add_text("Cocaine product: " .. prod_total_0 .. "/10")
            prod_mc_full_0 = false
        end
        if prod_total_1 == 20 then
            g_imgui.add_text("Meth product: " .. prod_total_1.. "/20 FULL!")
            prod_mc_full_1 = true
        else
            g_imgui.add_text("Meth product: " .. prod_total_1.. "/20") 
            prod_mc_full_1 = false
        end
        if prod_total_2 == 40 then
            g_imgui.add_text("Counterfit product: " .. prod_total_2.. "/40 FULL!")  
            prod_mc_full_2 = true
        else
            g_imgui.add_text("Counterfit product: " .. prod_total_2.. "/40")  
            prod_mc_full_2 = false
        end
        if prod_total_3 == 80 then
            g_imgui.add_text("Weed product: " .. prod_total_3.. "/80 FULL!")
            prod_mc_full_3 = true
        else
            g_imgui.add_text("Weed product: " .. prod_total_3.. "/80")
            prod_mc_full_3 = false
        end
        if prod_total_4 == 60 then 
            g_imgui.add_text("Document product: " .. prod_total_4.. "/60 FULL!")
            prod_mc_full_4 = true
        else
            g_imgui.add_text("Document product: " .. prod_total_4.. "/60")
            prod_mc_full_4 = false
        end
        g_imgui.add_text("")

        g_imgui.add_text("MC STOCK")
        if stock_total_0 <= 30 then
            g_imgui.add_text("Cocaine stock: " .. stock_total_0 .. "/100 REFILL!")
            stock_refill_0 = true
        else
            g_imgui.add_text("Cocaine stock: " .. stock_total_0 .. "/100")
            stock_refill_0 = false
        end
        if stock_total_1 <= 30 then
            g_imgui.add_text("Meth stock: " .. stock_total_1 .. "/100 REFILL!")
            stock_refill_1 = true
        else
            g_imgui.add_text("Meth stock: " .. stock_total_1 .. "/100")
            stock_refill_1 = false
        end
        if stock_total_2 <= 30 then
            g_imgui.add_text("Meth stock: " .. stock_total_2 .. "/100 REFILL!")
            stock_refill_2 = true
        else
            g_imgui.add_text("Counterfit stock: " .. stock_total_2 .. "/100")
            stock_refill_2 = false
        end
        if stock_total_3 <= 30 then
            g_imgui.add_text("Counterfit stock: " .. stock_total_3 .. "/100 REFILL!")
            stock_refill_3 = true
        else
            g_imgui.add_text("Weed stock: " .. stock_total_3 .. "/100")
            stock_refill_3 = false
        end
        if stock_total_4 <= 30 then
            g_imgui.add_text("Documents: " .. stock_total_4 .. "/100 REFILL!")
            stock_refill_4 = true
        else
            g_imgui.add_text("Documents: " .. stock_total_4 .. "/100")
            stock_refill_4 = false
        end
        g_imgui.add_text("")

        g_imgui.add_text("NIGHTCLUB")
        if prod_hub_total_0 == 50 then
            g_imgui.add_text("Cargo and Shipments: " .. prod_hub_total_0 .. "/50 FULL!")
            hub_full_0 = true
        else
            g_imgui.add_text("Cargo and Shipments: " .. prod_hub_total_0 .. "/50")
            hub_full_0 = false
        end
        if prod_hub_total_1 == 100 then
            g_imgui.add_text("Sporting Goods: " .. prod_hub_total_1 .. "/100 FULL!")
            hub_full_1 = true
        else
            g_imgui.add_text("Sporting Goods: " .. prod_hub_total_1 .. "/100")
            hub_full_1 = false
        end
        if prod_hub_total_2 == 10 then
            g_imgui.add_text("South American Imports: " .. prod_hub_total_2 .. "/10 FULL!") 
            hub_full_2 = true
        else
            g_imgui.add_text("South American Imports: " .. prod_hub_total_2 .. "/10") 
            hub_full_2 = false
        end
        if prod_hub_total_3 == 20 then
            g_imgui.add_text("Pharmaceutical Research: " .. prod_hub_total_3 .. "/20 FULL!")
            hub_full_3 = true
        else
            g_imgui.add_text("Pharmaceutical Research: " .. prod_hub_total_3 .. "/20")
            hub_full_3 = false
        end
        if prod_hub_total_4 == 80 then
            g_imgui.add_text("Organic Produce: " .. prod_hub_total_4 .. "/80 FULL!")
            hub_full_4 = true
        else
            g_imgui.add_text("Organic Produce: " .. prod_hub_total_4 .. "/80")
            hub_full_4 = false
        end
        if prod_hub_total_5 == 60 then
            g_imgui.add_text("Printing & Copying: " .. prod_hub_total_5 .. "/60 FULL!")
            hub_full_5 = true
        else
            g_imgui.add_text("Printing & Copying: " .. prod_hub_total_5 .. "/60")
            hub_full_5 = false
        end
        if prod_hub_total_6 == 40 then
            g_imgui.add_text("Cash Creation: " .. prod_hub_total_6 .. "/40 FULL!") 
            hub_full_6 = true
        else
            g_imgui.add_text("Cash Creation: " .. prod_hub_total_6 .. "/40")
            hub_full_6 = false
        end
        if prod_hub_all == 360 then
            g_imgui.add_text("Total product: " ..  prod_hub_all .. "/360 FULL!")
            hub_full_all = true
        else
            g_imgui.add_text("Total product: " ..  prod_hub_all .. "/360")
            hub_full_all = false
        end
        g_imgui.add_text("")

        g_imgui.add_text("QUICK INFO")
        if prod_total_5 == 100 then
            g_imgui.add_text("BUNKER IS FULL!")
        end
        if stock_total_5 <= 30 then
            g_imgui.add_text("BUNKER NEEDS REFILL!")
        end

        if club_safe_value == 210 then
            g_imgui.add_text("NIGTCLUB SAFE IS FULL!")
        end

        if arcade_safe_value == 100 then
            g_imgui.add_text("ARCADE SAFE IS FULL!")
        end

        prod_nc = 0
        if hub_full_0 then prod_nc = prod_nc + 1 end
        if hub_full_1 then prod_nc = prod_nc + 1 end
        if hub_full_2 then prod_nc = prod_nc + 1 end
        if hub_full_3 then prod_nc = prod_nc + 1 end
        if hub_full_4 then prod_nc = prod_nc + 1 end
        if hub_full_5 then prod_nc = prod_nc + 1 end
        if hub_full_6 then prod_nc = prod_nc + 1 end
        if prod_nc >= 1 then
        g_imgui.add_text(prod_nc.."/7 NIGHTCLUB GOODS ARE FULL!")
        end

        stock_mc = 0
        if stock_refill_0 then stock_mc = stock_mc + 1 end
        if stock_refill_1 then stock_mc = stock_mc + 1 end
        if stock_refill_2 then stock_mc = stock_mc + 1 end
        if stock_refill_3 then stock_mc = stock_mc + 1 end
        if stock_refill_4 then stock_mc = stock_mc + 1 end
        if stock_mc >= 1 then
        g_imgui.add_text(stock_mc.."/5 MC BUSINESSES NEED REFILLS!")
        end

        prod_mc = 0
        if prod_mc_full_0 then prod_mc = prod_mc + 1 end
        if prod_mc_full_1 then prod_mc = prod_mc + 1 end
        if prod_mc_full_2 then prod_mc = prod_mc + 1 end
        if prod_mc_full_3 then prod_mc = prod_mc + 1 end
        if prod_mc_full_4 then prod_mc = prod_mc + 1 end
        if prod_mc >= 1 then
        g_imgui.add_text(prod_mc.."/5 MC BUSINESSES ARE FULL!")
        end

		g_imgui.end_child()
		g_imgui.end_window()
	end
end

g_hooking.register_D3D_hook(imgui_business_data)
g_hooking.register_D3D_hook(imgui_business)
g_hooking.register_D3D_hook(imgui_monitor)

while g_isRunning do
    refresh_data()
    g_util.yield(100)
end

g_lua.unregister()