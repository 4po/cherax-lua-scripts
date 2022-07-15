assetver = 'ver. 1.3.10.'

svoutfits = {
    name = {},
    mask = {},
    masktxt = {},
    hair = {},
    hairtxt = {},
    torso = {},
    torsotxt = {},
    leg = {},
    legtxt = {},
    parachute = {},
    parachutetxt = {},
    shoes = {},
    shoestxt = {},
    accessory = {},
    accessorytxt = {},
    undershirt = {},
    undershirttxt = {},
    kevlar = {},
    kevlartxt = {},
    badge = {},
    badgetxt = {},
    torso2 = {},
    torso2txt = {},
    hat = {},
    hattxt = {},
    glasses = {},
    glassestxt = {},
    ear = {},
    eartxt = {},
    model = {},
}

functions = {
    "Clear Ped",
    "Respawn At Death Coords",
    "Walk On Water",
    "Smash Ability",
    "Hard Impact",
    "Local Visibility",
    "No Clip+",
    "Demi God Mode",
    "Fast EWO",
    "Sky Dive",
    "Force Current Outfit",
    "Set Bounty All",
    "Infinite Apartment Invite",
    "Trap All",
    "Give All Weapons",
    "Show Invisible Players",
    "Transaction Error",
    "Block Pussive Mode",
    "Bribe Authorities All",
    "Off Radar All",
    "Vehicle Blacklist",
    "Load Weapons",
    "Airstrike Gun",
    "Pick Up Gun",
    "Acceleration Gun",
    "Drive It Gun",
    "FlameThrower",
    "Xmass Tree Gun",
    "Kick Gun",
    "Licence Plate Speedo",
    "Cherax Licence Plate",
    "Auto Flip",
    "Anti Lock On",
    "Vehicle Rapid Fire",
    "Infinite Rocket Boost",
    "Disable Vehicles Spawn",
    "Disable Peds Spawn",
    "Heist Delete Cameras",
    "Launch Up Nearby Vehicles",
    "Launch Up Nearby Peds",
    "Repair Nearby Vehicles",
    "God Mode Nearby Vehicles",
    "Max Acceleration",
    "Horn Havoc",
    "Vehicles Explode On Impact",
    "Hot Traffic",
    "Bouncy Vehicles",
    "Beyblades",
    "Now This Is Some Tire Poppin'",
    "Spammy Doors",
    "Airstrike At Waypoint",
    "Ceo Ban All",
    "Ceo Kick All",
    "Drive Personal Vehicle",
    "TP Personal Vehicle To Self",
    "Copy Position",
    "Insta Exit Vehicle",
    "Drive Last Vehicle",
    "TP To Last Vehicle",
    "Slam Vehicle",
}

chip = nil
flame = nil
onwater = nil
first_message_sender = nil
first_message = nil
second_message = nil
keypress = nil
selectedplayer = ''
info_message = ''
dc_invite = ''
donate_link = ''
vehicle_bl = {}
vehicle_names = {}
animationName = {}
animationDict = {}
var = {}
txtvar = {}
varmax = {}
txtvarmax = {}
propvar = {}
txtpropvar = {}
propvarmax = {}
txtpropvarmax = {}
info = {}
Lines = {}
lesveh = {}
xmasstree = {}
lester = {}
lesjet = {}
lesterjet = {}
results = {}
infos = {}
chatsongs = {}
loadouts = {}
CurrentLoadout = {}
FavAnims = {}
keycodes = {}

keycodes[8] = "Back"
keycodes[9] = "Tab"
keycodes[13] = "Enter"
keycodes[16] = "ShiftKey"
keycodes[17] = "ControlKey"
keycodes[18] = "Menu"
keycodes[19] = "Pause"
keycodes[20] = "CapsLock"
keycodes[27] = "Escape"
keycodes[32] = "Space"
keycodes[33] = "PageUp"
keycodes[34] = "PageDown"
keycodes[35] = "End"
keycodes[36] = "Home"
keycodes[37] = "Left"
keycodes[38] = "Up"
keycodes[39] = "Right"
keycodes[40] = "Down"
keycodes[41] = "Select"
keycodes[42] = "Print"
keycodes[43] = "Execute"
keycodes[44] = "PrintScreen"
keycodes[45] = "Insert"
keycodes[46] = "Delete"
keycodes[47] = "Help"
keycodes[48] = "0"
keycodes[49] = "1"
keycodes[50] = "2"
keycodes[51] = "3"
keycodes[52] = "4"
keycodes[53] = "5"
keycodes[54] = "6"
keycodes[55] = "7"
keycodes[56] = "8"
keycodes[57] = "9"
keycodes[65] = "A"
keycodes[66] = "B"
keycodes[67] = "C"
keycodes[68] = "D"
keycodes[69] = "E"
keycodes[70] = "F"
keycodes[71] = "G"
keycodes[72] = "H"
keycodes[73] = "I"
keycodes[74] = "J"
keycodes[75] = "K"
keycodes[76] = "L"
keycodes[77] = "M"
keycodes[78] = "N"
keycodes[79] = "O"
keycodes[80] = "P"
keycodes[81] = "Q"
keycodes[82] = "R"
keycodes[83] = "S"
keycodes[84] = "T"
keycodes[85] = "U"
keycodes[86] = "V"
keycodes[87] = "W"
keycodes[88] = "X"
keycodes[89] = "Y"
keycodes[90] = "Z"
keycodes[91] = "LWin"
keycodes[92] = "RWin"
keycodes[93] = "Apps"
keycodes[95] = "Sleep"
keycodes[96] = "NumPad0"
keycodes[97] = "NumPad1"
keycodes[98] = "NumPad2"
keycodes[99] = "NumPad3"
keycodes[100] = "NumPad4"
keycodes[101] = "NumPad5"
keycodes[102] = "NumPad6"
keycodes[103] = "NumPad7"
keycodes[104] = "NumPad8"
keycodes[105] = "NumPad9"
keycodes[106] = "Multiply"
keycodes[107] = "Add"
keycodes[108] = "Separator"
keycodes[109] = "Subtract"
keycodes[110] = "Decimal"
keycodes[111] = "Divide"
keycodes[112] = "F1"
keycodes[113] = "F2"
keycodes[114] = "F3"
keycodes[115] = "F4"
keycodes[116] = "F5"
keycodes[117] = "F6"
keycodes[118] = "F7"
keycodes[119] = "F8"
keycodes[120] = "F9"
keycodes[121] = "F10"
keycodes[122] = "F11"
keycodes[123] = "F12"
keycodes[124] = "F13"
keycodes[125] = "F14"
keycodes[126] = "F15"
keycodes[127] = "F16"
keycodes[128] = "F17"
keycodes[129] = "F18"
keycodes[130] = "F19"
keycodes[131] = "F20"
keycodes[132] = "F21"
keycodes[133] = "F22"
keycodes[134] = "F23"
keycodes[135] = "F24"
keycodes[144] = "NumLock"
keycodes[145] = "Scroll"
keycodes[160] = "LShiftKey"
keycodes[161] = "RShiftKey"
keycodes[162] = "LControlKey"
keycodes[163] = "RControlKey"
keycodes[164] = "LMenu"
keycodes[165] = "RMenu"
keycodes[166] = "BrowserBack"
keycodes[167] = "BrowserForward"
keycodes[168] = "BrowserRefresh"
keycodes[169] = "BrowserStop"
keycodes[170] = "BrowserSearch"
keycodes[171] = "BrowserFavorites"
keycodes[172] = "BrowserHome"
keycodes[173] = "VolumeMute"
keycodes[174] = "VolumeDown"
keycodes[175] = "VolumeUp"
keycodes[176] = "MediaNextTrack"
keycodes[177] = "MediaPreviousTrack"
keycodes[178] = "MediaStop"
keycodes[179] = "MediaPlayPause"
keycodes[186] = ";"
keycodes[187] = "="
keycodes[188] = ","
keycodes[189] = "-"
keycodes[190] = "."
keycodes[191] = "/"
keycodes[192] = "`"
keycodes[219] = '['
keycodes[220] = [[\]]
keycodes[221] = "]"
keycodes[222] = "'"

