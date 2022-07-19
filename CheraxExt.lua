-- Variables
local PlayerChar = STATS.STAT_GET_INT(g_util.joaat("MPPLY_LAST_MP_CHAR"));
local PlayerPed =  PLAYER.GET_PLAYER_PED(PLAYER.PLAYER_ID());
local root = MISC.GET_APPDATA_PATH("Cherax", "Lua")
FACE = 0;
HEAD = 1;
HAIR = 2;
TORSO = 3;
LEGS = 4;
HANDS = 5;
FEET = 6;
EYES = 7;
ACCESSORIES = 8;
ARMOR = 9;
DECAL = 10;
TORSO2 = 11;
HATS = 0;
GLASSES = 1;
EARS = 2;
WATCHES = 6;
BRACELETS = 7;


-- Functions

function delet_entity(j)
    entitypointer = g_memory.allocate(24)
    g_memory.write_int(entitypointer, j)
    bool = ENTITY.DELETE_ENTITY(entitypointer)
    g_memory.free(entitypointer)
    return bool
end

--[[
function ROTATION_TO_DIRECTION(rotation) 
	local adjusted_rotation = { 
		x = (g_math.pi / 180) * rotation.x, 
		y = (g_math.pi / 180) * rotation.y, 
		z = (g_math.pi / 180) * rotation.z 
	}
	local direction = {
		x = -g_g_math.sin(adjusted_rotation.z) * g_math.abs(g_math.cos(adjusted_rotation.x)), 
		y =  g_g_math.cos(adjusted_rotation.z) * g_math.abs(g_math.cos(adjusted_rotation.x)), 
		z =  g_g_math.sin(adjusted_rotation.x)
	}
	return direction
end 

function RAYCAST_GAMEPLAY_CAM(distance, flag)
	local ptr1, ptr2, ptr3, ptr4 = g_memory.allocate(), g_memory.allocate(), g_memory.allocate(), g_memory.allocate()
	local cam_rot = CAM.GET_GAMEPLAY_CAM_ROT(0)
	local cam_pos = CAM.GET_GAMEPLAY_CAM_COORD()
	local direction = ROTATION_TO_DIRECTION(cam_rot)
	local destination = { 
		x = cam_pos.x + direction.x * distance, 
		y = cam_pos.y + direction.y * distance, 
		z = cam_pos.z + direction.z * distance 
	}
	WORLDPROBE.GET_SHAPE_TEST_RESULT(
		WORLDPROBE.START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE(
			cam_pos.x, 
			cam_pos.y, 
			cam_pos.z, 
			destination.x, 
			destination.y, 
			destination.z, 
			flag or -1, 
			-1, 
			1
		), ptr1, ptr2, ptr3, ptr4
	)
	local hit, coords, nsurface, entity = g_memory.read_byte(ptr1), g_memory.read_vector3(ptr2), g_memory.read_vector3(ptr3), g_memory.read_int(ptr4)
	g_memory.free(ptr1); g_memory.free(ptr2); g_memory.free(ptr3); g_memory.free(ptr4)
	return hit, coords, nsurface, entity
end --]]


function DEBUG_GET_PLAYER_COORDINATES()
    local pos = PLAYER.GET_PLAYER_COORDS(PLAYER.PLAYER_ID())
    g_logger.log_info("Pos of Player is "..pos.x.." :x "..pos.y.." :y "..pos.z.." :z ")
end

 function requestControl(ent)
    local check_time = g_os.time_ms(1000)
    NETWORK.REQUEST_CONTROL_OF_ENTITY(ent)
    while not NETWORK.HAS_CONTROL_OF_ENTITY(ent) and check_time > g_os.time_ms() do
        g_util.yield(0)
    end 
    return NETWORK.HAS_CONTROL_OF_ENTITY(ent)
end
----------------------------------------------
--function requestControl(entity)
   -- netId = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(entity)
  --  NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netId, true)
  --  NETWORK.REQUEST_CONTROL_OF_ENTITY(entity)
   -- while not NETWORK.HAS_CONTROL_OF_ENTITY(entity) do 
   -- g_util.yield(1)
   -- end
--end
-----------------------------------------------------
function teleportPlayer(x,y,z)
    Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
    vehicle = PED.GET_VEHICLE_PED_IS_IN(Playerped, true)
    if PED.IS_PED_IN_ANY_VEHICLE(Playerped) then
        requestControl(vehicle)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(vehicle,x,y,z)
    else
        g_gui.add_toast("The player is not in a vehicle.", 2000)
    end
