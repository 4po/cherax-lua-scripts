-- Variables
local PlayerChar = STATS.STAT_GET_INT(g_util.joaat("MPPLY_LAST_MP_CHAR"));
local PlayerPed =  PLAYER.GET_PLAYER_PED(PLAYER.PLAYER_ID());
ClassicPayOut = false;
ClassicPayOut2 = false;
ClassicPayOut3 = false;
ClassicPayOut4 = false;
CayoPayout1 = false;
CayoPayout2 = false;
CayoPayout3 = false;
CayoPayout4 = false;
DoomsPlayer10 = false;
DoomsPlayer1100 = false;
DoomsPlayer1150 = false;
DoomsPlayer1175 = false;
DoomsPlayer1200 = false;
DoomsPlayer1205 = false;
DoomsPlayer20 = false;
DoomsPlayer2100 = false;
DoomsPlayer2150 = false;
DoomsPlayer2175 = false;
DoomsPlayer2200 = false;
DoomsPlayer2205 = false;
DoomsPlayer30 = false;
DoomsPlayer3100 = false;
DoomsPlayer3150 = false;
DoomsPlayer3175 = false;
DoomsPlayer3200 = false;
DoomsPlayer3205 = false;
DoomsPlayer40 = false;
DoomsPlayer4100 = false;
DoomsPlayer4150 = false;
DoomsPlayer4175 = false;
DoomsPlayer4200 = false;
DoomsPlayer4205 = false;
CayoPlayer10 = false;
CayoPlayer1100 = false;
CayoPlayer1150 = false;
CayoPlayer1175 = false;
CayoPlayer1200 = false;
CayoPlayer1205 = false;
CayoPlayer20 = false;
CayoPlayer2100 = false;
CayoPlayer2150 = false;
CayoPlayer2175 = false;
CayoPlayer2200 = false;
CayoPlayer2205 = false;
CayoPlayer30 = false;
CayoPlayer3100 = false;
CayoPlayer3150 = false;
CayoPlayer3175 = false;
CayoPlayer3200 = false;
CayoPlayer3205 = false;
CayoPlayer40 = false;
CayoPlayer4100 = false;
CayoPlayer4150 = false;
CayoPlayer4175 = false;
CayoPlayer4200 = false;
CayoPlayer4205 = false;
CasinoPlayerAll100 = false;
CasinoPlayerPreset = false;
CasinoPlayer10 = false;
CasinoPlayer1100 = false;
CasinoPlayer1150 = false;
CasinoPlayer1175 = false;
CasinoPlayer1200 = false;
CasinoPlayer20 = false;
CasinoPlayer2100 = false;
CasinoPlayer2150 = false;
CasinoPlayer2175 = false;
CasinoPlayer2200 = false;
CasinoPlayer30 = false;
CasinoPlayer3100 = false;
CasinoPlayer3150 = false;
CasinoPlayer3175 = false;
CasinoPlayer3200 = false;
CasinoPlayer40 = false;
CasinoPlayer4100 = false;
CasinoPlayer4150 = false;
CasinoPlayer4175 = false;
CasinoPlayer4200 = false;

-- Classic Heist Functions

function OriginalB()
--  INT
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_FINISH_HEISTS"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_WIN_GOLD_MEDAL_HEISTS"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DO_HEIST_AS_MEMBER"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DO_HEIST_AS_THE_LEADER"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_FINISH_HEIST_SETUP_JOB"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_FINISH_HEIST"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_HEIST_COMPLETION"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_HEISTS_ORGANISED"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_CONTROL_CROWDS"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_WIN_GOLD_MEDAL_HEISTS"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_COMPLETE_HEIST_NOT_DIE"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_HEIST_START"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_HEIST_END"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CUTSCENE_MID_PRISON"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CUTSCENE_MID_HUMANE"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CUTSCENE_MID_NARC"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CUTSCENE_MID_ORNATE"), 900, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_FLEECA_PREP_1"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_FLEECA_PREP_2"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_FLEECA_FINALE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PRISON_PLANE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PRISON_BUS"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PRISON_STATION"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PRISON_UNFINISHED_BIZ"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PRISON_FINALE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_HUMANE_KEY_CODES"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_HUMANE_ARMORDILLOS"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_HUMANE_EMP"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_HUMANE_VALKYRIE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_HUMANE_FINALE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_HUMANE_VALKYRIE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_NARC_COKE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_NARC_TRASH_TRUCK"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_NARC_BIKERS"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_NARC_WEED"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_NARC_STEAL_METH"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_NARC_FINALE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PACIFIC_TRUCKS"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PACIFIC_WITSEC"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PACIFIC_HACK"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PACIFIC_BIKES"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PACIFIC_CONVOY"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_PACIFIC_FINALE"), 5000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_HEIST_ACH_TRACKER"), 268435455, true);
--  BOOL
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_COMPLET_HEIST_MEM"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_COMPLET_HEIST_1STPER"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_FLEECA_FIN"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_HST_ORDER"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_HST_SAME_TEAM"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_HST_ULT_CHAL"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_HUMANE_FIN"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_PACIFIC_FIN"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_PRISON_FIN"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_SERIESA_FIN"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_FINISH_HEIST_NO_DAMAGE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SPLIT_HEIST_TAKE_EVENLY"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_ALL_ROLES_HEIST"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_MATCHING_OUTFIT_HEIST"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_PLANNING_DONE_PRINT"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_PLANNING_DONE_HELP_0"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_PLANNING_DONE_HELP_1"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_PRE_PLAN_DONE_HELP_0"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_CUTS_DONE_FINALE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_IS_TUTORIAL"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_STRAND_INTRO_DONE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_CUTS_DONE_ORNATE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_CUTS_DONE_PRISON"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_CUTS_DONE_BIOLAB"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_CUTS_DONE_NARCOTIC"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_CUTS_DONE_TUTORIAL"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_AWARD_DONE_PREP"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_HEIST_AWARD_BOUGHT_IN"), true, true);
	g_gui.add_toast("Classic Heists and Awards Unlocked!");
end

function OriginalC()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_HEIST_PLANNING_STAGE"), 268435455,  true);
	g_gui.add_toast("*You Must Complete The First Setup*");
end

-- Classic Heist Loop Functions

function ClassicPay(value)
	g_gui.add_toast("*Enable This At The Heist Percentage Screen*", 5000);
	g_gui.add_toast("*This Will Only Work For You*", 5000);
	g_gui.add_toast("*Recommended: Do Not Earn More Than $15M Within 24Hrs*", 5000);
	ClassicPayOut = value
end

function ClassicPay2(value)
	g_gui.add_toast("*Enable This At The Heist Percentage Screen*", 5000);
	g_gui.add_toast("*This Will Only Work For You*", 5000);
	g_gui.add_toast("*Recommended: Do Not Earn More Than $15M Within 24Hrs*", 5000);
	ClassicPayOut2 = value
end

function ClassicPay3(value)
	g_gui.add_toast("*Enable This At The Heist Percentage Screen*", 5000);
	g_gui.add_toast("*This Will Only Work For You*", 5000);
	g_gui.add_toast("*Recommended: Do Not Earn More Than $15M Within 24Hrs*", 5000);
	ClassicPayOut3 = value
end

function ClassicPay4(value)
	g_gui.add_toast("*Enable This At The Heist Percentage Screen*", 5000);
	g_gui.add_toast("*This Will Only Work For You*", 5000);
	g_gui.add_toast("*Recommended: Do Not Earn More Than $15M Within 24Hrs*", 5000);
	ClassicPayOut4 = value
end

-- Doomsday Heist Functions

function DoomAwards()
--  INT
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FM_MISSION_PROG"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_MISSION_PROG"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_ALLINORDER"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_LOYALTY"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_CRIMMASMD"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_LOYALTY2"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_LOYALTY3"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_CRIMMASMD2"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_CRIMMASMD3"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_SUPPORT"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_MORGUE"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_DELUXO"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_SERVERFARM"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_IAABASE_FIN"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_STEALOSPREY"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_FOUNDRY"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_RIOTVAN"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_SUBMARINECAR"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_SUBMARINE_FIN"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_PREDATOR"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_BMLAUNCHER"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_BCCUSTOM"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_STEALTHTANKS"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_SPYPLANE"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_FINALE"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_FINALE_P2"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_FINALE_P3"), 10, true);
--  BOOL
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_IAA"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_SUBMARINE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_MISSILE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_ALLINORDER"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_ALLINORDER"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_LOYALTY"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_LOYALTY2"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_LOYALTY3"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_CRIMMASMD"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_CRIMMASMD2"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_AWD_GANGOPS_CRIMMASMD3"), true, true);
	g_gui.add_toast("Doomsday Heist Awards Unlocked!");
end

function TeleportDoomA()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 352.028, 4873.234, -60.794);
end

function TeleportDoomB()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 515.528, 4835.353, -62.587);
end

function TeleportDoomC()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 512.888, 4833.033, -68.989);
end

function DoomPreset1()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_MISSION_PROG"), 503, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_HEIST_STATUS"), -229383, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_NotifyS"), 1557, true);
	g_gui.add_toast("Doomsday Heist ACT I Pre-Set Loaded!", 5000);
end

function DoomPreset2()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_MISSION_PROG"), 240, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_HEIST_STATUS"), -229378, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_NotifyS"), 1557, true);
	g_gui.add_toast("Doomsday Heist ACT II Pre-Set Loaded!", 5000);
end

function DoomPreset3()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_MISSION_PROG"), 16368, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_HEIST_STATUS"), -229380, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_NotifyS"), 1557, true);
	g_gui.add_toast("Doomsday Heist ACT III Pre-Set Loaded!", 5000);
end

function DoomsA()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_HEIST_STATUS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_HEIST_STATUS"), -229384, true);
	g_gui.add_toast("All Doomsday Heists Unlocked!", 5000);
end

function DoomsB()   
	STATS.STAT_SET_INT(g_util.jooat("MP" .. PlayerChar .. "_GANGOPS_FLOW_MISSION_PROG"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FM_MISSION_PROG"), 268435455, true);
	g_gui.add_toast("Doomsday Heist Preps Skipped!", 5000);
end

function DoomsC()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_MISSION_PROG"), 240, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_HEIST_STATUS"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_NOTIFICATIONS"), 1557, true);
	g_gui.add_toast("Doomsday Heist Progress Reset!", 5000);
end

-- Doomsday Heist Looped Functions
function DoomsPay(value)
	g_gui.add_toast("*Enable This On The Heist Cut Percentage Screen*", 5000);
	g_gui.add_toast("*Keep This Enabled Until The End Of The Heist*", 5000);
	DoomPayout1 = value
end

function DoomsPay2(value)
	g_gui.add_toast("*Enable This On The Heist Cut Percentage Screen*", 5000);
	g_gui.add_toast("*Keep This Enabled Until The End Of The Heist*", 5000);
	DoomPayout2 = value
end

function DoomsPay3(value)
	g_gui.add_toast("*Enable This On The Heist Cut Percentage Screen*", 5000);
	g_gui.add_toast("*Keep This Enabled Until The End Of The Heist*", 5000);
	DoomPayout3 = value
end

function DoomsPlayer1A(value)
	DoomsPlayer10 = value
end

function DoomsPlayer1B(value)
	DoomsPlayer1100 = value
end

function DoomsPlayer1C(value)
	DoomsPlayer1150 = value
end

function DoomsPlayer1D(value)
	DoomsPlayer1175 = value
end

function DoomsPlayer1E(value)
	DoomsPlayer1200 = value
end

function DoomsPlayer1F(value)
	DoomsPlayer1205 = value
end

function DoomsPlayer2A(value)
	DoomsPlayer20 = value
end

function DoomsPlayer2B(value)
	DoomsPlayer2100 = value
end

function DoomsPlayer2C(value)
	DoomsPlayer2150 = value
end

function DoomsPlayer2D(value)
	DoomsPlayer2175 = value
end

function DoomsPlayer2E(value)
	DoomsPlayer2200 = value
end

function DoomsPlayer2F(value)
	DoomsPlayer2205 = value
end

function DoomsPlayer3A(value)
	DoomsPlayer30 = value
end

function DoomsPlayer3B(value)
	DoomsPlayer3100 = value
end

function DoomsPlayer3C(value)
	DoomsPlayer3150 = value
end

function DoomsPlayer3D(value)
	DoomsPlayer3175 = value
end

function DoomsPlayer3E(value)
	DoomsPlayer3200 = value
end

function DoomsPlayer3F(value)
	DoomsPlayer3205 = value
end

function DoomsPlayer4A(value)
	DoomsPlayer40 = value
end

function DoomsPlayer4B(value)
	DoomsPlayer4100 = value
end

function DoomsPlayer4C(value)
	DoomsPlayer4150 = value
end

function DoomsPlayer4D(value)
	DoomsPlayer4175 = value
end

function DoomsPlayer4E(value)
	DoomsPlayer4200 = value
end

function DoomsPlayer4F(value)
	DoomsPlayer4205 = value
end

-- Cayo Perico Heist Functions

function TeleportCayoA()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 5010.0586, -5750.5923, 15.484437);
end

function TeleportCayoB()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 4999.764160, -5749.863770, 14.840000);
end