C = {
    INPUT_NEXT_CAMERA = 0,
    INPUT_LOOK_LR = 1,
    INPUT_LOOK_UD = 2,
    INPUT_LOOK_UP_ONLY = 3,
    INPUT_LOOK_DOWN_ONLY = 4,
    INPUT_LOOK_LEFT_ONLY = 5,
    INPUT_LOOK_RIGHT_ONLY = 6,
    INPUT_CINEMATIC_SLOWMO = 7,
    INPUT_SCRIPTED_FLY_UD = 8,
    INPUT_SCRIPTED_FLY_LR = 9,
    INPUT_SCRIPTED_FLY_ZUP = 10,
    INPUT_SCRIPTED_FLY_ZDOWN = 11,
    INPUT_WEAPON_WHEEL_UD = 12,
    INPUT_WEAPON_WHEEL_LR = 13,
    INPUT_WEAPON_WHEEL_NEXT = 14,
    INPUT_WEAPON_WHEEL_PREV = 15,
    INPUT_SELECT_NEXT_WEAPON = 16,
    INPUT_SELECT_PREV_WEAPON = 17,
    INPUT_SKIP_CUTSCENE = 18,
    INPUT_CHARACTER_WHEEL = 19,
    INPUT_MULTIPLAYER_INFO = 20,
    INPUT_SPRINT = 21,
    INPUT_JUMP = 22,
    INPUT_ENTER = 23,
    INPUT_ATTACK = 24,
    INPUT_AIM = 25,
    INPUT_LOOK_BEHIND = 26,
    INPUT_PHONE = 27,
    INPUT_SPECIAL_ABILITY = 28,
    INPUT_SPECIAL_ABILITY_SECONDARY = 29,
    INPUT_MOVE_LR = 30,
    INPUT_MOVE_UD = 31,
    INPUT_MOVE_UP_ONLY = 32,
    INPUT_MOVE_DOWN_ONLY = 33,
    INPUT_MOVE_LEFT_ONLY = 34,
    INPUT_MOVE_RIGHT_ONLY = 35,
    INPUT_DUCK = 36,
    INPUT_SELECT_WEAPON = 37,
    INPUT_PICKUP = 38,
    INPUT_SNIPER_ZOOM = 39,
    INPUT_SNIPER_ZOOM_IN_ONLY = 40,
    INPUT_SNIPER_ZOOM_OUT_ONLY = 41,
    INPUT_SNIPER_ZOOM_IN_SECONDARY = 42,
    INPUT_SNIPER_ZOOM_OUT_SECONDARY = 43,
    INPUT_COVER = 44,
    INPUT_RELOAD = 45,
    INPUT_TALK = 46,
    INPUT_DETONATE = 47,
    INPUT_HUD_SPECIAL = 48,
    INPUT_ARREST = 49,
    INPUT_ACCURATE_AIM = 50,
    INPUT_CONTEXT = 51,
    INPUT_CONTEXT_SECONDARY = 52,
    INPUT_WEAPON_SPECIAL = 53,
    INPUT_WEAPON_SPECIAL_TWO = 54,
    INPUT_DIVE = 55,
    INPUT_DROP_WEAPON = 56,
    INPUT_DROP_AMMO = 57,
    INPUT_THROW_GRENADE = 58,
    INPUT_VEH_MOVE_LR = 59,
    INPUT_VEH_MOVE_UD = 60,
    INPUT_VEH_MOVE_UP_ONLY = 61,
    INPUT_VEH_MOVE_DOWN_ONLY = 62,
    INPUT_VEH_MOVE_LEFT_ONLY = 63,
    INPUT_VEH_MOVE_RIGHT_ONLY = 64,
    INPUT_VEH_SPECIAL = 65,
    INPUT_VEH_GUN_LR = 66,
    INPUT_VEH_GUN_UD = 67,
    INPUT_VEH_AIM = 68,
    INPUT_VEH_ATTACK = 69,
    INPUT_VEH_ATTACK2 = 70,
    INPUT_VEH_ACCELERATE = 71,
    INPUT_VEH_BRAKE = 72,
    INPUT_VEH_DUCK = 73,
    INPUT_VEH_HEADLIGHT = 74,
    INPUT_VEH_EXIT = 75,
    INPUT_VEH_HANDBRAKE = 76,
    INPUT_VEH_HOTWIRE_LEFT = 77,
    INPUT_VEH_HOTWIRE_RIGHT = 78,
    INPUT_VEH_LOOK_BEHIND = 79,
    INPUT_VEH_CIN_CAM = 80,
    INPUT_VEH_NEXT_RADIO = 81,
    INPUT_VEH_PREV_RADIO = 82,
    INPUT_VEH_NEXT_RADIO_TRACK = 83,
    INPUT_VEH_PREV_RADIO_TRACK = 84,
    INPUT_VEH_RADIO_WHEEL = 85,
    INPUT_VEH_HORN = 86,
    INPUT_VEH_FLY_THROTTLE_UP = 87,
    INPUT_VEH_FLY_THROTTLE_DOWN = 88,
    INPUT_VEH_FLY_YAW_LEFT = 89,
    INPUT_VEH_FLY_YAW_RIGHT = 90,
    INPUT_VEH_PASSENGER_AIM = 91,
    INPUT_VEH_PASSENGER_ATTACK = 92,
    INPUT_VEH_SPECIAL_ABILITY_FRANKLIN = 93,
    INPUT_VEH_STUNT_UD = 94,
    INPUT_VEH_CINEMATIC_UD = 95,
    INPUT_VEH_CINEMATIC_UP_ONLY = 96,
    INPUT_VEH_CINEMATIC_DOWN_ONLY = 97,
    INPUT_VEH_CINEMATIC_LR = 98,
    INPUT_VEH_SELECT_NEXT_WEAPON = 99,
    INPUT_VEH_SELECT_PREV_WEAPON = 100,
    INPUT_VEH_ROOF = 101,
    INPUT_VEH_JUMP = 102,
    INPUT_VEH_GRAPPLING_HOOK = 103,
    INPUT_VEH_SHUFFLE = 104,
    INPUT_VEH_DROP_PROJECTILE = 105,
    INPUT_VEH_MOUSE_CONTROL_OVERRIDE = 106,
    INPUT_VEH_FLY_ROLL_LR = 107,
    INPUT_VEH_FLY_ROLL_LEFT_ONLY = 108,
    INPUT_VEH_FLY_ROLL_RIGHT_ONLY = 109,
    INPUT_VEH_FLY_PITCH_UD = 110,
    INPUT_VEH_FLY_PITCH_UP_ONLY = 111,
    INPUT_VEH_FLY_PITCH_DOWN_ONLY = 112,
    INPUT_VEH_FLY_UNDERCARRIAGE = 113,
    INPUT_VEH_FLY_ATTACK = 114,
    INPUT_VEH_FLY_SELECT_NEXT_WEAPON = 115,
    INPUT_VEH_FLY_SELECT_PREV_WEAPON = 116,
    INPUT_VEH_FLY_SELECT_TARGET_LEFT = 117,
    INPUT_VEH_FLY_SELECT_TARGET_RIGHT = 118,
    INPUT_VEH_FLY_VERTICAL_FLIGHT_MODE = 119,
    INPUT_VEH_FLY_DUCK = 120,
    INPUT_VEH_FLY_ATTACK_CAMERA = 121,
    INPUT_VEH_FLY_MOUSE_CONTROL_OVERRIDE = 122,
    INPUT_VEH_SUB_TURN_LR = 123,
    INPUT_VEH_SUB_TURN_LEFT_ONLY = 124,
    INPUT_VEH_SUB_TURN_RIGHT_ONLY = 125,
    INPUT_VEH_SUB_PITCH_UD = 126,
    INPUT_VEH_SUB_PITCH_UP_ONLY = 127,
    INPUT_VEH_SUB_PITCH_DOWN_ONLY = 128,
    INPUT_VEH_SUB_THROTTLE_UP = 129,
    INPUT_VEH_SUB_THROTTLE_DOWN = 130,
    INPUT_VEH_SUB_ASCEND = 131,
    INPUT_VEH_SUB_DESCEND = 132,
    INPUT_VEH_SUB_TURN_HARD_LEFT = 133,
    INPUT_VEH_SUB_TURN_HARD_RIGHT = 134,
    INPUT_VEH_SUB_MOUSE_CONTROL_OVERRIDE = 135,
    INPUT_VEH_PUSHBIKE_PEDAL = 136,
    INPUT_VEH_PUSHBIKE_SPRINT = 137,
    INPUT_VEH_PUSHBIKE_FRONT_BRAKE = 138,
    INPUT_VEH_PUSHBIKE_REAR_BRAKE = 139,
    INPUT_MELEE_ATTACK_LIGHT = 140,
    INPUT_MELEE_ATTACK_HEAVY = 141,
    INPUT_MELEE_ATTACK_ALTERNATE = 142,
    INPUT_MELEE_BLOCK = 143,
    INPUT_PARACHUTE_DEPLOY = 144,
    INPUT_PARACHUTE_DETACH = 145,
    INPUT_PARACHUTE_TURN_LR = 146,
    INPUT_PARACHUTE_TURN_LEFT_ONLY = 147,
    INPUT_PARACHUTE_TURN_RIGHT_ONLY = 148,
    INPUT_PARACHUTE_PITCH_UD = 149,
    INPUT_PARACHUTE_PITCH_UP_ONLY = 150,
    INPUT_PARACHUTE_PITCH_DOWN_ONLY = 151,
    INPUT_PARACHUTE_BRAKE_LEFT = 152,
    INPUT_PARACHUTE_BRAKE_RIGHT = 153,
    INPUT_PARACHUTE_SMOKE = 154,
    INPUT_PARACHUTE_PRECISION_LANDING = 155,
    INPUT_MAP = 156,
    INPUT_SELECT_WEAPON_UNARMED = 157,
    INPUT_SELECT_WEAPON_MELEE = 158,
    INPUT_SELECT_WEAPON_HANDGUN = 159,
    INPUT_SELECT_WEAPON_SHOTGUN = 160,
    INPUT_SELECT_WEAPON_SMG = 161,
    INPUT_SELECT_WEAPON_AUTO_RIFLE = 162,
    INPUT_SELECT_WEAPON_SNIPER = 163,
    INPUT_SELECT_WEAPON_HEAVY = 164,
    INPUT_SELECT_WEAPON_SPECIAL = 165,
    INPUT_SELECT_CHARACTER_MICHAEL = 166,
    INPUT_SELECT_CHARACTER_FRANKLIN = 167,
    INPUT_SELECT_CHARACTER_TREVOR = 168,
    INPUT_SELECT_CHARACTER_MULTIPLAYER = 169,
    INPUT_SAVE_REPLAY_CLIP = 170,
    INPUT_SPECIAL_ABILITY_PC = 171,
    INPUT_CELLPHONE_UP = 172,
    INPUT_CELLPHONE_DOWN = 173,
    INPUT_CELLPHONE_LEFT = 174,
    INPUT_CELLPHONE_RIGHT = 175,
    INPUT_CELLPHONE_SELECT = 176,
    INPUT_CELLPHONE_CANCEL = 177,
    INPUT_CELLPHONE_OPTION = 178,
    INPUT_CELLPHONE_EXTRA_OPTION = 179,
    INPUT_CELLPHONE_SCROLL_FORWARD = 180,
    INPUT_CELLPHONE_SCROLL_BACKWARD = 181,
    INPUT_CELLPHONE_CAMERA_FOCUS_LOCK = 182,
    INPUT_CELLPHONE_CAMERA_GRID = 183,
    INPUT_CELLPHONE_CAMERA_SELFIE = 184,
    INPUT_CELLPHONE_CAMERA_DOF = 185,
    INPUT_CELLPHONE_CAMERA_EXPRESSION = 186,
    INPUT_FRONTEND_DOWN = 187,
    INPUT_FRONTEND_UP = 188,
    INPUT_FRONTEND_LEFT = 189,
    INPUT_FRONTEND_RIGHT = 190,
    INPUT_FRONTEND_RDOWN = 191,
    INPUT_FRONTEND_RUP = 192,
    INPUT_FRONTEND_RLEFT = 193,
    INPUT_FRONTEND_RRIGHT = 194,
    INPUT_FRONTEND_AXIS_X = 195,
    INPUT_FRONTEND_AXIS_Y = 196,
    INPUT_FRONTEND_RIGHT_AXIS_X = 197,
    INPUT_FRONTEND_RIGHT_AXIS_Y = 198,
    INPUT_FRONTEND_PAUSE = 199,
    INPUT_FRONTEND_PAUSE_ALTERNATE = 200,
    INPUT_FRONTEND_ACCEPT = 201,
    INPUT_FRONTEND_CANCEL = 202,
    INPUT_FRONTEND_X = 203,
    INPUT_FRONTEND_Y = 204,
    INPUT_FRONTEND_LB = 205,
    INPUT_FRONTEND_RB = 206,
    INPUT_FRONTEND_LT = 207,
    INPUT_FRONTEND_RT = 208,
    INPUT_FRONTEND_LS = 209,
    INPUT_FRONTEND_RS = 210,
    INPUT_FRONTEND_LEADERBOARD = 211,
    INPUT_FRONTEND_SOCIAL_CLUB = 212,
    INPUT_FRONTEND_SOCIAL_CLUB_SECONDARY = 213,
    INPUT_FRONTEND_DELETE = 214,
    INPUT_FRONTEND_ENDSCREEN_ACCEPT = 215,
    INPUT_FRONTEND_ENDSCREEN_EXPAND = 216,
    INPUT_FRONTEND_SELECT = 217,
    INPUT_SCRIPT_LEFT_AXIS_X = 218,
    INPUT_SCRIPT_LEFT_AXIS_Y = 219,
    INPUT_SCRIPT_RIGHT_AXIS_X = 220,
    INPUT_SCRIPT_RIGHT_AXIS_Y = 221,
    INPUT_SCRIPT_RUP = 222,
    INPUT_SCRIPT_RDOWN = 223,
    INPUT_SCRIPT_RLEFT = 224,
    INPUT_SCRIPT_RRIGHT = 225,
    INPUT_SCRIPT_LB = 226,
    INPUT_SCRIPT_RB = 227,
    INPUT_SCRIPT_LT = 228,
    INPUT_SCRIPT_RT = 229,
    INPUT_SCRIPT_LS = 230,
    INPUT_SCRIPT_RS = 231,
    INPUT_SCRIPT_PAD_UP = 232,
    INPUT_SCRIPT_PAD_DOWN = 233,
    INPUT_SCRIPT_PAD_LEFT = 234,
    INPUT_SCRIPT_PAD_RIGHT = 235,
    INPUT_SCRIPT_SELECT = 236,
    INPUT_CURSOR_ACCEPT = 237,
    INPUT_CURSOR_CANCEL = 238,
    INPUT_CURSOR_X = 239,
    INPUT_CURSOR_Y = 240,
    INPUT_CURSOR_SCROLL_UP = 241,
    INPUT_CURSOR_SCROLL_DOWN = 242,
    INPUT_ENTER_CHEAT_CODE = 243,
    INPUT_INTERACTION_MENU = 244,
    INPUT_MP_TEXT_CHAT_ALL = 245,
    INPUT_MP_TEXT_CHAT_TEAM = 246,
    INPUT_MP_TEXT_CHAT_FRIENDS = 247,
    INPUT_MP_TEXT_CHAT_CREW = 248,
    INPUT_PUSH_TO_TALK = 249,
    INPUT_CREATOR_LS = 250,
    INPUT_CREATOR_RS = 251,
    INPUT_CREATOR_LT = 252,
    INPUT_CREATOR_RT = 253,
    INPUT_CREATOR_MENU_TOGGLE = 254,
    INPUT_CREATOR_ACCEPT = 255,
    INPUT_CREATOR_DELETE = 256,
    INPUT_ATTACK2 = 257,
    INPUT_RAPPEL_JUMP = 258,
    INPUT_RAPPEL_LONG_JUMP = 259,
    INPUT_RAPPEL_SMASH_WINDOW = 260,
    INPUT_PREV_WEAPON = 261,
    INPUT_NEXT_WEAPON = 262,
    INPUT_MELEE_ATTACK1 = 263,
    INPUT_MELEE_ATTACK2 = 264,
    INPUT_WHISTLE = 265,
    INPUT_MOVE_LEFT = 266,
    INPUT_MOVE_RIGHT = 267,
    INPUT_MOVE_UP = 268,
    INPUT_MOVE_DOWN = 269,
    INPUT_LOOK_LEFT = 270,
    INPUT_LOOK_RIGHT = 271,
    INPUT_LOOK_UP = 272,
    INPUT_LOOK_DOWN = 273,
    INPUT_SNIPER_ZOOM_IN = 274,
    INPUT_SNIPER_ZOOM_OUT = 275,
    INPUT_SNIPER_ZOOM_IN_ALTERNATE = 276,
    INPUT_SNIPER_ZOOM_OUT_ALTERNATE = 277,
    INPUT_VEH_MOVE_LEFT = 278,
    INPUT_VEH_MOVE_RIGHT = 279,
    INPUT_VEH_MOVE_UP = 280,
    INPUT_VEH_MOVE_DOWN = 281,
    INPUT_VEH_GUN_LEFT = 282,
    INPUT_VEH_GUN_RIGHT = 283,
    INPUT_VEH_GUN_UP = 284,
    INPUT_VEH_GUN_DOWN = 285,
    INPUT_VEH_LOOK_LEFT = 286,
    INPUT_VEH_LOOK_RIGHT = 287,
    INPUT_REPLAY_START_STOP_RECORDING = 288,
    INPUT_REPLAY_START_STOP_RECORDING_SECONDARY = 289,
    INPUT_SCALED_LOOK_LR = 290,
    INPUT_SCALED_LOOK_UD = 291,
    INPUT_SCALED_LOOK_UP_ONLY = 292,
    INPUT_SCALED_LOOK_DOWN_ONLY = 293,
    INPUT_SCALED_LOOK_LEFT_ONLY = 294,
    INPUT_SCALED_LOOK_RIGHT_ONLY = 295,
    INPUT_REPLAY_MARKER_DELETE = 296,
    INPUT_REPLAY_CLIP_DELETE = 297,
    INPUT_REPLAY_PAUSE = 298,
    INPUT_REPLAY_REWIND = 299,
    INPUT_REPLAY_FFWD = 300,
    INPUT_REPLAY_NEWMARKER = 301,
    INPUT_REPLAY_RECORD = 302,
    INPUT_REPLAY_SCREENSHOT = 303,
    INPUT_REPLAY_HIDEHUD = 304,
    INPUT_REPLAY_STARTPOINT = 305,
    INPUT_REPLAY_ENDPOINT = 306,
    INPUT_REPLAY_ADVANCE = 307,
    INPUT_REPLAY_BACK = 308,
    INPUT_REPLAY_TOOLS = 309,
    INPUT_REPLAY_RESTART = 310,
    INPUT_REPLAY_SHOWHOTKEY = 311,
    INPUT_REPLAY_CYCLEMARKERLEFT = 312,
    INPUT_REPLAY_CYCLEMARKERRIGHT = 313,
    INPUT_REPLAY_FOVINCREASE = 314,
    INPUT_REPLAY_FOVDECREASE = 315,
    INPUT_REPLAY_CAMERAUP = 316,
    INPUT_REPLAY_CAMERADOWN = 317,
    INPUT_REPLAY_SAVE = 318,
    INPUT_REPLAY_TOGGLETIME = 319,
    INPUT_REPLAY_TOGGLETIPS = 320,
    INPUT_REPLAY_PREVIEW = 321,
    INPUT_REPLAY_TOGGLE_TIMELINE = 322,
    INPUT_REPLAY_TIMELINE_PICKUP_CLIP = 323,
    INPUT_REPLAY_TIMELINE_DUPLICATE_CLIP = 324,
    INPUT_REPLAY_TIMELINE_PLACE_CLIP = 325,
    INPUT_REPLAY_CTRL = 326,
    INPUT_REPLAY_TIMELINE_SAVE = 327,
    INPUT_REPLAY_PREVIEW_AUDIO = 328,
    INPUT_VEH_DRIVE_LOOK = 329,
    INPUT_VEH_DRIVE_LOOK2 = 330,
    INPUT_VEH_FLY_ATTACK2 = 331,
    INPUT_RADIO_WHEEL_UD = 332,
    INPUT_RADIO_WHEEL_LR = 333,
    INPUT_VEH_SLOWMO_UD = 334,
    INPUT_VEH_SLOWMO_UP_ONLY = 335,
    INPUT_VEH_SLOWMO_DOWN_ONLY = 336,
    INPUT_VEH_HYDRAULICS_CONTROL_TOGGLE = 337,
    INPUT_VEH_HYDRAULICS_CONTROL_LEFT = 338,
    INPUT_VEH_HYDRAULICS_CONTROL_RIGHT = 339,
    INPUT_VEH_HYDRAULICS_CONTROL_UP = 340,
    INPUT_VEH_HYDRAULICS_CONTROL_DOWN = 341,
    INPUT_VEH_HYDRAULICS_CONTROL_UD = 342,
    INPUT_VEH_HYDRAULICS_CONTROL_LR = 343,
    INPUT_SWITCH_VISOR = 344,
    INPUT_VEH_MELEE_HOLD = 345,
    INPUT_VEH_MELEE_LEFT = 346,
    INPUT_VEH_MELEE_RIGHT = 347,
    INPUT_MAP_POI = 348,
    INPUT_REPLAY_SNAPMATIC_PHOTO = 349,
    INPUT_VEH_CAR_JUMP = 350,
    INPUT_VEH_ROCKET_BOOST = 351,
    INPUT_VEH_FLY_BOOST = 352,
    INPUT_VEH_PARACHUTE = 353,
    INPUT_VEH_BIKE_WINGS = 354,
    INPUT_VEH_FLY_BOMB_BAY = 355,
    INPUT_VEH_FLY_COUNTER = 356,
    INPUT_VEH_TRANSFORM = 357,
    INPUT_QUAD_LOCO_REVERSE = 358,
    INPUT_RESPAWN_FASTER = 359,
    INPUT_HUDMARKER_SELECT = 360,
}