end

function addBlip(entity, blipSprite, colour)
    local blip_ptr = g_memory.allocate(4)
    local blip = UI.ADD_BLIP_FOR_ENTITY(entity)
    g_memory.write_int(blip_ptr, blip)
    UI.SET_BLIP_SPRITE(blip, blipSprite)
    UI.SET_BLIP_COLOUR(blip, colour)
    --UI.SHOW_HEIGHT_ON_BLIP(blip, false)
    --UI.SET_BLIP_ROTATION(blip, ENTITY.GET_ENTITY_HEADING(entity))

    local netId = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(entity)
    --UI.SET_BLIP_ROTATION(blip, ENTITY.GET_ENTITY_HEADING(entity))
    --UI.SET_BLIP_DISPLAY(blip, 0)
    g_memory.free(blip_ptr)
end


function ShootBullet(pid, weaponID, damage) 
   -- local user_ped = PLAYER.PLAYER_PED_ID()
    local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local target = PED.GET_PED_BONE_COORDS(player_ped, 0xe0fd, 0.4, 0, 0)
    local cam_pos = CAM.GET_GAMEPLAY_CAM_COORD()
    local weapon_hash = g_util.joaat(weaponID)
    GAMEPLAY.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(cam_pos.x, cam_pos.y, cam_pos.z, target.x , target.y, target.z, damage, false, weapon_hash, player_ped, true, false, -1.0)
end

function SendAttacker(hash, weapon)
    STREAMING.REQUEST_MODEL(hash)
    local Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
    local coords = ENTITY.GET_ENTITY_COORDS(Playerped)
    local heading = ENTITY.GET_ENTITY_HEADING(Playerped)
    local attacker =  PED.CREATE_PED(1, hash, coords.x, coords.y+-10, coords.z, heading, true, false)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 5, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 46, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 1, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 1424, true)
    WEAPON.GIVE_DELAYED_WEAPON_TO_PED(attacker, weapon, 1000, true)
    TASK.TASK_COMBAT_PED(attacker, Playerped, 0, 16)
    --Godmode
    if GodAttackersTog then
        ENTITY.SET_ENTITY_INVINCIBLE(attacker, true)
    end
   -- STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(hash)
end

function SendAttackerVeh(vehicle)
    STREAMING.REQUEST_MODEL(71929310)
    STREAMING.REQUEST_MODEL(vehicle)

    local Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
    local coords = ENTITY.GET_ENTITY_COORDS(Playerped)
    local heading = ENTITY.GET_ENTITY_HEADING(Playerped)
    local attacker =  PED.CREATE_PED(1, 71929310, coords.x, coords.y+-10, coords.z, heading, true, false)
    local attackerveh = VEHICLE.CREATE_VEHICLE(vehicle, coords.x, coords.y+-10, coords.z, heading, true, false, false)
    PED.SET_PED_INTO_VEHICLE(attacker, attackerveh, -1)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 5, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 46, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 1, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 3, false)
    PED.SET_PED_COMBAT_ATTRIBUTES(attacker, 1424, true)
    TASK.TASK_VEHICLE_SHOOT_AT_PED(attacker, Playerped, 1)
    TASK.TASK_VEHICLE_CHASE(attacker, Playerped)
    TASK.TASK_VEHICLE_MISSION_PED_TARGET(attacker, attackerveh, Playerped, 6, 500.0, 786988, 0.0, 0.0, true)
    if vehicle == g_util.joaat("minitank") then
        TASK.TASK_COMBAT_PED(attacker, Playerped, 0, 16)
        VEHICLE.SET_VEHICLE_MOD(attackerveh, 10, 2, false)
    end
    if vehicle == 782665360 then
        TASK.TASK_COMBAT_PED(attacker, Playerped, 0, 16)
    end
    --addBlip(attackerveh, 646, 4)
    
    --Godmode
    if GodAttackersTog then
        ENTITY.SET_ENTITY_INVINCIBLE(attackerveh, true)
    end
   -- STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(71929310)
--	STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(vehicle)
end