function TeleportCayoC()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 5079.8276, -5757.6455, 15.829647);
end

function TeleportCayoD()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 5028.2734, -5734.967, 17.865585);
end

function TeleportCayoE()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 5010.479, -5752.5093, 28.845274);
end

function TeleportCayoF()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 4990.0386, -5717.6895, 19.880217);
end

function TeleportCayoG()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 5263.7124, -5407.5835, 65.24931);
end

function TeleportCayoH()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 5043.4365, -5816.2104, -10.203707);
end

function TeleportCayoI()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 4771.479, -6165.737, -39.079613);
end

function TeleportCayoJ()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 1561.224, 386.659, -49.685);
end

function CayoAwards()
	--  INT
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FM_MISSION_PROG"), 268435455, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_MISSION_PROG"), 268435455, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_ALLINORDER"), 100, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_LOYALTY"), 100, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_CRIMMASMD"), 100, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_LOYALTY2"), 100, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_LOYALTY3"), 100, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_CRIMMASMD2"), 100, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_CRIMMASMD3"), 100, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_GANGOPS_SUPPORT"), 100, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_MORGUE"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_DELUXO"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_SERVERFARM"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_IAABASE_FIN"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_STEALOSPREY"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_FOUNDRY"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_RIOTVAN"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_SUBMARINECAR"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_SUBMARINE_FIN"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_PREDATOR"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_BMLAUNCHER"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_BCCUSTOM"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_STEALTHTANKS"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_SPYPLANE"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_FINALE"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_FINALE_P2"), 10, true);
		STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CR_GANGOP_FINALE_P3"), 10, true);
	--  BOOL
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_INTELGATHER"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_COMPOUNDINFILT"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_LOOT_FINDER"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_MAX_DISRUPT"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_THE_ISLAND_HEIST"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_GOING_ALONE"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_TEAM_WORK"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_MIXING_UP"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_PRO_THIEF"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_CAT_BURGLAR"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_ONE_OF_THEM"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_GOLDEN_GUN"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_ELITE_THIEF"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_PROFESSIONAL"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_HELPING_OUT"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_COURIER"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_PARTY_VIBES"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_HELPING_HAND"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_ELEVENELEVEN"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_COMPLETE_H4_F_USING_VETIR"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_COMPLETE_H4_F_USING_LONGFIN"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_COMPLETE_H4_F_USING_ANNIH"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_COMPLETE_H4_F_USING_ALKONOS"), true, true);
		STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_COMPLETE_H4_F_USING_PATROLB"), true, true);
		g_gui.add_toast("Cayo Perico Heist Awards Unlocked!", 5000);
	end
	

-- Cayo Perico Heist Looped Functions

function CayoPay1(value)
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BOLTCUT"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_UNIFORM"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_GRAPPEL"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_MISSIONS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_WEAPONS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_TROJAN"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_PLAYTHROUGH_STATUS"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_TARGET"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_I"), 5551206, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_I_SCOPED"), 5551206, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_I"), 4884838, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_I_SCOPED"), 4884838, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_I"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_I_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_C"), 192, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_C_SCOPED"), 192, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_I"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_I_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT"), 120, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT_SCOPED"), 120, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_V"), 224431, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_V"), 353863, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_V"), 471817, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT_V"), 353863, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_V"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_PROGRESS"), 131055, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_GEN"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_ENTR"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_ABIL"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_WEP_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_ARM_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_HEL_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_APPROACH"), 268435455, true);
	g_gui.add_toast("Cayo Perico Heist Preset Loaded!", 5000);
	g_gui.add_toast("*Do Not Take More Than 2.4M*", 5000);
	g_gui.add_toast("*Make Sure You Have Completed The First Heist Already*", 5000);
	g_gui.add_toast("*Make Sure You Have Paid For The Heist Setup*", 5000);
	g_gui.add_toast("*Make Sure You Wait 16 Minutes Before Starting Another Heist*", 5000);
	g_gui.add_toast("*Keep This Enabled Until The End Of The Heist*", 5000);
	CayoPayout1 = value
end

function CayoPay2(value)
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BOLTCUT"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_UNIFORM"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_GRAPPEL"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_MISSIONS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_WEAPONS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_TROJAN"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_PLAYTHROUGH_STATUS"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_TARGET"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_I"), 2359448, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_I_SCOPED"), 2359448, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_I"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_I_SCOPED"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_I"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_I_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_C"), 255, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_C_SCOPED"), 255, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_I"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_I_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT"), 127, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT_SCOPED"), 127, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_V"), 474431, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_V"), 948863, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_V"), 1265151, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT_V"), 948863, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_V"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_PROGRESS"), 126823, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_GEN"), 262143, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_ENTR"), 63, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_ABIL"), 63, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_WEP_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_ARM_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_HEL_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_APPROACH"), 268435455, true);
	g_gui.add_toast("Cayo Perico Heist Preset Loaded!", 5000);
	g_gui.add_toast("*Do Not Take More Than 5.2M*", 5000);
	g_gui.add_toast("*Make Sure You Have Completed The First Heist Already*", 5000);
	g_gui.add_toast("*Make Sure You Have Paid For The Heist Setup*", 5000);
	g_gui.add_toast("*Make Sure You Wait 16 Minutes Before Starting Another Heist*", 5000);
	g_gui.add_toast("*Keep This Enabled Until The End Of The Heist*", 5000);
	CayoPayout2 = value
end

function CayoPay3(value)
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BOLTCUT"), 4424, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_UNIFORM"), 5256, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_GRAPPEL"), 5156, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_MISSIONS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_WEAPONS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_TROJAN"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_PLAYTHROUGH_STATUS"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_TARGET"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_I"), 2359448, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_I_SCOPED"), 2359448, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_I"), 4901222, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_I_SCOPED"), 4901222, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_I"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_I_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_C"), 255, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_C_SCOPED"), 255, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_I"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_I_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT"), 127, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT_SCOPED"), 127, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_V"), 515151, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_V"), 1030303, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_V"), 1373737, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT_V"), 1030303, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_V"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_PROGRESS"), 126823, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_GEN"), 262143, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_ENTR"), 63, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_ABIL"), 63, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_WEP_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_ARM_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_HEL_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_APPROACH"), 268435455, true);
	g_gui.add_toast("Cayo Perico Heist Preset Loaded!", 5000);
	g_gui.add_toast("*Do Not Take More Than 8.1M*", 5000);
	g_gui.add_toast("*Make Sure You Have Completed The First Heist Already*", 5000);
	g_gui.add_toast("*Make Sure You Have Paid For The Heist Setup*", 5000);
	g_gui.add_toast("*Make Sure You Wait 16 Minutes Before Starting Another Heist*", 5000);
	g_gui.add_toast("*Keep This Enabled Until The End Of The Heist*", 5000);
	CayoPayout3 = value
end

function CayoPay4(value)
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BOLTCUT"), 4424, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_UNIFORM"), 5256, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_GRAPPEL"), 5156, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_MISSIONS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_WEAPONS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_TROJAN"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_PLAYTHROUGH_STATUS"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_TARGET"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_I"), 2359448, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_I_SCOPED"), 2359448, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_I"), 4901222, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_I_SCOPED"), 4901222, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_I"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_I_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_C"), 255, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_C_SCOPED"), 255, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_I"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_I_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_C"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_C_SCOPED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT"), 127, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT_SCOPED"), 127, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_CASH_V"), 599431, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_COKE_V"), 1198863, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_GOLD_V"), 1598484, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_PAINT_V"), 1198863, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4LOOT_WEED_V"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4_PROGRESS"), 126823, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_GEN"), 262143, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_ENTR"), 63, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_BS_ABIL"), 63, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_WEP_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_ARM_DISRP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_HEL_DISRP"), 3, true);
	--STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H4CNF_APPROACH"), 268435455, true);
	g_gui.add_toast("Cayo Perico Heist Preset Loaded!", 5000);
	g_gui.add_toast("*Do Not Take More Than 11.4M*", 5000);
	g_gui.add_toast("*Make Sure You Have Completed The First Heist Already*", 5000);
	g_gui.add_toast("*Make Sure You Have Paid For The Heist Setup*", 5000);
	g_gui.add_toast("*Make Sure You Wait 16 Minutes Before Starting Another Heist*", 5000);
	g_gui.add_toast("*Keep This Enabled Until The End Of The Heist*", 5000);
	CayoPayout4 = value
end

function CayoPlayer1A(value)
	CayoPlayer10 = value
end

function CayoPlayer1B(value)
	CayoPlayer1100 = value
end

function CayoPlayer1C(value)
	CayoPlayer1150 = value
end

function CayoPlayer1D(value)
	CayoPlayer1175 = value
end

function CayoPlayer1E(value)
	CayoPlayer1200 = value
end

function CayoPlayer1F(value)
	CayoPlayer1205 = value
end

function CayoPlayer2A(value)
	CayoPlayer20 = value
end

function CayoPlayer2B(value)
	CayoPlayer2100 = value
end

function CayoPlayer2C(value)
	CayoPlayer2150 = value
end

function CayoPlayer2D(value)
	CayoPlayer2175 = value
end

function CayoPlayer2E(value)
	CayoPlayer2200 = value
end

function CayoPlayer2F(value)
	CayoPlayer2205 = value
end

function CayoPlayer3A(value)
	CayoPlayer30 = value
end

function CayoPlayer3B(value)
	CayoPlayer3100 = value
end

function CayoPlayer3C(value)
	CayoPlayer3150 = value
end

function CayoPlayer3D(value)
	CayoPlayer3175 = value
end

function CayoPlayer3E(value)
	CayoPlayer3200 = value
end

function CayoPlayer3F(value)
	CayoPlayer3205 = value
end

function CayoPlayer4A(value)
	CayoPlayer40 = value
end

function CayoPlayer4B(value)
	CayoPlayer4100 = value
end

function CayoPlayer4C(value)
	CayoPlayer4150 = value
end

function CayoPlayer4D(value)
	CayoPlayer4175 = value
end

function CayoPlayer4E(value)
	CayoPlayer4200 = value
end

function CayoPlayer4F(value)
	CayoPlayer4205 = value
end

-- Casino Heist Functions

function CasinoPreset1()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_COMPLETEDPOSIX"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CAS_HEIST_FLOW"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_LAST_APPROACH"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_APPROACH"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_HARD_APPROACH"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_POI"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_ACCESSPOINTS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET1"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_VEHS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_DISRUPTSHIP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BODYARMORLVL"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_KEYLEVELS"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_MASKS"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET0"), 268435455, true);
	g_gui.add_toast("Casino Heist Silent [Hard] Pre-Set Loaded!");
end

function CasinoPreset2()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_COMPLETEDPOSIX"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CAS_HEIST_FLOW"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_LAST_APPROACH"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_APPROACH"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_HARD_APPROACH"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_POI"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_ACCESSPOINTS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET1"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_VEHS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_DISRUPTSHIP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BODYARMORLVL"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_KEYLEVELS"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_MASKS"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET0"), 268435455, true);
	g_gui.add_toast("Casino Heist The Big Con [Hard] Pre-Set Loaded!");
end

function CasinoPreset3()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_COMPLETEDPOSIX"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CAS_HEIST_FLOW"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_LAST_APPROACH"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_APPROACH"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_HARD_APPROACH"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_POI"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_ACCESSPOINTS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET1"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_VEHS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_DISRUPTSHIP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BODYARMORLVL"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_KEYLEVELS"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_MASKS"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET0"), 268435455, true);
	g_gui.add_toast("Casino Heist Aggressive [Hard] Pre-Set Loaded!");
