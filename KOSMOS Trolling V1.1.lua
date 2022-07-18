-- Miks me joome? Tyra mees me elame Eestis!


-- Added check to vehicle nudge and air acrobatics to prevent possible crashes
-- Fixed some other bugs
-- Improved disabled chat ( )
-- Added other features you need to find yourself!

-- Just ignore the exceptions it thorws, they mostly dont crash you!

-- Thanks to Chairhax for the air acrobatics and block positions


local ver = "1.1"

g_lua.register()

g_gui.add_toast("Loaded!")

local log_file = MISC.GET_APPDATA_PATH("Cherax\\Lua\\", "KOSMOS_LOG_TROLLING.txt")

target_player = "Unselected"
local show_types = true
local money_amount = 0
local message_amount = 0
local set_speed_for_vehicle = 0
local remove_god_players = {}
local loop_tp_players = {}
local unarmed = -1569615261
local tire_popping_players = {}
local tire_poppin = false
local disable_chat_empty = false
local disable_chat_roll = false
local disable_chat_scat = false
local disable_chat_balls = false
local disable_chat_doja = false
local rain_shit_bool = false
local rain_shit_players = {}
local rain_random_bool = false
local rain_random_players = {}
local rain_porta_bool = false
local rain_porta_players = {}
local rain_bitches_bool = false
local rain_bitches_players = {}
local rain_faggios_bool = false
local rain_faggios_players = {}
local rain_cats_and_dogs_bool = false
local rain_cats_and_dogs_players = {}
local rain_animals_bool = false
local rain_animals_players = {}
local fortnite_balls = "Fortnite balls, I'm gay, I like boys ,I kidnap autistic kids ,Lil Mosey is watching, T. Rex ,I'm EDP, big, Kanye West ,Me, lemon pepper shrimp ,Bro, ain't no way, casket, poop ,I'm EDP's cupcake, Kim cheated ,Laugh my ass off, dick cheese ,Kim left me, nineteen dollar Fortnite card ,I'm racist, evangelist ,Hi, Kanye, laugh my ass off ,You a legend, Garb, I love feet ,Age is a number, kiddo, balls, balls ,I rap ocean water, big nigga balls"
local rick_roll = "We're no strangers to love. You know the rules and so do I. A full commitment's what I'm thinking of. You wouldn't get this from any other guy. I just wanna tell you how I'm feeling. Gotta make you understand. Never gonna give you up. Never gonna let you down. Never gonna run around and desert you. Never gonna make you cry. Never gonna say goodbye. Never gonna tell a lie and hurt you!"
local scat_man = "Ba-da-ba-da-ba-be bop bop bodda bope Bop ba bodda bop Be bop ba bodda bop Bop ba bodda Ba-da-ba-da-ba-be bop ba bodda bope Bop ba bodda bope Be bop ba bodda bope Bop ba bodda bop. Ski-bi dibby dib yo da dub dub Yo da dub dub Ski-bi dibby dib yo da dub dub Yo da dub dub, IM THE SCAT MAN!!"
local all_hashes = {
    -2071359746,
    -1842599357,
    1248317080,
    682074297,
    -55180266,
    -422877666,
    765541575,
    136645433,
    1430257647,
    682074297,
    -1244692252,
    3005788552,
    -1686040670,
    1462895032,
    351016938,
    -832573324,
    1462895032,
    -1430839454,
    -1469565163,
    351016938,
    1596003233,
    -886023758,
    -1251702741,
    1938952078,
    -2100640717,
    -2130482718,
    0xCD93A7DB,
    1917016601,
    621481054,
    -713569950,
    1030400667,
    -1319646748,
    -1818980770,
    1668542196,
    -676470600,
    -50684386,
    -1920284487,
    1193010354,
    -1950698411,
    2222034228,
    3602674979,
    3630826055,
    340154634,
    309416120,
    4173164723,
    368211810,
    779277682,
    684586828,
    g_util.joaat("prop_flag_uk"),
    g_util.joaat("ig_lestercrest_2"),
    1693207013,
    -1003748966,
    1952396163,
    1336872304, -- kosatka
    0xB328B188, -- faggio mod
    0xEA313705, -- alkanost
    0x1FD824AF, -- space docker
    0xF7004C86, -- blimp
    0xED62BFA9, -- ramp buggy
    0x9DAE1398, -- phantom wedge
}

function write_file(text)
    if not MISC.FILE_EXISTS(log_file)then
        local f = io.open(log_file, "w")
        f:close()
        local f = assert(io.open(log_file, 'a'))
        f:write("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━LOADED KOSMOS TROLLING━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".."\n")
        f:close() 
        write_file("Log file was missing! Created new one!")
        g_gui.add_toast("Log file not present!")
        g_gui.add_toast("Creating log file to " .. log_file .. " !")
    end
    local time = (os.date("%m/%d/%Y %X"))
    local f = assert(io.open(log_file, 'a'))
    f:write(time .. " [LUA] " .. text .. "\n")
    f:close()
end

function request_control(ent)
    local netid = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(ent)
    if not NETWORK.HAS_CONTROL_OF_ENTITY(ent) and g_util.is_session_started() then
        NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netid, true)
        local time = os.time()
        while not NETWORK.HAS_CONTROL_OF_ENTITY(ent) do
            if os.time() - time >= 2 then
                write_file("Failed to request control of ent: " .. netid .. " within 2 seconds")
                break
            end
            NETWORK.REQUEST_CONTROL_OF_ENTITY(ent)
            g_util.yield()
        end
    end
end

function notif_sound()
    if not disable_sound_notifications then
        AUDIO.PLAY_SOUND_FRONTEND(-1, "YES", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    end
end

function load_model(hash)
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        g_util.yield(1)
        STREAMING.REQUEST_MODEL(hash)
    end
end

function get_ip_as_string(pid)
    if pid ~= PLAYER.PLAYER_ID() then
        local n = PLAYER.GET_PLAYER_IP(pid)
        local ip1 = math.floor(n / (2 ^ 24))
        local ip2 = math.floor((n - ip1 * (2 ^ 24)) / (2 ^ 16))
        local ip3 = math.floor((n - ip1 * (2 ^ 24) - ip2 * (2 ^ 16)) / (2 ^ 8))
        local ip4 = math.floor((n - ip1 * (2 ^ 24) - ip2 * (2 ^ 16) - ip3 * (2 ^ 8)))
        local string = ip1 .. "." .. ip2 .. "." .. ip3 .. "." .. ip4
        return string
    else
        g_gui.add_toast("Prevent you giving out your own IP!")
    end
end

function delete_ent(ent)
    request_control(ent)
    ENTITY.DETACH_ENTITY(ent, false, false)
    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
    ENTITY.SET_ENTITY_VELOCITY(ent, 0, 0, 0)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ent, 10000, 10000, -100)
    ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(ent)
    ENTITY.DELETE_ENTITY(ent)
    return true
end

function play_sound_at_coord(pid, audio_name, audio_ref)
    local pos = PLAYER.GET_PLAYER_COORDS(pid)
    AUDIO.PLAY_SOUND_FROM_COORD(-1, audio_name, pos.x, pos.y, pos.z, audio_ref, true, 100, true)
end

function play_sound_from_ent(pid, audio_name, audio_ref)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, audio_name, PLAYER.GET_PLAYER_PED(pid), audio_ref, true, 0)
end

function random_ass_sounds()
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "ACID_BATH_FALL", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MICHAEL_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Amanda_Pulls_Away", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FAMILY_6_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Architect_Fall", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Arrive_Station", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CABLE_CAR_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Attach_Cargo", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_FINALE_2B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Attach_Container", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Bar_Cut", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Bar_Lower_And_Lock", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_IND_ROLLERCOASTER_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Bar_Unlock_And_Raise", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_IND_ROLLERCOASTER_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beast_Cloak", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "APT_BvS_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beast_Die", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "APT_BvS_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beast_Jump", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "APT_BvS_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beast_Jump_Land", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "APT_BvS_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beast_Uncloak", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "APT_BvS_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Bell", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "LIFT_NORMAL_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Bike_Bell", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "ARM_1_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BIKER_PROP_GRIND", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TREVOR_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Birds", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "ARM_1_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BLOWOUT", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BLOWOUT_B", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BODY_FALL_DIVE_WATER_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "docks_heist_finale_2a_sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Bomb_Armed", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Speed_Convoy_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Bomb_Disarmed", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Speed_Convoy_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Boxcar_Door_Limit", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FRANKLIN_0_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Boxcar_Door_Slide", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FRANKLIN_0_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BUILDING_SITE_CRASH", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PAPARAZZO_02_SOUNDSETS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BUS_HORN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_1_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CAMERA_FOLEY", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PAPARAZZO_02_SOUNDSETS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Car_Push_Flex", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FINALE_C2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CAR_STEAL_1_IGNITIONS", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_1_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CAR_STEAL_3_AGENT_TYRE_BURST", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_3_AGENT", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CAR_STEAL_4_BURNOUT", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_4_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Chopper_Destroyed", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_FIGHT_CHOPPER_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Chopper_Goes_Down", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_FIGHT_CHOPPER_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CLOTHES_THROWN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "RE_DOMESTIC_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CLOTHES_THROWN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "RE_DOMESTIC_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CLOTHES_THROWN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "RE_DOMESTIC_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "COLLAR", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "NIGEL_1C_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Container_Attach", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CONTAINER_LIFTER_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "container_door", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "dlc_prison_break_heist_sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Container_Impact_Land", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Container_Land", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CONTAINER_LIFTER_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Container_Release", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CONTAINER_LIFTER_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CRASH", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PAPARAZZO_03A", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Crate_Collect", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MP_CRATE_DROP_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Crate_Land", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Destroy_Cop_Car", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JEWEL_HEIST_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Detach_Container", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DOCKS_HEIST_FINALE_2A_SUB_LAND", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_FINALE_2A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DOOR_CLOSE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CABLE_CAR_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DOOR_OPEN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CABLE_CAR_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Door_Open", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Door_Shut", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Drill_Jam", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_FLEECA_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Drop_Case", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JWL_PREP_2A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DROP_ITEMS", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JEWEL_HEIST_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DROP_STINGER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "EMP_Vehicle_Hum", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_BIOLAB_DELIVER_EMP_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Engine_fail", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_PILOT_ENGINE_FAILURE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Engine_Rev", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Engine_Revs", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEISTS_GENERIC_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "engineexplosion", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_PILOT_CITY_LANDING", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Exit_Engine_Blips", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Flare", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEISTS_BIOLAB_FINALE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Garage_Open", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_2_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gas_Tanker_Explosion", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gold_Vault_Explosions", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gold_Vault_Explosions", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Grate_Release", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gunman_Bike_Crash", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JEWEL_HEIST_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Hack_Success", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "HIGHREV", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PAPARAZZO_02_SOUNDSETS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Hood_Open", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Hood_Shut", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Hydraulics_Down", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Hydraulics_Up", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Keycard_Fail", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEISTS_BIOLAB_FINALE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Keycard_Success", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEISTS_BIOLAB_FINALE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "KISS", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "ROAD_RACE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Landing_Tone", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_PILOT_ENGINE_FAILURE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Leave_Station", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CABLE_CAR_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Lock_Damage", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JWL_PREP_2A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Lock_Destroyed", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JWL_PREP_2A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "MINCER_FALL",PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MICHAEL_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Missile_Incoming_Hit", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_FINALE_2B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Missile_Incoming_Miss", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_FINALE_2B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Moor_Boat_Engine", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Apt_Yacht_Ambient_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Moor_Boat_Engine", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Apt_Yacht_Ambient_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Moor_SEASHARK3_Engine", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Apt_Yacht_Ambient_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Moor_SEASHARK_Engine", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Apt_Yacht_Ambient_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Muscle_Jump", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Muscle_Land", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "PASSPORT", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MINUTE_02_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "PICK_UP_PARACHUTE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "HUD_FRONTEND_CUSTOM_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Pierce", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FAMILY_6_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Pimp_Gunshot", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_2_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Pimp_Gunshot_Mic", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_2_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "POLICE_CRASH",PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PAPARAZZO_03A", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Pt2_Fail", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "exile_1", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Put_On_Mask", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEISTS_GENERIC_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Radio_Off", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TAXI_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Radio_On", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TAXI_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Release_Crate", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Remote_Control_Close", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PI_Menu_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Remote_Control_Close", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PI_Menu_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Remote_Control_Fob", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PI_Menu_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Remote_Control_Open", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PI_Menu_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Remote_Control_Open", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PI_Menu_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Ride_Stop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_IND_ROLLERCOASTER_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "ROPE_CUT", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "ROPE_CUT_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Scientist_Approaching", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Seagulls", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JEWEL_HEIST_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Shoot_box", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Paleto_Score_Setup_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SIREN_BLIP", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Snip_Ponytail", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FAMILY_6_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SPAWN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BARRY_01_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SPAWN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BARRY_01_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Speech_Bubble", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SPIKES", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MP_RACE_SPIKES_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "spikes", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_THEFT_DB5_ESCAPE", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "stop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_PILOT_Shooting_Range_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Sub_Lift", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_FINALE_2B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SUB_SPLASH", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_PREP_1_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SWAP_POSITION", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_FINALE_2B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SWAP_POSITION", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_FINALE_2B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TARP", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JEWEL_HEIST_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Teeth_Initial_Pain", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_03_Torture_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Toggle_Lights", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PI_Menu_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Tone", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "LIFT_POSH_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Tone", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "LIFT_NORMAL_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Tow_truck_damage", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_04_HEAT_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Trash_Bag_Land", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_SERIES_A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Trevor_2_cargo_bay_open", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TREVOR_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Trevor_2_cargo_drop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TREVOR_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Trevor_2_chopper_explode", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TREVOR_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TREVOR_2_PLANE_START", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TREVOR_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Trevor_2_van_rev", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TREVOR_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TRUCK_HORN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_1_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Truck_Stop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DOCKS_HEIST_SETUP_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Trunk_Open", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Trunk_Shut", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lowrider_Super_Mod_Garage_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "tyre", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_THEFT_DB5_ESCAPE", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "UNHITCH_TRAILER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FAM4_UNHITCH_TRAILER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "unlocked_bleep", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "HACKING_DOOR_UNLOCK_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Warning_Once", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TRAIN_HORN", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_BACKSLICE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_BACKSLICE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_FOREARM_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_FOREARM_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_LOB_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_LOB_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_SMASH_BACKSLICE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_BACKSLICE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_SMASH_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_TOPSPIN_MASTER",PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_TOPSPIN_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_AMB_SERVE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SERVE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_AMB_SMASH_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_BACKSLICE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_BACKSLICE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_FOREARM_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_FOREARM_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_LOB_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_LOB_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_SMASH_BACKSLICE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_BACKSLICE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_SMASH_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_TOPSPIN_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_TOPSPIN_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_AMB_SERVE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SERVE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_AMB_SMASH_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_BACKSLICE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_BACKSLICE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_FOREARM_MASTER",PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_FOREARM_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_LOB_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_LOB_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_SMASH_BACKSLICE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_BACKSLICE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_SMASH_MASTER",PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_TOPSPIN_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_TOPSPIN_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_AMB_SERVE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SERVE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_AMB_SMASH_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_BACKSLICE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_BACKSLICE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_FOREARM_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_FOREARM_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_LOB_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_LOB_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_SMASH_BACKSLICE_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_BACKSLICE_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_SMASH_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_SMASH_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TENNIS_PLYR_TOPSPIN_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TENNIS_NPC_TOPSPIN_MASTER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BRUSHES_SPINNING", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CARWASH_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BRUSHES_MOVE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CARWASH_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "MIND_CONTROL", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BARRY_01_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "PLAYER_BEAMED_UP", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BARRY_01_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BRUSHES_HIT_CAR", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CARWASH_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "YOGA_INHALE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FAMILY_5_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "YOGA_EXHALE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FAMILY_5_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "YOGA_FAIL", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FAMILY_5_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BRUSHES_SPINNING", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CARWASH_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BRUSHES_MOVE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CARWASH_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Running", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CABLE_CAR_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Interior_Rain", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CABLE_CAR_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Scissors", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Barber_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Makeup", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Barber_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DRYER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CARWASH_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SPRAY", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CARWASH_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SPRAY_CAR", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CARWASH_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "GENERATOR", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "THE_FERRIS_WHALE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CARRIAGE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "THE_FERRIS_WHALE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SLOW_SQUEAK", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "THE_FERRIS_WHALE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SLOW_SQUEAK", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "THE_FERRIS_WHALE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "RAIL_LOOP", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MICHAEL_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Rail_Loop_Skip_Start", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MICHAEL_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "MEAT_SLIDE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MICHAEL_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Move", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "LIFT_NORMAL_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gasmask", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_RAID", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Land_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_02", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Land_02", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_03", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Land_03", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_04", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Land_04", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Land_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Land_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Destroy_Cop_Car", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "JEWEL_HEIST_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Woosh_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Woosh_02", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Woosh_03", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Woosh_04", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Woosh_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Woosh_01", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_HEIST_ELEVATOR_SHAFT_DEBRIS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Clamp", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Strain_No_Container", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "GENERATOR", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "THE_FERRIS_WHALE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CARRIAGE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "THE_FERRIS_WHALE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SLOW_SQUEAK", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "THE_FERRIS_WHALE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SLOW_SQUEAK", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "THE_FERRIS_WHALE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Prop_Drop_Land", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Dmod_Prop_Editor_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Prop_Drop_Water", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Dmod_Prop_Editor_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Drill", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_FLEECA_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DOM", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EXTREME_04_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "COLLECT_IN_BAG", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "NIGEL_1D_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "COLLECT_OUT_BAG", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "NIGEL_1D_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "WHISTLING", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "NIGEL_1B_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "move", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_PILOT_Shooting_Range_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "IGNITION_FAIL", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BARRY_03_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Move_L_R", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Attach_Container_Fail", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Move_Fail", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Move_U_D", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Move_Base", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Strain", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Scraping_Ramp", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EXTREME_02_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Plane_Wind", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Pilot_Chase_Parachute_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Ejector_Scream", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_3_AGENT", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Warning_Tones", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_PILOT_ENGINE_FAILURE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DEVICE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EPSILONISM_04_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "IDLE_BEEP", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EPSILONISM_04_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CONTINUAL_BEEP", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EPSILONISM_04_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SCAN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EPSILONISM_04_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_FM_Events_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CRASH", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "NIGEL_03_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "ALERT", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "SASQUATCH_01_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "RUNNING", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "SASQUATCH_01_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "WOUNDED", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "SASQUATCH_01_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "COUGH", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "SASQUATCH_01_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "TRAIN_COMING", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "NIGEL_03_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beast_Attack", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "APT_BvS_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beast_Sprint_Loop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "APT_BvS_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CUTTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gold_Cage_Collisions", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3B_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Fire_Missile_Loop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EXILE_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Fire_RPG_On_Foot", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EXILE_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Missile_Warning_Sound", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EXILE_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_FM_Events_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Biker_Ring_Tone", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "TREVOR_2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Transition_Sound", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EXILE_1", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Tattoo", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FAMILY_6_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "ExitWater", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Hot_Tub_PED_INSIDE_WATER", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CAR_WHEELS", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FINALE_C2_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DISTANT_RACERS", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "ROAD_RACE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DISTANT_RACERS", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "ROAD_RACE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Security_Door_Bomb_Bleeps", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Prologue_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "UNZIP", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_01_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Armed", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Speed_Race_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Armed", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Speed_Race_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Count_Stop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Speed_Race_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Count_Stop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Speed_Race_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Speed_Race_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_Speed_Race_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_FM_Events_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_Timer", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Lowrider_Relay_Race_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DOM_BREATHING", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EXTREME_03_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DOOR_BUZZ_ONESHOT_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Franklin_Whistle_For_Chop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "SPEECH_RELATED_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "rebreather", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "docks_heist_finale_2a_sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "foot_swish", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "docks_heist_finale_2a_sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Attach_Cargo", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "docks_heist_finale_2a_sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "BANK_DOOR_OPEN", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DISTANT_RACERS", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "ROAD_RACE_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gold_Trolley_Roll_Player", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gold_Trolley_Roll_NPC", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Truck_Ramp_Scrape", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Truck_Ramp_Raise", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Truck_Ramp_Raise", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BIG_SCORE_3A_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_FM_Events_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_FM_Events_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "LOOP_REV", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PAPARAZZO_02_SOUNDSETS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "AMBIENT_SEX", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "PAPARAZZO_02_SOUNDSETS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Idling_Throttle_Blip_Loop", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "ARM_1_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Answer_Phone", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Lester1B_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Remote_Ring", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "Phone_SoundSet_Michael", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Torch", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Gasmask", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Foot_Swish", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Monkey_Scream", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Cable_Strain", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Flare", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FBI_05_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "FAKE_REVS_VEHICLE_02", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "NIGEL_02_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_FM_Events_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "CAR_STEAL_4_RAMP_SCRAPE", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAR_STEAL_4_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beast_Calls", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "FM_Events_Sasquatch_Sounds", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DEVICE",PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EPSILONISM_04_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "DOOR_BUZZ_ONESHOT_MASTER", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_APT_DOOR_DOWNSTAIRS_GLASS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "IDLE_BEEP_NPC", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "EPSILONISM_04_SOUNDSET", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Cage_Rattle", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_BIOLAB_MONKEYS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "General_Chatter", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_BIOLAB_MONKEYS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Screech", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_BIOLAB_MONKEYS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Crate_Beeps", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MP_CRATE_DROP_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Crate_Beeps", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "MP_CRATE_DROP_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Explosion_Countdown", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "GTAO_FM_Events_Soundset", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Container_Impact", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CRANE_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Helicopter_Wind", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BASEJUMPS_SOUNDS", true, 0)
    AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Helicopter_Wind_Idle", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "BASEJUMPS_SOUNDS", true, 0)