WeaponPickup = {
    PICKUP_WEAPON_PISTOL = -105925489,
    PICKUP_WEAPON_COMBATPISTOL = -1989692173,
    PICKUP_WEAPON_APPISTOL = 996550793,
    PICKUP_WEAPON_MICROSMG = 496339155,
    PICKUP_WEAPON_SMG = 978070226,
    PICKUP_WEAPON_ASSAULTRIFLE = -214137936,
    PICKUP_WEAPON_CARBINERIFLE = -546236071,
    PICKUP_WEAPON_ADVANCEDRIFLE = -1296747938,
    PICKUP_WEAPON_SAWNOFFSHOTGUN = -1766583645,
    PICKUP_WEAPON_PUMPSHOTGUN = -1456120371,
    PICKUP_WEAPON_ASSAULTSHOTGUN = -1835415205,
    PICKUP_WEAPON_SNIPERRIFLE = -30788308,
    PICKUP_WEAPON_HEAVYSNIPER = 1765114797,
    PICKUP_WEAPON_MG = -2050315855,
    PICKUP_WEAPON_COMBATMG = -1298986476,
    PICKUP_WEAPON_GRENADELAUNCHER = 779501861,
    PICKUP_WEAPON_RPG = 1295434569,
    PICKUP_WEAPON_MINIGUN = 792114228,
    PICKUP_WEAPON_GRENADE = 1577485217,
    PICKUP_WEAPON_STICKYBOMB = 2081529176,
    PICKUP_WEAPON_MOLOTOV = 768803961,
    PICKUP_WEAPON_PETROLCAN = -962731009,
    PICKUP_WEAPON_SMOKEGRENADE = 483787975,
    PICKUP_WEAPON_KNIFE = 663586612,
    PICKUP_WEAPON_BAT = -2115084258,
    PICKUP_WEAPON_HAMMER = 693539241,
    PICKUP_WEAPON_CROWBAR = -2027042680,
    PICKUP_WEAPON_GOLFCLUB = -1997886297,
    PICKUP_WEAPON_NIGHTSTICK = 1587637620,
    PICKUP_WEAPON_FIREEXTINGUISHER = -887893374,
    PICKUP_WEAPON_LASSO = 1724937680,
    PICKUP_WEAPON_LOUDHAILER = 2017151059,
    PICKUP_PARACHUTE = 1735599485,
}