end

function CasinoPreset4()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_COMPLETEDPOSIX"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CAS_HEIST_FLOW"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_LAST_APPROACH"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_APPROACH"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_HARD_APPROACH"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_POI"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_ACCESSPOINTS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET1"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_VEHS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_DISRUPTSHIP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BODYARMORLVL"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_KEYLEVELS"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_MASKS"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET0"), 268435455, true);
	g_gui.add_toast("Casino Heist Silent [Normal] Pre-Set Loaded!");
end

function CasinoPreset5()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_COMPLETEDPOSIX"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CAS_HEIST_FLOW"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_LAST_APPROACH"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_APPROACH"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_HARD_APPROACH"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_POI"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_ACCESSPOINTS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET1"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_VEHS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_DISRUPTSHIP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BODYARMORLVL"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_KEYLEVELS"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_MASKS"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET0"), 268435455, true);
	g_gui.add_toast("Casino Heist The Big Con [Normal] Pre-Set Loaded!");
end

function CasinoPreset6()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_COMPLETEDPOSIX"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CAS_HEIST_FLOW"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_LAST_APPROACH"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_APPROACH"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_HARD_APPROACH"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_POI"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_ACCESSPOINTS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET1"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 5, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_VEHS"), 1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_DISRUPTSHIP"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BODYARMORLVL"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_KEYLEVELS"), 2, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_MASKS"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET0"), 268435455, true);
	g_gui.add_toast("Casino Heist Agressive [Normal] Pre-Set Loaded!");
end

function CasinoPOI()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_POI"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_ACCESSPOINTS"), 2047, true);
	g_gui.add_toast("All Casino Heist POI Scoped!", 5000);
end

function CasinoTarget1()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 3, true);
	g_gui.add_toast("Casino Heist Target Set To Diamonds!", 5000);
end

function CasinoTarget2()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 1, true);
	g_gui.add_toast("Casino Heist Target Set To Gold!", 5000);
end

function CasinoTarget3()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 2, true);
	g_gui.add_toast("Casino Heist Target Set To Artwork!", 5000);
end

function CasinoTarget4()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 4, true);
	g_gui.add_toast("Casino Heist Target Set To Cash!", 5000);
end

function CasinoGunman1()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 4, true);
	g_gui.add_toast("Casino Heist Gunman Set To Chester!", 5000);
end

function CasinoGunman2()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 2, true);
	g_gui.add_toast("Casino Heist Gunman Set To Gustavo!", 5000);
end

function CasinoGunman3()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 5, true);
	g_gui.add_toast("Casino Heist Gunman Set To Patrick!", 5000);
end

function CasinoGunman4()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 3, true);
	g_gui.add_toast("Casino Heist Gunman Set To Charlie!", 5000);
end

function CasinoGunman5()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 1, true);
	g_gui.add_toast("Casino Heist Gunman Set To Karl!", 5000);
end

function casinoWeapsBest()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 1, true);
	g_gui.add_toast("Casino Heist Gunman Set To Karl!", 5000);
end

function casinoWeapsWorst()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 0, true);
	g_gui.add_toast("Casino Heist Gunman Set To Karl!", 5000);
end

function casinoDriver1()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 5, true);
	g_gui.add_toast("Casino Heist Driver Set To Chester!", 5000);
end

function casinoDriver2()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 3, true);
	g_gui.add_toast("Casino Heist Driver Set To Eddit!", 5000);
end

function casinoDriver3()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 2, true);
	g_gui.add_toast("Casino Heist Driver Set To Taliana!", 5000);
end

function casinoDriver4()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 4, true);
	g_gui.add_toast("Casino Heist Driver Set To Zach!", 5000);
end

function casinoDriver5()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 1, true);
	g_gui.add_toast("Casino Heist Driver Set To Karim!", 5000);
end

function casinoVehicleBest()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_VEHS"), 3, true);
	g_gui.add_toast("Casino Heist Driver Set To Karim!", 5000);
end

function casinoHacker1()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 4, true);
	g_gui.add_toast("Casino Heist Hacker Set To Avi!", 5000);
end

function casinoHacker2()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 5, true);
	g_gui.add_toast("Casino Heist Hacker Set To Paige!", 5000);
end

function casinoHacker3()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 2, true);
	g_gui.add_toast("Casino Heist Hacker Set To Christian!", 5000);
end

function casinoHacker4()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 3, true);
	g_gui.add_toast("Casino Heist Hacker Set To Yohan!", 5000);
end

function casinoHacker5()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 1, true);
	g_gui.add_toast("Casino Heist Hacker Set To Rickie!", 5000);
end


function CasinoKeycard()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_DISRUPTSHIP"), 0, true);
	g_gui.add_toast("Casino Heist Keycard Set To Level 3!", 5000);
end

function CasinoSkip()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_VCM_FLOW_PROGRESS"), 268435455, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_VCM_STORY_PROGRESS"), 5, true);
	
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_LEADER"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_VCM_FLOW_CS_FIN_SEEN"), true, true);
	g_gui.add_toast("Casino Missions Skipped!", 5000);
end

function CasinoIACut()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 6, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 6, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 6, true);
	g_gui.add_toast("Activate this outside the arcade before the heist!", 5000);
end

function CasinoReset()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_LAST_APPROACH"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_APPROACH"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_HARD_APPROACH"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_POI"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_ACCESSPOINTS"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET1"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWWEAP"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWDRIVER"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_CREWHACKER"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_WEAPS"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_VEHS"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_DISRUPTSHIP"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BODYARMORLVL"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_KEYLEVELS"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_MASKS"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_BITSET0"), 0, true);
	g_gui.add_toast("Casino Heist Reset!", 5000);
end

function TeleportCasinoA()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 2711.773, -369.458, -54.781);
end

function TeleportCasinoB()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 2677.237, -361.494, -55.187);
end

function TeleportCasinoC()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 2542.052, -214.3084, -58.722965);
end

function TeleportCasinoD()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 2547.9192, -273.16754, -58.723003);
end

function TeleportCasinoE()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 2465.4746, -279.2276, -70.694145);
end

function TeleportCasinoF()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 2515.1252, -238.91661, -70.73713);
end

function TeleportCasinoG()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 2497.5098, -238.50768, -70.7388);
end

function TeleportCasinoH()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 2520.8645, -286.30685, -58.723007);
end

function TeleportCasinoI()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 917.24634, 48.989567, 80.89892);
end

function TeleportCasinoJ()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 965.14856, -9.05023, 80.63045);
end

function TeleportCasinoK()
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlayerPed, 997.5346, 84.51491, 80.990555);
end


-- Casino Heist Loop Functions

function CasinoPlayer1A(value)
	CasinoPlayer10 = value
end

function CasinoPlayer1B(value)
	CasinoPlayer1100 = value
end

function CasinoPlayer1C(value)
	CasinoPlayer1150 = value
end

function CasinoPlayer1D(value)
	CasinoPlayer1175 = value
end

function CasinoPlayer1E(value)
	CasinoPlayer1200 = value
end

function CasinoPlayer2A(value)
	CasinoPlayer20 = value
end

function CasinoPlayer2B(value)
	CasinoPlayer2100 = value
end

function CasinoPlayer2C(value)
	CasinoPlayer2150 = value
end

function CasinoPlayer2D(value)
	CasinoPlayer2175 = value
end

function CasinoPlayer2E(value)
	CasinoPlayer2200 = value
end

function CasinoPlayer3A(value)
	CasinoPlayer30 = value
end

function CasinoPlayer3B(value)
	CasinoPlayer3100 = value
end

function CasinoPlayer3C(value)
	CasinoPlayer3150 = value
end

function CasinoPlayer3D(value)
	CasinoPlayer3175 = value
end

function CasinoPlayer3E(value)
	CasinoPlayer3200 = value
end

function CasinoPlayer4A(value)
	CasinoPlayer40 = value
end

function CasinoPlayer4B(value)
	CasinoPlayer4100 = value
end

function CasinoPlayer4C(value)
	CasinoPlayer4150 = value
end

function CasinoPlayer4D(value)
	CasinoPlayer4175 = value
end

function CasinoPlayer4E(value)
	CasinoPlayer4200 = value
end

function CasinoPlayerAll(value)
	CasinoPlayerAll100 = value
end


function CasinoPresetPay(value)
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3OPT_TARGET"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_LAST_APPROACH"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_HARD_APPROACH"), 0, true);
	g_gui.add_toast("*Keep This Enabled Until The End Of The Heist*", 5000);
	CasinoPlayerPreset = value
end

-- The Agency Functions

function NightlifeA()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 3, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The Nightclub Prep Loaded!", 5000);
end

function NightlifeB()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The Marina Prep Loaded!", 5000);
end

function NightlifeC()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 12, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The Nightlife Mission Loaded!", 5000);
end

function HighSocietyA()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_STRAND"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 28, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The Country Club Prep Loaded!", 5000);
end

function HighSocietyB()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_STRAND"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 60, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The Guest List Prep Loaded!", 5000);
end

function HighSocietyC()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_STRAND"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 28, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The High Society Mission Loaded!", 5000);
end

function SouthCentralA()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_STRAND"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 252, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The Davis Prep Loaded!", 5000);
end

function SouthCentralB()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_STRAND"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 508, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The Ballas Prep Loaded!", 5000);
end

function SouthCentralC()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_STRAND"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), 2044, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	g_gui.add_toast("The South Central Mission Loaded!", 5000);
end

function AgencyMissions()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_GENERAL_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COMPLETED_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_BS"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_STRAND"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_STORY_COOLDOWN"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_PAYPHONE_BONUS_KILL_METHOD"), -1, true);
	g_gui.add_toast("All Missions Completed!", 5000);
end

-- LS Tuners Functions

function UnionDep()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 12543, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 0, true);
	g_gui.add_toast("The Union Depository Contract Loaded!", 5000);
end

function SuperDol()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 4351, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 1, true);
	g_gui.add_toast("The Superdollar Deal Loaded!", 5000);
end

function BankCon()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 12543, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 2, true);
	g_gui.add_toast("The Bank Contract Loaded!", 5000);
end

function ECUCon()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 12543, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 3, true);
	g_gui.add_toast("The ECU Job Loaded!", 5000);
end

function PrisonCon()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 12543, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 4, true);
	g_gui.add_toast("The Prison Contract Loadedf!", 5000);
end

function AgencyCon()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 12543, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 5, true);
	g_gui.add_toast("The Agency Contract Loaded!", 5000);
end

function LostCon()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 12543, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 6, true);
	g_gui.add_toast("The Lost Contract Loaded!", 5000);
end

function DataCon()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 12543, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 7, true);
	g_gui.add_toast("The Data Contract Loaded!", 5000);
end

function LSResetCon()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_GEN_BS"), 8371, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TUNER_CURRENT"), 2147483647, true);
	g_gui.add_toast("LS Tuners Contracts Reset!", 5000);
end

-- Unlocks
function addBadsport()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_BADSPORT_MESSAGE"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_BECAME_BADSPORT_NUM"), 2147483647, true);
	STATS.STAT_SET_FLOAT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_OVERALL_BADSPORT"), 60000, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_CHAR_IS_BADSPORT"), true, true);
	g_gui.add_toast("You are now a Badsport!", 5000);
end

function removeBadsport()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_BADSPORT_MESSAGE"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_BECAME_BADSPORT_NUM"), 0, true);
	STATS.STAT_SET_FLOAT(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_OVERALL_BADSPORT"), 0, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_MPPLY_CHAR_IS_BADSPORT"), false, true);
	g_gui.add_toast("You are no longer in Badsport!", 5000);
end