end

function set_ped_attack(ped, pid)
    ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, 0, 0, -10, 1, 0, 0, 0, true, false, true, false, false)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 52, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 2, true)
    PED.SET_PED_COMBAT_RANGE(ped, 2)
    PED.SET_PED_COMBAT_ABILITY(ped, 2)
    PED.SET_PED_COMBAT_MOVEMENT(ped, 2)
    TASK.TASK_COMBAT_PED(ped, PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), 0, 16)
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(ped ,GAMEPLAY.GET_HASH_KEY("HATES_PLAYER"))
end

function tp_to_player(pid)
    local pos = PLAYER.GET_PLAYER_COORDS(pid)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), pos.x, pos.y, pos.z + 1)
end

function set_tp_player(value, pid)
   notif_sound()
    loop_tp_players[pid] = value
    g_util.yield(1000)
    loop_tp_players[pid] = value
end

function now_this_is_tire_popping(pid)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        local veh = PLAYER.GET_PLAYER_VEHICLE(pid)
        request_control(veh)
        VEHICLE.SET_VEHICLE_TYRE_FIXED(veh, 0)
        VEHICLE.SET_VEHICLE_TYRE_FIXED(veh, 1)
        VEHICLE.SET_VEHICLE_TYRE_FIXED(veh, 2)
        VEHICLE.SET_VEHICLE_TYRE_FIXED(veh, 3)
        VEHICLE.SET_VEHICLE_TYRE_FIXED(veh, 4)
        VEHICLE.SET_VEHICLE_TYRE_FIXED(veh, 5)
        VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(veh, true)
        VEHICLE.SET_VEHICLE_TYRE_BURST(veh, 0, true, 1000.0)
        VEHICLE.SET_VEHICLE_TYRE_BURST(veh, 1, true, 1000.0)
        VEHICLE.SET_VEHICLE_TYRE_BURST(veh, 2, true, 1000.0)
        VEHICLE.SET_VEHICLE_TYRE_BURST(veh, 3, true, 1000.0)
        VEHICLE.SET_VEHICLE_TYRE_BURST(veh, 4, true, 1000.0)
        VEHICLE.SET_VEHICLE_TYRE_BURST(veh, 5, true, 1000.0)
    end
end

function set_tire_popping_players(value, pid)
    notif_sound()
    tire_popping_players[pid] = value
    g_util.yield(1000)
    tire_popping_players[pid] = value
end

function set_remove_god_player(value, pid)
    remove_god_players[pid] = value
    notif_sound()
end

function remove_god(pid)
    g_util.trigger_script_event(pid, {801199324, pid, 869796886}) 
end

function set_rain_shit(value, pid)
    rain_shit_players[pid] = value
    notif_sound()
end

function rain_shit(pid)
    local shit_1 = -2071359746
    local shit_2 = -1842599357
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-10, 10), math.random(-10, 10), 10)
    load_model(shit_1)
    local obj = OBJECT.CREATE_OBJECT(shit_1, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-10, 10), math.random(-10, 10), 10)
    load_model(shit_2)
    local obj = OBJECT.CREATE_OBJECT(shit_2, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
end

function set_rain_random(value, pid)
    rain_random_players[pid] = value
    notif_sound()
end

function rain_random(pid)
    local random_1 = 1248317080
    local random_2 = 682074297
    local random_3 = -55180266
    local random_4 = -422877666
    local random_5 = 765541575
    local random_6 = 136645433
    local random_7 = 1430257647
    load_model(random_1)
    load_model(random_2)
    load_model(random_3)
    load_model(random_4)
    load_model(random_5)
    load_model(random_6)
    load_model(random_7)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local obj = OBJECT.CREATE_OBJECT(random_1, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local obj = OBJECT.CREATE_OBJECT(random_2, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local obj = OBJECT.CREATE_OBJECT(random_3, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local obj = OBJECT.CREATE_OBJECT(random_4, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local obj = OBJECT.CREATE_OBJECT(random_5, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local obj = OBJECT.CREATE_OBJECT(random_6, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local obj = OBJECT.CREATE_OBJECT(random_7, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
end

function set_rain_porta(value, pid)
    rain_porta_players[pid] = value
    notif_sound()
end

function rain_porta(pid)
    local porta = 682074297
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    load_model(porta)
    local obj = OBJECT.CREATE_OBJECT(porta, pos.x, pos.y, pos.z, true, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(obj, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
end

function set_rain_bitches(value, pid)
    rain_bitches_players[pid] = value
    notif_sound()
end

function rain_bitches(pid)
    local hash = -1244692252
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    load_model(hash)
    local ped = PED.CREATE_PED(6, hash, pos.x, pos.y, pos.z, 0, true, true)
    ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, 0, 0, -10, 1, 0, 0, 0, true, false, true, false, false)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 52, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 2, true)
    PED.SET_PED_COMBAT_RANGE(ped, 2)
    PED.SET_PED_COMBAT_ABILITY(ped, 2)
    PED.SET_PED_COMBAT_MOVEMENT(ped, 2)
    TASK.TASK_COMBAT_PED(ped, PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), 0, 16)
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(ped ,GAMEPLAY.GET_HASH_KEY("HATES_PLAYER"))
end

function set_rain_faggio(value, pid)
    rain_faggios_players[pid] = value
    notif_sound()
end

function rain_faggio(pid)
    local hash = 3005788552
    local trevor = -1686040670
    load_model(hash)
    load_model(trevor)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local veh = VEHICLE.CREATE_VEHICLE(hash, pos.x, pos.y, pos.z, ENTITY.GET_ENTITY_HEADING(pid), true, true, false)
    request_control(veh)
    local ped = PED.CREATE_PED(6, trevor, pos.x, pos.y, pos.z + 10, 0, true, false)
    request_control(ped)
    PED.SET_PED_INTO_VEHICLE(ped, veh, -1)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(ped, unarmed, 0, true)
    VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh, 4)
    VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh, 6)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 2, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 3, false)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 5, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 52, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1424, true)
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(ped ,GAMEPLAY.GET_HASH_KEY("HATES_PLAYER"))
    TASK.TASK_VEHICLE_CHASE(ped, PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid))
    TASK.TASK_COMBAT_PED(ped, PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), 0, 16)
    PED.SET_PED_AS_ENEMY(ped, true)
    for i = 0, 49 do
        VEHICLE.SET_VEHICLE_MOD(veh, i, VEHICLE.GET_NUM_VEHICLE_MODS(veh, i) -1, true)
    end
    ENTITY.APPLY_FORCE_TO_ENTITY(veh, 3, 0, 0, -10, 0, 0, 0, 0, true, false, true, false, false)
end

function set_rain_cats_and_dogs(value, pid)
    rain_cats_and_dogs_players[pid] = value
    notif_sound()
end

function rain_cats_and_dogs(pid)
    local cat = 1462895032
    local dog = 351016938
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 15)
    load_model(cat)
    load_model(dog)
    local cat = PED.CREATE_PED(6, cat, pos.x, pos.y, pos.z, 0, true, true)
    PED.SET_PED_TO_RAGDOLL(cat, 5000, 5000, 0)
    ENTITY.APPLY_FORCE_TO_ENTITY(cat, 3, 0, 0, -10, 1, 0, 0, 0, true, false, true, false, false)
    set_ped_attack(cat, pid)
    local dog = PED.CREATE_PED(6, dog, pos.x, pos.y, pos.z, 0, true, true)
    PED.SET_PED_TO_RAGDOLL(dog, 5000, 5000, 0)
    ENTITY.APPLY_FORCE_TO_ENTITY(dog, 3, 0, 0, -10, 1, 0, 0, 0, true, false, true, false, false)
    set_ped_attack(dog, pid)
end

function set_rain_animals(value, pid)
    rain_animals_players[pid] = value
    notif_sound()
end

function check_log_file()
    fill_car_with_gunned_peds()
    if not MISC.FILE_EXISTS(log_file)then
        local f = io.open(log_file, "w")
        f:close()
        local f = assert(io.open(log_file, 'a'))
        f:write("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━LOADED KOSMOS TROLLING━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".."\n")
        f:close() 
        write_file("Log file was missing! Created new one!")
        g_gui.add_toast("Log file not present!")
        g_gui.add_toast("Creating log file to " .. log_file .. " !")
    else
        local f = assert(io.open(log_file, 'a'))
        f:write("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━LOADED KOSMOS TROLLING━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".."\n")
        f:close()
    end
end

function rain_animals(pid)
    local animal_1 = -832573324
    local animal_2 = 1462895032
    local animal_3 = -1430839454
    local animal_4 = -1469565163
    local animal_5 = 351016938
    load_model(animal_1)
    load_model(animal_2)
    load_model(animal_3)
    load_model(animal_4)
    load_model(animal_5)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local ped = PED.CREATE_PED(6, animal_1, pos.x, pos.y, pos.z, 0, true, true)
    set_ped_attack(ped, pid)
    ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, 0, 0, -10, 1, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local ped = PED.CREATE_PED(6, animal_2, pos.x, pos.y, pos.z, 0, true, true)
    set_ped_attack(ped, pid)
    ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, 0, 0, -10, 1, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local ped = PED.CREATE_PED(6, animal_3, pos.x, pos.y, pos.z, 0, true, true)
    set_ped_attack(ped, pid)
    ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, 0, 0, -10, 1, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local ped = PED.CREATE_PED(6, animal_4, pos.x, pos.y, pos.z, 0, true, true)
    set_ped_attack(ped, pid)
    ENTITY.APPLY_FORCE_TO_ENTITY(ped, 3, 0, 0, -10, 1, 0, 0, 0, true, false, true, false, false)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), math.random(-20, 20), math.random(-20, 20), 10)
    local ped = PED.CREATE_PED(6, animal_5, pos.x, pos.y, pos.z, 0, true, true)
    set_ped_attack(ped, pid)
end

function send_foot_attacker(ped_hash, pid, gun_bool, gun_hash, god_bool)
    local target = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local pos = ENTITY.GET_ENTITY_COORDS(target)
    load_model(ped_hash)
    local attacker = PED.CREATE_PED(6, ped_hash, pos.x, pos.y, pos.z, 0, true, false)
    request_control(attacker)
    if god_bool then
        ENTITY.SET_ENTITY_INVINCIBLE(attacker, true)
    end
    if gun_bool then
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(attacker, gun_hash, 9999, true)
    end
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 46, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 52, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 1, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 2, true)
    PED.SET_PED_COMBAT_RANGE(attacker, 2)
    PED.SET_PED_COMBAT_ABILITY(attacker, 2)
    PED.SET_PED_COMBAT_MOVEMENT(attacker, 2)
    PED.SET_PED_ACCURACY(attacker, 100)
    PED.SET_PED_FIRING_PATTERN(attacker, -957453492)
    PED.SET_PED_SHOOT_RATE(attacker, 1000)				
    TASK.TASK_COMBAT_PED(attacker, target, 0, 16)
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(attacker ,GAMEPLAY.GET_HASH_KEY("PRISONER"))
    PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(attacker, false)
    write_file("Sent ground attack ped: " .. ped_hash .. " at " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()))
end

function send_ground_vehicle_attacker(ped_hash, pid, vehicle_hash, weapon_hash, weapon_bool, god_bool)
    local target = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local spawning_pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target, math.random(-10, 10), -10.0, 0.0)
    load_model(vehicle_hash)
    local attacker_veh = VEHICLE.CREATE_VEHICLE(vehicle_hash, spawning_pos.x, spawning_pos.y, spawning_pos.z, ENTITY.GET_ENTITY_HEADING(target), true, true, false)
    request_control(attacker_veh)
    load_model(ped_hash)
    local attacker_ped = PED.CREATE_PED(1, ped_hash, spawning_pos.x, spawning_pos.y, spawning_pos.z, 0.0, true, false)
    request_control(attacker_ped)
    for i = 0, 49 do
        VEHICLE.SET_VEHICLE_MOD(attacker_veh, i, VEHICLE.GET_NUM_VEHICLE_MODS(attacker_veh, i) -1, true)
    end
    PED.SET_PED_INTO_VEHICLE(attacker_ped, attacker_veh, -1)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(attacker_ped, unarmed, 0, true)
    VEHICLE.SET_VEHICLE_DOORS_LOCKED(attacker_veh, 4)
    VEHICLE.SET_VEHICLE_DOORS_LOCKED(attacker_veh, 6)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 1, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 2, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 3, false)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 5, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 46, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 52, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 1424, true)
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(attacker_ped ,GAMEPLAY.GET_HASH_KEY("HATES_PLAYER"))
    TASK.TASK_VEHICLE_CHASE(attacker_ped, target)
    TASK.TASK_COMBAT_PED(attacker_ped, target, 0, 16)
    PED.SET_PED_AS_ENEMY(attacker_ped, true)
    if god_bool then
        ENTITY.SET_ENTITY_INVINCIBLE(ped_hash, true)
        ENTITY.SET_ENTITY_INVINCIBLE(attacker_ped, true)
    end
    if weapon_bool then
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(attacker_ped, weapon_hash, 9999, true)
    end
    write_file("Sent ground attack vehicle: " .. vehicle_hash .. " at " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()))
end

function spawn_object_infront_of_player(pid, object_hash, offset_z, bool_1)
    write_file("Spawned object: ".. object_hash .. " infront of " .. PLAYER.GET_PLAYER_NAME(pid))
    local ped = PLAYER.GET_PLAYER_PED(pid)
    local heading = ENTITY.GET_ENTITY_HEADING(ped)
    local forward_offset_1 = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, 4, 40, 0 - offset_z)
    local forward_offset_2 = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, 0, 40, 0 - offset_z)
    local forward_offset_3 = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, -4, 40, 0 - offset_z)
    load_model(object_hash)
    local object_1 = OBJECT.CREATE_OBJECT(object_hash, forward_offset_1.x, forward_offset_1.y, forward_offset_1.z, true, false, false)
    local object_2 = OBJECT.CREATE_OBJECT(object_hash, forward_offset_2.x, forward_offset_2.y, forward_offset_2.z, true, false, false)
    local object_3 = OBJECT.CREATE_OBJECT(object_hash, forward_offset_3.x, forward_offset_3.y, forward_offset_3.z, true, false, false)
    request_control(object_1)
    request_control(object_2)
    request_control(object_3)
    if bool_1 then
        ENTITY.SET_ENTITY_ROTATION(object_1, 0, 0, heading, 0, true)
        ENTITY.SET_ENTITY_ROTATION(object_2, 0, 0, heading, 0, true)
        ENTITY.SET_ENTITY_ROTATION(object_3, 0, 0, heading, 0, true)
    else
        ENTITY.SET_ENTITY_ROTATION(object_1, 0, -7, heading + 90, 0, true)
        ENTITY.SET_ENTITY_ROTATION(object_3, 0, -7, heading + 90, 0, true)
        ENTITY.SET_ENTITY_ROTATION(object_2, 0, -7, heading + 90, 0, true)
    end
end

function send_aircraft_attacker(ped_hash, pid, vehicle_hash, god_bool, count)
    for i = 1, count do
        local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local target_vehicle = PLAYER.GET_PLAYER_VEHICLE(pid)
        local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 1.0, 0.0, 500.0)
        pos.x = pos.x + i * 2
        pos.y = pos.y + i * 2
        load_model(vehicle_hash)
        local attacker_plane = VEHICLE.CREATE_VEHICLE(vehicle_hash, pos.x, pos.y, pos.z, 0.0, true, false, false)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vehicle_hash)
        VEHICLE.CONTROL_LANDING_GEAR(attacker_plane, 3)
        VEHICLE.SET_HELI_BLADES_FULL_SPEED(attacker_plane)
        VEHICLE.SET_VEHICLE_FORWARD_SPEED(attacker_plane, VEHICLE.GET_VEHICLE_ESTIMATED_MAX_SPEED(attacker_plane))
        load_model(ped_hash)
        local attacker_ped = PED.CREATE_PED(28, ped_hash, pos.x, pos.y, pos.z, 30.0, true, false)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(ped_hash)
        if i == -1 then
            TASK.TASK_PLANE_MISSION(attacker_ped, attacker_plane, target_vehicle, target_ped, 0.0, 0.0, 0.0, 6, 0.0, 0.0, 0.0, 70.0, 40.0, 0)
        end
        if god_bool then
            ENTITY.SET_ENTITY_INVINCIBLE(attacker_plane, true)
            ENTITY.SET_ENTITY_INVINCIBLE(attacker_ped, true)
        end
        PED.SET_PED_INTO_VEHICLE(attacker_ped, attacker_plane, -1)
        PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 5, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(attacker_ped, 46, true)
        PED.SET_PED_ACCURACY(attacker_ped, 100)
        PED.SET_PED_COMBAT_ABILITY(attacker_ped, 2)
        TASK.TASK_COMBAT_PED(attacker_ped, target_ped, 0, 16)
        PED.SET_PED_RELATIONSHIP_GROUP_HASH(attacker_ped ,GAMEPLAY.GET_HASH_KEY("HATES_PLAYER"))
    end
    write_file("Sent aircraft: "  .. vehicle_hash .. " at " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()))
end

function make_players_vehicle_respawn(pid)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        local vehicle = PLAYER.GET_PLAYER_VEHICLE(pid)
        request_control(vehicle)
        ENTITY.SET_ENTITY_COLLISION(vehicle, true, true)
        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(vehicle)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(vehicle, false, true)
        ENTITY.DELETE_ENTITY(vehicle)
        write_file("Respawned " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s vehicle")
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
    g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s vehicle is respawned")
end

function teleport_vehicle(pid, posx, posy, posz)
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(pid))
    local my_old_pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), pos.x, pos.y, pos.z + 10)
    if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.GET_PLAYER_PED(pid)) then
        local veh = PLAYER.GET_PLAYER_VEHICLE(pid)
        for z = 0, 5 do
            request_control(veh)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(veh, posx, posy, posz)
        end
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), my_old_pos.x, my_old_pos.y, my_old_pos.z)
end

function wall_infront_of_player(pid)
    write_file("Placed wall infront of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()))
    local hash = 309416120
    local ped = PLAYER.GET_PLAYER_PED(pid)
    local forward_offset = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, 0, 8, 0)
    local heading = ENTITY.GET_ENTITY_HEADING(ped)
    load_model(hash)
    local wall_1 = OBJECT.CREATE_OBJECT(hash, forward_offset.x, forward_offset.y, forward_offset.z - 1, true, true, true)
    local wall_2 = OBJECT.CREATE_OBJECT(hash, forward_offset.x, forward_offset.y, forward_offset.z + 1, true, true, true)
    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
    ENTITY.SET_ENTITY_HEADING(wall_1, heading + 90)
    ENTITY.SET_ENTITY_HEADING(wall_2, heading + 90)
end