SpamBotRID = {
    196341824,  151725375,  208809071,  190141576,  146431909,  109571091,  133028421,  196234534,  136393330,  195926566,  203326273,  166614412,  194138378,  203122036,  203625685,  208057343,  97919431,   187226256,  207544623,  195552617,
    120873237,  203146613,  204042886,  197935347,  180695289,  191304427,  205350626,  192202204,  171768892,  196300203,  196226660,  195924847,  205349949,  204053106,  203147927,  194828358,  169211087,  126781188,  204803268,  203626074,
    194426808,  39201192,   194828386,  194812543,  151595935,  194837686,  152833519,  147898689,  196223053,  184526056,  121103552,  203330325,  196200521,  203330201,  109027865,  204057797,  194813074,  183555930,  102209333,  82679831,
    173571840,  194832243,  195924406,  138680490,  204809474,  174617167,  204043393,  197428558,  203326346,  204046500,  194811121,  191697873,  130564722,  150507171,  137645635,  112760042,  176896611,  92230184,   183556440,  186665499,
    121104990,  114131992,  186825205,  203144915,  172410491,  145843113,  147992665,  205351437,  183556188,  155881373,  203127804,  177725534,  120889849,  85408317,   176728887,  203325981,  99949958,   194815360,  124995378,  194839651,
    194839427,  204053894,  190005551,  205350878,  112620127,  135134862,  195251994,  169788370,  197939251,  15805471,   205350669,  205355033,  205349735,  203624097,  186838900,  190872878,  192336265,  150137126,  195710395,  186681044,
    110215106,  141674360,  143910298,  156036674,  168591054,  148157214,  195591598,  205354173,  205365232,  170155078,  186748118,  191183703,  208053633,  114420173,  187226131,  114186267,  186636235,  204413688,  170779553,  10302880,
    112227544,  121034683,  145818564,  203326394,  101456230,  185311643,  204062292,  205353930,  108730551,  169873020,  193512534,  171437772,  186216729,  205696290,  196431593,  139035573,  195202884,  146678221,  64774759,   90624650,
    194831812,  203500098,  186874093,  111665175,  140347063,  197817364,  148050745,  205350585,  203224228,  205531950,  131212264,  205354404,  196196870,  140430261,  136008165,  146113094,  140474846,  205274061,  175563404,  142079741,
    169421629,  194827164,  198057410,  173378351,  203144902,  98982339,   195323528,  200998134,  90601400,   184462903,  205357617,  205476556,  184547598,  109069240,  203626251,  104543227,  192343817,  198182198,  123995200,  146834020,
    139569730,  187253129,  181716403,  186307570,  171769522,  203325700,  196432858,  184634544,  107398869,  47836643,   196138718,  186659961,  176340429,  147583600,  178307680,  145615965,  164838489,  176974373,  56976942,   189598028,
    183556053,  196323939,  196232611,  205353352,  73370127,   103210165,  1235769,    203623850,  189100528,  120822874,  174155727,  194829459,  208787604,  205609380,  132858124,  194814600,  141747304,  198181233,  96205183,   194817833,
    196226865,  194831732,  100519846,  205354891,  205356183,  194829325,  186885260,  198020165,  176835354,  179042912,  205350719,  196330318,  94669782,   149204426,  196484969,  137235771,  61141937,   143392552,  204810696,  204808335,
    151481254,  196485192,  131421500,  170724660,  165287761,  175978532,  205702108,  194814222,  187818704,  183556564,  196574404,  209132553,  187355734,  205476120,  187227153,  146436721,  190843371,  204807070,  173566828,  196043857,
    187226647,  201339988,  116257959,  89914597,   206540310,  204044988,  155159410,  205647794,  203500156,  190056589,  170272593,  186727010,  196234868,  146431719,  124958827,  194824874,  194830513,  183644064,
}