function PlayerJetAttack()
    local Playerped = PLAYER.GET_PLAYER_PED(g_util.get_selected_player())
    local coords = ENTITY.GET_ENTITY_COORDS(Playerped)
    local hash = g_util.joaat("lazer")
    STREAMING.REQUEST_MODEL(-163714847)
    STREAMING.REQUEST_MODEL(hash)

    local heading = ENTITY.GET_ENTITY_HEADING(Playerped)
    local pilot =  PED.CREATE_PED(1, -163714847, coords.x, coords.y, coords.z+500, heading, true, false)
    local jet = VEHICLE.CREATE_VEHICLE(hash, coords.x, coords.y, coords.z+500, heading, true, false, false)
    VEHICLE.CONTROL_LANDING_GEAR(jet, 3)
    VEHICLE.SET_HELI_BLADES_FULL_SPEED(jet)
    VEHICLE.SET_VEHICLE_FORWARD_SPEED(jet, 100)
    PED.SET_PED_INTO_VEHICLE(pilot, jet, -1)
    PED.SET_PED_COMBAT_ATTRIBUTES(pilot, 5, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(pilot, 46, true)
    PED.SET_PED_ACCURACY(pilot, 100)
    PED.SET_PED_COMBAT_ABILITY(pilot, 2)
    TASK.TASK_COMBAT_PED(pilot, Playerped, 0, 16)
    --Godmode
    if GodAttackersTog then
    ENTITY.SET_ENTITY_INVINCIBLE(jet, true)
    end
end

function cagePlayer()
    local ped = PLAYER.GET_PLAYER_PED(g_util.get_selected_player())
    local coords = ENTITY.GET_ENTITY_COORDS(ped)
    local hash = 779277682
    STREAMING.REQUEST_MODEL(hash)
    local cage1 = OBJECT.CREATE_OBJECT(hash, coords.x, coords.y, coords.z-10, true, false, false)
    ENTITY.SET_ENTITY_ROTATION(cage1, 0.0, -90.0, 0.0, 1, true)
    local cage2 = OBJECT.CREATE_OBJECT(hash, coords.x, coords.y, coords.z-10, true, false, false)
    ENTITY.SET_ENTITY_ROTATION(cage2, 0.0, 90.0, 0.0, 1, true)
end

function crushPlayer()
    local ped = PLAYER.GET_PLAYER_PED(g_util.get_selected_player())
    local heading = ENTITY.GET_ENTITY_HEADING(ped)
    local coords = ENTITY.GET_ENTITY_COORDS(ped)
    local hash = 1917016601
    STREAMING.REQUEST_MODEL(hash)
    VEHICLE.CREATE_VEHICLE(hash, coords.x, coords.y, coords.z+20, heading, true, false, false)
end


function Outfit1()
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HEAD, 126, 17, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), TORSO, 102, 3, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), LEGS, 59, 3, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 86, 13, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), FEET, 48, 1, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), BRACELETS, 147, 16, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), ACCESSORIES, 22, 4, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), ARMOR, 28, 3, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), DECAL, 104, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), TORSO2, 128, 3, 2);
    PED.SET_PED_PROP_INDEX(PLAYER.PLAYER_PED_ID(), HATS, 59, 3, true);
    PED.SET_PED_PROP_INDEX(PLAYER.PLAYER_PED_ID(), GLASSES, 0, 0, true);
end

function Outfit2()
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HEAD, 166, 2, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), TORSO, 102, 5, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), LEGS, 59, 5, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82, 1, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), FEET, 4, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), BRACELETS, 0, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), ACCESSORIES, 130, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), ARMOR, 0, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), DECAL, 108, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), TORSO2, 143, 5, 2);
    PED.SET_PED_PROP_INDEX(PLAYER.PLAYER_PED_ID(), HATS, 59, 5, true);
    PED.SET_PED_PROP_INDEX(PLAYER.PLAYER_PED_ID(), GLASSES, 0, 0, true);
end

function Outfit3()
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HEAD, 180, 8, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), TORSO, 164, 8, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), LEGS, 108, 8, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 0, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), FEET, 47, 9, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), BRACELETS, 150, 4, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), ACCESSORIES, 151, 1, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), ARMOR, 0, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), DECAL, 106, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), TORSO2, 128, 1, 2);
    PED.SET_PED_PROP_INDEX(PLAYER.PLAYER_PED_ID(), HATS, 8, 0, true);
    PED.SET_PED_PROP_INDEX(PLAYER.PLAYER_PED_ID(), GLASSES, 0, 0, true);
end