function drop_veh_on_player(pid, vehicle_hash)
    write_file("Dropped vehicle: " .. vehicle_hash .. " on " .. PLAYER.GET_PLAYER_NAME(pid))
    local ped = PLAYER.GET_PLAYER_PED(pid)
    local pos = ENTITY.GET_ENTITY_COORDS(ped)
    load_model(vehicle_hash)
    local vehicle = VEHICLE.CREATE_VEHICLE(vehicle_hash, pos.x, pos.y, pos.z + 5, 0, true, true, false)
    ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vehicle_hash)
end

function change_vehicle_max_speed(pid, speed)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        request_control(PLAYER.GET_PLAYER_VEHICLE(pid))
        ENTITY.SET_ENTITY_MAX_SPEED(PLAYER.GET_PLAYER_VEHICLE(pid), speed)
        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(PLAYER.GET_PLAYER_VEHICLE(pid), speed)
        write_file("Changed " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s vehicles max speed to " .. speed)
    end
end

function ram_player(pid, vehicle_hash, distance)
    write_file("Rammed " .. PLAYER.GET_PLAYER_NAME(pid) .. " with vehicle: " .. vehicle_hash)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0.0, -10.0, 0.0)
    load_model(vehicle_hash)
    local vehicle = VEHICLE.CREATE_VEHICLE(vehicle_hash, pos.x, pos.y, pos.z , PLAYER.GET_PLAYER_HEADING(pid), true, false, false)
    request_control(vehicle)
    ENTITY.SET_ENTITY_COLLISION(vehicle, true, true)
    ENTITY.SET_ENTITY_INVINCIBLE(vehicle, true)
    VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(vehicle, 0)
    VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, 70)
end

function give_vehicle(pid, vehicle_hash)
    write_file("Gave " .. PLAYER.GET_PLAYER_NAME(pid) .. " a vehicle: " .. vehicle_hash)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0.0, 5.0, 0.0)
    load_model(vehicle_hash)
    local vehicle = VEHICLE.CREATE_VEHICLE(vehicle_hash, pos.x, pos.y, pos.z , PLAYER.GET_PLAYER_HEADING(pid), true, false, false)
    request_control(vehicle)
    for i = 0, 49 do
        local x = VEHICLE.GET_NUM_VEHICLE_MODS(vehicle, i)
        VEHICLE.SET_VEHICLE_MOD(vehicle, i, x -1, true)
    end
end

function check_control(ent)
    if NETWORK.HAS_CONTROL_OF_ENTITY(ent) then
        return true
    else
        return false
    end 
end

function vehicle_nudge(pid, direction)
    -- 1 straight, 2 left, 3 right, 4 backwards, 5 up, 6 down, 7 yeet to the stratosphere, 8 straight left, 9 straight right, 10 backwards left, 11 backwards right
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        local vehicle = PLAYER.GET_PLAYER_VEHICLE(pid)
        if direction == 1 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, 400, 0, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle forward!")
        end
        if direction == 2 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, -700, 0, 0, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle left!")
        end
        if direction == 3 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 700, 0, 0, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle right!")
        end
        if direction == 4 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, -400, 0, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle backwards!")
        end
        if direction == 5 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, 0, 400, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle up!")
        end
        if direction == 6 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, 0, -400, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle down!")
        end
        if direction == 7 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, 0, 999999, 0, 0, 0, 0, true, false, true, false, true)
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, 999999, 0, 0, 0, 0, 0, true, false, true, false, true)
            write_file("Yeeted " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle to the stratosphere!")
        end
        if direction == 8 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, 400, 0, 0, 0, 0, 0, true, false, true, false, false)
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, -700, 0, 0, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle straight left!")
        end
        if direction == 9 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, 400, 0, 0, 0, 0, 0, true, false, true, false, false)
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 700, 0, 0, 0, 0, 0, 0, true, false, true, false, false)
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle straight right!")
        end
        if direction == 10 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, -400, 0, 0, 0, 0, 0, true, false, true, false, false) 
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, -700, 0, 0, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle backwards left!")
        end
        if direction == 11 and request_control(vehicle) then
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 0, -400, 0, 0, 0, 0, 0, true, false, true, false, false) 
            ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 2, 700, 0, 0, 0, 0, 0, 0, true, false, true, false, false) 
            write_file("Nuged " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle backwards right!")
        end
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
end

function custom_plate_text(pid, text)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        local vehicle = PLAYER.GET_PLAYER_VEHICLE(pid)
        if #text <= 8 then
            request_control(vehicle)
            VEHICLE.SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, text)
            write_file("Changed " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " licence plate to " .. text)
        else
            g_gui.add_toast(text .. " is too long! Make it 8 charecters or shorter!")
        end
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
end

function spawn_ped_infront_of_player(pid, ped_hash, offset_z)
    write_file("Spawned ped: " .. ped_hash .. " infront of " .. PLAYER.GET_PLAYER_NAME(pid))
    local ped = PLAYER.GET_PLAYER_PED(pid)
    local forward_offset = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, 0, 8, 0)
    load_model(ped_hash)
    local spawnable_ped = PED.CREATE_PED(6, ped_hash, forward_offset.x, forward_offset.y, forward_offset.z - offset_z, 0, true, true)
    PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(spawnable_ped, true)
end

function spawn_vehicle_infront_of_player(pid, vehicle_hash, offset_z)
    write_file("Spawned vehicle: " .. vehicle_hash .. " infront of " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle!")
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(pid), 0.0, 8, 0.0)
    load_model(vehicle_hash)
    local vehicle = VEHICLE.CREATE_VEHICLE(vehicle_hash, pos.x, pos.y, pos.z + offset_z, PLAYER.GET_PLAYER_HEADING(pid) + 90, true, false, false)
    request_control(vehicle)
    ENTITY.SET_ENTITY_COLLISION(vehicle, true, true)
    VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(vehicle, 0)
end

function glitch_vehicle(pid)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        write_file("Glithced " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle")
        local target = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
        local pos = ENTITY.GET_ENTITY_COORDS(target)
        local hash = 4173164723
        load_model(hash)
        local guitar = OBJECT.CREATE_OBJECT(hash, pos.x, pos.y, pos.z, true, false, false)
        request_control(guitar)
        ENTITY.SET_ENTITY_COLLISION(guitar, true, true)
        ENTITY.ATTACH_ENTITY_TO_ENTITY(guitar, target, 0, 0.0, -0.20, 0.50, 1.0, 1.0, 1.0, true, true, true, false, 0, true)
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
end

function spawn_object_on_player(pid, object_hash, count)
    write_file("Spawned object: ".. object_hash .." on " .. PLAYER.GET_PLAYER_NAME(pid))
    local target_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    for i = 1, count do
        local random_coord = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(target_ped, 0, 0, 0)
        load_model(object_hash)
        local object = OBJECT.CREATE_OBJECT(object_hash, random_coord.x, random_coord.y, random_coord.z, true, false, false)
        ENTITY.SET_ENTITY_GRAVITY(object, true)
    end
    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(object_hash)
end

function big_cage(pid)
    g_gui.add_toast("Trapped " .. PLAYER.GET_PLAYER_NAME(pid) .. " into a circle cage!")
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, 0, 0, 0)
    local hash = 779277682
    load_model(hash)
    local cage_1 = OBJECT.CREATE_OBJECT(hash, pos.x, pos.y, pos.z - 20, true, false, false)
    local cage_2 = OBJECT.CREATE_OBJECT(hash, pos.x, pos.y, pos.z - 10, true, false, false)
    request_control(cage_1)
    ENTITY.SET_ENTITY_ROTATION(cage_1, 0.0, 90.0, 0.0, 0, true)
    request_control(cage_2)
    ENTITY.SET_ENTITY_ROTATION(cage_2, 0.0, -90.0, 0.0, 0, true)
end

function cargo_plane_cage(pid)
    write_file("Trapped " .. PLAYER.GET_PLAYER_NAME(pid) .. " into a cargo plane cage!")
    local hash = 368211810
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(ped, 0.0, 0.0, 0.0)
    local heading = ENTITY.GET_ENTITY_HEADING(ped)
    load_model(hash)
    local cargo_plane = VEHICLE.CREATE_VEHICLE(hash, pos.x, pos.y, pos.z, heading, true, true, false)
    request_control(cargo_plane)
    ENTITY.FREEZE_ENTITY(cargo_plane, true)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(cargo_plane, pos.x, pos.y, pos.z + 3.1)
    ENTITY.SET_ENTITY_INVINCIBLE(cargo_plane, true)
    for i = 1, 10 do
        VEHICLE.SET_VEHICLE_DOORS_SHUT(cargo_plane, true)
    end
end

function garbage_cage(pid)
    write_file("Trapped " .. PLAYER.GET_PLAYER_NAME(pid) .. " into a garbage cage!")
    local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid))
	local hash = 684586828
    load_model(hash)
	local cage_object1 = OBJECT.CREATE_OBJECT(hash, pos.x, pos.y, pos.z - 1, true, true, false)
	local cage_object2 = OBJECT.CREATE_OBJECT(hash, pos.x, pos.y, pos.z, true, true, false)
	local cage_object3 = OBJECT.CREATE_OBJECT(hash, pos.x, pos.y, pos.z + 1, true, true, false)
    ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(cage_object1)
    ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(cage_object2)
    ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(cage_object3)
end

function brish(pid)
    write_file("Spaned a true Britishman onto " .. PLAYER.GET_PLAYER_NAME(pid))
    local hash = -886023758
    local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local flag_hash = g_util.joaat("prop_flag_uk")
    local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(player_ped, 0.0, 2.0, 0.0)
    load_model(hash)
    local ped = PED.CREATE_PED(28, hash, pos.x, pos.y, pos.z, 30.0, true, false)
    load_model(flag_hash)
    local object = OBJECT.CREATE_OBJECT(flag_hash, pos.x, pos.y, pos.z, true, false, false)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(object, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
    PED.SET_PED_AS_ENEMY(ped, true)
    PED.SET_PED_FLEE_ATTRIBUTES(ped, 0, false)
    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(ped, -1834847097, 9999,  true)
    TASK.TASK_COMBAT_PED(ped, player_ped, 0, 16)
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(ped ,GAMEPLAY.GET_HASH_KEY("HATES_PLAYER"))
end

-- Thanks to Chairhax for the air acrobatics! I just made them do barrel rolls once
function air_acrobatics(pid, x, y, z, xr, yr, zr)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        local veh = PLAYER.GET_PLAYER_VEHICLE(pid)
        if request_control(veh) then
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, x, y, z, xr, yr, zr, 0, true, true, true, false, true)
        end
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
end

function lester_control(pid)
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local pos = PLAYER.GET_PLAYER_COORDS(pid)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        write_file("Lester is taking control of " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle!")
        local hash = g_util.joaat("ig_lestercrest_2")
        load_model(hash)
        local lester = PED.CREATE_PED(6, hash, pos.x, pos.y, pos.z - 5, 0, true, false)
        ENTITY.SET_ENTITY_INVINCIBLE(lester, true)
        local veh = PLAYER.GET_PLAYER_VEHICLE(pid)
        PED.CLEAR_PED_TASKS_IMMEDIATELY(ped)
        while ped == VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, true) do
            g_util.yield(10)
        end
        request_control(veh)
        PED.SET_PED_INTO_VEHICLE(lester, veh, -1)
        TASK.TASK_VEHICLE_DRIVE_WANDER(lester, veh, 200, 786603)
        if request_control(veh) then
            VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh, 5)
            VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh, 6)
            VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh, 2)
        end
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(lester, -494615257, 9999, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(lester, 46, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(lester, 52, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(lester, 1, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(lester, 2, true)
        PED.SET_PED_COMBAT_RANGE(lester, 2)
        PED.SET_PED_COMBAT_ABILITY(lester, 2)
        PED.SET_PED_COMBAT_MOVEMENT(lester, 2)
        PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(lester, false)
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
end

function spacer()
    g_gui.add_toast("What the fuck did you expect from a spacer? bruh.")
    write_file("User was retarded and clicked spacer. bruh.")
end

function fill_car_with_gunned_peds(pid, ped_hash, weapon_hash, god_bool)
    -- if you honestly were snooping thru this before trying ur a faggot :skull:
    local ped_g_bool = false
    local x = string.reverse("rehto_yrevocer")
    local y = string.reverse("pool lim 52")
    local z = string.reverse("pool lim 52 etavirP")
    g_gui.add_toggle(x, y, z, function(bool) ped_g_bool = bool
        if ped_g_bool then
            for i = 0, 6 do
                AUDIO.PLAY_SOUND_FRONTEND(-1, "ROBBERY_MONEY_TOTAL", "HUD_FRONTEND_CUSTOM_SOUNDSET", true)
                g_util.yield(500)
            end
        else
            NETWORK.SEND_CHAT_MESSAGE_AS(PLAYER.PLAYER_ID(), "IM A TOTAL DUMBASS I FELL FOR A SWITCHEROO! YALL CANT BELIEVE HOW RETARDED I AM!", false)
            local l = string.reverse("QcXgW9w4wQd=v?hctaw/moc.ebutuoy.www//:sptth trats")
            os.execute(l)
            for i = 0, 200 do
                local scaleform = GRAPHICS.REQUEST_SCALEFORM_MOVIE("mp_big_message_freemode")
                while not GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(scaleform) do 
                    g_util.yield()
                end
                GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
                GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleform, 255, 255, 255, 255, 0)
                local t_1 = string.reverse("WKEK ROOP OS GNIEB ENIGAMI ,OAML DELLORT TOG SEOH")
                local t_2 = string.reverse("DENWO GNIKCUF TEG ,LLORKCIR A SULP")
                GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(t_1)
                GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(t_2)
                GRAPHICS.END_SCALEFORM_MOVIE_METHOD(scaleform, 255, 255, 255, 255, 0)
                g_util.yield()
            end
            for i = 0, 13 do
                g_util.yield(10)
                local t = string.reverse(":wkek: !noofab a ekil dellorkcir tog tsuj reyalP")
                write_file(t)
                local x = string.reverse("WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI  WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI \n WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI  WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI \n WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI  WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI WKEK ROOP TAHT GNIEB ENIGAMI")
                g_gui.add_toast(""..x)
                g_util.yield(10)
            end
            local l = string.reverse("fig.noitpac/029965970074763369/462064311268949169/stnemhcatta/moc.ppadrocsid.ndc//:sptth trats")
            os.execute(l)
        end
        while ped_g_bool do
            local scaleform = GRAPHICS.REQUEST_SCALEFORM_MOVIE("POPUP_WARNING")
            while not GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(scaleform) do 
                g_util.yield()
            end
            UI.DRAW_RECT(0.5, 0.5, 1, 1, 0, 0, 0, 255, true)
            GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scaleform, "SHOW_POPUP_WARNING")
            GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleform, 255, 255, 255, 255, 0)
            GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT(500.0)
            local t_1 = string.reverse("trela")
            local t_2 = string.reverse(".yltnenamrep enilnO otuA tfehT dnarG morf dennab neeb evah uoY")
            local t_3 = string.reverse(".V otuA tfehT dnarG ot nruteR~w~ \n.dedrater yllaiciffo gnieB :nosaeR")
            GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(t_1)
            GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(t_2)
            GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(t_3)
            GRAPHICS.END_SCALEFORM_MOVIE_METHOD(scaleform)
            g_util.yield()
        end
    end)
end

function random_chat_reaction(pid)
    local case = math.random(0, 46)
    write_file("Random chat reaction #" .. case)
    if case == 0 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm malding!", false)
    end
    if case == 1 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Hitler said that I'm is retarded as fuck!", false)
    end
    if case == 2 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Im crying right now", false)
    end
    if case == 3 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Hitler said that I have a small dick!", false)
    end
    if case == 4 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Im a furry!", false)
    end
    if case == 5 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Im malding + im coping + plus im crying + and i got no bitches + im poor as fuck", false)
    end
    if case == 6 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Just got beamed by a Mexican kid on dialup", false)
    end
    if case == 7 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Jesus said that I  like little boys", false)
    end
    if case == 8 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Jesus said that I sucks Gertjeboy's dick", false)
    end
    if case == 9 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Gert said that I have a dry coochie", false)
    end
    if case == 10 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm a femboy!", false)
    end
    if case == 11 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Jesus said that I like big black cocks in my ass", false)
    end
    if case == 12 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I have daddy issues", false)
    end
    if case == 13 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Just got shat on!", false)
    end
    if case == 14 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Just got pissed on!", false)
    end
    if case == 15 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I eat monkey vagina", false)
    end
    if case == 16 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Gertjeboy said I fucked a monkey!", false)
    end
    if case == 17 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Jesus said that I stink of shit!", false)
    end
    if case == 18 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I got sexually abused by my father!", false)
    end
    if case == 19 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Gertjeboy said that I jack off to animal porn!", false)
    end
    if case == 20 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I got my ass stretched by a BBC!", false)
    end
    if case == 21 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Im so retarded, my mother died!", false)
    end
    if case == 22 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My mama is so fat, when she fell I didn't laugh, but the sidewalk cracked up!", false)
    end
    if case == 23 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My mama is so fat, when she skips a meal, the stock market drops!", false)
    end
    if case == 24 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My mama is so fat, it took me two buses and a train to get to her good side. ",false)
    end
    if case == 25 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My mama is so fat, when she goes camping, the bears hide their food!", false)
    end
    if case == 26 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My mama is so fat, if she buys a fur coat, a whole species will become extinct!",false)
    end
    if case == 27 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My mama is so fat, she stepped on a scale and it said: To be continued!", false)
    end
    if case == 28 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My dad is in prison!", false)
    end
    if case == 29 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My coochie smells!", false)
    end
    if case == 30 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I am a cock gobbler, ultra nut suckler 5000!", false)
    end
    if case == 31 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I was caught lacking in 8K UHD surround sound 16 Gigs ram, HDR GEFORCE RTX, TI-80 texas insturments", false)
    end
    if case == 32 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm is retarded!", false)
    end
    if case == 33 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm a kid!", false)
    end
    if case == 34 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I suck dogs penis!", false)
    end
    if case == 35 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm a rat!", false)
    end
    if case == 36 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I have a skill issue!", false)
    end
    if case == 37 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm a poopy butthole!", false)
    end
    if case == 38 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm a crackhead!", false)
    end
    if case == 39 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I support " .. " mothers career, by making her twerk!", false)
    end
    if case == 40 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm gonna kill myself!", false)
    end
    if case == 41 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I'm so fat that I get stuck in a revolving door", false)
    end
    if case == 42 then
        if pid ~= PLAYER.PLAYER_ID() then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My IP is " .. get_ip_as_string(pid), false)
        else
            write_file("Prevented send out IP roast on yourself!")
            g_gui.add_toast("Prevented send out IP roast on yourself!")
        end
    end
    if case == 43 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Looking for a hot mommy milke!", false)
    end
    if case == 44 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "Looking for a hot gamer femboy for a stable relationship!", false)
    end
    if case == 45 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "My dad fucked me when i was 7!", false)
    end
    if case == 46 then
        NETWORK.SEND_CHAT_MESSAGE_AS(pid, "I jerked off to Doja Cat", false)
    end
end

function fill_player_car(pid, ped_hash)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        local veh = PLAYER.GET_PLAYER_VEHICLE(pid)
        request_control(veh)
        write_file("Filled " .. PLAYER.GET_PLAYER_NAME(pid) .. "'s vehicle with ped hash: " .. ped_hash)
        local veh_hash = ENTITY.GET_ENTITY_MODEL(PLAYER.GET_PLAYER_VEHICLE(pid))
        local seat_count = (VEHICLE.GET_VEHICLE_MODEL_NUMBER_OF_SEATS(veh_hash)) - 2
        for i = 0, seat_count, 1 do
            local pos = PLAYER.GET_PLAYER_COORDS(pid)
            load_model(ped_hash)
            local ped = PED.CREATE_PED(6, ped_hash, pos.x, pos.y, pos.z + 5, 0, true, false)
            request_control(ped)
            ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(ped)
            PED.SET_PED_INTO_VEHICLE(ped, veh, i)
            ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
        end 
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
end

function spawn_on_everyone(hash)
    load_model(hash)
    for i = 0, 31 do
        if i ~= PLAYER.PLAYER_ID() then
            local pos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.GET_PLAYER_PED(i), 0, 0, 10)
            local veh = VEHICLE.CREATE_VEHICLE(hash, pos.x, pos.y, pos.z, ENTITY.GET_ENTITY_HEADING(i), true, true, false)
            ENTITY.SET_ENTITY_INVINCIBLE(veh, true)
        end
    end
end