weaphash = {
    -1834847097, -1786099057, -102323637, 2227010557, -1951375401, 1141786504, 1317494643, -102973651, -656458692, -1716189206, -581044007, -538741184, 1737195953, 419712736, -853065399, -1810795771, 940833800, 453432689, -1075685676, 1593441988, 584646201, 911657153, -1716589765, -1076751822,
    -2009644972, -771403250, 137902532, 1198879012, -598887786, -1045183535, -879347409, -1746263880, -1355376991, 727643628, -1853920116, 324215364, 736523883, 2024373456, -270015777, 171789620, -619010992, -1121678507, 1198256469, 487013001, 1432025498, 2017895192, -494615257, -1654528753,
    -1466123874, 984333226, -275439685, 317205821, -1074790547, 961495388, -2084633992, -86904375, -1357824103, -1063057011, -1768145561, 2132975508, -2066285827, 1649403952, -1660422300, 2144741730, -608341376, 1627465347, 100416529, 205991906, 177293209, -952879014, 1785463520, -1312131151,
    -1568386805, 1305664598, 1119849093, 2138347493, 1834241177, 1672152130, 125959754, -1238556825, -1813897027, -1600701090, 615608432, -1420407917, 126349499, -1169823560, 600439132, -37975472, 1233104067, 741814745, 883325847, -72657034, 101631238, -1168940174,
}