function Outfit4()
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HEAD, 179, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), TORSO, 110, 3, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), LEGS, 59, 9, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), HANDS, 82, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), FEET, 64, 9, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), BRACELETS, 112, 2, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), ACCESSORIES, 137, 1, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), ARMOR, 16, 2, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), DECAL, 11, 0, 2);
    PED.SET_PED_COMPONENT_VARIATION(PLAYER.PLAYER_PED_ID(), TORSO2, 178, 0, 2);
    PED.SET_PED_PROP_INDEX(PLAYER.PLAYER_PED_ID(), HATS, 39, 0, true);
    PED.SET_PED_PROP_INDEX(PLAYER.PLAYER_PED_ID(), GLASSES, 0, 0, true);

end

function vehicleFly(value)
    g_gui.add_toast("W: Forward / A: Rotate Left / D: Rotate Right / S: Stop / Space: Up / Shift: Nose Down / Ctrl: Nose Up", 10000)
    vehicleFlyTog = value
end

function UndeadRadar(value)
    UndeadRadarTog = value
end

function VehicleSpeed(value)
    VehicleSpeedTog = value
end

function VehicleBrake(value)
    VehicleBrakeTog = value
end

function VehicleDrift(value)
    VehicleDriftTog = value
end

function VehicleCollison(value)
    VehicleCollisionTog = value
end

function VehicleLockOn(value)
    VehicleLockOnTog = value
end

function GodAttackers(value)
    GodAttackersTog = value
end

function attachSelf(value)
    attachSelfTog = value
end

function debugGun(value)
    debugGunTog = value
end

function explosiveAmmo(value)
    explosiveAmmoTog = value
end

function PlayerVehSpeedSuper()
    local Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(Playerped, false)
    requestControl(vehicle)
        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 200)
end

function PlayerVehSpeedSlow()
    local Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(Playerped, true)
    requestControl(vehicle)
        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, -10000000)
end

function PlayerVehSpeedReset()
    local Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(Playerped, true)
    requestControl(vehicle)
        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 1)
end

function LaunchVeh()
    local Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(Playerped, true)
        requestControl(vehicle)
        ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, 0, 0, 10000, true, false, true, false)
end

--Misc
function silvester_above_waypoint(on)
    local blip = UI.GET_FIRST_BLIP_INFO_ID(8)
	if UI.DOES_BLIP_EXIST(blip) then
		local pos = UI.GET_BLIP_INFO_ID_COORD(blip)
        makefireworks = on
        while makefireworks do
            g_util.yield(100)
            summonfireworkfromabove(pos,PLAYER.PLAYER_PED_ID())
        end
    end
end
function summonfireworkfromabove(pos,ped)
    GAMEPLAY.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(pos.x,pos.y,pos.z + 50, pos.x, pos.y, pos.z + 1, 1000, false, 2138347493, ped , true, false, 10)
end
function autodrive(value)
    autodrivetog = value
end
--Auto Drive
function driveWaypoint() 
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, false)
     blip = UI.GET_FIRST_BLIP_INFO_ID(8)
	if UI.DOES_BLIP_EXIST(blip) then
		local Cor = UI.GET_BLIP_INFO_ID_COORD(blip)
        TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(PlayerPed, vehicle, Cor.x, Cor.y, Cor.z, 100, 1074528293, 5)
        waypointcheck = true
    else
        g_gui.add_toast("Set a waypoint first!", 3000)
    end
end


function nearbyPedsattack()
    local amount = POOL.GET_PED_COUNT()
        for i=0,amount do
            ped = POOL.GET_PED_AT_INDEX(i)
        end
        local Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
        PED.SET_PED_COMBAT_ATTRIBUTES(ped, 5, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(ped, ped, true)
        WEAPON.GIVE_DELAYED_WEAPON_TO_PED(ped, 71929310, 1000, true)
        TASK.TASK_COMBAT_PED(ped, Playerped, 0, 16)
end

function nearbyVehiclesattack()
    local Playerped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
    local amount = POOL.GET_PED_COUNT()
        for i=0,amount do
          ped = POOL.GET_PED_AT_INDEX(i)
        end
        if PED.IS_PED_IN_ANY_VEHICLE(ped) then
            pedVeh = PED.GET_VEHICLE_PED_IS_IN(ped, false)
            TASK.TASK_VEHICLE_MISSION_PED_TARGET(ped, pedVeh, Playerped, 6, 500.0, 786988, 0.0, 0.0, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 5, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, ped, true)
        end

end

function vehf1wheels()
    local vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, false)
    VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 10)
    VEHICLE.SET_VEHICLE_MOD(vehicle, 23, 1, true)
end