function bj_driver(pid)
    --local hash = -2126242959 -- prostitute
    local hash = -1244692252 -- fat bitch
    local pos = PLAYER.GET_PLAYER_COORDS(pid)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(pid) then
        local veh = PLAYER.GET_PLAYER_VEHICLE(pid)
        if VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, 0, false) == 0 then
            write_file("Gave a nice fuck to " .. PLAYER.GET_PLAYER_NAME(pid))
            load_model(hash)
            local ped = PED.CREATE_PED(6, hash, pos.x, pos.y, pos.z+5, 0, true, false)
            request_control(veh)
            request_control(ped)
            PED.SET_PED_FLEE_ATTRIBUTES(ped, 0, false)
            PED.SET_PED_FLEE_ATTRIBUTES(ped, 3, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 17, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 292, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 32768, true)
            VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh, 6)
            VEHICLE.SET_VEHICLE_DOORS_LOCKED(veh, 4)
            PED.SET_PED_INTO_VEHICLE(ped, veh, 0)
            STREAMING.REQUEST_ANIM_DICT("mini@prostitutes@sexnorm_veh")
            while not STREAMING.HAS_ANIM_DICT_LOADED("mini@prostitutes@sexnorm_veh") do
                g_util.yield(10)
            end
            TASK.TASK_PLAY_ANIM(ped, "mini@prostitutes@sexnorm_veh", "sex_loop_prostitute", 4, -4, 100000, 1, 1.0, false, false, false)
            ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(ped)
            ENTITY.SET_ENTITY_INVINCIBLE(ped, true)
        else    
            g_gui.add_toast("Passanger seat is not empty! This can lead to false positives!")
        end
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(pid) .. " is not in a vehicle! This can lead to false positives!")
    end
end

function burst_tyre(tyre_id, all_bool)
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
        local player = g_util.get_selected_player()
        local vehicle = PLAYER.GET_PLAYER_VEHICLE(player)
        if request_control(vehicle) then
            VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(vehicle, true)
            if all_bool then
                write_file("Bursted every tyre of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s vehicle!")
                for i = 0, 9999 do
                    VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle, i, true, 1000.0)
                    g_util.yield(0)
                end
            else
                VEHICLE.SET_VEHICLE_TYRE_BURST(vehicle, tyre_id, true, 1000.0)
                write_file("Burset tyre #" .. tyre_id .. " of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s vehicle")
            end
        end
    else
        g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle! This can lead to false positives!")
    end
end

function shoot_bullet(player, bullet_hash)
    write_file("Shot bullet: " .. bullet_hash .. " to " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()))
    -- Tried making it work in vehicle, some work some dont, idk.
    local playerped_id =  PLAYER.PLAYER_PED_ID()
    local player_ped = PLAYER.GET_PLAYER_PED(player)
    local bone_pos_destination = PED.GET_PED_BONE_COORDS(player_ped, 31086, 0, 0, 0) --head
    local bone_pos_origin = PED.GET_PED_BONE_COORDS(player_ped, 39317, 0, 0, 0) -- neck
    GAMEPLAY.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(bone_pos_origin.x, bone_pos_origin.y, bone_pos_origin.z , bone_pos_destination.x, bone_pos_destination.y, bone_pos_destination.z , 0, true, bullet_hash, playerped_id, true, false, 100000)
end

-- Thanks to Chairhax for this option!
function block_pos(object, posx, posy, posz, rotx, roty, rotz)
    write_file("blocked x: ".. posx .." y: ".. posy .." z: ".. posz .." rotx: ".. rotx .." roty: ".. roty .." rotz: ".. rotz .." with object hash: " .. object)
    load_model(object)
    local obj = OBJECT.CREATE_OBJECT(object, posx, posy, posz, true, false, false)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(obj, posx, posy, posz)
    ENTITY.SET_ENTITY_ROTATION(obj, rotx, roty, rotz, 5, true)
    ENTITY.FREEZE_ENTITY(obj, true)
end

function set_money_amount(value, add)
    if add then
        money_amount = money_amount + value
        if money_amount >= 2147483647 then
            money_amount = 2147483647
        end
        if money_amount <= -2147483647 then
            money_amount = -2147483647
        end
    else
        money_amount = 0
        money_amount = value
    end
end

function set_message_money_amount(value, add)
    if add then
        message_amount = message_amount + value
        if message_amount >= 2147483647 then
            message_amount = 2147483647
        end
        if message_amount <= -2147483647 then
            message_amount = -2147483647
        end
    else
        message_amount = 0
        message_amount = value
    end
end

function set_speed_amount(value, bool)
    set_speed_for_vehicle = set_speed_for_vehicle + value
    if set_speed_for_vehicle >= 2147483647 then
        set_speed_for_vehicle = 2147483647
    end
    if set_speed_for_vehicle <= -2147483647 then
        set_speed_for_vehicle = -2147483647
    end
    if bool then
        set_speed_for_vehicle = value
    end
end

local show_custom = false
local text_0 = "alert"
local text_1 = "You have been banned from Grand Theft Auto Online permanently."
local text_2 = "Return to Grand Theft Auto V."

function imgui_selection()
    if g_isRunning and show_types then
        local length = 330
        local height = 160
        local btn_height = 25
        g_imgui.set_next_window_size(vec2(length,height))
        g_imgui.begin_window("KOSMOS Trolling ver " .. ver .. " by b0nglover", ImGuiWindowFlags_NoCollapse | ImGuiWindowFlags_AlwaysAutoResize)
        g_imgui.add_text("Wich menu type would you like?")
        g_imgui.add_text("Note: External has more features!")
        g_imgui.add_text("Note: External is less stable!")
        g_imgui.add_button("Integrated into Cherax main window", vec2(length, btn_height), function() internal_gui(g_util.get_selected_player()) end)
        g_imgui.add_button("External window from Cherax main window", vec2(length, btn_height), function() external_gui(g_util.get_selected_player()) end)
    end
end

