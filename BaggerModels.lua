-- bagger v1, a basic lua with a gui to give you duffle bags

g_lua.register();

--     DufflePart

HANDS = 5;

--     DuffleVars

function BlackDuffel()
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 0, 0);
end

--    Hooking D3D GUI

function myD3DHook()
    if g_gui.is_open() then
        g_imgui.set_next_window_size(vec2(400, 600))
        if  g_imgui.begin_window("Bagger - Version 1 - cykahvh", ImGuiWindowFlags_NoResize) then
            g_imgui.begin_child("BC", vec2(), true)
            g_imgui.add_button("Normal Black Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 0, 0); end)
            g_imgui.add_button("Blue Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 1, 0); end)
            g_imgui.add_button("Yellow Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 2, 0); end)
            g_imgui.add_button("Red Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 3, 0); end)
            g_imgui.add_button("Green Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 4, 0); end)
            g_imgui.add_button("Orange Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 5, 0); end)
            g_imgui.add_button("Purple Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 6, 0); end)
            g_imgui.add_button("Pink Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 7, 0); end)
            g_imgui.add_button("U.S. Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 8, 0); end)
            g_imgui.add_button("Ninja Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 9, 0); end)
            g_imgui.add_button("Frost Camo Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 10, 0); end)
            g_imgui.add_button("Forest Camo Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 11, 0); end)
            g_imgui.add_button("??? Camo Bag", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 12, 0); end)
            g_imgui.add_button("Green Shapes", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 13, 0); end)
            g_imgui.add_button("Tan Camo", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 14, 0); end)
            g_imgui.add_button("Green Forest Leafs", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 15, 0); end)
            g_imgui.add_button("No Texture (Silver)", vec2(), function() PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82 , 16, 0); end)
                    end     
            
            g_imgui.end_child()
            g_imgui.end_window()
        end
    end

id = g_hooking.register_D3D_hook(myD3DHook);


while g_isRunning do
    g_util.yield(100)
end

g_hooking.unregister_hook(id);

g_lua.unregister();

-- Hi 😄