--Initializing and Hook
g_util.play_wav_file(root.."/resources/bruh.wav", false, false)
g_gui.add_toast("Created by XeTrinityz & timtom2016", 10000)
g_gui.add_toast("Welcome, ".. PLAYER.GET_PLAYER_NAME(PLAYER.PLAYER_ID()) .. " to Cherax Extension", 10000)
function myD3DHook()
    if  g_gui.is_open() then
        g_imgui.set_next_window_size(vec2(250, 500))
        if  g_imgui.begin_window("Cherax Extension", ImGuiWindowFlags_NoResize) then
            g_imgui.begin_child("mod_menu", vec2(), true)

            -- Self Options
            g_imgui.add_text("Self Options")
            g_imgui.add_text("-----------------------")
            if  g_imgui.begin_menu("Wardrobe", true) then
                g_imgui.add_button("Pink Adv Outfit (M)", vec2(300, 20), function() Outfit1() end)
                g_imgui.add_button("Blue Adv Outfit (M)", vec2(300, 20), function () Outfit2() end)
                g_imgui.add_button("Orange Alien Outfit (M)", vec2(300, 20), function() Outfit3() end)
                g_imgui.add_button("Yellow Tron Outfit (M)", vec2(300, 20), function() Outfit4() end)
                g_imgui.end_menu() 
            end
            if  g_imgui.begin_menu("Weapon Options", true) then
                if  g_imgui.begin_menu("Bullet Impacts", true) then
                    --g_imgui.add_checkbox("Molotov", GodAttackers)
                   -- g_imgui.add_checkbox("Explode", explosiveAmmo)
                    g_imgui.end_menu() 
                end
                g_imgui.end_menu() -- Weapon Options End
            end
            g_imgui.add_checkbox("Undead OTR", UndeadRadar)
            g_imgui.add_text("")
            g_imgui.separator() -- Self Options End

            -- Selected Player Options
            g_imgui.add_text("Selected Player Options")
            g_imgui.add_text("-----------------------")
            if  g_imgui.begin_menu("Player Options", true) then

                g_imgui.end_menu() 
            end
            if  g_imgui.begin_menu("Weapon Options ", true) then
               -- g_imgui.add_checkbox("Explosive Ammo", explosiveAmmo)
                g_imgui.end_menu()
            end
            if  g_imgui.begin_menu("Teleport Options ", true) then
                g_imgui.add_button("Send To Mt Chilliad", vec2(300, 20), function() teleportPlayer(449,5577,810) end)
                g_imgui.add_button("Send To Prison", vec2(300, 20), function() teleportPlayer(1690.8020019531,2606.6398925781,45.564846038818) end)
                g_imgui.add_button("Send To The Ocean", vec2(300, 20), function() teleportPlayer(-1605.5112304688,7769.9912109375,-0.67035019397736) end)
                g_imgui.end_menu()
            end
            if  g_imgui.begin_menu("Trolling Options", true) then
                if  g_imgui.begin_menu("NPC Attackers", true) then
                    g_imgui.add_button("Send Jet Attacker", vec2(300, 20), PlayerJetAttack)
                    g_imgui.add_button("Send Clown Attacker", vec2(300, 20), function() SendAttacker(71929310, 2144741730) end)
                    g_imgui.add_button("Send Jesus Attacker", vec2(300, 20), function() SendAttacker(-835930287, g_util.joaat("WEAPON_RAILGUN")) end)
                    g_imgui.add_button("Send Chop Attacker", vec2(300, 20), function() SendAttacker(-1788665315, 0) end)
                    g_imgui.add_button("Send Tank Attacker", vec2(300, 20), function() SendAttackerVeh(782665360) end)
                    g_imgui.add_checkbox("Godmode Attackers", GodAttackers)
                    g_imgui.end_menu()  -- Attackers Options End
                end
                if  g_imgui.begin_menu("Funny Attackers", true) then
                    g_imgui.add_button("Send Bandito Attacker", vec2(300, 20), function() SendAttackerVeh(g_util.joaat("rcbandito")) end)
                    g_imgui.add_button("Send RC Tank Attacker", vec2(300, 20), function() SendAttackerVeh(g_util.joaat("minitank")) end)
                    g_imgui.add_button("Go-Kart", vec2(300, 20), function() SendAttackerVeh(g_util.joaat("veto2")) end)

                    g_imgui.add_checkbox("Godmode Attackers", GodAttackers)
                    g_imgui.end_menu()  -- RC Attackers Options End
                end
                if  g_imgui.begin_menu("Sound Trolling", true) then
                    g_imgui.add_button("Baritone Saxophone",vec2(300, 20),function ()
                        AUDIO.PLAY_SOUND_FROM_ENTITY(-1,"Horn",PLAYER.GET_PLAYER_PED(g_util.get_selected_player()),"DLC_Apt_Yacht_Ambient_Soundset",true,0)
                    end)
                    g_imgui.add_button("Camera Shutter",vec2(300,20),function ()
                        AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "SHUTTER_FLASH", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CAMERA_FLASH_SOUNDSET",true,0)
                    end)
                    g_imgui.add_button("Walkie-Talkie",vec2(300,20),function ()
                        AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Start_Squelch", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "CB_RADIO_SFX",true,0)
                    end)
                    g_imgui.add_button("Fast Beeping",vec2(300,20),function ()
                        AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Beep_Red", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_HEIST_HACKING_SNAKE_SOUNDS",true,0)
                    end)
                    g_imgui.add_button("Air Defenses Off",vec2(300,20),function ()
                        AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Air_Defenses_Disabled", PLAYER.GET_PLAYER_PED(g_util.get_selected_player()), "DLC_sum20_Business_Battle_AC_Sounds",true,0)
                    end)
                    g_imgui.end_menu()  -- Sound Options End
                end
                if  g_imgui.begin_menu("Explosions", true) then
                    g_imgui.add_button("Fire Jet",vec2(300,20),function ()
                        FIRE.ADD_EXPLOSION(PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).x,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).y,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).z,12,100,true,false,0,false)
                    end)
                    g_imgui.add_button("Water Jet",vec2(300,20),function ()
                        FIRE.ADD_EXPLOSION(PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).x,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).y,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).z,13,100,true,false,0,false)
                    end)
                    g_imgui.add_button("Steam Jet",vec2(300,20),function ()
                        FIRE.ADD_EXPLOSION(PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).x,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).y,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).z,11,100,true,false,0,false)
                    end)
                    g_imgui.add_button("Extinguisher Jet",vec2(300,20),function ()
                        FIRE.ADD_EXPLOSION(PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).x,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).y,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).z,24,100,true,false,0,false)
                    end)
                    g_imgui.add_checkbox("Fire Loop",function (on)
                        local Player = g_util.get_selected_player()
                        while on do
                            FIRE.ADD_EXPLOSION(PLAYER.GET_PLAYER_COORDS(Player).x,PLAYER.GET_PLAYER_COORDS(Player).y,PLAYER.GET_PLAYER_COORDS(Player).z-1,12,100,true,false,0,false)
                            g_util.yield(10)
                        end
                    end)
                    g_imgui.add_checkbox("Water Loop",function (on)
                        local Player = g_util.get_selected_player()
                        while on do
                            FIRE.ADD_EXPLOSION(PLAYER.GET_PLAYER_COORDS(Player).x,PLAYER.GET_PLAYER_COORDS(Player).y,PLAYER.GET_PLAYER_COORDS(Player).z-1,13,100,true,false,0,false)
                            g_util.yield(10)
                        end
                    end)
                    g_imgui.add_checkbox("Steam Loop",function (on)
                        local Player = g_util.get_selected_player()
                        while on do
                            FIRE.ADD_EXPLOSION(PLAYER.GET_PLAYER_COORDS(Player).x,PLAYER.GET_PLAYER_COORDS(Player).y,PLAYER.GET_PLAYER_COORDS(Player).z-1,11,100,true,false,0,false)
                            g_util.yield(10)
                        end
                    end)
                    g_imgui.end_menu()  -- Exp Options End
                end
                if g_imgui.begin_menu("Attach Options",true) then
                    g_imgui.add_checkbox("Attach To Player", attachSelf)
                    g_imgui.end_menu()
                end
                g_imgui.add_button("Shoot Sniper", vec2(300, 20), function() ShootBullet(g_util.get_selected_player(), 'weapon_heavysniper', 100) end)
                g_imgui.add_button("Shoot Stun Gun", vec2(300, 20), function() ShootBullet(g_util.get_selected_player(), 'weapon_stungun', 0) end)
                g_imgui.add_button("Cage Player", vec2(300, 20), function() cagePlayer() end)
                g_imgui.add_button("Crush Player", vec2(300, 20), function() crushPlayer() end)
                g_imgui.end_menu()  -- Trolling Options End
            end
            if  g_imgui.begin_menu("Vehicle Options", true) then
                g_imgui.add_button("Super Vehicle Speed", vec2(300, 20), PlayerVehSpeedSuper)
                g_imgui.add_button("Slow Vehicle Speed", vec2(300, 20), PlayerVehSpeedSlow)
                g_imgui.add_button("Reset Vehicle Speed", vec2(300, 20), PlayerVehSpeedReset)
                g_imgui.add_button("Launch Vehicle", vec2(300, 20), LaunchVeh)
                g_imgui.add_button("Slippery Road",vec2(300,20),function ()
                    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                        FIRE.ADD_EXPLOSION(PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).x,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).y,PLAYER.GET_PLAYER_COORDS(g_util.get_selected_player()).z,67,100,true,false,0,false)
                    else
                        g_gui.add_toast("Player needs to be in a Vehicle to make the Road Slippery",2000)
                    end
                end)
                g_imgui.add_button("Set Vehicle on Fire",vec2(300,20),function ()
                    if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(g_util.get_selected_player()) then
                        local veh = PED.GET_VEHICLE_PED_IS_USING(PLAYER.GET_PLAYER_PED(g_util.get_selected_player()))
                        VEHICLE.SET_VEHICLE_ENGINE_HEALTH(veh,-100)
                    else
                        g_gui.add_toast("Player needs to be in a Vehicle to set his Vehicle on Fire",2000)
                    end
                end)
                g_imgui.add_checkbox("Vehicle Kick loop",function (on)
                    local Player = g_util.get_selected_player()
                    while on do
                        if PLAYER.IS_PLAYER_IN_ANY_VEHICLE(Player) then
                            local ped = PLAYER.GET_PLAYER_PED(Player)
                            PED.CLEAR_PED_TASKS_IMMEDIATELY(ped)
                        else
                            g_gui.add_toast("Player needs to be in a Vehicle to kick him out of it",1000)
                        end
                        g_util.yield(5000)
                    end
                end)
                g_imgui.end_menu()  --Vehicle Options End
            end
            g_imgui.add_text("")
            g_imgui.separator() -- Selected Player Options End

            -- Vehicle Options
            g_imgui.add_text("Vehicle Options")
            g_imgui.add_text("-----------------------")
            g_imgui.add_checkbox("Super Speed", VehicleSpeed)
            g_imgui.add_checkbox("Super Brake [Space]", VehicleBrake)
            g_imgui.add_checkbox("Vehicle Drift [Shift]", VehicleDrift)
            g_imgui.add_checkbox("No Collision", VehicleCollison)
            g_imgui.add_checkbox("Disable Lock-On", VehicleLockOn)
            g_imgui.add_checkbox("Vehicle Fly", vehicleFly)
            g_imgui.add_button("Set F1 Wheels",vec2(220, 20),vehf1wheels)
            g_imgui.add_text("")
            g_imgui.separator() -- Vehicle Options End

            -- Misc Options
            g_imgui.add_text("Misc Options")
            g_imgui.add_text("-----------------------")
            if  g_imgui.begin_menu("Auto-Drive", true) then
                g_imgui.add_button("Drive To Waypoint", vec2(300, 20), driveWaypoint)
                g_imgui.end_menu()  -- Auto-Drive Options End
            end
            if  g_imgui.begin_menu("Fun", true) then
                g_imgui.add_checkbox("Summon Firework at Waypoint", function(on) silvester_above_waypoint(on) end)
                g_imgui.end_menu()
            end
            if  g_imgui.begin_menu("Debug", true) then
                g_imgui.add_button("Get Coords",vec2(300, 20),DEBUG_GET_PLAYER_COORDINATES)
                g_imgui.add_checkbox("Info Gun", debugGun)
                g_imgui.end_menu()
            end
            g_imgui.add_text("")
            g_imgui.separator() -- Misc Options End
            g_imgui.end_child()
            g_imgui.end_window() -- Mod Menu End
        end
    end