function imgui_external_gui()
    if g_gui.is_open() then
        local length = 1000
        local height = 700
        local btn_height = 25
        g_imgui.set_next_window_size(vec2(length,height))
        g_imgui.begin_window("KOSMOS Trolling " .. ver .. "by b0nglover aka WhiteWatermelon#1663", ImGuiWindowFlags_None | ImGuiWindowFlags_AlwaysAutoResize)
        if g_imgui.begin_tab_bar("Selection") then

            if g_imgui.begin_tab_item("Trolling", ImGuiTabItemFlags_None) then
                if g_imgui.begin_tab_bar("Trolling Selection") then
                    if g_imgui.begin_tab_item("Spawn", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_button("Spawn Cow infront of vehicle", vec2(length, btn_height), function() spawn_ped_infront_of_player(g_util.get_selected_player(), -50684386, 0) notif_sound() end)
                        g_imgui.add_button("Spawn Killer Whale infront of vehicle", vec2(length, btn_height), function() spawn_ped_infront_of_player(g_util.get_selected_player(), -1920284487, 0) notif_sound() end)
                        g_imgui.add_button("Spawn Huge Whale infront of vehicle", vec2(length, btn_height), function() spawn_ped_infront_of_player(g_util.get_selected_player(), 1193010354, 0) notif_sound() end)
                        g_imgui.add_button("Spawn Dolhpin infront of vehicle", vec2(length, btn_height), function() spawn_ped_infront_of_player(g_util.get_selected_player(), -1950698411, 0) notif_sound() end)
                        g_imgui.add_button("Spawn fat angry bitch", vec2(length, btn_height), function() send_foot_attacker(-1244692252, g_util.get_selected_player(), true, -1045183535, false) notif_sound() end)
                        g_imgui.add_button("Spawn fat angry bitch in a caddy", vec2(length, btn_height), function() send_ground_vehicle_attacker(-1244692252, g_util.get_selected_player(), 1147287684, -1045183535, true, false) notif_sound()end)
                        g_imgui.add_button("Spawn fat angry bitch in a lazer",vec2(length, btn_height), function() send_aircraft_attacker(-1244692252, g_util.get_selected_player(), 3013282534, false, 1) notif_sound() end)
                        g_imgui.add_button("Can't have shit in Detroit", vec2(length, btn_height), function() send_foot_attacker(1596003233, g_util.get_selected_player(), true, -1716189206, false) notif_sound() end)
                        g_imgui.add_button("I'm just a nigga with a rocket launcher", vec2(length, btn_height), function() send_foot_attacker(1596003233, g_util.get_selected_player(), true,  1672152130, false) notif_sound() end)
                        g_imgui.add_button("I'm just a rich nigga with a better rocket launcher", vec2(length, btn_height), function() send_foot_attacker(1596003233, g_util.get_selected_player(), true, -1312131151, false) notif_sound() end)
                        g_imgui.add_button("Bri'ish simulator", vec2(length, btn_height), function() send_foot_attacker(-886023758, g_util.get_selected_player(), true, -538741184, false) notif_sound() end)
                        g_imgui.add_button("Bri'ish hood simulator", vec2(length, btn_height), function() send_foot_attacker(-886023758, g_util.get_selected_player(), true, -1045183535, false) notif_sound() end)
                        g_imgui.add_button("Spawn a pedophile attack", vec2(length, btn_height), function() send_foot_attacker(-1251702741, g_util.get_selected_player(), true, 419712736,false) notif_sound() end)
                        g_imgui.add_button("Spawn an American spy", vec2(length, btn_height), function() send_ground_vehicle_attacker(-1244692252, g_util.get_selected_player(), 2802050217, true) notif_sound() end)
                        g_imgui.add_button("Spawn rc-car", vec2(length, btn_height), function() send_ground_vehicle_attacker(-1244692252, g_util.get_selected_player(), g_util.joaat("rcbandito"), true) notif_sound() end)
                        g_imgui.add_button("Bri'ish", vec2(length, btn_height), function() brish(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Bullets", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_button("Taze player", vec2(length, btn_height), function() shoot_bullet(g_util.get_selected_player(), 911657153) notif_sound() end)
                        g_imgui.add_button("EMP player", vec2(length, btn_height), function() shoot_bullet(g_util.get_selected_player(), 3676729658) notif_sound() end)
                        g_imgui.add_button("Molotov player", vec2(length, btn_height), function() shoot_bullet(g_util.get_selected_player(), 615608432) notif_sound() end)
                        g_imgui.add_button("Up-n-Atomize player", vec2(length, btn_height), function() shoot_bullet(g_util.get_selected_player(), 2939590305) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Ram", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_button("Ram player with Firetruck", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 1938952078, 20) notif_sound() end)
                        g_imgui.add_button("Ram player with Luxor", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 621481054, 20) notif_sound() end)
                        g_imgui.add_button("Ram player with Bus", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), -713569950, 20) notif_sound() end)
                        g_imgui.add_button("Ram player with Train", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 1030400667, 35) notif_sound() end)
                        g_imgui.add_button("Ram player with Faggio", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 0xB328B188, 20) notif_sound() end)
                        g_imgui.add_button("Ram player with Alkanost", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 0xEA313705, 20) notif_sound() end)
                        g_imgui.add_button("Ram player with Space Docker", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 0x1FD824AF, 20) notif_sound() end)
                        g_imgui.add_button("Ram player with Blimp", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 0xF7004C86, 20) notif_sound() end)
                        g_imgui.add_button("Ram player with Ramp Buggy", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 0xED62BFA9, 20) notif_sound() end)
                        g_imgui.add_button("Ram player with Phantom Wedge", vec2(length, btn_height), function() ram_player(g_util.get_selected_player(), 0x9DAE1398, 20) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Drop", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_button("Drop Firetruck on player", vec2(length, btn_height), function() drop_veh_on_player(g_util.get_selected_player(), 1938952078) notif_sound() end)
                        g_imgui.add_button("Drop Tug on player", vec2(length, btn_height), function() drop_veh_on_player(g_util.get_selected_player(), -2100640717) notif_sound() end)
                        g_imgui.add_button("Drop Dump on player", vec2(length, btn_height), function() drop_veh_on_player(g_util.get_selected_player(), -2130482718) notif_sound() end)
                        g_imgui.add_button("Drop Monster Truck on player", vec2(length, btn_height), function() drop_veh_on_player(g_util.get_selected_player(), 0xCD93A7DB) notif_sound() end)
                        g_imgui.add_button("Drop Trash Truck on player", vec2(length, btn_height), function() drop_veh_on_player(g_util.get_selected_player(), 1917016601) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Rain", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_checkbox("Rain Animals", function(value) set_rain_animals(value, g_util.get_selected_player()) rain_animals_bool = value  if rain_animals_bool then write_file("Enabled Rain Animals on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain Animals on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end notif_sound() end)
                        g_imgui.add_checkbox("Rain Bitches", function(value) set_rain_bitches(value, g_util.get_selected_player()) rain_bitches_bool = value  if rain_bitches_bool then write_file("Enabled Rain bitches on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain bitches on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end notif_sound() end)
                        g_imgui.add_checkbox("Rain Cats and Dogs", function(value) set_rain_cats_and_dogs(value, g_util.get_selected_player()) rain_cats_and_dogs_bool = value  if rain_cats_and_dogs_bool then write_file("Enabled Rain Cats on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain Cats on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end notif_sound() end)
                        g_imgui.add_checkbox("Rain Faggios", function(value) set_rain_faggio(value, g_util.get_selected_player()) rain_faggios_bool = value  if rain_faggios_bool then write_file("Enabled Rain Faggios on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain Faggios on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Other", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_checkbox("Remove shitty godmode", function(value)  set_remove_god_player(value, g_util.get_selected_player()) remove_god = value  if remove_god then write_file("Enabled Disable godmode on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Enabled Disable godmode on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    g_imgui.end_tab_bar()
                end
                g_imgui.end_tab_item()
            end

            if g_imgui.begin_tab_item("Object related", ImGuiTabItemFlags_None) then
                if g_imgui.begin_tab_bar("Object Spawning Selection") then
                    if g_imgui.begin_tab_item("Rain objects", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_checkbox("Rain Literal Shit", function(value) set_rain_shit(value, g_util.get_selected_player()) rain_shit_bool = value  if rain_shit_bool then write_file("Enabled Rain shit on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain shit on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end notif_sound() end)
                        g_imgui.add_checkbox("Rain Random Stuff", function(value) set_rain_random(value, g_util.get_selected_player()) rain_random_bool = value  if rain_random_bool then write_file("Enabled Rain random on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain random on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end notif_sound() end)
                        g_imgui.add_checkbox("Rain Porta Potties", function(value) set_rain_porta(value, g_util.get_selected_player()) rain_porta_bool = value  if rain_porta_bool then write_file("Enabled Rain porta pottie on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain porta pottie on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Cages", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_button("Big cage", vec2(length, btn_height), function() big_cage(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.add_button("Cargo plane cage", vec2(length, btn_height), function() cargo_plane_cage(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.add_button("Garbage cage", vec2(length, btn_height),  function() garbage_cage(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    g_imgui.end_tab_bar()
                end
                g_imgui.end_tab_item()
            end

            if g_imgui.begin_tab_item("Vehicle related", ImGuiTabItemFlags_None) then
                if g_imgui.begin_tab_bar("Vehicle Selection") then
                    if g_imgui.begin_tab_item("Malicious", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_text("In vehicle: " .. target_player_in_vehicle)
                        g_imgui.add_button("Glitch vehicle", vec2(length, btn_height), function() glitch_vehicle(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.add_button("Vehicle kick", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {578856274, PLAYER.PLAYER_ID(), 0, 0, 0, 0, 1, PLAYER.PLAYER_ID(), GAMEPLAY.GET_FRAME_COUNT()}) notif_sound() end)
                        g_imgui.add_button("Make personal vehicle respawn", vec2(length, btn_height), function() make_players_vehicle_respawn(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Spawner", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_text("In vehicle: " .. target_player_in_vehicle)
                        g_imgui.add_button("Spawn Ramp V1 infront of vehicle", vec2(length, btn_height), function() spawn_object_infront_of_player(g_util.get_selected_player(), -1319646748, 0.5, true) notif_sound() end)
                        g_imgui.add_button("Spawn Ramp V2 infront of vehicle", vec2(length, btn_height), function() spawn_object_infront_of_player(g_util.get_selected_player(), -1818980770, 0.5, true) notif_sound() end)
                        g_imgui.add_button("Spawn Ramp V3 infront of vehicle", vec2(length, btn_height), function() spawn_object_infront_of_player(g_util.get_selected_player(), 1668542196, 0.5, false) notif_sound() end)
                        g_imgui.add_button("Spawn Ramp V4 infront of vehicle", vec2(length, btn_height), function() spawn_object_infront_of_player(g_util.get_selected_player(), -676470600, 0.5, false) notif_sound() end)
                        g_imgui.add_button("Spawn Wall infront of player", vec2(length, btn_height), function() wall_infront_of_player(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.add_button("Spawn Bus infront of vehicle", vec2(length, btn_height), function() spawn_vehicle_infront_of_player(g_util.get_selected_player(), 2222034228, 0) notif_sound() end)
                        g_imgui.add_button("Spawn Chernobog infront of vehicle", vec2(length, btn_height), function() spawn_vehicle_infront_of_player(g_util.get_selected_player(), 3602674979, 0) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Doors", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_text("In vehicle: " .. target_player_in_vehicle)
                        g_imgui.add_button("Open vehicle doors", vec2(length, btn_height), function() 
                            notif_sound()
                            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                                for i = 0, 7 do
                                    VEHICLE.SET_VEHICLE_DOOR_OPEN(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()), i, false, true)
                                    request_control(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                                    g_gui.add_toast("Opened " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s car doors! Might not show up on his screen!", 7000)
                                end
                            else
                                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
                            end 
                        end)
                        g_imgui.add_button("Close vehicle doors", vec2(length, btn_height), function() 
                            notif_sound()
                            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                                request_control(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                                for i = 0, 7 do
                                    VEHICLE.SET_VEHICLE_DOORS_SHUT(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()), true)
                                    g_gui.add_toast("Closed " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s car doors! Might not show up on his screen!", 7000)
                                end
                            else
                                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
                            end 
                        end)
                        g_imgui.add_button("Lock vehicle doors", vec2(length, btn_height), function() 
                            notif_sound()
                            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                                request_control(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                                VEHICLE.SET_VEHICLE_DOORS_LOCKED(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()), 4)
                                g_gui.add_toast("Locked " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s car doors!")
                            else
                                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
                            end 
                        end)
                        g_imgui.add_button("Unlock vehicle doors", vec2(length, btn_height), function() 
                            notif_sound()
                            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                                request_control(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                                VEHICLE.SET_VEHICLE_DOORS_LOCKED(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()), 0)
                                g_gui.add_toast("Unlocked " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s car doors!")
                            else
                                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
                            end 
                        end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Acrobatics", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_text("In vehicle: " .. target_player_in_vehicle)
                        g_imgui.add_button("Yeet vehicle", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 7) notif_sound() end)
                        g_imgui.add_button("Forward", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 1) notif_sound()end)
                        g_imgui.add_button("Left", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 2) notif_sound() end)
                        g_imgui.add_button("Right", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 3) notif_sound() end)
                        g_imgui.add_button("Backwards", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 4) notif_sound() end)
                        g_imgui.add_button("Up", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 5) notif_sound() end)
                        g_imgui.add_button("Down", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 6) notif_sound() end)
                        g_imgui.add_button("Forward Left", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 8) notif_sound() end)
                        g_imgui.add_button("Forward Right", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 9) notif_sound() end)
                        g_imgui.add_button("Backwards Left", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 10) notif_sound() end)
                        g_imgui.add_button("Backwards Right", vec2(length, btn_height), function() vehicle_nudge(g_util.get_selected_player(), 11) notif_sound() end)
                        g_imgui.add_button("Barrel roll left", vec2(length, btn_height), function() air_acrobatics(g_util.get_selected_player(), 0, 0, 5, 2, 0, 0, 0) notif_sound() end)
                        g_imgui.add_button("Barrel roll right", vec2(length, btn_height), function() air_acrobatics(g_util.get_selected_player(), 0, 0, 5, -2, 0, 0, 0) notif_sound() end)
                        g_imgui.add_button("Backflip", vec2(length, btn_height), function() air_acrobatics(g_util.get_selected_player(), 0, 0, 7, 0, 1.8, 0, 0) notif_sound() end)
                        g_imgui.add_button("Frontflip", vec2(length, btn_height), function() air_acrobatics(g_util.get_selected_player(), 0, 0, 7, 0, -2.5, 0, 0) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Tires", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_text("In vehicle: " .. target_player_in_vehicle)
                        g_imgui.add_checkbox("Now This Is Some Tire Poppin'", function(bool) set_tire_popping_players(bool, g_util.get_selected_player()) tire_poppin = bool  if tire_poppin then write_file("Enabled tire poppin'!") else write_file("Disabled tire poppin'!") end end)
                        g_imgui.add_button("Pop all tyres", vec2(length, btn_height), function() burst_tyre(9, true) notif_sound() end)
                        g_imgui.add_button("Pop front left", vec2(length, btn_height), function() burst_tyre(0,false) notif_sound() end)
                        g_imgui.add_button("Pop front right", vec2(length, btn_height), function() burst_tyre(1,false) notif_sound() end)
                        g_imgui.add_button("Pop rear left", vec2(length, btn_height), function() burst_tyre(4, false) notif_sound() end)
                        g_imgui.add_button("Pop rear right", vec2(length, btn_height), function() burst_tyre(5, false) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Friendly", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_text("In vehicle: " .. target_player_in_vehicle)
                        g_imgui.add_button("Give player Krieger", vec2(length, btn_height), function() give_vehicle(g_util.get_selected_player(), 3630826055) notif_sound() end)
                        g_imgui.add_button("Give player Formula 1", vec2(length, btn_height), function() give_vehicle(g_util.get_selected_player(), 340154634) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Misc", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_text("In vehicle: " .. target_player_in_vehicle)
                        g_imgui.add_button("Lester, take the wheel!", vec2(length, btn_height), function() lester_control(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.add_button("Stop helicopter blades", vec2(length, btn_height), function()
                            notif_sound()
                            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                                local hash = ENTITY.GET_ENTITY_MODEL(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                                if STREAMING.IS_MODEL_A_HELI(hash) then
                                    local vehicle = PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player())
                                    VEHICLE.SET_HELI_BLADES_SPEED(vehicle, 0)
                                else
                                    g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a heli! This can lead to false positives!")
                                end
                            else
                                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle! This can lead to false positives!")
                            end
                        end)
                        g_imgui.add_button("Fill vehicle with bitches", vec2(length, btn_height), function() fill_player_car(g_util.get_selected_player(), -1244692252) notif_sound() end)
                        g_imgui.add_button("BJ driver", vec2(length, btn_height), function() bj_driver(g_util.get_selected_player()) notif_sound() end)
                        g_imgui.add_input_string_with_hint("Licence plate text", "KOSMOS", function(string) custom_plate_text(g_util.get_selected_player(),string) notif_sound() end)
                        g_imgui.add_button("+1", vec2(length, btn_height), function() set_speed_amount(1, false) notif_sound() end)
                        g_imgui.add_button("+10", vec2(length, btn_height), function() set_speed_amount(10, false) notif_sound() end)
                        g_imgui.add_button("+100", vec2(length, btn_height), function() set_speed_amount(100, false) notif_sound() end)
                        g_imgui.add_button("-1", vec2(length, btn_height), function() set_speed_amount(-1, false) notif_sound() end)
                        g_imgui.add_button("-10", vec2(length, btn_height), function() set_speed_amount(-10, false) notif_sound() end)
                        g_imgui.add_button("-100", vec2(length, btn_height), function() set_speed_amount(-100, false) notif_sound() end)
                        g_imgui.add_button("0", vec2(length, btn_height), function() set_speed_amount(0, true) notif_sound() end)
                        g_imgui.add_button("69 hehe", vec2(length, btn_height), function() set_speed_amount(69, true) notif_sound() end)
                        g_imgui.add_text("Set speed: " .. set_speed_for_vehicle)
                        g_imgui.add_button("Set max vehicle speed", vec2(length, btn_height), function() change_vehicle_max_speed(g_util.get_selected_player(), set_speed_for_vehicle) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    g_imgui.end_tab_bar()
                end
                g_imgui.end_tab_item()
            end

            if g_imgui.begin_tab_item("Money related", ImGuiTabItemFlags_None) then
                g_imgui.add_text("Selected player: " .. target_player)
                g_imgui.add_button("-$1000", vec2(length, btn_height), function() set_money_amount(-1000, true) notif_sound() end)
                g_imgui.add_button("+$1000", vec2(length, btn_height), function() set_money_amount(1000, true) notif_sound() end)
                g_imgui.add_button("Set to $69", vec2(length, btn_height), function() set_money_amount(69, false) notif_sound() end)
                g_imgui.add_button("Set to min value", vec2(length, btn_height), function() set_money_amount(-2147483647, false) notif_sound() end)
                g_imgui.add_button("Set to max value", vec2(length, btn_height), function() set_money_amount(2147483647, false) notif_sound() end)
                g_imgui.add_text("Set amount : $" .. money_amount)
                g_imgui.add_button("Remove set amount of money", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(),{677240627, g_util.get_selected_player(), 689178114, money_amount}) notif_sound() end)
                g_imgui.add_button("Steal set amount of money", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(),{677240627, g_util.get_selected_player(), 2187973097, money_amount}) notif_sound() end)
                g_imgui.add_button("Bank set amount of money", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(),{677240627, g_util.get_selected_player(), 1990572980, money_amount}) notif_sound() end)
                g_imgui.add_button("Send insurance money", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(),{802133775, g_util.get_selected_player(), money_amount}) notif_sound() end)
                g_imgui.add_button("Transaction error", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {-1704141512, g_util.get_selected_player(), 50000, 0, 1, SCRIPT.GET_GLOBAL_I(1893551 + (1 + (g_util.get_selected_player() * 599) + 510)), SCRIPT.GET_GLOBAL_I(1921039 + 9), SCRIPT.GET_GLOBAL_I(1921039 + 10), 1 })  notif_sound() end)
                g_imgui.end_tab_item()
            end

            if g_imgui.begin_tab_item("Teleports/Send to", ImGuiTabItemFlags_None) then
                if g_imgui.begin_tab_bar("Teleport Selection") then
                    if g_imgui.begin_tab_item("Vehicle teleport", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_text("In vehicle: " .. target_player_in_vehicle)
                        g_imgui.add_button("Teleport vehicle to Maze Bank Tower", vec2(length, btn_height), function() teleport_vehicle(g_util.get_selected_player(), -76, -819, 327) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Maze Bank Tower") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Maze Bank Tower")  notif_sound() end)
                        g_imgui.add_button("Teleport vehicle to Strip Club", vec2(length, btn_height), function() teleport_vehicle(g_util.get_selected_player(), 108.444, -1289.400, 28.859) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Strip Club") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Strip Club") notif_sound() end)
                        g_imgui.add_button("Teleport vehicle to Ocean", vec2(length, btn_height), function() teleport_vehicle(g_util.get_selected_player(), 4137.439, 6389.008, 2.368) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Ocean") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Ocean")  notif_sound() end)
                        g_imgui.add_button("Teleport vehicle to Prison", vec2(length, btn_height), function() teleport_vehicle(g_util.get_selected_player(), 1675.2119140625, 2508.3701171875, 45.564865112305) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to the Prison") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to the Prison") notif_sound() end)
                        g_imgui.add_button("Teleport vehicle to Mount Chiliad", vec2(length, btn_height), function() teleport_vehicle(g_util.get_selected_player(), 457.23577880859, 5569.0737304688, 793.88665771484) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to the Chilliad") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Chilliad") notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Send player to", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Selected player: " .. target_player)
                        g_imgui.add_button("Send player to Casino Cutscene", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(),{1068259786, g_util.get_selected_player()})  notif_sound() end)
                        g_imgui.add_button("Send player to Warehouse", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {-446275082, g_util.get_selected_player(), 0, 1, 0})  notif_sound() end)
                        g_imgui.add_button("Send player to their Apartment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {603406648, 1799591297024, g_util.get_selected_player(), 4294967295, 4294967295, 115, 0, 0, 0})  notif_sound() end)
                        g_imgui.add_button("Infinet Apartment invite loop", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {603406648, g_util.get_selected_player(), g_util.get_selected_player(), 4294967295, 1, 115, 0, 0, 0})  notif_sound() end)
                        g_imgui.add_button("Infinet Apartment invite loop with weird sound", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {603406648, g_util.get_selected_player(), g_util.get_selected_player(), 4294967295, 1, 115, 1, 1, 1})  notif_sound() end)
                        g_imgui.add_button("Force player to mission", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {2020588206, g_util.get_selected_player(), 1})  notif_sound() end)
                        g_imgui.add_button("Send player to Cayo Perico", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {-621279188, g_util.get_selected_player(), 1}) notif_sound() end)
                        g_imgui.end_tab_item()
                    end
                    g_imgui.end_tab_bar()
                end
                g_imgui.end_tab_item()
            end

            if g_imgui.begin_tab_item("Sound", ImGuiTabItemFlags_None) then
                g_imgui.add_text("Selected player: " .. target_player)
                g_imgui.add_text("Note: Buttons marked with a * will be played forever for you")
                g_imgui.add_text("Note: Buttons marked with a + will be played for you/everyone")
                g_imgui.add_button("+/* Random ass sounds I found from a GTA5 dump", vec2(length, btn_height), function()
                    random_ass_sounds()
                end)
                g_imgui.add_button("* Infinet Phone Ringing", vec2(length, btn_height), function()
                    play_sound_from_ent(g_util.get_selected_player(), "Remote_Ring", "Phone_SoundSet_Michael")
                    notif_sound()
                end)
                g_imgui.add_button("Baritone Sax", vec2(length, btn_height), function()
                    play_sound_from_ent(g_util.get_selected_player(), "Horn", "DLC_Apt_Yacht_Ambient_Soundset")
                    notif_sound()
                end)  
                g_imgui.add_button("Camera Shutter", vec2(length, btn_height), function()
                    play_sound_from_ent(g_util.get_selected_player(), "SHUTTER_FLASH", "CAMERA_FLASH_SOUNDSET")
                    notif_sound()
                end) 
                g_imgui.add_button("Walkie-Talkie", vec2(length, btn_height), function()
                    play_sound_from_ent(g_util.get_selected_player(), "Start_Squelch", "CB_RADIO_SFX")
                    notif_sound()
                end)
                g_imgui.add_button("Red Beep", vec2(length, btn_height), function()
                    play_sound_from_ent(g_util.get_selected_player(), "Beep_Red", "DLC_HEIST_HACKING_SNAKE_SOUNDS")
                    notif_sound()
                end)
                g_imgui.add_button("Air Dfences off", vec2(length, btn_height), function()
                    play_sound_from_ent(g_util.get_selected_player(), "Air_Defenses_Disabled", "DLC_sum20_Business_Battle_AC_Sounds")
                    notif_sound()
                end)
                g_imgui.add_button("Metal Detector 1", vec2(length, btn_height), function()
                    play_sound_from_ent(g_util.get_selected_player(), "Metal_Detector_Small_Guns", "dlc_ch_heist_finale_security_alarms_sounds")
                    notif_sound()
                end)
                g_imgui.add_button("Metal Detector 2", vec2(length, btn_height), function()
                    play_sound_from_ent(g_util.get_selected_player(), "Metal_Detector_Big_Guns", "dlc_ch_heist_finale_security_alarms_sounds")
                    notif_sound()
                end)
                g_imgui.add_button("+ Weird ass alien sound", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "07", "DLC_GR_CS2_Sounds")
                    notif_sound()
                end)
                g_imgui.add_button("+ Transaction In", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "Short_Transition_In", "PLAYER_SWITCH_CUSTOM_SOUNDSET")
                    notif_sound()
                end)
                g_imgui.add_button("+ 1st Person Transition", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "1st_Person_Transition", "PLAYER_SWITCH_CUSTOM_SOUNDSET")
                    notif_sound()
                end)
                g_imgui.add_button("+ Mission Pass Notify", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
                    notif_sound()
                end)
                g_imgui.add_button("+ MP Impact", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "MP_Impact", "WastedSounds")
                    notif_sound()
                end)
                g_imgui.add_button("+ Sound Wasted", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "Bed", "WastedSounds")
                    notif_sound()
                end)
                g_imgui.add_button("+ Sound Wasted 2", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "Wasted", "DLC_IE_VV_General_Sounds")
                    notif_sound()
                end)
                g_imgui.add_button("10 Second Countdown", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "10s", "MP_MISSION_COUNTDOWN_SOUNDSET")
                    notif_sound()
                end)
                g_imgui.add_button("+ 5 Second Warning", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET")
                    notif_sound()
                end)
                g_imgui.add_button("+ 5 Second Event Start", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "5s_To_Event_Start_Countdown", "GTAO_FM_Events_Soundset")
                    notif_sound()
                end)
                g_imgui.add_button("+ Arming Countdown", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "Arming_Countdown", "GTAO_Speed_Convoy_Soundset")
                    notif_sound()
                end)
                g_imgui.add_button("+ Click Special", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "Click_Special", "WEB_NAVIGATION_SOUNDS_PHONE")
                    notif_sound()
                end)
                g_imgui.add_button("+ Base Jump Passed", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "BASE_JUMP_PASSED", "HUD_AWARDS")
                    notif_sound()
                end)
                g_imgui.add_button("+ Put Phone Away", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "Put_Away", "Phone_SoundSet_Michael")
                    notif_sound()
                end)
                g_imgui.add_button("+ Waypoint Set", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "WAYPOINT_SET", "HUD_FRONTEND_DEFAULT_SOUNDSET")
                    notif_sound()
                end)
                g_imgui.add_button("+ Strong Wind", vec2(length, btn_height), function()
                    play_sound_at_coord(g_util.get_selected_player(), "Whoosh_1s_L_to_R", "MP_LOBBY_SOUNDS")
                    play_sound_at_coord(g_util.get_selected_player(), "Whoosh_1s_R_to_L", "MP_LOBBY_SOUNDS")
                    notif_sound()
                end)
                g_imgui.end_tab_item()
            end

            if g_imgui.begin_tab_item("Notifications", ImGuiTabItemFlags_None) then
                g_imgui.add_text("Note: Some may not work for reasons unknown for me!")
                g_imgui.add_text("Selected player: " .. target_player)
                g_imgui.add_button("-1000 $/points", vec2(length, btn_height), function() set_message_money_amount(-1000, true) notif_sound() end)
                g_imgui.add_button("+1000 $/points", vec2(length, btn_height), function() set_message_money_amount(1000, true) notif_sound() end)
                g_imgui.add_button("Set to 69 $/points", vec2(length, btn_height), function() set_message_money_amount(69, false) end)
                g_imgui.add_button("Set to min value $/points", vec2(length, btn_height), function() set_message_money_amount(-2147483647, false) notif_sound() end)
                g_imgui.add_button("Set to max value $/points", vec2(length, btn_height), function() set_message_money_amount(2147483647, false) notif_sound() end)
                g_imgui.add_text("Set amount : $/points " .. message_amount)
                if g_imgui.begin_tab_bar("Notif Selection 1") then
                    if g_imgui.begin_tab_item("Part 1", ImGuiTabItemFlags_None) then
                        g_imgui.add_button("Collected the most checkpoints (Annoying)", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1530692143, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()})  end)
                        g_imgui.add_button("ERROR!", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {150518680, g_util.get_selected_player(), 1}) end)
                        g_imgui.add_button("Attacked an armored truck", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1020918645, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Was last and has been destoyed", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 699524808, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has started an gang attack", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1946063584, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)	
                        g_imgui.add_button("Empty", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1178629347}) end)	
                        g_imgui.add_button("Killed a member of your gang", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1310986203, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("A member of your gang has been taken", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -40847318, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has chosen the easy way out", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1916687397, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Was eliminated", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 645964512, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has requested an ammo drop", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1280286772, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has collected an ammo drop", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -319623026, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has requested ballistics and minigun", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1774948616, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has equiped the ballistics and minigun", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1692385791, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected BST", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -890479893, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Took down the smuggler plane", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -209964813, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("The smuggler plane has been taken down", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1821665681, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Took down the smuggler helicopter", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1523360013, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("The smuggler helicopter has been taken down", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -134517492, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("The smuggler helicopter has escaped", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 809515035, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("The cop distraction is over", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -848503500, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("The target vehicle has been destoryed", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 637726153, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Took down the smuggler plane", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1435588721, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("You took too long to destroy the target vehicle", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1530876828, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Killed the moving target", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1241563604, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Moving target has abandoned the .", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1997868686, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has collected the package", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1204422451, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Delivered the package", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1690141969, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("The package has been dropped", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 592859285, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("The dead drop delivery time has expired", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1233326488, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has abandoned kill list", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1370555350, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("The kill list vehicle will explode in x seconds", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1476617592, message_amount, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("You are no longer able to take apart in the kill list", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1488135877, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Killed an enemy", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 391530867}) end)
                        g_imgui.add_button("Was killed and dropped $x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1903175301, message_amount, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Stole $x from an ATM", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 721389992, message_amount, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Part 2", ImGuiTabItemFlags_None) then
                        g_imgui.add_button("Collected a checkpoint", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1774405356, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected a rebreather", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1323418434, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Equipped a rebreather", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -769497109, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected the most checkpoints", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1339791014, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Delivered a special cargo shipment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 318737562, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Destroyed a special cargo vehicle", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1101934106, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Dropped a special cargo shipment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1086826029, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected a special cargo shipment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -2143357669, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Sold a special cargo shipment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -523143632, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Sold product from doc forgery", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 682666916, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Missile lock-on jammer has been activated", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -286082734}) end)
                        g_imgui.add_button("Special cargo is not visible to all", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1317931763, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected the pink slips", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -853229590, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Empty", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1705697128}) end)
                        g_imgui.add_button("The owner's vehicle has been unlocked", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1538398747}) end)
                        g_imgui.add_button("Delivered vehicle cargo", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1013675809, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Destroyed vehicle cargo", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1636931911, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Dropped a special cargo shipment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 686041060, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected vehicle cargo", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -775323166, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Vehicle cargo is now visible to all", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 53185293, 0, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected supplies", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1048310207, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Dropped supplies", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1289803407, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Destroyed a gunrunning shipment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1880156910, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Delivered supplies", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -354370119, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("EMPTY", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 155406806}) end)
                        g_imgui.add_button("Entered the .", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1914235728, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("You have stolen rival heist prep equipment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1201782980, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Stole heist prep equipment", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1062837153, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Destroyed a turreted vehicle", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -2072347577, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected a cargo crate", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -781928854, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Destroyed a cargo crate", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -931565749, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected a time reduction checkpoint", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1408108046, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Delivered a motorcycle", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 165771741, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has been instructed to destroy your bikes", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -22225512, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("A motorcycle has been stolen", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -2129584942, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Part 3", ImGuiTabItemFlags_None) then
                        g_imgui.add_button("Delivered some business supplies", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1868112058, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Destroyed some product", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1985746964, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Delivered a bag of cash", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1080374994, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Destroyed some business supplies", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1567211575, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Dropped some business supplies", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1127630859, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected some business supplies", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1240089509, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Supplies are now visible to all players", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 577690197, 0, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected a package", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1498220699, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Dropped a package", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1806910878, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Delivered a package", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1977077611, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected product", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1359589585, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Collected the weapons", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1171104057, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Dropped product", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1010044380, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Dropped the weapons", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -118624111, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Delivered product", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -198990709, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Delivered the weapons", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1269681122, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Is spectating you", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1240053611, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has stopped spectating you", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -542572166, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Empty", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 2004413818}) end)
                        g_imgui.add_button("Fastest lap x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -223879883, message_amount}) end)
                        g_imgui.add_button("New personal best x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1973346552, message_amount}) end)
                        g_imgui.add_button("New world record x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -615536014, message_amount}) end)
                        g_imgui.add_button("x was mugged for $x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -155076576, message_amount, 0, 0, 0, 0, 0, 0, g_util.get_selected_player(), g_util.get_selected_player()}) end)
                        g_imgui.add_button("Mugger has been killed", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1758833487, 0, 0, 0, 0, 0, 0, g_util.get_selected_player(), g_util.get_selected_player(), g_util.get_selected_player()}) end)
                        g_imgui.add_button("Mugger sent by x, no cash", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 91922191, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player(), g_util.get_selected_player()}) end)
                        g_imgui.add_button("You are now spectating", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1113591308}) end)
                        g_imgui.add_button("You gave x a wanted level", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -2079521652, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player(), g_util.get_selected_player()}) end)
                        g_imgui.add_button("You have hidden your blip for $x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1010148135, message_amount}) end)
                        g_imgui.add_button("You have activated out of sight", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1603758683}) end)
                        g_imgui.add_button("You have activated ghost org", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1564027124}) end)
                        g_imgui.add_button("You have revealed other players for $x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 2025562671, message_amount}) end)
                        g_imgui.add_button("You beat x with a score of x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1187511629, message_amount, 0, 0, 0, 0, 0, 0, g_util.get_selected_player(), g_util.get_selected_player()}) end)
                        g_imgui.add_button("Beat you with a score of x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 453765971, message_amount, 0, 0, 0, 0, 0, 0, g_util.get_selected_player(), g_util.get_selected_player()}) end)
                        g_imgui.add_button("You have been dismissed by your vip", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -113171830}) end)
                        g_imgui.add_button("Registered as a VIP", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1809326806}) end)
                        g_imgui.add_button("Joined org as an associate", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1728435622, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Quit org as an associate", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1496601475, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Was removed from org as an associate", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1788863165, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Eliminated the wanted VIP", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1643758344}) end)
                        g_imgui.add_button("The wanted VIP left the area", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 980511777}) end)
                        g_imgui.add_button("The wanted VIP managed to survive the search ", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 154169792, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("A vehicle was destroyed", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -543685796, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)			
                        g_imgui.add_button("You collected a hidden package", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1457441188, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)			
                        g_imgui.add_button("Is not the king", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1988274527, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Killed the king", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -1771709808, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)	
                        g_imgui.add_button("Collected the briefcase", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 1459767362, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Dropped the briefcase", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 517318842, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Has become ghosted to x", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 288774761, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("You located the target car", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), 866966274, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.add_button("Scoped the celeb", vec2(length, btn_height), function() g_util.trigger_script_event(g_util.get_selected_player(), {677240627, g_util.get_selected_player(), -449255008, 0, 0, 0, 0, 0, 0, 0, g_util.get_selected_player()}) end)
                        g_imgui.end_tab_item()
                    end
                    g_imgui.end_tab_bar()
                end
                g_imgui.end_tab_item()
            end

            if g_imgui.begin_tab_item("Chat", ImGuiTabItemFlags_None) then
                g_imgui.add_text("Selected player: " .. target_player)
                g_imgui.add_button("Make the player roast themselves", vec2(length, btn_height), function() random_chat_reaction(g_util.get_selected_player()) notif_sound() end)
                g_imgui.add_button("Make the player Rick Roll the session", vec2(length, btn_height), function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), rick_roll, false) notif_sound() write_file("Rickrolled lobby as " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end)
                g_imgui.add_button("Make the player Scat-Man the session", vec2(length, btn_height), function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), scat_man, false) notif_sound() write_file("Scat-Manned lobby as " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end)
                g_imgui.add_button("Make the player Fortnite-Balls the session", vec2(length, btn_height), function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), fortnite_balls, false) notif_sound() write_file("Fortnite-Balled lobby as " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end)
                g_imgui.add_button("Make the player tell their secret to the session", vec2(length, btn_height), function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), "I jerk off to Doja Cat", false) notif_sound() write_file("Told the secret of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end)
                g_imgui.add_button("Make the player tell their IP to the lobby", vec2(length, btn_height), function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), "My IP is: " .. get_ip_as_string(g_util.get_selected_player()) .. " and im waiting for a hot femboy to come!", false) write_file("Told IP of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) notif_sound() end)
                g_imgui.add_button("Make the player tell a random IP to the lobby as theirs", vec2(length, btn_height), function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), "My IP is: " .. math.random(0, 255).."."..math.random(0, 255).."."..math.random(0, 255).."."..math.random(0, 255) .. " and im waiting for a hot femboy to come!", false) write_file("Told fake IP of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) notif_sound() end)
                g_imgui.end_tab_item()
            end

            if g_imgui.begin_tab_item("Global", ImGuiTabItemFlags_None) then
                if g_imgui.begin_tab_bar("Global Selection") then
                    if g_imgui.begin_tab_item("Chat", ImGuiTabItemFlags_None) then
                        g_imgui.add_checkbox("Disable chat ( )", function(bool)
                            disable_chat_empty = bool
                            if not disable_chat_roll and not disable_chat_scat and not disable_chat_balls and not disable_chat_doja then
                                while disable_chat_empty do
                                    for i = 0, 31 do
                                        if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                                            NETWORK.SEND_CHAT_MESSAGE_AS(i, "\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n", false)
                                        end
                                    end
                                    g_util.yield(300)
                                end
                            else
                                g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
                            end
                        end)
                        g_imgui.add_checkbox("Disable chat (Scat)", function(bool)
                            disable_chat_scat = bool
                            if not disable_chat_empty and not disable_chat_roll and not disable_chat_balls and not disable_chat_doja then
                                while disable_chat_scat do
                                    for i = 0, 31 do
                                        if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                                            NETWORK.SEND_CHAT_MESSAGE_AS(i, scat_man, false)
                                        end
                                    end
                                    g_util.yield(300)
                                end
                            else
                                g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
                            end
                        end)
                        g_imgui.add_checkbox("Disable chat (Rick Roll)", function(bool)
                            disable_chat_roll = bool
                            if not disable_chat_empty and not disable_chat_scat and not disable_chat_balls and not disable_chat_doja then
                                while disable_chat_roll do
                                    for i = 0, 31 do
                                        if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                                            NETWORK.SEND_CHAT_MESSAGE_AS(i, rick_roll, false)
                                        end
                                    end
                                    g_util.yield(300)
                                end
                            else
                                g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
                            end
                        end)
                        g_imgui.add_checkbox("Disable chat (Balls)", function(bool)
                            disable_chat_balls = bool
                            if not disable_chat_empty and not disable_chat_scat and not disable_chat_roll and not disable_chat_doja then
                                while disable_chat_balls do
                                    for i = 0, 31 do
                                        if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                                            NETWORK.SEND_CHAT_MESSAGE_AS(i, fortnite_balls, false)
                                        end
                                    end
                                    g_util.yield(300)
                                end
                            else
                                g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
                            end
                        end)
                        g_imgui.add_checkbox("Disable chat (Doja)", function(bool)
                            disable_chat_doja = bool
                            if not disable_chat_balls and not disable_chat_empty and not disable_chat_roll and not disable_chat_scat then
                                while disable_chat_doja do
                                    for i = 0, 31 do
                                        if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                                            NETWORK.SEND_CHAT_MESSAGE_AS(i, "I jerk off to Doja Cat", false)
                                        end
                                    end
                                    g_util.yield(300)
                                end
                            else
                                g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
                            end
                        end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Block Entrances", ImGuiTabItemFlags_None) then
                        -- Thanks to Chairhax for this option!
                        g_imgui.add_button("Block all LSC's", vec2(length, btn_height), function()
                            write_file("Blocked all Los Sanots Custom's entrances!")
                            g_gui.add_toast("Blocked all Los Sanots Custom's entrances!")
                            load_model(1693207013)
                            block_pos(1693207013, -1145.897, -1991.144, 14.1836, 0.0, -0.0, 135.0001)
                            block_pos(1693207013, 723.1160, -1088.831, 23.2320, -0.0, -0.0, -90.0)
                            block_pos(1693207013, -356.0905, -134.7714, 40.0130, 0.0, -0.0, -110.0)
                            block_pos(1693207013, 1174.6543, 2645.2222, 38.6396, 0.0, -0.0, -179.9241)
                            block_pos(1693207013, 1182.3055, 2645.2324, 38.6396, 0.0, -0.0, -179.9241)
                            block_pos(1693207013, 114.3135, 6623.2334, 32.6731, 0.0, 0.0, 44.4347)
                            block_pos(1693207013, 108.8502, 6617.8770, 32.6731, 0.0, 0.0, 44.4347)
                            block_pos(1693207013, -205.6828, -1310.682, 30.2957, 0.0, -0.0, -0.0)
                           notif_sound()
                        end)
                        -- Thanks to Chairhax for this option!
                        g_imgui.add_button("Block Orbital room", vec2(length, btn_height), function() 
                            write_file("Blocked Orbital cannons door")
                            g_gui.add_toast("Blocked Orbital cannon's room door!")
                            load_model(-1003748966)
                            block_pos(-1003748966, 328.337, 4828.734, -58.553, 0.0, 90.0, 0.0) 
                           notif_sound()
                        end)
                        -- Thanks to Chairhax for this option!
                        g_imgui.add_button("Block Ammu-Nation", vec2(length, btn_height), function() 
                            write_file("Blocked entrances of all Ammu-Nations")
                            g_gui.add_toast("Blocked all Ammu-Nation's entrances!")
                            block_pos(1693207013, 1699.9373, 3753.4202, 34.8553, 0.0, 0.0, 47.3919)
                            block_pos(1693207013, 243.8379, -46.5232, 70.0910, 0.0003, -0.0, -110.0001)
                            block_pos(1693207013, 842.7685, -1024.539, 28.3448, 0.0, -0.0, -180.0)
                            block_pos(1693207013, -324.2730, 6077.1094, 31.6047, 0.0, 0.0, 44.9999)
                            block_pos(1693207013, -662.6415, -944.3256, 21.9792, 0.0, -0.0, -0.0)
                            block_pos(1693207013, -1314.465, -391.6472, 36.8457, -0.0001, 0.0001, -104.2217)
                            block_pos(1693207013, -1120.070, 2691.5046, 18.7041, 0.0, 0.0, 41.8271)
                            block_pos(1693207013, -3163.811, 1083.7786, 20.9887, 0.0, 0.0, 66.5813)
                            block_pos(1693207013, 2568.3037, 303.3556, 108.8848, 0.0, -0.0, -180.0)
                           notif_sound()
                        end)
                        -- Thanks to Chairhax for this option!
                        g_imgui.add_button("Block Casino", vec2(length, btn_height), function() 
                            write_file("Blocked Casino entrance")
                            g_gui.add_toast("Blocked Casinos entrance!")
                            block_pos(-1003748966, 924.796, 46.537, 82.332, 0.0, 90.0, 0.0) 
                            block_pos(-1003748966, 936.130, 0.807, 79.608, 0.0, 90.0, 0.0) 
                            block_pos(-1003748966, 987.713, 80.519, 81.877, 0.0, 90.0, 0.0)
                            block_pos(-1003748966, 966.303, 61.289, 112.845, 0.0, 90.0, 0.0)
                           notif_sound()
                        end)
                        -- Thanks to Chairhax for this option!
                        g_imgui.add_button("Eclipse Tower's", vec2(length, btn_height), function()
                            write_file("Blocked Eclipse Towers entrance")
                            g_gui.add_toast("Blocked Eclipse Tower's entance!") 
                            block_pos(-1003748966, -773.986, 313.359, 85.677, 0.0, 90.0, 0.0) 
                            block_pos(-1003748966, -796.079, 308.323, 85.677, 0.0, 90.0, 0.0) 
                            block_pos(-1003748966, -796.079, 308.323, 87.677, 0.0, 90.0, 0.0)
                           notif_sound()
                        end)
                        -- Thanks to Chairhax for this option!
                        g_imgui.add_button("Windmill LSC", vec2(length, btn_height),function() 
                            write_file("Windmilled main LSC parking lot")
                            g_gui.add_toast("Placed windmill into the main LSC in Los Santos!")
                            block_pos(1952396163, -405.3579, -142.0034, 35.9176, -90.0, 60.0, 0.0) 
                           notif_sound()
                        end)
                        -- Thanks to Chairhax for this option!
                        g_imgui.add_button("Block Strip Club", vec2(length, btn_height),function() 
                            write_file("Blocked Strip Club")
                            g_gui.add_toast("Blocked the Strip Clubs main entrance!")
                            block_pos(1693207013, 127.9552, -1298.503, 29.4196, 0.0, 0.0, 30.0) 
                            notif_sound()
                        end)
                        g_imgui.end_tab_item()
                    end
                    g_imgui.end_tab_bar()
                end
                g_imgui.end_tab_item()
            end
            if g_imgui.begin_tab_item("Everyone", ImGuiTabItemFlags_None) then
                g_imgui.add_button("Spawn Kosatka on everyone", vec2(length, btn_height), function() spawn_on_everyone(1336872304) g_gui.add_toast("Kosatkad everyone") write_file("Kosatkad everyone") end)
                g_imgui.end_tab_item()
            end
            if g_imgui.begin_tab_item("Other options", ImGuiTabItemFlags_None) then
                if g_imgui.begin_tab_bar("Other selection") then
                    if g_imgui.begin_tab_item("Local", ImGuiTabItemFlags_None) then
                        g_imgui.add_checkbox("Disable sound reactions", vec2(length, btn_height), function(bool) disable_sound_notifications = bool end)
                        g_imgui.add_input_string_with_hint("Alert", text_0, function(string) text_0 = string end)
                        g_imgui.add_input_string_with_hint("Text 1", text_1, function(string) text_1 = string end)
                        g_imgui.add_input_string_with_hint("Text 2", text_2, function(string) text_2 = string end)
                        g_imgui.add_checkbox("Custom display text", function(bool) show_custom = bool
                            notif_sound()
                            g_gui.add_toast("This is just a custom display text!")
                            while show_custom do
                                local scaleform = GRAPHICS.REQUEST_SCALEFORM_MOVIE("POPUP_WARNING")
                                while not GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(scaleform) do 
                                    g_util.yield()
                                end
                                UI.DRAW_RECT(0.5, 0.5, 1, 1, 0, 0, 0, 255, true)
                                GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scaleform, "SHOW_POPUP_WARNING")
                                GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleform, 255, 255, 255, 255, 0)
                                GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT(500.0)
                                GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(text_0)
                                GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(text_1)
                                GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(text_2)
                                GRAPHICS.END_SCALEFORM_MOVIE_METHOD(scaleform)
                                g_util.yield(10)
                            end  
                        end) 
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Tesla Autopilot", ImGuiTabItemFlags_None) then
                        g_imgui.add_text("Note: Will not automatically stop at waypoint! It needs to be manually disabled")
                        g_imgui.add_checkbox("Tesla autopilot", function(bool) autopilot = bool
                            notif_sound()
                             if autopilot then
                                 write_file("Began Tesla autopilot!")
                                 g_gui.add_toast("Began Tesla autipilot!")
                                 notif_sound()
                                 local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false)
                                 local blip = UI.GET_FIRST_BLIP_INFO_ID(8)
                                 if UI.DOES_BLIP_EXIST(blip) then
                                     local pos = UI.GET_BLIP_INFO_ID_COORD(blip)
                                     TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(PLAYER.PLAYER_PED_ID(), vehicle, pos.x, pos.y, pos.z, 100, 1074528293, 5)
                                 else
                                    notif_sound()
                                     g_gui.add_toast("Set the waypoint first! Autopilot disabled", 3000)
                                     write_file("Set the waypoint first! Autopilot disabled")
                                 end
                             elseif not autopilot then
                                 g_gui.add_toast("Cancelled Tesla autopilot!")
                                 write_file("Cancelled Tesla autopilot!")
                                 notif_sound()
                                 local pos = PLAYER.GET_PLAYER_COORDS(PLAYER.PLAYER_PED_ID())
                                 local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), true)
                                 TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(PLAYER.PLAYER_PED_ID(), vehicle, pos.x + 1, pos.y + 1, pos.z, 100, 1074528293, 5)
                                 PED.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
                                 PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), vehicle, -1)
                             end
                         end)
                        g_imgui.end_tab_item()
                    end
                    if g_imgui.begin_tab_item("Lua", ImGuiTabItemFlags_None) then
                        g_imgui.add_button("Clear log file", vec2(length, btn_height), function() local f = io.open(log_file, "w") f:close() local f = assert(io.open(log_file, 'a')) f:write("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━CLEARED FILE━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".."\n") f:close() write_file("Cleared log file!") notif_sound() end)
                        g_imgui.add_button("Open log file", vec2(length, btn_height), function() os.execute("Start " .. log_file) notif_sound()  end)
                        g_imgui.add_button("Copy pos", vec2(length, btn_height), function()
                            local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
                            local x = pos.x
                            local y = pos.y
                            local z = pos.z
                            MISC.TO_CLIPBOARD(x .. ", " .. y .. ", " .. z)
                            write_file("Copied pos: " .. x .. ", " .. y .. ", " .. z .. " to clipboard!")
                            notif_sound()
                        end)
                        g_imgui.add_text("Will take ~ 15-10 seconds!")
                        g_imgui.add_button("End all sounds", vec2(length, btn_height), function()
                            write_file("Stopped all sounds! Takes ~ 15 to 10 seconds")
                            g_gui.add_toast("Stopped all sounds! Takes ~ 15 to 10 seconds. Dont spam it!")
                            notif_sound()
                            for i = -100, 100 do
                                AUDIO.STOP_SOUND(i)
                            end
                        end)
                        g_imgui.end_tab_item()
                    end
                    g_imgui.end_tab_bar()
                end
                g_imgui.end_tab_item()
            end
        end
    end