weaponattachment = {
    1108334355, 2855028148, 2076495324, 2205435306, 3323278933, 2805810788, 3159677559, 867832552, 3271853210, 202788691, 1857603803, 2855028148, 277524638, 752418717, 776198721, 1602080333, 283556395, 899381934, 1709866683, 3978713628, 3859329886, 614078421, 1657753414, 2172153001, 2466764538,
    2043113590, 1019656791, 1447477866, 2640679034, 3509242479, 2294798931, 1060929921, 3598405421, 3939025520, 3322377230, 1748450780, 3872379306, 1038927834, 2774849419, 3112393518, 3009973007, 2698550338, 3603274966, 3127044405, 1005743559, 4021290536, 1246324211, 1205768792, 3465283442,
    3328927042, 3726614828, 4185880635, 3654528146, 1006677997, 2182449991, 1749732930, 1803744149, 2855028148, 2395064697, 3621517063, 2474561719, 2063610803, 1140676955, 1591132456, 2396306288, 2637152041, 3689981245, 1801039530, 3439143621, 1824470811, 3017917522, 654802123, 1694090795,
    2062808965, 2850671348, 400507625, 3051509595, 48731514, 2260565874, 3141985303, 1574296533, 2335983627,
}

enemies = {
    1297520375, 1558115333, 3455013896, 2512875213, 1669696074, 788443093, 2072724299, 3613962792, 3019107892, 2047212121, 1349953339, 1581098148, 4017173934, 2974087609, 2374966032, 2431602996, 2595446627, 1631478380, 1634506681, 2618542997, 2127932792, 1821116645, 193469166, 337826907, 2719478597, 3200789669,
}

beggermes = {
    'moneypls', 'moneyplz', 'givememoney', 'dropmoney', 'dropmemoney', 'givmoney', 'givemoney', 'givecash', 'give$', 'dropcash', 'drop$', 'hackermoney', 'moddermoney', "i'venomoney", 'plsmoney', 'dropplz', 'ineedmoney', 'gibmoney',
    'moneyplease', 'plsdropme', 'plsgiveme', 'plesagive', 'pleasemoney', 'cashdrop', 'pleasedropme', 'canyoudrop', 'givemecash', 'moneydrops', 'modmoney', 'modmemoney', 'somemoney', 'droppls', 'plsmon3y', 'someonemoney', 'meneedmoney',
    'someonedrop', 'pleasdrop', 'pleasmoney', 'dr0pme', 'dr0pmoney', 'dr0pcash', 'moneydr0p', 'money?', 'plzmon3y', 'mymoney', 'plsdrp', 'drppls', 'anydrop', 'anymoney',
}

russianmes = {
    'А','а','Б','б','В','в','Г','г','Д','д','Е','е','Ё','ё','Ж','ж','З','з','И','и','Й','й','К','к','Л','л','М','м','Н','н','О','о','П','п','Р','р','С','с','Т','т','У','у','Ф','ф','Х','х','Ц','ц','Ч','ч','Ш','ш','Щ','щ','Ъ','ъ','Ы','ы','Ь','ь','Э','э','Ю','ю','Я','я',
}

terrorist_outfit = {
    {19, 0}, {115, 16}, {0, 0}, {14, 0}, {56, 0}, {0, 0}, {6, 0}, {0, 0}, {4, 0}, {15, 2}, {0, 0}, {114, 0},
}

ghostrider_outfit_female = {
    {24, 0}, {2, 2}, {22, 3}, {36, 0}, {27, 0}, {0, 0}, {24, 0}, {0, 0}, {1, 0}, {0, 0}, {0, 0}, {55, 0},
}

ghostrider_outfit_male = {
    {24, 0}, {2, 2}, {22, 3}, {33, 0}, {4, 0}, {0, 0}, {12, 6}, {0, 0}, {2, 2}, {0, 0}, {0, 0}, {64, 0},
}

police_outfit_female = {
    {0, 0, 45, 0}, {0, 0}, {53, 0}, {31, 0}, {63, 1}, {0, 0}, {1, 6}, {98, 0}, {35, 0}, {0, 0}, {7, 2}, {48, 0},
}

police_outfit_male = {
    {0, 0, 46, 0}, {0, 0, 10, 0}, {0, 0, 3, 0}, {0, 0}, {35, 0}, {0, 0}, {25, 0}, {41, 0}, {58, 0}, {0, 0}, {8, 3}, {55, 0},
}

bitchoutfit = {
    {0, 0}, {0, 0}, {2, 0}, {0, 2}, {1, 1}, {0, 0}, {0, 0}, {0, 0}, {1, 0}, {1, 0}, {0, 0}, {0, 0},
}

cheraxlic = {
    ' ', '       C', '      CH', '     CHE', '    CHER', '   CHERA', '  CHERAX', ' CHERAX ', 'CHERAX O', 'HERAX ON', 'ERAX ON ', 'RAX ON T', 'AX ON TO', 'X ON TOP', ' ON TOP ', 'ON TOP  ', 'N TOP   ', ' TOP    ', 'TOP     ', 'OP      ', 'P       ', ' ', 'CHERAX', ' ', ' VIP', ' ', 'CHERAX', ' ', ' VIP', ' ', 'CHERAX', ' ', ' VIP',
}

vehicle_colors = {
    {255, 255, 255},
    {2, 21, 255},
    {3, 83, 255},
    {0, 255, 140},
    {94, 255, 1},
    {255, 255, 0},
    {255, 150, 5},
    {255, 62, 0},
    {255, 1, 1},
    {255, 50, 100},
    {255, 5, 190},
    {35, 1, 255},
    {15, 3, 255},
}

ghostrider_chains = {
    {0.00999999885, 0.139999986, 0.0299999975, 0, -49.9999962, 0},
    {-0.119999982, -0.0699999779, -0.0699999928, 9.99999714, -49.9999962, 0},
    {0.0299999993, -0.0900000036, 0.049999997, 0, -39.9999962, -7.4505806e-08},
    {0.170000002, -0.0500000007, 0.139999986, 0, -30.9999962, 0},
    {0.0899999887, 0.0999999717, 0.109999985, 1.86264515e-09, -39.9999924, 0},
    {-0.0999998376, 0.100000001, -0.0900002569, -9.99999905, -50.0299911, 0},
    {-0.0699571669, 0.130019873, -0.0500002541, -19.9999981, -54.9999962, 0},
    {38, 0.139999971, 0.0299999844, 0.139999986, 0, -29.9999962, 0},
}