function ArcadeToys()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_PREPARATION"), 40, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_ASLEEPONJOB"), 20, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DAICASHCRAB"), 100000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_BIGBRO"), 40, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_SHARPSHOOTER"), 40, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_RACECHAMP"), 40, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_BATSWORD"), 1000000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_COINPURSE"), 950000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_ASTROCHIMP"), 3000000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_MASTERFUL"), 40000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_NUM_WINS_GANG_0"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_NUM_WINS_GANG_1"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_NUM_WINS_GANG_2"), 501, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_NUM_WINS_GANG_3"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CH_ARC_CAB_CLAW_TROPHY"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CH_ARC_CAB_LOVE_TROPHY"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_MAX_MOON_DIST"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_0"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_1"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_2"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_3"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_4"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_5"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_6"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_7"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_8"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_INITIALS_9"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_0"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_1"), 50333, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_2"), 63512, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_3"), 46136, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_4"), 21638, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_5"), 2133, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_6"), 1215, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_7"), 2444, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_8"), 38023, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_IAP_SCORE_9"), 2233, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_1"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_2"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_3"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_4"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_5"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_6"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_7"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_8"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_SCGW_SCORE_9"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_0"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_1"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_2"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_3"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_4"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_5"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_6"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_7"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_8"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_INITIALS_9"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_0"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_1"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_2"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_3"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_4"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_5"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_6"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_7"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_8"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_DEFENDER_SCORE_9"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_0"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_1"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_2"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_3"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_4"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_5"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_6"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_7"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_8"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_INITIALS_9"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_0"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_1"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_2"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_3"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_4"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_5"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_6"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_7"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_8"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_MONKEY_SCORE_9"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_0"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_1"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_2"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_3"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_4"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_5"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_6"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_7"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_8"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_INITIALS_9"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_0"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_1"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_2"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_3"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_4"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_5"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_6"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_7"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_8"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DG_PENETRATOR_SCORE_9"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_0"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_1"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_2"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_3"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_4"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_5"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_6"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_7"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_8"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_INITIALS_9"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_0"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_1"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_2"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_3"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_4"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_5"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_6"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_7"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_8"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GGSM_SCORE_9"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_0"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_1"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_2"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_3"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_4"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_5"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_6"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_7"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_8"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_INITIALS_9"), 69644, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_0"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_1"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_2"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_3"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_4"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_5"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_6"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_7"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_8"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TWR_SCORE_9"), 50, true);
	
	
	
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SCOPEOUT"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_CREWEDUP"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_MOVINGON"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_PROMOCAMP"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_GUNMAN"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SMASHNGRAB"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_INPLAINSI"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_UNDETECTED"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_ALLROUND"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_ELITETHEIF"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_PRO"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SUPPORTACT"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SHAFTED"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_COLLECTOR"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_DEADEYE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_PISTOLSATDAWN"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_TRAFFICAVOI"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_CANTCATCHBRA"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_WIZHARD"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_APEESCAP"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_MONKEYKIND"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_AQUAAPE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_KEEPFAITH"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_TRUELOVE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_NEMESIS"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_FRIENDZONED"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_IAP_CHALLENGE_0"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_IAP_CHALLENGE_1"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_IAP_CHALLENGE_2"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_IAP_CHALLENGE_3"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_IAP_CHALLENGE_4"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_IAP_GOLD_TANK"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_SCGW_WON_NO_DEATHS"), true, true);
	SCRIPT.SET_GLOBAL_I(262145 + 27964,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27965,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27966,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27967,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27968,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27969,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27970,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27971,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27972,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27973,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27974,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27975,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27976,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27977,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27978,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27979,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27980,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27981,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27982,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27983,1)
    SCRIPT.SET_GLOBAL_I(262145 + 27984,1)
	g_gui.add_toast("Arcade Toys/Trophies Unlocked!", 5000);
	end

function AgencyAwards()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_CONTRACTOR"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_COLD_CALLER"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_PRODUCER"), 60, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXERTELEPHONEHITSCOMPL"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_PAYPHONE_BONUS_KILL_METHOD"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_PAYPHONE_BONUS_KILL_METHOD"), -1, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FIXER_COUNT"), 501, true);

	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_TEEING_OFF"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_PARTY_NIGHT"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_BILLIONAIRE_GAMES"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_HOOD_PASS"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_STUDIO_TOUR"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_DONT_MESS_DRE"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_BACKUP"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SHORTFRANK_1"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SHORTFRANK_2"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SHORTFRANK_3"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_CONTR_KILLER"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_DOGS_BEST_FRIEND"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_MUSIC_STUDIO"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SHORTLAMAR_1"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SHORTLAMAR_2"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_SHORTLAMAR_3"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_SETUP"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_STRAND"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_PARTY"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_PARTY_2"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_PARTY_F"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_BILL"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_BILL_2"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_BILL_F"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_HOOD"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_HOOD_2"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_BS_IMANI_D_APP_HOOD_F"), true, true);
	g_gui.add_toast("The Agency Awards Unlocked!", 5000);
end

function xmasUnlock()
	SCRIPT.SET_GLOBAL_I(262145+19050,1)
    SCRIPT.SET_GLOBAL_I(262145+12499,1)
    SCRIPT.SET_GLOBAL_I(262145+12500,1)
    SCRIPT.SET_GLOBAL_I(262145+12501,1)
    SCRIPT.SET_GLOBAL_I(262145+12502,1)
    SCRIPT.SET_GLOBAL_I(262145+12503,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9240,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9241,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9242,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23180,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23181,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23182,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23183,1)
    SCRIPT.SET_GLOBAL_I(262145 + 4734,1)
    SCRIPT.SET_GLOBAL_I(262145 + 8977,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9184,0)
    SCRIPT.SET_GLOBAL_I(262145 + 9185,0)
    SCRIPT.SET_GLOBAL_I(262145 + 9186,0)
    SCRIPT.SET_GLOBAL_I(262145 + 9187,0)
    SCRIPT.SET_GLOBAL_I(262145 + 9188,0)
    SCRIPT.SET_GLOBAL_I(262145 + 9189,0)
    SCRIPT.SET_GLOBAL_I(262145 + 9190,0)
    SCRIPT.SET_GLOBAL_I(262145 + 9191,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9192,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9193,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9194,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9195,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9196,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9197,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9198,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9199,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9200,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9201,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9202,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9203,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9204,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9205,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9206,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9207,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9208,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9209,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9210,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9211,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9212,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9213,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9214,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9215,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9216,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9217,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9218,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9219,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9220,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9221,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9222,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9223,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9224,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9225,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9226,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9227,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9228,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9229,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9230,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9231,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9232,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9233,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9234,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9235,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9236,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9237,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9238,1)
    SCRIPT.SET_GLOBAL_I(262145 + 9239,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12605,1) -- from 2015
    SCRIPT.SET_GLOBAL_I(262145 + 12606,1) -- from 2015
    SCRIPT.SET_GLOBAL_I(262145 + 12607,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12608,1)
    SCRIPT.SET_GLOBAL_I(262145 + 18909,1) -- from 2016
    SCRIPT.SET_GLOBAL_I(262145 + 18910,1)
    SCRIPT.SET_GLOBAL_I(262145 + 18911,1)
    SCRIPT.SET_GLOBAL_I(262145 + 18912,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23202,1) -- from 2017
    SCRIPT.SET_GLOBAL_I(262145 + 23203,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23204,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23205,1)
    SCRIPT.SET_GLOBAL_I(262145 + 22823,1)
    SCRIPT.SET_GLOBAL_I(262145 + 22824,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25486,1) -- from 2018
    SCRIPT.SET_GLOBAL_I(262145 + 25487,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25488,1)
    SCRIPT.SET_GLOBAL_I(262145 + 28338,1) -- from 2019
    SCRIPT.SET_GLOBAL_I(262145 + 28339,1)
    SCRIPT.SET_GLOBAL_I(262145 + 28340,1)
    SCRIPT.SET_GLOBAL_I(262145 + 28341,1)
    SCRIPT.SET_GLOBAL_I(262145 + 30536,1) -- from 2020
    SCRIPT.SET_GLOBAL_I(262145 + 31382,1) -- from 20201
    SCRIPT.SET_GLOBAL_I(262145 + 31383,1)
	SCRIPT.SET_GLOBAL_I(262145 + 12380,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12381,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12382,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12383,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12384,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12385,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12386,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12387,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12388,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12389,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 12390,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12391,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12392,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12393,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12394,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12395,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12396,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12397,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12398,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12399,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12400,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12401,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12402,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14984,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14985,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14986,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14987,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14988,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14989,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14990,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14991,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14992,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14993,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14994,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 23989,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23990,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23991,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23992,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23993,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23994,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23995,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23996,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23997,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23998,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 17331,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17332,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17333,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17334,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17335,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17336,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17337,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17338,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17339,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17340,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17341,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17342,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17343,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17344,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17345,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17346,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17347,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17348,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17349,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17350,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17351,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17352,1)
    SCRIPT.SET_GLOBAL_I(262145 + 17353,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 11744,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11745,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11746,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11747,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11748,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11749,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11750,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11751,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11752,1)
    SCRIPT.SET_GLOBAL_I(262145 + 11753,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12390,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12391,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12392,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12393,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12394,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12395,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12396,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12397,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12398,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12399,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12391,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12392,1)
    SCRIPT.SET_GLOBAL_I(262145 + 12393,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14978,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 23972,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23973,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23974,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23975,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23976,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23977,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23978,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23979,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23980,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23981,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23982,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23984,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23985,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23986,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23987,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23988,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23999,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24000,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 24673,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24674,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24675,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24676,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24677,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24678,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24679,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24680,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24681,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24682,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24683,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24684,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24685,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24686,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24687,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24688,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24689,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24690,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24691,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24692,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24693,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24694,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24695,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24497,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24498,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24499,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24500,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24501,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24502,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24503,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24504,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24505,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24506,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24507,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24508,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24509,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24510,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24511,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24512,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24513,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24514,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24515,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24516,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 24457,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24458,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24459,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24460,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24461,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24462,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24463,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24464,1)
    SCRIPT.SET_GLOBAL_I(262145 + 24465,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 20902,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20903,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20904,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20905,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20906,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20907,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20908,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20909,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 20910,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20911,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20912,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20913,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20914,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20915,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20916,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20917,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20918,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20919,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20920,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20921,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20922,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20923,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20924,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20925,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20926,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20927,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20928,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20929,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20930,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20931,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20932,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20933,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20934,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 23175,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23176,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23177,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23178,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23179,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23201,1)
    SCRIPT.SET_GLOBAL_I(262145 + 22823,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23971,1)

    --
    SCRIPT.SET_GLOBAL_I(262145 + 16589,1)
    SCRIPT.SET_GLOBAL_I(262145 + 16590,1)
    SCRIPT.SET_GLOBAL_I(262145 + 16591,1)
    SCRIPT.SET_GLOBAL_I(262145 + 16592,1)
    SCRIPT.SET_GLOBAL_I(262145 + 16593,1)
    SCRIPT.SET_GLOBAL_I(262145 + 16594,1)
    SCRIPT.SET_GLOBAL_I(262145 + 16595,1)
    SCRIPT.SET_GLOBAL_I(262145 + 16596,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 25558,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25559,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25560,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25561,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25562,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25563,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25564,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25565,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25566,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25567,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25568,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25569,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25570,1)
    -- CASINO SHIRT
    SCRIPT.SET_GLOBAL_I(262145 + 26675,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26676,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26677,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26678,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26679,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26680,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26681,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26682,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26683,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26684,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26685,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26686,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26687,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26688,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26689,1)
    SCRIPT.SET_GLOBAL_I(262145 + 26690,1)
    -- More from 2021
    SCRIPT.SET_GLOBAL_I(262145 + 14971,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14972,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14973,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14975,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14976,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14977,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14979,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14980,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14981,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14982,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14983,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14984,1)
    SCRIPT.SET_GLOBAL_I(262145 + 14985,1)
    SCRIPT.SET_GLOBAL_I(262145 + 23983,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 20935,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20936,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20937,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20938,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20939,1)
    SCRIPT.SET_GLOBAL_I(262145 + 20940,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25377,1)
    --
    SCRIPT.SET_GLOBAL_I(262145 + 31449,1)
    SCRIPT.SET_GLOBAL_I(262145 + 31450,1)
    SCRIPT.SET_GLOBAL_I(262145 + 31451,1)
end

function valentineUnlock()
	SCRIPT.SET_GLOBAL_I(262145+6856,1)
	SCRIPT.SET_GLOBAL_I(262145+11819,1)
	SCRIPT.SET_GLOBAL_I(262145+11820,1)
	SCRIPT.SET_GLOBAL_I(262145+11821,1)
	SCRIPT.SET_GLOBAL_I(262145+11822,1)
	SCRIPT.SET_GLOBAL_I(262145+11823,1)
	SCRIPT.SET_GLOBAL_I(262145+13185,1)
	SCRIPT.SET_GLOBAL_I(262145+13186,1)
	g_gui.add_toast("Valentines Items Unlocked!", 5000);