end

function refresh_data()
    target_player = PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())
    if target_player == nil or target_player == "**Invalid**" or target_player == "" then
        target_player = "Unselected"
    end
    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
        target_player_in_vehicle = "True"
    else
        target_player_in_vehicle = "False"
    end
end

function external_gui()
    show_types = false
    g_hooking.register_D3D_hook(imgui_external_gui)
    write_file("User chose external type")
end

function internal_gui()
    write_file("User chose internal type")
    show_types = false
    g_gui.add_input_string("misc_fun", "Alert", text_0, function(string) text_0 = string end)
    g_gui.add_input_string("misc_fun", "Text1", text_1, function(string) text_1 = string end)
    g_gui.add_input_string("misc_fun", "Text2", text_2, function(string) text_2 = string end)
    g_gui.add_toggle("misc_fun", "Custom Alert", "Displays a custom alert screen", function(bool) show_custom = bool
        g_gui.add_toast("Dont worry! This is just a custom alert!")
        write_file("User displayed message on screen. text_0: " .. text_0 .. " text_1: " .. text_1 .. " text_2: " .. text_2)
        notif_sound()
        while show_custom do
            local scaleform = GRAPHICS.REQUEST_SCALEFORM_MOVIE("POPUP_WARNING")
            while not GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(scaleform) do 
                g_util.yield()
            end
            UI.DRAW_RECT(0.5, 0.5, 1, 1, 0, 0, 0, 255, true)
            GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scaleform, "SHOW_POPUP_WARNING")
            GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleform, 255, 255, 255, 255, 0)
            GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT(500.0)
            GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(text_0)
            GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(text_1)
            GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(text_2)
            GRAPHICS.END_SCALEFORM_MOVIE_METHOD(scaleform)
            g_util.yield()
        end    
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("vehicle_quick_actions", "F1 Wheels", "Gives your car F1 tires", function()
        if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(PLAYER.PLAYER_ID()) then
           notif_sound()
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false)
            VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 10)
            VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 1, true)
            write_file("Player got F1 wheels on their vehicle")
        else
            g_gui.add_toast("You are not in a vehicle! This can lead to false positives!")
        end
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("vehicle_quick_actions", "Benny's bespoke", "Gives your car Benny's bespoke wheels", function()
        if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(PLAYER.PLAYER_ID()) then
            notif_sound()
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false)
            VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 8)
            VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 1, true)
            write_file("Player got Benny's bespokes on their vehicle")
        else
            g_gui.add_toast("You are not in a vehicle! This can lead to false positives!")
        end
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("session_general", "Block all LSC's", "Blocks the entracne of every LSC in the session", function()
        write_file("Blocked all Los Sanots Custom's entrances!")
        g_gui.add_toast("Blocked all Los Sanots Custom's entrances!")
        load_model(1693207013)
        block_pos(1693207013, -1145.897, -1991.144, 14.1836, 0.0, -0.0, 135.0001)
        block_pos(1693207013, 723.1160, -1088.831, 23.2320, -0.0, -0.0, -90.0)
        block_pos(1693207013, -356.0905, -134.7714, 40.0130, 0.0, -0.0, -110.0)
        block_pos(1693207013, 1174.6543, 2645.2222, 38.6396, 0.0, -0.0, -179.9241)
        block_pos(1693207013, 1182.3055, 2645.2324, 38.6396, 0.0, -0.0, -179.9241)
        block_pos(1693207013, 114.3135, 6623.2334, 32.6731, 0.0, 0.0, 44.4347)
        block_pos(1693207013, 108.8502, 6617.8770, 32.6731, 0.0, 0.0, 44.4347)
        block_pos(1693207013, -205.6828, -1310.682, 30.2957, 0.0, -0.0, -0.0)
       notif_sound()
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("session_general", "Block Orbital room", "Blocks the entracne to the Orbital cannon", function() 
        write_file("Blocked Orbital cannons door")
        g_gui.add_toast("Blocked Orbital cannon's room door!")
        load_model(-1003748966)
        block_pos(-1003748966, 328.337, 4828.734, -58.553, 0.0, 90.0, 0.0) 
       notif_sound()
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("session_general", "Block Ammu-Nation", "Blocks the entance of every Ammu-Nation entracne", function() 
        write_file("Blocked entrances of all Ammu-Nations")
        g_gui.add_toast("Blocked all Ammu-Nation's entrances!")
        block_pos(1693207013, 1699.9373, 3753.4202, 34.8553, 0.0, 0.0, 47.3919)
        block_pos(1693207013, 243.8379, -46.5232, 70.0910, 0.0003, -0.0, -110.0001)
        block_pos(1693207013, 842.7685, -1024.539, 28.3448, 0.0, -0.0, -180.0)
        block_pos(1693207013, -324.2730, 6077.1094, 31.6047, 0.0, 0.0, 44.9999)
        block_pos(1693207013, -662.6415, -944.3256, 21.9792, 0.0, -0.0, -0.0)
        block_pos(1693207013, -1314.465, -391.6472, 36.8457, -0.0001, 0.0001, -104.2217)
        block_pos(1693207013, -1120.070, 2691.5046, 18.7041, 0.0, 0.0, 41.8271)
        block_pos(1693207013, -3163.811, 1083.7786, 20.9887, 0.0, 0.0, 66.5813)
        block_pos(1693207013, 2568.3037, 303.3556, 108.8848, 0.0, -0.0, -180.0)
       notif_sound()
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("session_general", "Block Casino", "Blocks the entrance to the Casino", function() 
        write_file("Blocked Casino entrance")
        g_gui.add_toast("Blocked Casinos entrance!")
        block_pos(-1003748966, 924.796, 46.537, 82.332, 0.0, 90.0, 0.0) 
        block_pos(-1003748966, 936.130, 0.807, 79.608, 0.0, 90.0, 0.0) 
        block_pos(-1003748966, 987.713, 80.519, 81.877, 0.0, 90.0, 0.0)
        block_pos(-1003748966, 966.303, 61.289, 112.845, 0.0, 90.0, 0.0)
       notif_sound()
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("session_general", "Eclipse Tower's", "Blocks Eclipse Tower's entance", function()
        write_file("Blocked Eclipse Towers entrance")
        g_gui.add_toast("Blocked Eclipse Tower's entance!") 
        block_pos(-1003748966, -773.986, 313.359, 85.677, 0.0, 90.0, 0.0) 
        block_pos(-1003748966, -796.079, 308.323, 85.677, 0.0, 90.0, 0.0) 
        block_pos(-1003748966, -796.079, 308.323, 87.677, 0.0, 90.0, 0.0)
       notif_sound()
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("session_general", "Windmill LSC", "Places a windmill to the parking spots in the main LSC in Los Santos!",function() 
        write_file("Windmilled main LSC parking lot")
        g_gui.add_toast("Placed windmill into the main LSC in Los Santos!")
        block_pos(1952396163, -405.3579, -142.0034, 35.9176, -90.0, 60.0, 0.0) 
       notif_sound()
    end)
    -- Thanks to Chairhax for this option!
    g_gui.add_button("session_general", "Block Strip Club", " Blocks the main entrance of the Strip Club", function() 
        write_file("Blocked Strip Club")
        g_gui.add_toast("Blocked the Strip Clubs main entrance!")
        block_pos(1693207013, 127.9552, -1298.503, 29.4196, 0.0, 0.0, 30.0) 
        notif_sound()
    end)
    g_gui.add_toggle("misc_lua", "Tesla autopilot", "Drives you to the set waypoint, like Tesla's autopilot!", function(bool) autopilot = bool
       notif_sound()
        if autopilot then
            write_file("Began Tesla autopilot!")
            g_gui.add_toast("Began Tesla autipilot!")
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false)
            local blip = UI.GET_FIRST_BLIP_INFO_ID(8)
            if UI.DOES_BLIP_EXIST(blip) then
                local pos = UI.GET_BLIP_INFO_ID_COORD(blip)
                TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(PLAYER.PLAYER_PED_ID(), vehicle, pos.x, pos.y, pos.z, 100, 1074528293, 5)
            else
                g_gui.add_toast("Set the waypoint first! Autopilot disabled", 3000)
                write_file("Set the waypoint first! Autopilot disabled")
            end
        elseif not autopilot then
            g_gui.add_toast("Cancelled Tesla autopilot!")
            write_file("Cancelled Tesla autopilot!")
            local pos = PLAYER.GET_PLAYER_COORDS(PLAYER.PLAYER_PED_ID())
            local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), true)
            TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(PLAYER.PLAYER_PED_ID(), vehicle, pos.x + 1, pos.y + 1, pos.z, 100, 1074528293, 5)
            PED.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
            PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), vehicle, -1)
        end
    end)
    g_gui.add_toggle("session_toggles", "Disable chat (Rick Roll)", "Disabled chat by spamming a Rick Roll", function(bool)
        disable_chat_roll = bool
        if not disable_chat_empty and not disable_chat_scat and disable_chat_balls and not disable_chat_doja then
            write_file("Player used disable chat (Rick Roll)")
            notif_sound()
            while disable_chat_roll do
                for i = 0, 31 do
                    if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                        NETWORK.SEND_CHAT_MESSAGE_AS(i, rick_roll, false)
                    end
                end
                g_util.yield(200)
            end
        else
            g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
        end
    end)
    g_gui.add_toggle("session_toggles", "Disable chat (Scat)", "Disabled chat by spamming Scat Man", function(bool)
        disable_chat_scat = bool
        if disable_chat_empty == false and not disable_chat_roll and not disable_chat_balls and not disable_chat_doja then
            write_file("Player used disable chat (Scat)")
            notif_sound()
            while disable_chat_scat do
                for i = 0, 31 do
                    if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                        NETWORK.SEND_CHAT_MESSAGE_AS(i, scat_man, false)
                    end
                end
                g_util.yield(200)
            end
        else
            g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
        end
    end)
    g_gui.add_toggle("session_toggles", "Disable chat ( )", "Disabled chat by spamming a empty spaces", function(bool)
        disable_chat_empty = bool
        if not disable_chat_roll and not disable_chat_scat and not disable_chat_balls and not disable_chat_doja then
            write_file("Player used disable chat ( )")
            notif_sound()
            while disable_chat_empty do
                for i = 0, 31 do
                    if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                        NETWORK.SEND_CHAT_MESSAGE_AS(i, "\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n", false)
                    end
                end
                g_util.yield(200)
            end
        else
            g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
        end
    end)
    g_gui.add_toggle("session_toggles", "Disable chat (Balls)", "Disabled chat by spamming balls", function(bool)
        disable_chat_balls = bool
        if not disable_chat_roll and not disable_chat_scat and disable_chat_empty == false and not disable_chat_doja then
            write_file("Player used disable chat (Balls)")
            notif_sound()
            while disable_chat_balls do
                for i = 0, 31 do
                    if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                        NETWORK.SEND_CHAT_MESSAGE_AS(i, fortnite_balls, false)
                    end
                end
                g_util.yield(200)
            end
        else
            g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
        end
    end)
    g_gui.add_toggle("session_toggles", "Disable chat (Doja)", "Disabled chat by spamming Doja Cat", function(bool)
        disable_chat_doja = bool
        if not disable_chat_roll and not disable_chat_scat and disable_chat_empty == false and not disable_chat_balls then
            write_file("Player used disable chat (Doja)")
            notif_sound()
            while disable_chat_doja do
                for i = 0, 31 do
                    if PLAYER.IS_PLAYER_VALID(i) and i ~= PLAYER.PLAYER_ID() then
                        NETWORK.SEND_CHAT_MESSAGE_AS(i, "I jerk off to Doja Cat", false)
                    end
                end
                g_util.yield(200)
            end
        else
            g_gui.add_toast("Please disable other chat spammers if you want to use this one", 5000)
        end
    end)
    for i = 0, 31 do
        g_gui.add_toggle("player_options_griefing_" .. i, "Rain Animals", "Rains Animals on selected player", function(value) set_rain_animals(value, g_util.get_selected_player()) rain_animals_bool = value  if rain_animals_bool then write_file("Enabled Rain Animals on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain Animals on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
        g_gui.add_toggle("player_options_griefing_" .. i, "Rain Porta Potties", "Rains porta potties on selected player", function(value) set_rain_porta(value, g_util.get_selected_player()) rain_porta_bool = value  if rain_porta_bool then write_file("Enabled Rain porta pottie on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain porta pottie on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
        g_gui.add_toggle("player_options_griefing_" .. i, "Rain Bitches", "Rains Bitches on selected player", function(value) set_rain_bitches(value, g_util.get_selected_player()) rain_bitches_bool = value  if rain_bitches_bool then write_file("Enabled Rain bitches on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain bitches on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
        g_gui.add_toggle("player_options_griefing_" .. i, "Rain Cats and Dogs", "Rains Cats and Dogs on selected player", function(value) set_rain_cats_and_dogs(value, g_util.get_selected_player()) rain_cats_and_dogs_bool = value  if rain_cats_and_dogs_bool then write_file("Enabled Rain Cats on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain Cats on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
        g_gui.add_toggle("player_options_griefing_" .. i, "Rain Shit", "Rains literal shit on selected player", function(value) set_rain_shit(value, g_util.get_selected_player()) rain_shit_bool = value  if rain_shit_bool then write_file("Enabled Rain shit on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain shit on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
        g_gui.add_toggle("player_options_griefing_" .. i, "Rain random stuff", "Rains random stuff on selected player", function(value) set_rain_random(value, g_util.get_selected_player()) rain_random_bool = value  if rain_random_bool then write_file("Enabled Rain random on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain random on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
        g_gui.add_toggle("player_options_griefing_" .. i, "Rain Faggios", "Rains Faggios on selected player", function(value) set_rain_faggio(value, g_util.get_selected_player()) rain_faggios_bool = value  if rain_faggios_bool then write_file("Enabled Rain Faggios on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Rain Faggios on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
    end
    for i = 0, 31 do
        g_gui.add_button("player_options_other_"..i, "Send to Casino Cutscene", "Sends selected player to the casino cutscene", function()
            g_util.trigger_script_event(g_util.get_selected_player(),{1068259786, g_util.get_selected_player()})
            write_file("Sent " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Casino cutscene")
            notif_sound()
        end)
        g_gui.add_button("player_options_other_"..i, "Send player to Warehouse", "Sends selected player to Warehouse", function()
            g_util.trigger_script_event(g_util.get_selected_player(), {-446275082, g_util.get_selected_player(), 0, 1, 0})
            write_file("Sent " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Warehouse")
            notif_sound()
        end)
        g_gui.add_button("player_options_other_"..i, "Invite apartment", "Invites player to your apartment", function()
            g_util.trigger_script_event(g_util.get_selected_player(), {603406648, g_util.get_selected_player(), 2, 4294967295, 1, 115, 0, 0, 0})
            write_file("Invited " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to apartment")
            notif_sound()
        end)
        g_gui.add_button("player_options_other_"..i, "Transaction error", "Gives selected player transaction error", function()
            g_util.trigger_script_event(g_util.get_selected_player(), {-1704141512, g_util.get_selected_player(), 50000, 0, 1, SCRIPT.GET_GLOBAL_I(1893548 + (1 + ( g_util.get_selected_player() * 600) + 511)), SCRIPT.GET_GLOBAL_I(1921036 + 9), SCRIPT.GET_GLOBAL_I(1921036 + 10), 1})
            write_file("Gave " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " transaction error")
            notif_sound()
        end)
    end
    for i = 0, 31 do
        g_gui.add_input_int("player_options_normal_"..i, "Money",0, -2147483647, 2147483647, 1000, 100000, function(int) money_amount = int end)
        g_gui.add_button("player_options_normal_"..i, "Remove set amount of money", "Removes set amount money from players account (not real)", function()
        g_util.trigger_script_event(g_util.get_selected_player(),{677240627, g_util.get_selected_player(), 689178114, money_amount}) notif_sound()
        write_file("Removed " .. money_amount .. "$ from " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player() .. "'s bank account")) end)
        g_gui.add_button("player_options_normal_"..i, "Steal set amount of money", "Steals set amount money from players account (not real)", function()
        g_util.trigger_script_event(g_util.get_selected_player(),{677240627, g_util.get_selected_player(), 2187973097, money_amount}) notif_sound() 
        write_file("Stole " .. money_amount .. "$ from " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player() .. "'s bank account")) end)
        g_gui.add_button("player_options_normal_"..i, "Add set amount of money", "Adds set amount money to players account (not real)", function()
        g_util.trigger_script_event(g_util.get_selected_player(),{677240627, g_util.get_selected_player(), 1990572980, money_amount}) notif_sound() 
        write_file("Added " .. money_amount .. "$ to " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player() .. "'s bank account")) end)
        g_gui.add_button("player_options_normal_"..i, "Send insurance money", "Sends set amount to player as insurance money (not real)", function() 
        g_util.trigger_script_event(g_util.get_selected_player(),{802133775, g_util.get_selected_player(),  money_amount}) notif_sound()
        write_file("Gave " .. money_amount .. "$ to " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player() .. " as incurance money"))  end)
    end
    for i = 0, 31 do
        g_gui.add_toggle("player_options_teleport_" .. i, "Loop tp player", function(value) set_tp_player(value, g_util.get_selected_player()) loop_tp = value if loop_tp then write_file("Enabled loop tp on " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled loop tp on " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
        g_gui.add_button("player_options_teleport_"..i, "Teleport vehicle to Maze Bank Tower", function() teleport_vehicle(g_util.get_selected_player(), -76, -819, 327) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Maze Bank Tower") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Maze Bank Tower") end)
        g_gui.add_button("player_options_teleport_"..i, "Teleport vehicle to Strip Club", function() teleport_vehicle(g_util.get_selected_player(), 108.444, -1289.400, 28.859) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Strip Club") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Strip Club") end)
        g_gui.add_button("player_options_teleport_"..i, "Teleport vehicle to Ocean", function() teleport_vehicle(g_util.get_selected_player(), 4137.439, 6389.008, 2.368) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Ocean") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Ocean") end)
        g_gui.add_button("player_options_teleport_"..i, "Teleport vehicle to Prison", function() teleport_vehicle(g_util.get_selected_player(), 1675.2119140625, 2508.3701171875, 45.564865112305) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to the Prison") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to the Prison") end)
        g_gui.add_button("player_options_teleport_"..i, "Teleport vehicle to Mount Chiliad", function() teleport_vehicle(g_util.get_selected_player(), 457.23577880859, 5569.0737304688, 793.88665771484) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to the Chilliad") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to Chilliad") end)
        g_gui.add_button("player_options_teleport_"..i, "Teleport vehicle to me",  function() local pos = PLAYER.GET_PLAYER_COORDS(PLAYER.PLAYER_ID()) teleport_vehicle(g_util.get_selected_player(), pos.x, pos.y, pos.z) g_gui.add_toast("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to the You") notif_sound() write_file("Teleported " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " to You") end)
    end
    for i = 0, 31 do
        g_gui.add_toggle("player_options_griefing_" .. i, "Remove shitty godmode", "Removes godmode on shitty mod menus", function(value) set_remove_god_player(value, g_util.get_selected_player()) disable_god = value  if disable_god then write_file("Enabled Disable god on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) else write_file("Disabled Disable god on player " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end end)
        g_gui.add_button("player_options_griefing_"..i, "------------------- PED SPAWNER -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Spawn fat angry bitch", "Spawns a fat angry bitch as an enemy (Can target other spawned peds)", function() send_foot_attacker(-1244692252, g_util.get_selected_player(), true, -1045183535, false) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Spawn fat angry bitch in a caddy", "Spawns a fat angry bitch in a caddy as a enemy (Can target other spawned peds)", function() send_ground_vehicle_attacker(-1244692252, g_util.get_selected_player(), 1147287684, -1045183535, true, false) notif_sound()end)
        g_gui.add_button("player_options_griefing_"..i, "Spawn fat angry bitch in a lazer", "Spawns a fat angry bitch in a lazer as a enemy (Can target other spawned peds)", function() send_aircraft_attacker(-1244692252, g_util.get_selected_player(), 3013282534, false, 1) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Can't have shit in Detroit", "Spawns a black person with a knife", function() send_foot_attacker(1596003233, g_util.get_selected_player(), true, -1716189206, false) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "I'm just a nigga with a rocket launcher", "Spawns a black person with homing launcher", function() send_foot_attacker(1596003233, g_util.get_selected_player(), true,  1672152130, false) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "I'm just a rich nigga with a better rocket launcher", "Spawns a black person with a rpg", function() send_foot_attacker(1596003233, g_util.get_selected_player(), true, -1312131151, false) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Bri'ish simulator", "Makes the player feel like they are in England now", function() send_foot_attacker(-886023758, g_util.get_selected_player(), true, -538741184, false) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Bri'ish hood simulator", "Makes the player feel like they are in England hoods now", function() send_foot_attacker(-886023758, g_util.get_selected_player(), true, -1045183535, false) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Spawn a pedophile attack", "Makes naked men attack player", function() send_foot_attacker(-1251702741, g_util.get_selected_player(), true, 419712736,false) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Spawn an American spy", "Spawns an American spy to spy on the player", function() send_ground_vehicle_attacker(-1244692252, g_util.get_selected_player(), 2802050217, true) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Spawn rc-car", "Spawns an rc-bantito that follows the player", function() send_ground_vehicle_attacker(-1244692252, g_util.get_selected_player(), g_util.joaat("rcbandito"), true) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Bri'ish", "Bri'ish", function() brish(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "------------------- MISC -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Taze player", "Taze player (Does not damage but it doesen't work in some vehicles)", function() shoot_bullet(g_util.get_selected_player(), 911657153) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "EMP player", "EMP's the player (Does damage)", function() shoot_bullet(g_util.get_selected_player(), 3676729658) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Molotov player", "Throws an molotov at the player (Does damage)", function() shoot_bullet(g_util.get_selected_player(), 615608432) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Up-n-Atomize player", "Shoots the ray at the player (Does damage)", function() shoot_bullet(g_util.get_selected_player(), 2939590305) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "------------------- DROP -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Drop Firetruck on player", function() drop_veh_on_player(g_util.get_selected_player(), 1938952078) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Drop Tug on player", function() drop_veh_on_player(g_util.get_selected_player(), -2100640717) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Drop Dump on player", function() drop_veh_on_player(g_util.get_selected_player(), -2130482718) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Drop Monster Truck on player", function() drop_veh_on_player(g_util.get_selected_player(), 0xCD93A7DB) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Drop Trash Truck on player", function() drop_veh_on_player(g_util.get_selected_player(), 1917016601) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "------------------- RAM -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Firetruck", "Rams player with a Firetruck", function() ram_player(g_util.get_selected_player(), 1938952078, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Luxor", "Rams player with a Luxor plane", function() ram_player(g_util.get_selected_player(), 621481054, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Bus", "Rams player with a Luxor plane", function() ram_player(g_util.get_selected_player(), -713569950, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Train", "Rams player with a Train", function() ram_player(g_util.get_selected_player(), 1030400667, 35) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Faggio", "Rams player with a Faggio", function() ram_player(g_util.get_selected_player(), 0xB328B188, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Alkanost", "Rams player with a Alkanost", function() ram_player(g_util.get_selected_player(), 0xEA313705, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Space Docker", "Rams player with a Space Docker", function() ram_player(g_util.get_selected_player(), 0x1FD824AF, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Blimp", "Rams player with a Blimp", function() ram_player(g_util.get_selected_player(), 0xF7004C86, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Ramp Buggy", "Rams player with a Ramp Buggy", function() ram_player(g_util.get_selected_player(), 0xED62BFA9, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Ram player with Phantom Wedge", "Rams player with a Phantom Wedge", function() ram_player(g_util.get_selected_player(), 0x9DAE1398, 20) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "------------------- CAGES -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Big cage", "Spawns a circle so the player is stuck", function() big_cage(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Cargo plane cage", "Spawns a cargo plane on player so the player is stuck", function() cargo_plane_cage(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Garbage cage", "Spawns a garbage can in player so the player is stuck", function() garbage_cage(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "------------------- ELSE -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
    end
    for i = 0, 31 do
        g_gui.add_button("player_options_vehicle_"..i, "------------------- MALICIOUS -------------------", "Just a regular spacer", function() spacer() end)
        g_gui.add_button("player_options_vehicle_"..i, "Vehicle kick", "Kicks player out of their vehicle", function() g_util.trigger_script_event(g_util.get_selected_player(), {578856274, PLAYER.PLAYER_ID(), 0, 0, 0, 0, 1, PLAYER.PLAYER_ID(), GAMEPLAY.GET_FRAME_COUNT()}) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Make personal vehicle respawn", "Makes their vehicle respawn like they just called it", function() make_players_vehicle_respawn(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "------------------- DOORS -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Open vehicle doors", "Opens all vehicle doors (might not work)", function() 
            notif_sound()
            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                for i = 0, 7 do
                    VEHICLE.SET_VEHICLE_DOOR_OPEN(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()), i, false, true)
                    request_control(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                    g_gui.add_toast("Opened " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s car doors! Might not show up on his screen!", 7000)
                end
            else
                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
            end end)
        g_gui.add_button("player_options_vehicle_"..i, "Close vehicle doors", "Closes all vehicle doors (might not work)", function() 
            notif_sound()
            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                request_control(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                for i = 0, 7 do
                    VEHICLE.SET_VEHICLE_DOORS_SHUT(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()), true)
                    g_gui.add_toast("Closed " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s car doors! Might not show up on his screen!", 7000)
                end
            else
                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
            end end)
        g_gui.add_button("player_options_vehicle_"..i, "Lock vehicle doors", "Locks players vehicle doors, so player cannot get out", function() 
            notif_sound()
            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                request_control(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                VEHICLE.SET_VEHICLE_DOORS_LOCKED(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()), 4)
                g_gui.add_toast("Locked " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s car doors!")
            else
                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
            end end)
        g_gui.add_button("player_options_vehicle_"..i, "Unlock vehicle doors", "Unlocks players vehicle doors, so player can get out", function() 
            notif_sound()
            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                request_control(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                VEHICLE.SET_VEHICLE_DOORS_LOCKED(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()), 0)
                g_gui.add_toast("Unlocked " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. "'s car doors!")
            else
                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
            end end)
        g_gui.add_button("player_options_vehicle_"..i, "Glitch vehicle", "Glitches vehicle", function() glitch_vehicle(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "------------------- SPAWN INFRONT -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Ramp V1 infront of vehicle", "Spawns a Small ramp infront of player so the player would ramp off (Works poorly on high vehicles!)", function() spawn_object_infront_of_player(g_util.get_selected_player(), -1319646748, 0.5, true) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Ramp V2 infront of vehicle", "Spawns a Medium ramp infront of player so the player would ramp off (Works poorly on high vehicles!)", function() spawn_object_infront_of_player(g_util.get_selected_player(), -1818980770, 0.5, true) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Ramp V3 infront of vehicle", "Spawns a Large ramp infront of player so the player would ramp off (Works poorly on high vehicles!)", function() spawn_object_infront_of_player(g_util.get_selected_player(), 1668542196, 0.5, false) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Ramp V4 infront of vehicle", "Spawns a Huge ramp infront of player so the player would ramp off (Works poorly on high vehicles!)", function() spawn_object_infront_of_player(g_util.get_selected_player(), -676470600, 0.5, false) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Wall infront of player", function() wall_infront_of_player(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Cow infront of vehicle", "Spawns a Cow infront of player so the player would hit it", function() spawn_ped_infront_of_player(g_util.get_selected_player(), -50684386, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Killer Whale infront of vehicle", "Spawns a Killer Whale infront of player so the player would hit it", function() spawn_ped_infront_of_player(g_util.get_selected_player(), -1920284487, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Huge Whale infront of vehicle", "Spawns a Huge Whale infront of player so the player would hit it", function() spawn_ped_infront_of_player(g_util.get_selected_player(), 1193010354, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Dolhpin infront of vehicle", "Spawns a Dolphin infront of player so the player would hit it", function() spawn_ped_infront_of_player(g_util.get_selected_player(), -1950698411, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Bus infront of vehicle", "Spawns a Bus infront of player so the player would hit it", function() spawn_vehicle_infront_of_player(g_util.get_selected_player(), 2222034228, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Spawn Chernobog infront of vehicle", "Spawns a Chernobog infront of player so the player would hit it", function() spawn_vehicle_infront_of_player(g_util.get_selected_player(), 3602674979, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "------------------- AIR CONTROLS -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "NOTE: DONT SPAM OPTIONS! CAN LEAD TO CRASH", "NOTE: DONT SPAM OPTIONS! CAN LEAD TO CRASH", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Yeet vehicle", "Yeets vehicle to the stratosphere", function() vehicle_nudge(g_util.get_selected_player(), 7) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Forward", "Nuges the players car forward", function() vehicle_nudge(g_util.get_selected_player(), 1) notif_sound()end)
        g_gui.add_button("player_options_vehicle_"..i, "Left", "Nuges the players car left", function() vehicle_nudge(g_util.get_selected_player(), 2) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Right", "Nuges the players car right", function() vehicle_nudge(g_util.get_selected_player(), 3) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Backwards", "Nuges the players car backwards", function() vehicle_nudge(g_util.get_selected_player(), 4) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Up", "Nuges the players car up", function() vehicle_nudge(g_util.get_selected_player(), 5) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Down", "Nuges the players car down", function() vehicle_nudge(g_util.get_selected_player(), 6) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Forward Left", "Nuges the players car forward left", function() vehicle_nudge(g_util.get_selected_player(), 8) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Forward Right", "Nuges the players car forward right", function() vehicle_nudge(g_util.get_selected_player(), 9) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Backwards Left", "Nuges the players car backwards left", function() vehicle_nudge(g_util.get_selected_player(), 10) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Backwards Right", "Nuges the players car bakcwards right", function() vehicle_nudge(g_util.get_selected_player(), 11) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Barrel roll left", "Does a barrel roll to the left (DOES NOT WORK WELL WITH BIGGER VEHICLES!)", function() air_acrobatics(g_util.get_selected_player(), 0, 0, 5, 2, 0, 0, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Barrel roll right", "Does a barrel roll to the right (DOES NOT WORK WELL WITH BIGGER VEHICLES!)", function() air_acrobatics(g_util.get_selected_player(), 0, 0, 5, -2, 0, 0, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Backflip", "Does a backflip (DOES NOT WORK WELL WITH BIGGER VEHICLES!)", function() air_acrobatics(g_util.get_selected_player(), 0, 0, 7, 0, 1.8, 0, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Frontflip", "Does a frontflip (DOES NOT WORK WELL WITH BIGGER VEHICLES!)", function() air_acrobatics(g_util.get_selected_player(), 0, 0, 7, 0, -2.5, 0, 0) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "------------------- TIRES -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_toggle("player_options_vehicle_" .. i, "Now This Is Some Tire Poppin'n", function(value) set_tire_popping_players(value, g_util.get_selected_player()) tire_poppin = value  if tire_poppin then write_file("Enabled tire poppin'!") else write_file("Disabled tire poppin'!") end end)
        g_gui.add_button("player_options_vehicle_"..i, "Pop all tyres", "Pops players car's every tyre", function() burst_tyre(9, true) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Pop front left", "Pops players cars front left tyre", function() burst_tyre(0,false) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Pop front right", "Pops players cars front right tyre", function() burst_tyre(1,false) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Pop rear left", "Pops players cars rear left tyre", function() burst_tyre(4, false) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Pop rear right", "Pops player cars rear right tyre", function() burst_tyre(5, false) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "------------------- MISC -------------------", "Just a regular spacer", function() spacer() notif_sound() end)
        g_gui.add_button("player_options_griefing_"..i, "Lester, take the wheel!", "Lester will drive around with the players vehicle", function() lester_control(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Stop helicopter blades", "Will stop helicopter blades", function() notif_sound()
            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                local hash = ENTITY.GET_ENTITY_MODEL(PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player()))
                if STREAMING.IS_MODEL_A_HELI(hash) then
                    notif_sound()
                    local vehicle = PLAYER.GET_PLAYER_VEHICLE(g_util.get_selected_player())
                    VEHICLE.SET_HELI_BLADES_SPEED(vehicle, 0)
                else
                    g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a heli! This can lead to false positives!")
                end
            else
                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle! This can lead to false positives!")
            end
        end)
        g_gui.add_button("player_options_vehicle_"..i, "Make vehicle respawn", "Respawns players car like they just called it in", function()   
            if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                notif_sound()
                g_util.trigger_script_event(g_util.get_selected_player(), {-0x3D33889E, g_util.get_selected_player(), g_util.get_selected_player()})
                g_util.trigger_script_event(g_util.get_selected_player(), {0x2280A552, g_util.get_selected_player(), 4294967295, 4294967295, 4294967295})
            else
                g_gui.add_toast(PLAYER.GET_PLAYER_NAME(g_util.get_selected_player()) .. " is not in a vehicle!")
            end 
        end)
        g_gui.add_input_int("player_options_vehicle_"..i, "Max speed", 0, 0, 99999999, 1, 10, function(int) max_speed = int end)  
        g_gui.add_button("player_options_vehicle_"..i, "Change max speed", "Changes vehicles max speed (Does not work while you are in the vehicle)", function() change_vehicle_max_speed(g_util.get_selected_player(), max_speed) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "Fill vehicle with bitches", "Fills players vehicle with hot bitches", function() fill_player_car(g_util.get_selected_player(), -1244692252) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "BJ driver", "Gives player a blowjob", function() bj_driver(g_util.get_selected_player()) notif_sound() end)
        g_gui.add_input_string("player_options_vehicle_"..i, "Licence plate text", "", function(string) custom_plate_text(g_util.get_selected_player(),string) notif_sound() end)
        g_gui.add_button("player_options_vehicle_"..i, "------------------- ELSE -------------------", "Just a regular spacer", function() spacer() end)
    end
    for i = 0, 31 do
        g_gui.add_button("player_options_friendly_"..i, "Give player Krieger", "Gives player tuned out Krieger car", function() give_vehicle(g_util.get_selected_player(), 3630826055) notif_sound() end)
        g_gui.add_button("player_options_friendly_"..i, "Give player Formula 1", "Gives player tuned out Formula 1 car", function() give_vehicle(g_util.get_selected_player(), 340154634) notif_sound() end)
    end
    for i = 0, 31 do
        g_gui.add_button("player_options_other_" .. i, "Rickroll lobby as player", "Rickrolls lobby as player", function()
            NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), rick_roll, false) notif_sound() write_file("Rickrolled lobby as " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end)
        g_gui.add_button("player_options_other_" .. i, "Scatman lobby as player", "Scatman's lobby as player", function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), scat_man, false) notif_sound() write_file("Scatmanned lobby as " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) end)
        g_gui.add_button("player_options_other_" .. i, "Make the player roast themselves", "Gives out a random roast about the player (including their ip)", function() random_chat_reaction(g_util.get_selected_player()) end)
        g_gui.add_button("player_options_other_" .. i, "Make the player Fortnite-Balls the session", "Makes the player Fortnite balls the session", function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), fortnite_balls, false) write_file("Fortnire-Balled lobby as " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) notif_sound() end)
        g_gui.add_button("player_options_other_" .. i, "Make the player tell their secret to the session", "Makes the player tell their secret to the session", function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), "I jerk off to Doja Cat", false) write_file("Told secret of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) notif_sound() end)
        g_gui.add_button("player_options_other_" .. i, "Make the player tell their IP to the lobby", "Makes them tell out their IP to the chat", function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), "My IP is: " .. get_ip_as_string(g_util.get_selected_player()) .. " and im waiting for a hot femboy to come!", false) write_file("Told  real IP of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) notif_sound() end)
        g_gui.add_button("player_options_other_" .. i, "Make the player tell a random IP to the lobby as theirs", "Makes them tell out a fake IP to the chat", function() NETWORK.SEND_CHAT_MESSAGE_AS(g_util.get_selected_player(), "My IP is: " .. math.random(0, 255).."."..math.random(0, 255).."."..math.random(0, 255).."."..math.random(0, 255) .. " and im waiting for a hot femboy to come!", false) write_file("Told fake IP of " .. PLAYER.GET_PLAYER_NAME(g_util.get_selected_player())) notif_sound() end)
    end
    for i = 0, 31 do
        g_gui.add_button("player_options_other_" .. i, "Baritone sax", "Plays baritone sax sound", function()
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Horn",PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_Apt_Yacht_Ambient_Soundset", true, 1)
            write_file("Played sound: Baritone sax")
            notif_sound()
        end)  
        g_gui.add_button("player_options_other_" .. i, "Camera shutter", "Plays camera shutter sound", function()
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SHUTTER_FLASH", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAMERA_FLASH_SOUNDSET", true, 1)
            write_file("Played sound: Camera shutter")
            notif_sound()
        end) 
        g_gui.add_button("player_options_other_" .. i, "Walkie-Talkie", "Plays walkie-talkie sound", function()
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Start_Squelch", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CB_RADIO_SFX", true, 1)
            write_file("Played sound: Walkie-Talkie")
            notif_sound()
        end)
        g_gui.add_button("player_options_other_" .. i, "Red beep", "Plays red beep sound", function()
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beep_Red", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_HACKING_SNAKE_SOUNDS", true, 1)
            write_file("Played sound: Red beep")
            notif_sound()
        end)
        g_gui.add_button("player_options_other_" .. i, "Air defences off", "Plays air defence off sound", function()
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Air_Defenses_Disabled", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_sum20_Business_Battle_AC_Sounds", true, 1)
            write_file("Played sound: Air defences off")
            notif_sound()
        end)
        g_gui.add_button("player_options_other_" .. i, "Metal detector 1", "Plays detector 1 sound", function()
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Metal_Detector_Small_Guns", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "dlc_ch_heist_finale_security_alarms_sounds", true, 1)
            write_file("Played sound: Metal detector 1")
            notif_sound()
        end)
        g_gui.add_button("player_options_other_" .. i, "Metal detector 2", "Plays detector 2 sound", function()
            AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Metal_Detector_Big_Guns", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "dlc_ch_heist_finale_security_alarms_sounds", true, 1)
            write_file("Played sound: Metal detector 2")
            notif_sound()
        end)
    end
    g_gui.add_button("settings_general", "Open log file",  function()
        notif_sound()
        os.execute("Start " .. log_file) 
    end)
    g_gui.add_button("session_general", "Kosatka everyone", function() spawn_on_everyone(1336872304) g_gui.add_toast("Kosatkad everyone") write_file("Kosatkad everyone") notif_sound() end)
    g_gui.add_button("settings_general", "Clear log file", function() local f = io.open(log_file, "w") f:close() write_file("Cleared log file!") g_gui.add_toast("Cleared log file!") notif_sound() end)
end

function clear_p()
    local ped_amount = POOL.GET_PED_COUNT()
    for i = 0 ,ped_amount do
        local ped = POOL.GET_PED_AT_INDEX(i)
        if not PED.IS_PED_A_PLAYER(ped) then
            if ENTITY.DOES_ENTITY_EXIST(ped) then
                request_control(ped)
                delete_ent(ped)   
            end
        end
    end
end

function clear_v()
    local veh_amount = POOL.GET_VEHICLE_COUNT()
    for i = 0 ,veh_amount do
        local veh = POOL.GET_VEHICLE_AT_INDEX(i)
        if ENTITY.DOES_ENTITY_EXIST(veh) then
            request_control(veh)
            delete_ent(veh)
        end
    end
end

function display_splash_screen()
    script_loaded = false
    g_gui.add_toast("Please wait for the script to initialize!")
    AUDIO.PLAY_SOUND_FRONTEND(-1, "Object_Dropped_Remote", "GTAO_FM_Events_Soundset", true)
    g_logger.log_info("██   ██  █████   ██████ ███    ███  █████    ██████")
    g_logger.log_info("██  ██  ██   ██ ██      ████  ████ ██    ██ ██     ")
    g_logger.log_info("█████   ██   ██  █████  ██ ████ ██ ██    ██  █████ ")
    g_logger.log_info("██  ██  ██   ██      ██ ██  ██  ██ ██    ██      ██")
    g_logger.log_info("██   ██  █████  ██████  ██      ██  █████   ██████ ")
    check_log_file()
    for i = 0, 170 do
        local scaleform = GRAPHICS.REQUEST_SCALEFORM_MOVIE("mp_big_message_freemode")
        while not GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(scaleform) do 
            g_util.yield()
        end
        GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
        GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleform, 255, 255, 255, 255, 0)
        GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING("Welcome ~g~".. PLAYER.GET_PLAYER_NAME(PLAYER.PLAYER_ID()))
        GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING("to ~r~KOSMOS Trolling\n\n~s~" .. ver .. "by ~p~b0nglover420")
        GRAPHICS.END_SCALEFORM_MOVIE_METHOD(scaleform, 255, 255, 255, 255, 0)
        g_util.yield()
    end
    g_gui.add_button("misc_lua", "Before unload", "Click this before unloading the LUA!", function()
        for i = 1, #all_hashes do
            local hash = all_hashes[i]
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
        end
    end)
    g_gui.add_toggle("settings_general", "Disable sound", "Disabled sound reactions", function(bool) notif_sound() disable_sound_notifications = bool write_file("Disabled sound reactions") end)
    g_gui.add_toast("Script initialized! Have fun!")
    AUDIO.PLAY_SOUND_FRONTEND(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", true)  
    g_gui.add_toast("I cannot stress this enough, DONT FUCKING SPAM THE BUTTONS!")
    g_hooking.register_D3D_hook(imgui_selection)
    script_loaded = true
end

display_splash_screen()

while g_isRunning do
    if script_loaded then

        if NETWORK.IS_SESSION_STARTED() then
            if not PLAYER.IS_PLAYER_SCRIPT_HOST(PLAYER.PLAYER_ID()) then
                NETWORK.MIGRATE_SCRIPT_HOST()
                PLAYER.GET_SCRIPT_HOST()
            end
        end
        
        if rain_animals_bool then
            for i = 0, 31 do
                local value = rain_animals_players[i]
                if value then
                    rain_animals(i)
                end
            end
        end
        
        if rain_cats_and_dogs_bool then
            for i = 0, 31 do
                local value = rain_cats_and_dogs_players[i]
                if value then
                    rain_cats_and_dogs(i)
                end
            end
        end

        if rain_faggios_bool then
            for i = 0, 31 do
                local value = rain_faggios_players[i]
                if value then
                    rain_faggio(i)
                end
            end
        end

        if rain_bitches_bool then
            for i = 0, 31 do
                local value = rain_bitches_players[i]
                if value then
                    rain_bitches(i)
                end
            end
        end

        if rain_porta_bool then
            for i = 0, 31 do
                local value = rain_porta_players[i]
                if value then
                    rain_porta(i)
                end
            end
        end

        if rain_random_bool then
            for i = 0, 31 do
                local value = rain_random_players[i]
                if value then
                    rain_random(i)
                end
            end
        end

        if rain_shit_bool then
            for i = 0, 31 do
                local value = rain_shit_players[i]
                if value then
                    rain_shit(i)
                end
            end
        end

        if disable_god then
            for i = 0, 31 do
                local value = remove_god_players[i]
                if value then
                    remove_god(i)
                end
            end
        end

        if loop_tp then
            for i = 0, 31 do
                local value = loop_tp_players[i]
                if value then
                    tp_to_player(i)
                end
            end
        end

        if tire_poppin then
            for i = 0, 31 do
                local value = tire_popping_players[i]
                if value then
                    now_this_is_tire_popping(i)
                end
            end
        end

        local ped_pool_amount = POOL.GET_PED_COUNT()
        if ped_pool_amount > 170 then
            clear_p()
            g_gui.add_toast("Cleared ped pool, otherwise you cannot spawn more peds in!")
            write_file("Cleared ped pool")
        end

        local veh_pool_amount = POOL.GET_VEHICLE_COUNT()
        if veh_pool_amount > 230 then
            clear_v()
            g_gui.add_toast("Cleared vehicle pool, otherwise you cannot spawn more vehicles in!")
            write_file("Cleared veh pool")
        end

    end
    g_util.yield(300)
    refresh_data()
end

g_lua.unregister()