premadeanims = {
    {"Pole Dance", "mini@strip_club@pole_dance@pole_dance3", "pd_dance_03"},
    {"Hood Dance", "missfbi3_sniping", "dance_m_default"},
    {"Burning", "ragdoll@human", "on_fire"},
    {"Getting Stunned", "ragdoll@human", "electrocute"},
    {"Private Dance", "mini@strip_club@private_dance@part1", "priv_dance_p1"},
    {"The Rear Abundance", "rcmpaparazzo_2", "shag_loop_poppy"},
    {"The Invisible Man", "rcmpaparazzo_2", "shag_loop_a"},
    {"Push ups", "amb@world_human_push_ups@male@base", "base"},
    {"Sit ups", "amb@world_human_sit_ups@male@base", "base"},
    {"Wave Yo' Arms", "random@car_thief@victimpoints_ig_3", "arms_waving"},
    {"Give BJ to Driver", "mini@prostitutes@sexnorm_veh", "bj_loop_prostitute"},
    {"Pleasure Driver", "mini@prostitutes@sexnorm_veh", "sex_loop_prostitute"},
    {"Mime", "special_ped@mime@monologue_8@monologue_8a", "08_ig_1_wall_ba_0"},
    {"Mime 2", "special_ped@mime@monologue_7@monologue_7a", "11_ig_1_run_aw_0"},
    {"Throw", "switch@franklin@throw_cup", "throw_cup_loop"},
    {"Smoke Coughing", "timetable@gardener@smoking_joint", "idle_cough"},
    {"Chilling with Friends", "friends@laf@ig_1@base", "base"},
    {"They Think We Dumb", "timetable@ron@they_think_were_stupid", "they_think_were_stupid"},
    {"Come Here", "gestures@m@standing@fat", "gesture_come_here_hard"},
    {"No Way", "gestures@m@standing@fat", "gesture_no_way"},
    {"They're Gonna Kill Me", "random@bicycle_thief@ask_help", "my_dads_going_to_kill_me"},
    {"You Gotta Help Me", "random@bicycle_thief@ask_help", "please_man_you_gotta_help_me"},
    {"Sleep", "savecouch@", "t_sleep_loop_couch"},
    {"Sleep 2", "savem_default@", "m_sleep_r_loop"},
    {"Sleep 3", "timetable@tracy@sleep@", "idle_c"},
    {"Meditate", "rcmcollect_paperleadinout@", "meditiate_idle"},
    {"Fap", "switch@trevor@jerking_off", "trev_jerking_off_loop"},
    {"Yeah Yeah Yeah", "special_ped@jessie@michael_1@michael_1b", "jessie_ig_2_yeahyeahyeah_1"},
    {"Idle On Laptop", "switch@franklin@on_laptop", "001927_01_fras_v2_4_on_laptop_idle"},
    {"Hands Up", "random@arrests", "idle_2_hands_up"},
    {"Stand Still, Arms Spread", "mp_sleep", "bind_pose_180"},
    {"Dog Sitting", "creatures@pug@amb@world_dog_sitting@base", "base"},
    {"Amanda Pleasure", "timetable@amanda@ig_6", "ig_6_base"},
    {"Toilet", "switch@trevor@on_toilet", "trev_on_toilet_loop"},
    {"???", "anim@veh@armordillo@turret@base", "fire"},
    {"T-pose", "mp_intro_concat-3", "mp_m_freemode_01_dual-3"},
    {"Cow Grazing", "creatures@cow@amb@world_cow_grazing@base", "base"},
    {"Deer Walk", "creatures@deer@move", "walk"},
    {"Dolphin Dying", "creatures@dolphin@move", "dying"},
    {"Retriever Attack" , "creatures@retriever@melee@streamed_core@", "attack"},
}

scenario = {
    { "Drilling", "WORLD_HUMAN_CONST_DRILL" },
    { "Hammering", "WORLD_HUMAN_HAMMERING" },
    { "Mechanic", "WORLD_HUMAN_VEHICLE_MECHANIC" },
    { "Janitor", "WORLD_HUMAN_JANITOR" },
    { "Hang Out", "WORLD_HUMAN_HANG_OUT_STREET" },
    { "Play Guitar", "WORLD_HUMAN_MUSICIAN_MALE_BONGOS" },
    { "Play Bongos", "WORLD_HUMAN_MUSICIAN_MALE_GUITAR" },
    { "Clipboard", "WORLD_HUMAN_CLIPBOARD" },
    { "Smoking", "WORLD_HUMAN_SMOKING" },
    { "Smoking 2", "WORLD_HUMAN_AA_SMOKE" },
    { "Smoking Weed", "WORLD_HUMAN_SMOKING_POT" },
    { "Standing With Phone", "WORLD_HUMAN_STAND_MOBILE" },
    { "Standing With Phone 2", "WORLD_HUMAN_STAND_MOBILE_UPRIGHT" },
    { "Standing Guard", "WORLD_HUMAN_GUARD_STAND" },
    { "Standing Impatiently", "WORLD_HUMAN_STAND_IMPATIENT" },
    { "Standing Impatiently 2", "WORLD_HUMAN_STAND_IMPATIENT_UPRIGHT" },
    { "Soldier Stand", "WORLD_HUMAN_GUARD_STAND_ARMY" },
    { "Hobo Stand", "WORLD_HUMAN_BUM_STANDING" },
    { "Doing Pushups", "WORLD_HUMAN_PUSH_UPS" },
    { "Lifting Weights", "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS" },
    { "Flexing", "WORLD_HUMAN_MUSCLE_FLEX" },
    { "Drug Dealer", "WORLD_HUMAN_DRUG_DEALER_HARD" },
    { "Hooker", "WORLD_HUMAN_PROSTITUTE_LOW_CLASS" },
    { "Hooker 2", "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS" },
    { "Drunk", "WORLD_HUMAN_STUPOR" },
    { "Drinking", "WORLD_HUMAN_DRINKING" },
    { "Drinking Coffee", "WORLD_HUMAN_AA_COFFEE" },
    { "Binoculars", "WORLD_HUMAN_BINOCULARS" },
    { "Welding", "WORLD_HUMAN_WELDING" },
    { "Shocked", "WORLD_HUMAN_MOBILE_FILM_SHOCKING" },
    { "Taking Pictures", "WORLD_HUMAN_PAPARAZZI" },
    { "Medic", "CODE_HUMAN_MEDIC_KNEEL" },
    { "Window Shopping", "WORLD_HUMAN_WINDOW_SHOP_BROWSE" },
    { "Cleaning", "WORLD_HUMAN_MAID_CLEAN" },
    { "Doing Yoga", "WORLD_HUMAN_YOGA" },
    { "Tourist Map", "WORLD_HUMAN_TOURIST_MAP" },
    { "Tennis Player", "WORLD_HUMAN_TENNIS_PLAYER" },
    { "Sunbathing", "WORLD_HUMAN_SUNBATHE" },
    { "Sunbathing 2", "WORLD_HUMAN_SUNBATHE_BACK" },
    { "Fishing", "WORLD_HUMAN_STAND_FISHING" },
    { "Shining Torch", "WORLD_HUMAN_SECURITY_SHINE_TORCH" },
    { "Picnic", "WORLD_HUMAN_PICNIC" },
    { "Partying", "WORLD_HUMAN_PARTYING" },
    { "Leaning", "WORLD_HUMAN_LEANING" },
    { "Jog Standing", "WORLD_HUMAN_JOG_STANDING" },
    { "Human Statue", "WORLD_HUMAN_HUMAN_STATUE" },
    { "Hanging Out (Street)", "WORLD_HUMAN_HANG_OUT_STREET" },
    { "Golf Player", "WORLD_HUMAN_GOLF_PLAYER" },
    { "Gardening", "WORLD_HUMAN_GARDENER_PLANT" },
    { "Drug Dealing", "WORLD_HUMAN_DRUG_DEALER_HARD" },
    { "Cheering", "WORLD_HUMAN_CHEERING" },
    { "Parking Attendant", "WORLD_HUMAN_CAR_PARK_ATTENDANT" },
    { "Wash", "WORLD_HUMAN_BUM_WASH" },
    { "Holding Sign", "WORLD_HUMAN_BUM_FREEWAY" },
    { "Laying Down (Hobo)", "WORLD_HUMAN_BUM_SLUMPED" },
    { "BBQ", "PROP_HUMAN_BBQ" },
}

anim_flag = {
     Loop = 1 << 0,
     StopOnLastFrame = 1 << 1,
     OnlyAnimateUpperBody = 1 << 4,
     AllowPlayerControl = 1 << 5,
     Cancellable = 1 << 7,
}