end



function independenceUnlock()
    SCRIPT.SET_GLOBAL_I(262145+8050,1)
    SCRIPT.SET_GLOBAL_I(262145+8051,1)
    SCRIPT.SET_GLOBAL_I(262145+8056,1)
    SCRIPT.SET_GLOBAL_I(262145+8057,1)
    SCRIPT.SET_GLOBAL_I(262145+8058,1)
    SCRIPT.SET_GLOBAL_I(262145+8059,1)
    SCRIPT.SET_GLOBAL_I(262145+8060,1)
    SCRIPT.SET_GLOBAL_I(262145+8061,1)
    SCRIPT.SET_GLOBAL_I(262145+8064,1)
    SCRIPT.SET_GLOBAL_I(262145+8065,1)
    SCRIPT.SET_GLOBAL_I(262145+8066,1)
    SCRIPT.SET_GLOBAL_I(262145+8068,1)
    SCRIPT.SET_GLOBAL_I(262145+8069,1)
    SCRIPT.SET_GLOBAL_I(262145+8070,1)
    SCRIPT.SET_GLOBAL_I(262145+8071,1)
    SCRIPT.SET_GLOBAL_I(262145+8072,1)
    SCRIPT.SET_GLOBAL_I(262145+8073,1)
    SCRIPT.SET_GLOBAL_I(262145+8074,1)
    SCRIPT.SET_GLOBAL_I(262145+8075,1)
    SCRIPT.SET_GLOBAL_I(262145+8076,1)
    SCRIPT.SET_GLOBAL_I(262145+8077,1)
    SCRIPT.SET_GLOBAL_I(262145+8078,1)
    SCRIPT.SET_GLOBAL_I(262145+8079,1)
    SCRIPT.SET_GLOBAL_I(262145+8080,1)
    SCRIPT.SET_GLOBAL_I(262145+8081,1)
    SCRIPT.SET_GLOBAL_I(262145+8089,1) -- from now not related to independence
    SCRIPT.SET_GLOBAL_I(262145+8090,1)
    SCRIPT.SET_GLOBAL_I(262145+8091,1)
    SCRIPT.SET_GLOBAL_I(262145+8092,1)
    SCRIPT.SET_GLOBAL_I(262145+8093,1)
    SCRIPT.SET_GLOBAL_I(262145+8094,1)
    SCRIPT.SET_GLOBAL_I(262145+8095,1)
	g_gui.add_toast("Independence Items Unlocked!", 5000);
end

function halloweenUnlock()
	SCRIPT.SET_GLOBAL_I(262145+11785,1)
	SCRIPT.SET_GLOBAL_I(262145+11833,1)
	SCRIPT.SET_GLOBAL_I(262145+11825,1)
	SCRIPT.SET_GLOBAL_I(262145+11830,1)
	SCRIPT.SET_GLOBAL_I(262145+11831,1)
	SCRIPT.SET_GLOBAL_I(262145+11832,1)
	SCRIPT.SET_GLOBAL_I(262145+11833,1)
	SCRIPT.SET_GLOBAL_I(262145+11834,1)
	SCRIPT.SET_GLOBAL_I(262145+11835,1)
	SCRIPT.SET_GLOBAL_I(262145+11836,1)
	SCRIPT.SET_GLOBAL_I(262145+11840,1)
	SCRIPT.SET_GLOBAL_I(262145+11841,1)
	SCRIPT.SET_GLOBAL_I(262145+11842,1)
	SCRIPT.SET_GLOBAL_I(262145+12491,1)
	SCRIPT.SET_GLOBAL_I(262145+17287,1)
	SCRIPT.SET_GLOBAL_I(262145+12352,1)
	SCRIPT.SET_GLOBAL_I(262145+12353,1)
	SCRIPT.SET_GLOBAL_I(262145+12354,1)
	SCRIPT.SET_GLOBAL_I(262145+12355,1)
	SCRIPT.SET_GLOBAL_I(262145+12356,1)
	SCRIPT.SET_GLOBAL_I(262145+12357,1)
	SCRIPT.SET_GLOBAL_I(262145+12358,1)
	SCRIPT.SET_GLOBAL_I(262145+12359,1)
	SCRIPT.SET_GLOBAL_I(262145+12360,1)
	SCRIPT.SET_GLOBAL_I(262145+12361,1)
	SCRIPT.SET_GLOBAL_I(262145+12362,1)
	SCRIPT.SET_GLOBAL_I(262145+12363,1)
	SCRIPT.SET_GLOBAL_I(262145+12364,1)
	SCRIPT.SET_GLOBAL_I(262145+12365,1)
	SCRIPT.SET_GLOBAL_I(262145+12366,1)
	SCRIPT.SET_GLOBAL_I(262145+12367,1)
	SCRIPT.SET_GLOBAL_I(262145+12368,1)
	SCRIPT.SET_GLOBAL_I(262145+12369,1)
	SCRIPT.SET_GLOBAL_I(262145+12370,1)
	SCRIPT.SET_GLOBAL_I(262145+12371,1)
	SCRIPT.SET_GLOBAL_I(262145+12372,1)
	SCRIPT.SET_GLOBAL_I(262145+12373,1)
	g_gui.add_toast("Halloween Items Unlocked!", 5000);
end

function nightclubUnlock()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DANCE_TO_SOLOMUN"), 120, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DANCE_TO_TALEOFUS"), 120, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DANCE_TO_DIXON"), 120, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DANCE_TO_BLKMAD"), 120, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_CLUB_DRUNK"), 200, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_NIGHTCLUB_VIP_APPEAR"), 700, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_NIGHTCLUB_JOBS_DONE"), 700, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_NIGHTCLUB_EARNINGS"), 20721002, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_HUB_SALES_COMPLETED"), 1001, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_HUB_EARNINGS"), 320721002, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DANCE_COMBO_DURATION_MINS"), 3600000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_NIGHTCLUB_PLAYER_APPEAR"), 9506, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_LIFETIME_HUB_GOODS_SOLD"), 784672, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_LIFETIME_HUB_GOODS_MADE"), 507822, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DANCEPERFECTOWNCLUB"), 120, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_NUMUNIQUEPLYSINCLUB"), 120, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_DANCETODIFFDJS"), 4, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_NIGHTCLUB_HOTSPOT_TIME_MS"), 3600000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_NIGHTCLUB_CONT_TOTAL"), 20, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_NIGHTCLUB_CONT_MISSION"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CLUB_CONTRABAND_MISSION"), 1000, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_HUB_CONTRABAND_MISSION"), 1000, true);

	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_CLUB_HOTSPOT"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_CLUB_CLUBBER"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_CLUB_COORD"), true, true);

	g_gui.add_toast("Nightclub Awards Unlocked!", 5000);
end

function returningUnlock()
	SCRIPT.SET_GLOBAL_I(1517541,2)
	SCRIPT.SET_GLOBAL_I(102905,90)
	SCRIPT.SET_GLOBAL_I(102906,1)
	g_gui.add_toast("Returning Bonuses Unlocked!", 5000);
end

function tradepriceUnlock()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_GANGOPS_FLOW_BITSET_MISS0"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_LFETIME_HANGAR_BUY_UNDETAK"), 42, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_LFETIME_HANGAR_BUY_COMPLET"), 42, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AT_FLOW_IMPEXP_NUM"), 32, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AT_FLOW_VEHICLE_BS"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_WVM_FLOW_VEHICLE_BS"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_BOARD_DIALOGUE0"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_BOARD_DIALOGUE1"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_BOARD_DIALOGUE2"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_H3_VEHICLESUSED"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_WAM_FLOW_VEHICLE_BS"), 2147483647, true);
	g_gui.add_toast("Unlocked Trade Prices on some vehicles!", 5000);
end

function contactUnlock()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PHN"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PH2"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PH3"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PH4"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PH5"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_VEH_TX1"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PH6"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PH7"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PH8"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_ACT_PH9"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_CUT_DONE"), 2147483647, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_FM_CUT_DONE_2"), 2147483647, true);
	g_gui.add_toast("Unlocked Phone Contacts!", 5000);
end

function dailyUnlock()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DAILYOBJCOMPLETED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DAILYOBJCOMPLETED"), 10, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DAILYOBJCOMPLETED"), 25, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DAILYOBJCOMPLETED"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_DAILYOBJCOMPLETED"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CONSECUTIVEWEEKCOMPLETED"), 0, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CONSECUTIVEWEEKCOMPLETED"), 7, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CONSECUTIVEWEEKCOMPLETED"), 28, true);

	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_DAILYOBJWEEKBONUS"), true, true);
	STATS.STAT_SET_BOOL(g_util.joaat("MP" .. PlayerChar .. "_AWD_DAILYOBJMONTHBONUS"), true, true);
	g_gui.add_toast("Daily Objectives Completed!", 5000);
end

function LSUnlocks()
	SCRIPT.SET_GLOBAL_I(262145 + 30817, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30817, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30818, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30819, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30820, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30821, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30822, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30823, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30824, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30825, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30826, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30827, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30828, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30829, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30830, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30831, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30832, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30833, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30834, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30835, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30836, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30837, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30838, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30653, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30654, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30655, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30656, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30657, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30658, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30659, 1)
	SCRIPT.SET_GLOBAL_I(2863548,0)

	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_CAR_CLUB_MEM"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_SPRINTRACER"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_STREETRACER"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_PURSUITRACER"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_TEST_CAR"), 240, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_AUTO_SHOP"), 50, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_CAR_EXPORT"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_GROUNDWORK"), 40, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_ROBBERY_CONTRACT"), 100, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_AWD_FACES_OF_DEATH"), 100, true);
	g_gui.add_toast("LS Tuners Contracts Reset!", 5000);
end

function unlockClothes()
	SCRIPT.SET_GLOBAL_I(262145 + 29843, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29844, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29845, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29846, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29847, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29848, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29849, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29850, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29851, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29852, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29853, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29854, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29855, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29856, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29857, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29858, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29859, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29860, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29861, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29862, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29863, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29864, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29865, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29866, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29867, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29868, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29869, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29870, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29871, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29872, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29873, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29874, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29875, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29876, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29877, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29878, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29879, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29880, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29881, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29882, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29883, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29884, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29885, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29886, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29887, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29888, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29889, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29890, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29891, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29892, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29893, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29894, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29895, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29896, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29897, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29898, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29898, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29899, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29900, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29901, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29902, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29903, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29904, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29905, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29906, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29907, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29908, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29909, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29910, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29911, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29912, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29913, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29914, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29915, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29916, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29917, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29918, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29919, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29920, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29921, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29922, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29923, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29924, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29925, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29926, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29927, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29928, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29929, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29930, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29931, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29932, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29933, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29934, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29935, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29936, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29937, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29938, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29939, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29940, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29941, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29942, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29943, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29944, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29945, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29946, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29947, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29948, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29949, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29950, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29951, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29952, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29953, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29954, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29955, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29956, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29957, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29958, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29959, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29960, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29961, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29962, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29963, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29964, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 29965, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30545, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30546, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30547, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30548, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30549, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30550, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30500, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30501, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30502, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30503, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30504, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30505, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30506, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30507, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30508, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30509, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30510, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30511, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30512, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30513, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30514, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30515, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30516, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30517, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30518, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30519, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30520, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30521, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30522, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30523, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30524, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30525, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30526, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30527, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30528, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30529, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30530, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30531, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30532, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30533, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30534, 1)
	SCRIPT.SET_GLOBAL_I(262145 + 30535, 1)
end


function arenaUnlock()
	SCRIPT.SET_GLOBAL_I(262145 + 25490,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25491,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25492,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25493,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25494,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25495,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25496,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25497,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25498,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25499,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25500,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25501,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25502,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25503,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25504,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25505,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25506,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25507,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25508,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25509,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25510,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25511,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25512,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25513,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25514,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25515,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25516,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25517,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25518,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25519,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25520,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25521,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25522,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25523,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25524,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25525,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25526,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25527,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25528,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25529,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25530,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25531,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25532,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25533,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25534,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25535,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25536,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25537,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25538,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25539,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25540,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25541,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25542,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25543,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25544,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25545,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25546,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25547,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25548,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25549,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25550,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25551,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25552,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25553,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25554,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25555,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25556,1)
    SCRIPT.SET_GLOBAL_I(262145 + 25557,1)
	g_gui.add_toast("Arena Items Unlocked", 5000);