end




g_lua.register()
g_hooking.register_D3D_hook(myD3DHook)

while g_isRunning do
    if waypointcheck then
        if not UI.DOES_BLIP_EXIST(blip) then
        local vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, false)
        VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, 0)
        PED.CLEAR_PED_TASKS_IMMEDIATELY(PlayerPed)
        g_gui.add_toast("Destination Reached.",5000)
        waypointcheck = false
        end
    end
    if vehicleFlyTog then
        local vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, false)
        local c = ENTITY.GET_ENTITY_ROTATION(vehicle, 2)
        if PED.IS_PED_IN_ANY_VEHICLE(PlayerPed) then
        if CONTROL.IS_CONTROL_PRESSED(87, 87) then
        VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, 50)
        end
        if CONTROL.IS_CONTROL_PRESSED(1, 34) then
            ENTITY.SET_ENTITY_ROTATION(vehicle,c.x, c.y, c.z+5, 2, true)
        end
        if CONTROL.IS_CONTROL_PRESSED(1, 30) then
            ENTITY.SET_ENTITY_ROTATION(vehicle, c.x, c.y, c.z+-5, 2, true)
        end
        if CONTROL.IS_CONTROL_PRESSED(22, 22) then
            ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(vehicle, 1, 0, 0, 100, true, false, true, false)
        end
        if CONTROL.IS_CONTROL_PRESSED(8, 8) then
            VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, 0)
        end
    end
    end
    if explosiveAmmoTog then
        local Playerped =  PLAYER.GET_PLAYER_PED(PLAYER.PLAYER_PED_ID())
         coords =  PED.GET_PED_LAST_WEAPON_IMPACT(Playerped)
      -- FIRE.ADD_OWNED_EXPLOSION(Playerped, v3(coords.x, coords.y, coords.z) ,1,20,true,false,false)
       g_logger.log_info("Cum "..tostring(coords.x ..coords.y ..coords.z))
    end

    if attachSelfTog then
         Playerped1 =  PLAYER.GET_PLAYER_PED(PLAYER.PLAYER_ID())
         Playerped2 = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(g_util.get_selected_player())
        ENTITY.ATTACH_ENTITY_TO_ENTITY(Playerped1, Playerped2,  0, 0.0, -0.20, 2.00, 1.0, 1.0,1, true, true, true, false, 0, true)

    else
        Playerped1 =  PLAYER.GET_PLAYER_PED(PLAYER.PLAYER_ID())
        ENTITY.DETACH_ENTITY(Playerped1, false, false)
    end
    if UndeadRadarTog then
        local PlayerPed =  PLAYER.GET_PLAYER_PED(PLAYER.PLAYER_ID());
        local defaulthp = ENTITY.GET_ENTITY_MAX_HEALTH(PlayerPed)
        ENTITY.SET_ENTITY_MAX_HEALTH(PlayerPed, 0)
        while UndeadRadarTog do
            PlayerPed =  PLAYER.GET_PLAYER_PED(PLAYER.PLAYER_ID());
            if ENTITY.GET_ENTITY_MAX_HEALTH(PlayerPed) ~= 0 then
                ENTITY.SET_ENTITY_MAX_HEALTH(PlayerPed, 0)
            end
            g_util.yield(100)
            ENTITY.SET_ENTITY_MAX_HEALTH(PlayerPed, defaulthp)
        end
    end
    if VehicleSpeedTog then
        vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, true)
        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 125)
    else
        vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, true)
        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(vehicle, 0)
    end

    if VehicleBrakeTog then
        vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, true)
        if CONTROL.IS_CONTROL_PRESSED(22, 22) then
            VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, 0)
        end
    end

    if VehicleDriftTog then
        vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, true)
        if CONTROL.IS_CONTROL_PRESSED(1, 61) then
            VEHICLE.SET_VEHICLE_REDUCE_GRIP(vehicle, true)
        else 
            VEHICLE.SET_VEHICLE_REDUCE_GRIP(vehicle, false)
        end
    end

    if VehicleLockOnTog then
        vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, true)
        VEHICLE.SET_VEHICLE_CAN_BE_LOCKED_ON(vehicle, false, true)
    else
        vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, true)
        VEHICLE.SET_VEHICLE_CAN_BE_LOCKED_ON(vehicle, true, true)
    end

    if VehicleCollisionTog then
        vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, true)
        ENTITY.SET_ENTITY_COLLISION(vehicle, false, true)
    else
        vehicle = PED.GET_VEHICLE_PED_IS_IN(PlayerPed, true)
        ENTITY.SET_ENTITY_COLLISION(vehicle, true, true)
    end

    if debugGunTog then
        local looking_at_entity = PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(PLAYER.PLAYER_ID())
        local model = ENTITY.GET_ENTITY_MODEL(looking_at_entity)
        if looking_at_entity then
            g_logger.log_info("Model: " .. model)

        else
        
        end
    end
    g_util.yield(100)
end
g_lua.unregister()