casino_presets = {
    {"_H3_COMPLETEDPOSIX", 268435455},
    {"_CAS_HEIST_FLOW", 268435455},
    {"_H3_LAST_APPROACH", 4},
    {"_H3OPT_APPROACH", nil},
    {"_H3_HARD_APPROACH", nil},
    {"_H3OPT_TARGET", 3},
    {"_H3OPT_POI", 268435455},
    {"_H3OPT_ACCESSPOINTS", 268435455},
    {"_H3OPT_BITSET1", 268435455},
    {"_H3OPT_CREWWEAP", nil},
    {"_H3OPT_CREWDRIVER", 5},
    {"_H3OPT_CREWHACKER", 4},
    {"_H3OPT_WEAPS", 1},
    {"_H3OPT_VEHS", 1},
    {"_H3OPT_DISRUPTSHIP", 3},
    {"_H3OPT_BODYARMORLVL", 3},
    {"_H3OPT_KEYLEVELS", 2},
    {"_H3OPT_MASKS", 4},
    {"_H3OPT_BITSET0", 268435455},
}

cayo_presets = {
    ["_H4CNF_BOLTCUT"] = {268435455, 268435455, 4424, 4424},
    ["_H4CNF_UNIFORM"] = {268435455, 268435455, 5256, 5256},
    ["_H4CNF_GRAPPEL"] = {268435455, 268435455, 5156, 5156},
    ["_H4_MISSIONS"] = {268435455, 268435455, 268435455, 268435455},
    ["_H4CNF_WEAPONS"] = {1 ,1, 1, 1},
    ["_H4CNF_TROJAN"] = {5, 5, 5, 5},
    ["_H4_PLAYTHROUGH_STATUS"] = {100, 100, 100, 100},
    ["_H4CNF_TARGET"] = {5, 5, 5, 5},
    ["_H4LOOT_CASH_I"] = {5551206, 2359448, 2359448, 2359448},
    ["_H4LOOT_CASH_I_SCOPED"] = {5551206, 2359448, 2359448, 2359448},
    ["_H4LOOT_CASH_C"] = {0, 0, 0, 0},
    ["_H4LOOT_CASH_C_SCOPED"] = {0, 0, 0, 0},
    ["_H4LOOT_COKE_I"] = {4884838, 2, 4901222, 4901222},
    ["_H4LOOT_COKE_I_SCOPED"] = {4884838, 2, 4901222, 4901222},
    ["_H4LOOT_COKE_C"] = {0, 0, 0, 0},
    ["_H4LOOT_COKE_C_SCOPED"] = {0, 0, 0, 0},
    ["_H4LOOT_GOLD_I"] = {0, 0, 0, 0},
    ["_H4LOOT_GOLD_I_SCOPED"] = {0, 0, 0, 0},
    ["_H4LOOT_GOLD_C"] = {192, 255, 255, 255},
    ["_H4LOOT_GOLD_C_SCOPED"] = {192, 255, 255, 255},
    ["_H4LOOT_WEED_I"] = {0, 0, 0, 0},
    ["_H4LOOT_WEED_I_SCOPED"] = {0, 0, 0, 0},
    ["_H4LOOT_WEED_C"] = {0, 0, 0, 0},
    ["_H4LOOT_WEED_C_SCOPED"] = {0, 0, 0, 0},
    ["_H4LOOT_PAINT"] = {120, 127, 127, 127},
    ["_H4LOOT_PAINT_SCOPED"] = {120, 127, 127, 127},
    ["_H4LOOT_CASH_V"] = {224431, 474431, 515151, 599431},
    ["_H4LOOT_COKE_V"] = {353863, 948863, 1030303, 1198863},
    ["_H4LOOT_GOLD_V"] = {471817, 1265151, 1373737, 1598484},
    ["_H4LOOT_PAINT_V"] = {353863, 948863, 1030303, 1198863},
    ["_H4LOOT_WEED_V"] = {0, 0, 0, 0},
    ["_H4_PROGRESS"] = {131055, 126823, 126823, 126823},
    ["_H4CNF_BS_GEN"] = {268435455, 262143, 262143, 262143},
    ["_H4CNF_BS_ENTR"] = {268435455, 63, 63, 63},
    ["_H4CNF_BS_ABIL"] = {268435455, 63, 63, 63},
    ["_H4CNF_WEP_DISRP"] = {3, 3, 3, 3},
    ["_H4CNF_ARM_DISRP"] = {3, 3, 3, 3},
    ["_H4CNF_HEL_DISRP"] = {3, 3, 3, 3},
    ["_H4CNF_APPROACH"] = {268435455, 268435455, 268435455, nil},
}

CasinoTeleports = {
    ["Outsite"] = {
        ["Main Entrance"] = {x = 917.575, y = 50.532, z = 80.899, h = 315.135},
        ["Security Tunnel"] = {x = 992.711, y = -61.941, z = 74.962, h = 297.608},
        ["Drainage Tunnel"] = {x = 1033.329, y = -270.549, z = 50.855, h = 23.793},
        ["Side Entrance"] = {x = 984.433, y = 8.287, z = 80.990, h = 330.796},
    },
    ["Prep"] = {
        ["Planning Boards"] = {x = 2713.145, y = -369.550, z = -54.781, h = 275.066},
        ["Garage Exit"] = {x = 2677.694, y = -361.404, z = -55.187, h = 90.846},
    },
    ["Inside"] = {
        ["Bonus Room"] = {x = 2520.837, y = -287.361, z = -58.723, h = 171.795},
        ["Staff Lobby"] = {x = 2548.375, y = -269.366, z = -58.723, h = 287.226},
        ["Inside Vault"] = {x = 2515.125, y = 238.916, z = -70.737},
        ["Outsite Vault"] = {x = 2497.509,  y = -238.507, z = -70.738},
    },
}

CayoTeleports = {
    ["Prep"] = {
        ["Kostatka Board"] = {x = 1561.223, y = 386.536, z = -49.685, h = 171.440},
    },
    ["Loot"] = {
        ["Primary Loot"] = {x = 5007.316, y = -5755.358, z = 15.484, h = 151.012},
        ["Secondary Loot (1)"] = {x = 5003.287, y = -5749.517, z = 14.840, h = 320.409},
        ["Secondary Loot (2)"] = {x = 4998.553, y = -5751.651, z = 14.840, h = 153.407},
    },
    ["Heist"] = {
        ["Compound Entrance"] = {x = 4977.727, y = -5707.348, z = 19.887, h = 227.712},
        ["Drainage Tunnel"] = {x = 5044.129, y = -5815.370, z = -11.146, h = 36.639},
        ["Compound Exit"] = {x = 4990.689, y = -5718.354, z = 19.880, h = 51.015},
        ["Ocean"] = {x = 4242.359, y = -5718.519, z = 127.694, h = 99.835},
    },
}

outfiteditor = {
    {"Mask", Mask, "Texture Mask", Masktxt},
    {"Hair", Hair, "Texture Hair", Hairtxt},
    {"Torso", Torso, "Texture Torso", Torsotxt},
    {"Legs", Legs, "Texture Legs", Legstxt},
    {"Parachute", Parachute, "Texture Parachute", Parachutetxt},
    {"Shoes", Shoes, "Texture Shoes", Shoestxt},
    {"Accessory", Accessory, "Texture Accessory", Accessorytxt},
    {"Undershirt", Undershirt, "Texture Undershirt", Undershirttxt},
    {"Armor", Armor, "Texture Armor", Armortxt},
    {"Badge", Badge, "Texture Badge", Badgetxt},
    {"Torso2", Torso2, "Texture Torso2", Torso2txt},
}

outfiteditorprops = {
    {"Hat", Hat, "Texture Hat", Hattxt},
    {"Glasses", Glasses, "Texture Glasses", Glassestxt},
    {"Ear", Ear, "Texture Ear", Eartxt},
}

return