end

function alienTatt()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TATTOO_FM_CURRENT_32"), 2147483647, true);
	g_gui.add_toast("Alien Tattoo Unlocked! Find a new session.", 5000);
end

-- Stats
function crew100()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_0"), 1584350, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_1"), 1584350, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_2"), 1584350, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_3"), 1584350, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_4"), 1584350, true);
	g_gui.add_toast("Crew Rank Set To 100!", 5000);
end

function crew500()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_0"), 17014350, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_1"), 17014350, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_2"), 17014350, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_3"), 17014350, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_4"), 17014350, true);
	g_gui.add_toast("Crew Rank Set To 500!", 5000);
end

function crew1000()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_0"), 47551850, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_1"), 47551850, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_2"), 47551850, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_3"), 47551850, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_4"), 47551850, true);
	g_gui.add_toast("Crew Rank Set To 1000!", 5000);
end

function crew8000()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_0"), 1787576850, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_1"), 1787576850, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_2"), 1787576850, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_3"), 1787576850, true);
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CREW_LOCAL_XP_4"), 1787576850, true);
	g_gui.add_toast("Crew Rank Set To 8000!", 5000);
end

function playtime21()
	STATS.STAT_SET_INT(g_util.joaat("MP_PLAYING_TIME"), 21 * 86400000, true);
	STATS.STAT_SET_INT(g_util.joaat("LEADERBOARD_PLAYING_TIME"), 21 * 86400000, true);
	g_gui.add_toast("Time Spent in GTAO Set To 21 Days!", 5000);
end


function charplaytime21()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_TOTAL_PLAYING_TIME"), 21 * 86400000, true);
	g_gui.add_toast("Time Spent as Character Set To 21 Days!", 5000);
end

function nightclubPop()
	STATS.STAT_SET_INT(g_util.joaat("MP" .. PlayerChar .. "_CLUB_POPULARITY"), 1000, true);
	g_gui.add_toast("Nightclub Popularity Set To 100!", 5000);
end

function hatchetUnlock()
	STATS.STAT_SET_BOOL(g_util.joaat("MPPLY_MELEECHLENGECOMPLETED"), true, true);
	g_gui.add_toast("Hatchet Unlocked!", 5000);
end

function revolverUnlock()
	STATS.STAT_SET_BOOL(g_util.joaat("MPPLY_HEADSHOTCHLENGECOMPLETED"), true, true);
	g_gui.add_toast("Revolver Unlocked!", 5000);
end

function navyUnlock()
	STATS.STAT_SET_BOOL(g_util.joaat("MPPLY_NAVYREVOLVERCOMPLETED"), true, true);
	g_gui.add_toast("Navy Revolver Unlocked!", 5000);
end

function bunkerUnlock()
	for i=0,192,1 do
		STATS.STAT_SET_BOOL_MASKED(g_util.joaat("_DLCGUNPSTAT_BOOL"), true, i, true)
	end
	for i=0,384,1 do
		STATS.STAT_SET_BOOL_MASKED(g_util.joaat("_GUNTATPSTAT_BOOL"), true, i, true)
	end
	for i=0,63,1 do
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT0"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT1"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT2"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT3"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT4"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT5"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT6"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT7"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT8"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT9"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT10"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT11"), -1,i,1, true)
	STATS.STAT_SET_INT_MASKED(g_util.joaat("MP" .. PlayerChar .. "_GUNRPSTAT_INT12"), -1,i,1, true)
	end
	g_gui.add_toast("Bunker Research Unlocked", 5000);
end

AUDIO.PLAY_SOUND(-1, "Virus_Eradicated", "LESTER1A_SOUNDS", false, 0, true)
function myD3DHook()
    if  g_gui.is_open() then
		g_imgui.set_next_window_size(vec2(515, 425))
					-- Classic Heist Options
		if  g_imgui.begin_window("Heist Menu By XeTrinityz", ImGuiWindowFlags_None) then
			if  g_imgui.begin_tab_bar("Tab", ImGuiWindowFlags_None) then
				if  g_imgui.begin_tab_item("Classic", ImGuiWindowFlags_None) then
			g_imgui.begin_child("heist_menu", vec2(), true)
			g_imgui.add_text("Classic Heist Options")
			g_imgui.add_text("-----------------------")
			g_imgui.add_button("Skip Heist Setups", vec2(480,23), OriginalC)
			g_imgui.add_checkbox("Fleeca $15M Pay-out", ClassicPay)
        	g_imgui.add_checkbox("Fleeca $10M Pay-out", ClassicPay2)
			g_imgui.add_checkbox("Fleeca $5M Pay-out", ClassicPay3)
			g_imgui.add_checkbox("Fleeca $2.5M Pay-out", ClassicPay4) 
			g_imgui.end_child()
			g_imgui.end_tab_item()
			g_imgui.end_window() -- Classic Heist Options End
		end
	end
		
			-- Doomsday Heist Options
			if  g_imgui.begin_window("Heist Menu By XeTrinityz", ImGuiWindowFlags_None) then
				if  g_imgui.begin_tab_item("Doomsday", ImGuiWindowFlags_None) then
				g_imgui.begin_child("doomsday_menu", vec2(), true)
			g_imgui.add_text("Doomsday Heist Options")
			g_imgui.add_text("-----------------------")
	    if  g_imgui.begin_menu("Doomsday Heist Teleport Locations", true) then
			g_imgui.add_button("Teleport To Heist Screen", vec2(480,23), TeleportDoomA)
			g_imgui.add_button("Teleport To Mission Screen [Bogdan Sub]", vec2(480,23), TeleportDoomB)
			g_imgui.add_button("Teleport To Cell [Bogdan Sub]", vec2(480,23), TeleportDoomC)
			g_imgui.end_menu() 
		end

		if  g_imgui.begin_menu("Doomsday Heist Presets", true) then
			g_imgui.add_button("Preset ACT I", vec2(300, 20), DoomPreset1)
			g_imgui.add_button("Preset ACT II", vec2(300, 20), DoomPreset2)
			g_imgui.add_button("Preset ACT III", vec2(300, 20), DoomPreset3)
			g_imgui.end_menu() 
	    end

	    if  g_imgui.begin_menu("Doomsday Heist Cut Manager", true) then
			g_imgui.add_checkbox("Max Cut ACT I (All Players)", DoomsPay)
			g_imgui.add_checkbox("Max Cut ACT II (All Players)", DoomsPay2)
			g_imgui.add_checkbox("Max Cut ACT III (All Players)", DoomsPay3)

		if  g_imgui.begin_menu("Player 1", true) then
			g_imgui.add_checkbox("0% Cut###DD11", DoomsPlayer1A)
			g_imgui.add_checkbox("100% Cut###DD12", DoomsPlayer1B)
			g_imgui.add_checkbox("150% Cut###DD13", DoomsPlayer1C)
			g_imgui.add_checkbox("175% Cut###DD14", DoomsPlayer1D)
			g_imgui.add_checkbox("200% Cut###DD15", DoomsPlayer1E)
			g_imgui.add_checkbox("205% Cut###DD16", DoomsPlayer1F)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Player 2", true) then
			g_imgui.add_checkbox("0% Cut###DD21", DoomsPlayer2A)
			g_imgui.add_checkbox("100% Cut###DD22", DoomsPlayer2B)
			g_imgui.add_checkbox("150% Cut###DD23", DoomsPlayer2C)
			g_imgui.add_checkbox("175% Cut###DD24", DoomsPlayer2D)
			g_imgui.add_checkbox("200% Cut###DD25", DoomsPlayer2E)
			g_imgui.add_checkbox("205% Cut###DD16", DoomsPlayer2F)
			g_imgui.end_menu() 
	    end
		if  g_imgui.begin_menu("Player 3", true) then
			g_imgui.add_checkbox("0% Cut###DD31", DoomsPlayer3A)
			g_imgui.add_checkbox("100% Cut###DD32", DoomsPlayer3B)
			g_imgui.add_checkbox("150% Cut###DD33", DoomsPlayer3C)
			g_imgui.add_checkbox("175% Cut###DD34", DoomsPlayer3D)
			g_imgui.add_checkbox("200%###DD35", DoomsPlayer3E)
			g_imgui.add_checkbox("205% Cut###DD36", DoomsPlayer3F)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Player 4", true) then
			g_imgui.add_checkbox("0% Cut###DD41", DoomsPlayer4A)
			g_imgui.add_checkbox("100% Cut###DD42", DoomsPlayer4B)
			g_imgui.add_checkbox("150% Cut###DD43", DoomsPlayer4C)
			g_imgui.add_checkbox("175% Cut###DD44", DoomsPlayer4D)
			g_imgui.add_checkbox("200% Cut###DD45", DoomsPlayer4E)
			g_imgui.add_checkbox("205% Cut###DD46", DoomsPlayer4F)
			g_imgui.end_menu() 
		end
			g_imgui.end_menu() -- Cut Manager End
	    end
			g_imgui.add_button("Unlock All Doomsday Heists", vec2(480,23), DoomsA)
			g_imgui.add_button("Skip Doomsday Heist Preps",vec2(480,23), DoomsB)
			g_imgui.add_button("Reset Doomsday Heist", vec2(480,23), DoomsC)
			g_imgui.end_child()
			g_imgui.end_tab_item()
			g_imgui.end_window() -- Doomsday Heist Tab End
		end
	end

			-- Cayo Perico Heist Options
			 if g_imgui.begin_window("Heist Menu By XeTrinityz", ImGuiWindowFlags_None) then
			if  g_imgui.begin_tab_item("Cayo", ImGuiWindowFlags_None) then
				g_imgui.begin_child("perico_menu", vec2(), true)
			g_imgui.add_text("Cayo Perico Heist Options")
			g_imgui.add_text("-----------------------")
		if  g_imgui.begin_menu("Cayo Perico Teleport Locations", true) then
			g_imgui.add_button("Vault Primary", vec2(480,23), TeleportCayoA)
			g_imgui.add_button("Vault Secondary", vec2(480,23), TeleportCayoB)
			g_imgui.add_button("Compound Storage North", vec2(480,23), TeleportCayoC)
			g_imgui.add_button("Compound Storage West", vec2(480,23), TeleportCayoD)
			g_imgui.add_button("Compound Office", vec2(480,23), TeleportCayoE)
			g_imgui.add_button("Compound Exit", vec2(480,23), TeleportCayoF)
			g_imgui.add_button("Tower", vec2(480,23), TeleportCayoG)
			g_imgui.add_button("Drainage", vec2(480,23), TeleportCayoH)
			g_imgui.add_button("Ocean", vec2(480,23), TeleportCayoI)
			g_imgui.add_text("")
			g_imgui.add_button("Kosatka Heist Board [Call Out First]", vec2(480,23), TeleportCayoJ)
			g_imgui.end_menu() -- Teleport Locations End
		end
		if  g_imgui.begin_menu("Cayo Perico Heist Cut Manager", true) then
		if  g_imgui.begin_menu("Player 1 ", true) then
			g_imgui.add_checkbox("0% Cut###CP11", CayoPlayer1A)
			g_imgui.add_checkbox("100% Cut###CP12", CayoPlayer1B)
			g_imgui.add_checkbox("150% Cut###CP13", CayoPlayer1C)
			g_imgui.add_checkbox("175% Cut###CP14", CayoPlayer1D)
			g_imgui.add_checkbox("200% Cut###CP15", CayoPlayer1E)
			g_imgui.add_checkbox("205% Cut###CP16", CayoPlayer1F)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Player 2 ", true) then
			g_imgui.add_checkbox("0% Cut###CP21", CayoPlayer2A)
			g_imgui.add_checkbox("100% Cut###CP22", CayoPlayer2B)
			g_imgui.add_checkbox("150% Cut###CP23", CayoPlayer2C)
			g_imgui.add_checkbox("175% Cut###CP24", CayoPlayer2D)
			g_imgui.add_checkbox("200% Cut###CP25", CayoPlayer2E)
			g_imgui.add_checkbox("205% Cut###CP26", CayoPlayer2F)
			g_imgui.end_menu() 
	    end
		if  g_imgui.begin_menu("Player 3 ", true) then
			g_imgui.add_checkbox("0% Cut###CP31", CayoPlayer3A)
			g_imgui.add_checkbox("100% Cut###CP32", CayoPlayer3B)
			g_imgui.add_checkbox("150% Cut###CP33", CayoPlayer3C)
			g_imgui.add_checkbox("175% Cut###CP34", CayoPlayer3D)
			g_imgui.add_checkbox("200% Cut###CP35", CayoPlayer3E)
			g_imgui.add_checkbox("205% Cut###CP36", CayoPlayer3F)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Player 4  ", true) then
			g_imgui.add_checkbox("0% Cut###CP41", CayoPlayer4A)
			g_imgui.add_checkbox("100% Cut###CP42", CayoPlayer4B)
			g_imgui.add_checkbox("150% Cut###CP43", CayoPlayer4C)
			g_imgui.add_checkbox("175% Cut###CP44", CayoPlayer4D)
			g_imgui.add_checkbox("200% Cut###CP45", CayoPlayer4E)
			g_imgui.add_checkbox("205% Cut###CP46", CayoPlayer4F)
			g_imgui.end_menu() 
		end
			g_imgui.end_menu() -- Cut Manager End
	    end
		if  g_imgui.begin_menu("Cayo Perico Presets", true) then
			g_imgui.add_checkbox("$2.4M (Solo)", CayoPay1)
			g_imgui.add_checkbox("$2.4M (2 Players)", CayoPay2)
			g_imgui.add_checkbox("$2.4M (3 Players)", CayoPay3)
			g_imgui.add_checkbox("$2.4M (4 Players)", CayoPay4)
			g_imgui.end_menu() 
		end
			g_imgui.add_text("")
			g_imgui.end_child()
			g_imgui.end_tab_item() -- Cayo Perico Heist Options End
			g_imgui.end_window()
	end
end

			-- Casino Heist Options
			if g_imgui.begin_window("Heist Menu By XeTrinityz", ImGuiWindowFlags_None) then
			if  g_imgui.begin_tab_item("Casino", ImGuiWindowFlags_None) then
				g_imgui.begin_child("casino_menu", vec2(), true)
			g_imgui.add_text("Casino Heist Options")
			g_imgui.add_text("-----------------------")
        if  g_imgui.begin_menu("Casino Heist Teleport Locations", true) then
			g_imgui.add_text("Interior")
			g_imgui.add_button("Planning Boards", vec2(480,23), TeleportCasinoA)
			g_imgui.add_button("Garage Exit", vec2(480,23), TeleportCasinoB)
			g_imgui.add_button("Waste Disposal", vec2(480,23), TeleportCasinoC)
			g_imgui.add_button("Staff Lobby", vec2(480,23), TeleportCasinoD)
			g_imgui.add_button("Keypad Door", vec2(480,23), TeleportCasinoE)
			g_imgui.add_button("Inside Vault", vec2(480,23), TeleportCasinoF)
			g_imgui.add_button("Outside Vault", vec2(480,23), TeleportCasinoG)
			g_imgui.add_button("Bonus Room", vec2(480,23), TeleportCasinoH)
			g_imgui.add_text("Outside")
			g_imgui.add_button("Main Entrance", vec2(480,23), TeleportCasinoI)
			g_imgui.add_button("Staff Lobby", vec2(480,23), TeleportCasinoJ)
			g_imgui.add_button("Waste Disposal", vec2(480,23), TeleportCasinoK)
            g_imgui.end_menu() 
        end
		if  g_imgui.begin_menu("Casino Heist Cut Manager", true) then

			g_imgui.add_checkbox("100% Cut (All Players)", CasinoPlayerAll)
			g_imgui.add_checkbox("Set Pay-out To $3.5M (All Players)", CasinoPresetPay)

		if  g_imgui.begin_menu("Host  ", true) then
			g_imgui.add_checkbox("0% Cut", CasinoPlayer1A)
			g_imgui.add_checkbox("100% Cut", CasinoPlayer1B)
			g_imgui.add_checkbox("150% Cut", CasinoPlayer1C)
			g_imgui.add_checkbox("175% Cut", CasinoPlayer1D)
			g_imgui.add_checkbox("200% Cut", CasinoPlayer1E)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Player 2  ", true) then
			g_imgui.add_checkbox("0% Cut", CasinoPlayer2A)
			g_imgui.add_checkbox("100% Cut", CasinoPlayer2B)
			g_imgui.add_checkbox("150% Cut", CasinoPlayer2C)
			g_imgui.add_checkbox("175% Cut", CasinoPlayer2D)
			g_imgui.add_checkbox("200% Cut", CasinoPlayer2E)
			g_imgui.end_menu() 
	    end
		if  g_imgui.begin_menu("Player 3  ", true) then
			g_imgui.add_checkbox("0% Cut", CasinoPlayer3A)
			g_imgui.add_checkbox("100% Cut", CasinoPlayer3B)
			g_imgui.add_checkbox("150% Cut", CasinoPlayer3C)
			g_imgui.add_checkbox("175% Cut", CasinoPlayer3D)
			g_imgui.add_checkbox("200% Cut", CasinoPlayer3E)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Player 4   ", true) then
			g_imgui.add_checkbox("0% Cut", CasinoPlayer4A)
			g_imgui.add_checkbox("100% Cut", CasinoPlayer4B)
			g_imgui.add_checkbox("150% Cut", CasinoPlayer4C)
			g_imgui.add_checkbox("175% Cut", CasinoPlayer4D)
			g_imgui.add_checkbox("200% Cut", CasinoPlayer4E)
			g_imgui.end_menu() 
		end
			g_imgui.end_menu() -- Cut Manager End
	end
		if  g_imgui.begin_menu("Casino Heist Presets", true) then
			g_imgui.add_button("Silent [Hard]", vec2(300, 20), CasinoPreset1)
			g_imgui.add_button("The Big Con [Hard]", vec2(300, 20), CasinoPreset2)
			g_imgui.add_button("Aggressive [Hard]", vec2(300, 20), CasinoPreset3)
			g_imgui.add_button("Silent [Normal]", vec2(300, 20), CasinoPreset4)
			g_imgui.add_button("The Big Con [Normal]", vec2(300, 20), CasinoPreset5)
			g_imgui.add_button("Aggressive [Normal]", vec2(300, 20), CasinoPreset6)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Set Target", true) then
			g_imgui.add_button("Diamonds", vec2(300, 20), CasinoTarget1)
			g_imgui.add_button("Gold", vec2(300, 20), CasinoTarget2)
			g_imgui.add_button("Artwork", vec2(300, 20), CasinoTarget3)
			g_imgui.add_button("Cash", vec2(300, 20), CasinoTarget4)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Set Gunman", true) then
			g_imgui.add_button("Chester McCoy (%10) ", vec2(300, 20), CasinoGunman1)
			g_imgui.add_button("Gustavo Mota (%9) ", vec2(300, 20), CasinoGunman2)
			g_imgui.add_button("Patrick McReary (%8) ", vec2(300, 20), CasinoGunman3)
			g_imgui.add_button("Charlie Reed (%7) ", vec2(300, 20), CasinoGunman4)
			g_imgui.add_button("Karl Abolaji (%5) ", vec2(300, 20), CasinoGunman5)
			if  g_imgui.begin_menu("Weapon Loadout", true) then
				g_imgui.add_button("Best Loadout", vec2(300, 20), casinoWeapsBest)
				g_imgui.add_button("Worst Loadout", vec2(300, 20), casinoWeapsWorst)
				g_imgui.end_menu() 
			end
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Set Driver", true) then
			g_imgui.add_button("Chester McCoy (%10)", vec2(300, 20), casinoDriver1)
			g_imgui.add_button("Eddie Toh (%9)", vec2(300, 20), casinoDriver2)
			g_imgui.add_button("Taliana Martinez (%7)", vec2(300, 20), casinoDriver3)
			g_imgui.add_button("Zach Nelson (%6)", vec2(300, 20), casinoDriver4)
			g_imgui.add_button("Karim Denz (%5)", vec2(300, 20), casinoDriver5)
			if  g_imgui.begin_menu("Vehicle", true) then
				g_imgui.add_button("Best Vehicle", vec2(300, 20), casinoVehicleBest)
				g_imgui.end_menu() 
			end
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("Set Hacker", true) then
			g_imgui.add_button("Avi Schwartzman (%10)", vec2(300, 20), casinoHacker1)
			g_imgui.add_button("Paige Harris (%9)", vec2(300, 20), casinoHacker2)
			g_imgui.add_button("Christian Feltz (%7)", vec2(300, 20), casinoHacker3)
			g_imgui.add_button("Yohan Blair (%5)", vec2(300, 20), casinoHacker4)
			g_imgui.add_button("Rickie Luken (%3)", vec2(300, 20), casinoHacker5)
			g_imgui.end_menu() 
		end
			g_imgui.add_button("Set Keycard To Level 3", vec2(480,23), CasinoKeycard)
			g_imgui.add_button("Skip Casino Missions", vec2(480,23), CasinoSkip)
			g_imgui.add_button("Unlock All POI", vec2(480,23), CasinoPOI)
			g_imgui.add_button("Remove Crew Pay-Out", vec2(480, 23), CasinoIACut)
			g_imgui.add_button("Reset Casino Heist", vec2(480,23), CasinoReset)
			g_imgui.add_text("")
			g_imgui.end_child()
			g_imgui.end_tab_item() -- Casino Heist Options End
			g_imgui.end_window()
		end
	end

			-- Agency Options
			 if g_imgui.begin_window("Heist Menu By XeTrinityz", ImGuiWindowFlags_None) then
			if  g_imgui.begin_tab_item("Agency", ImGuiWindowFlags_None) then
				g_imgui.begin_child("agency_menu", vec2(), true)
			g_imgui.add_text("The Agency Options")
			g_imgui.add_text("-----------------------")
		if  g_imgui.begin_menu("VIP Contract", true) then
		if  g_imgui.begin_menu("Nightlife", true) then
			g_imgui.add_button("The Nightclub", vec2(300, 20), NightlifeA)
			g_imgui.add_button("The Marina", vec2(300, 20), NightlifeB)
			g_imgui.add_button("Nightlife Mission", vec2(300, 20), NightlifeC)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("High Society", true) then
			g_imgui.add_button("The Country Club", vec2(300, 20), HighSocietyA)
			g_imgui.add_button("Guest List", vec2(300, 20), HighSocietyB)
			g_imgui.add_button("High Society Mission", vec2(300, 20), HighSocietyC)
			g_imgui.end_menu() 
		end
		if  g_imgui.begin_menu("South Central", true) then
			g_imgui.add_button("Davis", vec2(300, 20), SouthCentralA)
			g_imgui.add_button("The Ballas", vec2(300, 20), SouthCentralB)
			g_imgui.add_button("Agency Studio Mission", vec2(300, 20), SouthCentralC)
			g_imgui.end_menu() 
		end
			g_imgui.end_menu() -- VIP Contract End
		end
			g_imgui.add_button("Complete All Missions", vec2(480,23), AgencyMissions)
			g_imgui.add_text("")
			g_imgui.end_child()
			g_imgui.end_tab_item() -- Agency Options End
			g_imgui.end_window()
	end
end

			-- LS Tuners Options
			if g_imgui.begin_window("Heist Menu By XeTrinityz", ImGuiWindowFlags_None) then
			if  g_imgui.begin_tab_item("Tuners", ImGuiWindowFlags_None) then
				g_imgui.begin_child("tuner_menu", vec2(), true)
			g_imgui.add_text("LS Tuners Options")
			g_imgui.add_text("-----------------------")
			g_imgui.add_button("Union Depository", vec2(480,23), UnionDep)
			g_imgui.add_button("The Bank Contract", vec2(480,23), BankCon)
			g_imgui.add_button("The Superdollar Deal", vec2(480,23), SuperDol)
			g_imgui.add_button("The ECU Job", vec2(480,23), ECUCon)
			g_imgui.add_button("The Data Contract", vec2(480,23), DataCon)
			g_imgui.add_button("The Lost Contract", vec2(480,23), LostCon)
			g_imgui.add_button("The Agency Deal", vec2(480,23), AgencyCon)
			g_imgui.add_button("The Prison Contract", vec2(480,23), PrisonCon)
			g_imgui.add_button("Reset Contract", vec2(480,23), LSResetCon)
			g_imgui.add_text("")
			g_imgui.end_child()
			g_imgui.end_window()
			g_imgui.end_tab_item()-- LS Tuners Options End
			end
		end
			if g_imgui.begin_window("Heist Menu By XeTrinityz", ImGuiWindowFlags_None) then
				if  g_imgui.begin_tab_item("Unlocks", ImGuiWindowFlags_None) then
					g_imgui.begin_child("unlock_menu", vec2(), true)
				g_imgui.add_text("Unlock Options")
				g_imgui.add_text("-----------------------")
				g_imgui.add_button("Unlock All Tuners Clothing & Awards", vec2(480,23), LSUnlocks)
				g_imgui.add_button("Unlock All Agency Awards & Clothing", vec2(480,23), AgencyAwards)
				g_imgui.add_button("Unlock All Arcade Trophies/Toys", vec2(480,23), ArcadeToys)
				g_imgui.add_button("Unlock All Cayo Perico Awards", vec2(480,23), CayoAwards)
				g_imgui.add_button("Unlock All Doomsday Heist Awards", vec2(480,23), DoomAwards)
				g_imgui.add_button("Unlock All Arena Related Items", vec2(480,23), arenaUnlock)
				g_imgui.add_button("Unlock Classic Heists & Awards", vec2(480,23), OriginalB)
				g_imgui.add_button("Unlock Nightclub Awards", vec2(480,23), nightclubUnlock)
				g_imgui.add_button("Unlock Clothing Items", vec2(480,23), unlockClothes)
				g_imgui.add_button("Unlock Xmas Items", vec2(480,23), xmasUnlock)
				g_imgui.add_button("Unlock Valentine Items", vec2(480,23), valentineUnlock)
				g_imgui.add_button("Unlock Independence Items", vec2(480,23), independenceUnlock)
				g_imgui.add_button("Unlock Halloween Items", vec2(480,23), halloweenUnlock)
				g_imgui.add_button("Unlock Returning Bonuses", vec2(480,23), returningUnlock)
				g_imgui.add_button("Unlock Alien Tattoo", vec2(480,23), alienTatt)
				g_imgui.add_button("Unlock Vehicle Trade Prices", vec2(480,23), tradepriceUnlock)
				g_imgui.add_button("Unlock All Contacts", vec2(480,23), contactUnlock)
				g_imgui.add_button("Unlock Stone Hatchet", vec2(480,23), hatchetUnlock)
				g_imgui.add_button("Unlock Double Action Revolver", vec2(480,23), revolverUnlock)
				g_imgui.add_button("Unlock Navy Revolver", vec2(480,23), navyUnlock)
				g_imgui.add_button("Complete All Daily Objectives", vec2(480,23), dailyUnlock)
				g_imgui.add_button("Become Badsport", vec2(480,23), addBadsport)
				g_imgui.add_button("Remove Badsport", vec2(480,23), removeBadsport)
				g_imgui.add_text("")
				g_imgui.end_child()
				g_imgui.end_tab_item()-- unlock Options End
				g_imgui.end_window()
				end
			end
			-- LS Tuners Options
			if g_imgui.begin_window("Heist Menu By XeTrinityz", ImGuiWindowFlags_None) then
				if  g_imgui.begin_tab_item("Stats", ImGuiWindowFlags_None) then
					g_imgui.begin_child("stat_menu", vec2(), true)
				g_imgui.add_text("Stat Options")
				g_imgui.add_text("-----------------------")
				g_imgui.add_button("Set Crew Rank [100]", vec2(480,23), crew100)
				g_imgui.add_button("Set Crew Rank [500]", vec2(480,23), crew500)
				g_imgui.add_button("Set Crew Rank [1000]", vec2(480,23), crew1000)
				g_imgui.add_button("Set Crew Rank [8000]", vec2(480,23), crew8000)
				g_imgui.add_button("Set GTAO Playtime [21 Days]", vec2(480,23), playtime21)
				g_imgui.add_button("Set Character Playtime [21 Days]", vec2(480,23), charplaytime21)
				g_imgui.add_button("Set Max Nughtclub Popularity", vec2(480,23), nightclubPop)
				g_imgui.add_text("")
				g_imgui.end_child()
				g_imgui.end_window()
				g_imgui.end_tab_item()-- Stat Options End
				end
			end
			g_imgui.end_tab_bar()
		end
	end
--g_imgui.end_window() -- Heist Menu End
end

g_lua.register()
g_hooking.register_D3D_hook(myD3DHook)

while g_isRunning do
	-- Classic Heist Loops
	if  ClassicPayOut then 
		SCRIPT.SET_GLOBAL_I(1934631 + 3008 +1,10434)
	end
	
	if  ClassicPayOut2 then 
		SCRIPT.SET_GLOBAL_I(1934631 + 3008 +1,7000)
	end
	
	if  ClassicPayOut3 then 
		SCRIPT.SET_GLOBAL_I(1934631 + 3008 +1,3500)
	end
	
	if  ClassicPayOut4 then 
		SCRIPT.SET_GLOBAL_I(1934631 + 3008 +1,1750)
	end
	-- Cayo Perico Heist Loops
	if  CayoPayout1 then
		SCRIPT.SET_GLOBAL_F(262145+29625,-0.1)
		SCRIPT.SET_GLOBAL_F(262145+29626,-0.02)
		SCRIPT.SET_GLOBAL_I(262145+29379,1800)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,100)
		g_util.yield()
	end
	if  CayoPayout2 then
		SCRIPT.SET_GLOBAL_F(262145+29625,-0.1)
		SCRIPT.SET_GLOBAL_F(262145+29626,-0.02)
		SCRIPT.SET_GLOBAL_I(262145+29379,1800)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,50)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,50)
	end
	if  CayoPayout3 then
		SCRIPT.SET_GLOBAL_F(262145+29625,-0.1)
		SCRIPT.SET_GLOBAL_F(262145+29626,-0.02)
		SCRIPT.SET_GLOBAL_I(262145+29379,1800)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,30)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,35)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+3,35)
		g_util.yield()
	end
	if  CayoPayout4 then
		SCRIPT.SET_GLOBAL_F(262145+29625,-0.1)
		SCRIPT.SET_GLOBAL_F(262145+29626,-0.02)
		SCRIPT.SET_GLOBAL_I(262145+29379,1800)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,25)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,25)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+3,25)
		SCRIPT.SET_GLOBAL_I(1973496+823+56+4,25)
		g_util.yield()
	end
	if  CayoPlayer10 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,0)
	end
	
	if  CayoPlayer1100 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,100)
	end
	
	if  CayoPlayer1150 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,150)
	end
	
	if  CayoPlayer1175 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,175)
	end
	
	if  CayoPlayer1200 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,1200)
	end
	
	if  CayoPlayer1205 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+1,1205)
	end
	
	if  CayoPlayer20 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,0)
	end
	
	if  CayoPlayer2100 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,100)
	end
	
	if  CayoPlayer2150 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,150)
	end
	
	if  CayoPlayer2175 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,175)
	end
	
	if  CayoPlayer2200 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,200)
	end
	
	if  CayoPlayer2205 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+2,205)
	end
	
	if  CayoPlayer30 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+3,0)
	end
	
	if  CayoPlayer3100 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+3,100)
	end
	
	if  CayoPlayer3150 then 
		SCRIPT.SET_GLOBAL_I(11973496+823+56+3,150)
	end
	
	if  CayoPlayer3175 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+3,175)
	end
	
	if  CayoPlayer3200 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+3,200)
	end
	
	if  CayoPlayer3205 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+3,205)
	end
	
	if  CayoPlayer40 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+4,0)
	end
	
	if  CayoPlayer4100 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+4,100)
	end
	
	if  CayoPlayer4150 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+4,150)
	end
	
	if  CayoPlayer4175 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+4,175)
	end
	
	if  CayoPlayer4200 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+4,200)
	end
	
	if  CayoPlayer4205 then 
		SCRIPT.SET_GLOBAL_I(1973496+823+56+4,205)
	end
	-- Doomsday Heist Loops
	if  DoomPayout1 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 313)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+2, 313)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+3, 313)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+4, 313)
	end
	if  DoomPayout2 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 214)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 214)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 214)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 214)
	end
	if  DoomPayout3 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 170)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 170)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 170)
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 170)
	end
	if  DoomsPlayer10 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 0)
	end
	
	if  DoomsPlayer1100 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 100)
	end
	
	if  DoomsPlayer1150 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 150)
	end
	
	if  DoomsPlayer1175 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 175)
	end
	
	if  DoomsPlayer1200 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 200)
	end
	
	if  DoomsPlayer1205 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+1, 205)
	end
	
	if  DoomsPlayer20 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+2, 0)
	end
	
	if  DoomsPlayer2100 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+2, 100)
	end
	
	if  DoomsPlayer2150 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+2, 150)
	end
	
	if  DoomsPlayer2175 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+2, 175)
	end
	
	if  DoomsPlayer2200 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+2, 200)
	end
	
	if  DoomsPlayer2205 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+2, 205)
	end
	
	if  DoomsPlayer30 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+3, 0)
	end
	
	if  DoomsPlayer3100 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+3, 100)
	end
	
	if  DoomsPlayer3150 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+3, 150)
	end
	
	if  DoomsPlayer3175 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+3, 175)
	end
	
	if  DoomsPlayer3200 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+3, 200)
	end
	
	if  DoomsPlayer3205 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+3, 205)
	end
	
	if  DoomsPlayer40 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+4, 0)
	end
	
	if  DoomsPlayer4100 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+4, 100)
	end
	
	if  DoomsPlayer4150 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+4, 150)
	end
	
	if  DoomsPlayer4175 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+4, 175)
	end
	
	if  DoomsPlayer4200 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+4, 200)
	end
	
	if  DoomsPlayer4205 then 
		SCRIPT.SET_GLOBAL_I(1962755+812+50+4, 205)
	end
	-- Casino Heist Loops
	if  CasinoPlayer10 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326, 0)
	end
	
	if  CasinoPlayer1100 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326, 100)
	end
	
	if  CasinoPlayer1150 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326, 150)
	end
	
	if  CasinoPlayer1175 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326, 175)
	end
	
	if  CasinoPlayer1200 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326, 200)
	end
	
	if  CasinoPlayer20 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326,0)
	end
	
	if  CasinoPlayer2100 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326,100)
	end
	
	if  CasinoPlayer2150 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326,150)
	end
	
	if  CasinoPlayer2175 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326,175)
	end
	
	if  CasinoPlayer2200 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326,200)
	end

	if  CasinoPlayer30 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+2,0)
	end
	
	if  CasinoPlayer3100 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+2,100)
	end
	
	if  CasinoPlayer3150 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+2,150)
	end
	
	if  CasinoPlayer3175 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+2,175)
	end
	
	if  CasinoPlayer3200 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+2,200)
	end

	if  CasinoPlayer40 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+3,0)
	end
	
	if  CasinoPlayer4100 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+3,100)
	end
	
	if  CasinoPlayer4150 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+3,150)
	end
	
	if  CasinoPlayer4175 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+3,175)
	end
	
	if  CasinoPlayer4200 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+3,200)
	end
	if  CasinoPlayerAll100 then 
		SCRIPT.SET_GLOBAL_I(1966718 + 2326,100)
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+1,100)
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+2,100)
		SCRIPT.SET_GLOBAL_I(1966718 + 2326+3,100)
	end 
	if  CasinoPlayerPreset then 
		SCRIPT.SET_GLOBAL_I(1966718+2326,42)
		SCRIPT.SET_GLOBAL_I(1966718+2326+1,102)
		SCRIPT.SET_GLOBAL_I(1966718+2326+2,102)
		SCRIPT.SET_GLOBAL_I(1966718+2326+3,102)
		SCRIPT.SET_GLOBAL_I(262145+28456,1410065408)
	end 
	if CasinoPayoutInc then
		SCRIPT.SET_GLOBAL_I(262145 + 28453, 1410065408)
		SCRIPT.SET_GLOBAL_I(262145 + 28454, 1410065408)
		SCRIPT.SET_GLOBAL_I(262145 + 28455, 1410065408)
		SCRIPT.SET_GLOBAL_I(262145 + 28456, 1410065408)
	end
	g_util.yield(100)
end

g_lua.unregister()