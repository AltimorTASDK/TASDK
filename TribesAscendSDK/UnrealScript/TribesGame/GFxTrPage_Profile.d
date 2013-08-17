module UnrealScript.TribesGame.GFxTrPage_Profile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Profile : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_Profile")()); }
	private static __gshared GFxTrPage_Profile mDefaultProperties;
	@property final static GFxTrPage_Profile DefaultProperties() { mixin(MGDPC!(GFxTrPage_Profile, "GFxTrPage_Profile TribesGame.Default__GFxTrPage_Profile")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mShowModel;
			ScriptFunction mTakeFocus;
			ScriptFunction mFillData;
			ScriptFunction mFillProfile;
			ScriptFunction mGetKDR;
			ScriptFunction mGetPlayedPercent;
			ScriptFunction mGetMostPlayed;
			ScriptFunction mGetTimePlayed;
			ScriptFunction mGetGamesPlayed;
			ScriptFunction mGetTotalScore;
			ScriptFunction mGetScorePerHour;
			ScriptFunction mGetTotalAccolades;
			ScriptFunction mGetAccoladesPerHour;
			ScriptFunction mGetGamesWon;
			ScriptFunction mGetGamesLost;
			ScriptFunction mGetWinLossRatio;
			ScriptFunction mGetAccoladeCount;
			ScriptFunction mGetTopBadgeIcon;
			ScriptFunction mGetFlagDefenses;
			ScriptFunction mGetFlagDefensesPerHour;
			ScriptFunction mGetFlagCaps;
			ScriptFunction mGetFlagCapsHour;
			ScriptFunction mGetGensDestroyed;
			ScriptFunction mGetGensDestroyedPerHour;
			ScriptFunction mGetObjsDestroyed;
			ScriptFunction mGetObjsDestroyedPerHour;
			ScriptFunction mGetAssists;
			ScriptFunction mGetMidairCount;
			ScriptFunction mGetFastestSki;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_Profile.Initialize")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_Profile.SpecialAction")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_Profile.ShowModel")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.GFxTrPage_Profile.TakeFocus")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_Profile.FillData")()); }
			ScriptFunction FillProfile() { mixin(MGF!("mFillProfile", "Function TribesGame.GFxTrPage_Profile.FillProfile")()); }
			ScriptFunction GetKDR() { mixin(MGF!("mGetKDR", "Function TribesGame.GFxTrPage_Profile.GetKDR")()); }
			ScriptFunction GetPlayedPercent() { mixin(MGF!("mGetPlayedPercent", "Function TribesGame.GFxTrPage_Profile.GetPlayedPercent")()); }
			ScriptFunction GetMostPlayed() { mixin(MGF!("mGetMostPlayed", "Function TribesGame.GFxTrPage_Profile.GetMostPlayed")()); }
			ScriptFunction GetTimePlayed() { mixin(MGF!("mGetTimePlayed", "Function TribesGame.GFxTrPage_Profile.GetTimePlayed")()); }
			ScriptFunction GetGamesPlayed() { mixin(MGF!("mGetGamesPlayed", "Function TribesGame.GFxTrPage_Profile.GetGamesPlayed")()); }
			ScriptFunction GetTotalScore() { mixin(MGF!("mGetTotalScore", "Function TribesGame.GFxTrPage_Profile.GetTotalScore")()); }
			ScriptFunction GetScorePerHour() { mixin(MGF!("mGetScorePerHour", "Function TribesGame.GFxTrPage_Profile.GetScorePerHour")()); }
			ScriptFunction GetTotalAccolades() { mixin(MGF!("mGetTotalAccolades", "Function TribesGame.GFxTrPage_Profile.GetTotalAccolades")()); }
			ScriptFunction GetAccoladesPerHour() { mixin(MGF!("mGetAccoladesPerHour", "Function TribesGame.GFxTrPage_Profile.GetAccoladesPerHour")()); }
			ScriptFunction GetGamesWon() { mixin(MGF!("mGetGamesWon", "Function TribesGame.GFxTrPage_Profile.GetGamesWon")()); }
			ScriptFunction GetGamesLost() { mixin(MGF!("mGetGamesLost", "Function TribesGame.GFxTrPage_Profile.GetGamesLost")()); }
			ScriptFunction GetWinLossRatio() { mixin(MGF!("mGetWinLossRatio", "Function TribesGame.GFxTrPage_Profile.GetWinLossRatio")()); }
			ScriptFunction GetAccoladeCount() { mixin(MGF!("mGetAccoladeCount", "Function TribesGame.GFxTrPage_Profile.GetAccoladeCount")()); }
			ScriptFunction GetTopBadgeIcon() { mixin(MGF!("mGetTopBadgeIcon", "Function TribesGame.GFxTrPage_Profile.GetTopBadgeIcon")()); }
			ScriptFunction GetFlagDefenses() { mixin(MGF!("mGetFlagDefenses", "Function TribesGame.GFxTrPage_Profile.GetFlagDefenses")()); }
			ScriptFunction GetFlagDefensesPerHour() { mixin(MGF!("mGetFlagDefensesPerHour", "Function TribesGame.GFxTrPage_Profile.GetFlagDefensesPerHour")()); }
			ScriptFunction GetFlagCaps() { mixin(MGF!("mGetFlagCaps", "Function TribesGame.GFxTrPage_Profile.GetFlagCaps")()); }
			ScriptFunction GetFlagCapsHour() { mixin(MGF!("mGetFlagCapsHour", "Function TribesGame.GFxTrPage_Profile.GetFlagCapsHour")()); }
			ScriptFunction GetGensDestroyed() { mixin(MGF!("mGetGensDestroyed", "Function TribesGame.GFxTrPage_Profile.GetGensDestroyed")()); }
			ScriptFunction GetGensDestroyedPerHour() { mixin(MGF!("mGetGensDestroyedPerHour", "Function TribesGame.GFxTrPage_Profile.GetGensDestroyedPerHour")()); }
			ScriptFunction GetObjsDestroyed() { mixin(MGF!("mGetObjsDestroyed", "Function TribesGame.GFxTrPage_Profile.GetObjsDestroyed")()); }
			ScriptFunction GetObjsDestroyedPerHour() { mixin(MGF!("mGetObjsDestroyedPerHour", "Function TribesGame.GFxTrPage_Profile.GetObjsDestroyedPerHour")()); }
			ScriptFunction GetAssists() { mixin(MGF!("mGetAssists", "Function TribesGame.GFxTrPage_Profile.GetAssists")()); }
			ScriptFunction GetMidairCount() { mixin(MGF!("mGetMidairCount", "Function TribesGame.GFxTrPage_Profile.GetMidairCount")()); }
			ScriptFunction GetFastestSki() { mixin(MGF!("mGetFastestSki", "Function TribesGame.GFxTrPage_Profile.GetFastestSki")()); }
		}
	}
	static struct Constants
	{
		enum
		{
			STAT_GAME_MAP = 200001,
			STAT_GAME_TYPE = 200002,
			STAT_GAME_TIME = 200003,
			STAT_GAME_OVERTIME = 200004,
			STAT_GAME_WINNER = 200005,
			STAT_CLASS_TYPE = 201000,
			STAT_CLASS_SCORE = 201001,
			STAT_CLASS_KILLS = 201002,
			STAT_CLASS_DEATHS = 201003,
			STAT_CLASS_ASSISTS = 201004,
			STAT_CLASS_CREDITS_EARNED = 201005,
			STAT_CLASS_CREDITS_SPENT = 201006,
			STAT_WEAPON_TYPE = 202000,
			STAT_WEAPON_DAMAGE = 202001,
			STAT_WEAPON_KILLS = 202002,
			STAT_WEAPON_SHOTS = 202003,
			STAT_WEAPON_HITS = 202004,
			STAT_WEAPON_TIME = 202005,
			STAT_WEAPON_DISTANCE = 202006,
			STAT_ACO_KS_FIVE = 203001,
			STAT_ACO_KS_TEN = 203002,
			STAT_ACO_KS_FIFTEEN = 203003,
			STAT_ACO_KS_TWENTY = 203004,
			STAT_ACO_KS_TWENTYFIVE = 203005,
			STAT_ACO_KS_FIVE_SNIPING = 203006,
			STAT_ACO_KS_TEN_SNIPING = 203007,
			STAT_ACO_KS_FIFTEEN_SNIPING = 203008,
			STAT_ACO_KS_FIVE_EXPLOSIVE = 203009,
			STAT_ACO_KS_TEN_EXPLOSIVE = 203010,
			STAT_ACO_KS_FIFTEEN_EXPLOSIVE = 203011,
			STAT_ACO_KS_FIVE_SPINFUSOR = 203012,
			STAT_ACO_KS_TEN_SPINFUSOR = 203013,
			STAT_ACO_KS_FIFTEEN_SPINFUSOR = 203014,
			STAT_ACO_MK_DOUBLE = 203015,
			STAT_ACO_MK_TRIPLE = 203016,
			STAT_ACO_MK_QUATRA = 203017,
			STAT_ACO_MK_ULTRA = 203018,
			STAT_ACO_MK_TEAM = 203019,
			STAT_ACO_NOJOY = 203020,
			STAT_ACO_REVENGE = 203021,
			STAT_ACO_AFTERMATH = 203022,
			STAT_ACO_FIRSTBLOOD = 203023,
			STAT_ACO_BLUEPLATESPECIAL = 203024,
			STAT_ACO_STICKYKILL = 203025,
			STAT_ACO_HEADSHOT = 203026,
			STAT_ACO_ARTILLERYSTRIKE = 203027,
			STAT_ACO_MELEE = 203028,
			STAT_ACO_ROADKILL = 203029,
			STAT_ACO_FLAG_CAPTURE = 203030,
			STAT_ACO_FLAG_GRAB = 203031,
			STAT_ACO_BK_GEN = 203032,
			STAT_ACO_RABBITKILL = 203033,
			STAT_ACO_KILLASRABBIT = 203034,
			STAT_ACO_FINALBLOW = 203035,
			STAT_ACO_REPAIR = 203036,
			STAT_ACO_BK_TURRET = 203037,
			STAT_ACO_ASSIST = 203039,
			STAT_ACO_FLAG_RETURN = 203040,
			STAT_ACO_BK_RADAR = 203041,
			STAT_ACO_FLAG_ASSIST = 203042,
			STAT_ACO_AIRMAIL = 203043,
			STAT_ACO_GAME_COMPLETE = 203044,
			STAT_ACO_GAME_WINNER = 203045,
			STAT_ACO_FLAG_GRABDM = 203046,
			STAT_ACO_FLAG_HOLDER = 203047,
			STAT_ACO_FLAG_KILLER = 203048,
			STAT_ACO_FLAG_GRABFAST = 203049,
			STAT_ACO_DEFENSE_GEN = 203050,
			STAT_ACO_DEFENSE_FLAG = 203051,
			STAT_ACO_VD_BIKE = 203052,
			STAT_ACO_VD_TANK = 203053,
			STAT_ACO_VD_SHRIKE = 203054,
			STAT_ACO_FLAG_GRABE = 203055,
			STAT_ACO_FLAG_GRABLLAMA = 203056,
			STAT_ACO_ASSIST_VEHICLE = 203057,
			STAT_ACO_FLAG_GRABULTRA = 203058,
			STAT_ACO_BENCHEM = 203059,
			STAT_ACO_DOUBLEDOWN = 203060,
			STAT_ACO_LASTMANSTANDING = 203061,
			STAT_ACO_MIRACLE = 203062,
			STAT_ACO_NOTAMONGEQUALS = 203063,
			STAT_ACO_ONEMANARMY = 203064,
			STAT_ACO_TRIBALHONOR = 203065,
			STAT_ACO_UNITEDWESTAND = 203066,
			STAT_ACO_HOLDTHELINE = 203067,
			STAT_ACO_CAPTUREANDHOLD = 203068,
			STAT_ACO_BASEASSIST = 203069,
			STAT_ACO_TURRETASSIST = 203070,
			STAT_ACO_HOTAIR = 203071,
			ACT_ACO_KS_FIVE = 56,
			ACT_ACO_KS_TEN = 63,
			ACT_ACO_KS_FIFTEEN = 55,
			ACT_ACO_KS_TWENTY = 64,
			ACT_ACO_KS_TWENTYFIVE = 65,
			ACT_ACO_KS_FIVE_SNIPING = 58,
			ACT_ACO_KS_TEN_SNIPING = 59,
			ACT_ACO_KS_FIFTEEN_SNIPING = 57,
			ACT_ACO_KS_FIVE_EXPLOSIVE = 53,
			ACT_ACO_KS_TEN_EXPLOSIVE = 54,
			ACT_ACO_KS_FIFTEEN_EXPLOSIVE = 52,
			ACT_ACO_KS_FIVE_SPINFUSOR = 61,
			ACT_ACO_KS_TEN_SPINFUSOR = 62,
			ACT_ACO_KS_FIFTEEN_SPINFUSOR = 60,
			ACT_ACO_MK_DOUBLE = 66,
			ACT_ACO_MK_TRIPLE = 67,
			ACT_ACO_MK_QUATRA = 68,
			ACT_ACO_MK_ULTRA = 69,
			ACT_ACO_MK_TEAM = 70,
			ACT_ACO_NOJOY = 89,
			ACT_ACO_REVENGE = 90,
			ACT_ACO_AFTERMATH = 73,
			ACT_ACO_FIRSTBLOOD = 78,
			ACT_ACO_BLUEPLATESPECIAL = 29,
			ACT_ACO_STICKYKILL = 92,
			ACT_ACO_HEADSHOT = 84,
			ACT_ACO_ARTILLERYSTRIKE = 75,
			ACT_ACO_MELEE = 88,
			ACT_ACO_ROADKILL = 91,
			ACT_ACO_FLAG_CAPTURE = 42,
			ACT_ACO_FLAG_GRAB = 80,
			ACT_ACO_BK_GEN = 48,
			ACT_ACO_RABBITKILL = 72,
			ACT_ACO_KILLASRABBIT = 71,
			ACT_ACO_FINALBLOW = 49,
			ACT_ACO_REPAIR = 39,
			ACT_ACO_BK_TURRET = 40,
			ACT_ACO_ASSIST = 76,
			ACT_ACO_FLAG_RETURN = 46,
			ACT_ACO_BK_RADAR = 38,
			ACT_ACO_FLAG_ASSIST = 41,
			ACT_ACO_AIRMAIL = 74,
			ACT_ACO_GAME_COMPLETE = 82,
			ACT_ACO_GAME_WINNER = 83,
			ACT_ACO_FLAG_HOLDER = 51,
			ACT_ACO_FLAG_KILLER = 81,
			ACT_ACO_FLAG_GRABFAST = 77,
			ACT_ACO_DEFENSE_GEN = 47,
			ACT_ACO_DEFENSE_FLAG = 79,
			ACT_ACO_VD_BIKE = 87,
			ACT_ACO_VD_TANK = 85,
			ACT_ACO_VD_SHRIKE = 86,
			ACT_ACO_FLAG_GRABE = 44,
			ACT_ACO_FLAG_GRABLLAMA = 45,
			ACT_ACO_ASSIST_VEHICLE = 94,
			ACT_ACO_FLAG_GRABULTRA = 93,
			ACT_ACO_BENCHEM = 30,
			ACT_ACO_DOUBLEDOWN = 31,
			ACT_ACO_LASTMANSTANDING = 32,
			ACT_ACO_MIRACLE = 33,
			ACT_ACO_NOTAMONGEQUALS = 34,
			ACT_ACO_ONEMANARMY = 35,
			ACT_ACO_TRIBALHONOR = 36,
			ACT_ACO_UNITEDWESTAND = 37,
			ACT_ACO_HOLDTHELINE = 117,
			ACT_ACO_CAPTUREANDHOLD = 118,
			ACT_ACO_BASEASSIST = 121,
			ACT_ACO_TURRETASSIST = 122,
			ACT_ACO_HOTAIR = 123,
			ACO_TYPE_GENERAL = 0,
			ACO_TYPE_COMBAT = 1,
			ACO_TYPE_FLAG = 2,
			ACO_TYPE_OBJECTIVE = 3,
			ACO_TYPE_SPREES = 4,
			ACO_TYPE_MULTIKILL = 5,
			ACO_TYPE_ARENA = 6,
			STAT_ACOW_KS_FIVE = 5,
			STAT_ACOW_KS_TEN = 12,
			STAT_ACOW_KS_FIFTEEN = 20,
			STAT_ACOW_KS_TWENTY = 40,
			STAT_ACOW_KS_TWENTYFIVE = 100,
			STAT_ACOW_KS_FIVE_SNIPING = 5,
			STAT_ACOW_KS_TEN_SNIPING = 12,
			STAT_ACOW_KS_FIFTEEN_SNIPING = 20,
			STAT_ACOW_KS_FIVE_EXPLOSIVE = 5,
			STAT_ACOW_KS_TEN_EXPLOSIVE = 12,
			STAT_ACOW_KS_FIFTEEN_EXPLOSIVE = 20,
			STAT_ACOW_KS_FIVE_SPINFUSOR = 5,
			STAT_ACOW_KS_TEN_SPINFUSOR = 12,
			STAT_ACOW_KS_FIFTEEN_SPINFUSOR = 20,
			STAT_ACOW_MK_DOUBLE = 6,
			STAT_ACOW_MK_TRIPLE = 20,
			STAT_ACOW_MK_QUATRA = 50,
			STAT_ACOW_MK_ULTRA = 75,
			STAT_ACOW_MK_TEAM = 100,
			STAT_ACOW_NOJOY = 3,
			STAT_ACOW_REVENGE = 1,
			STAT_ACOW_AFTERMATH = 1,
			STAT_ACOW_FIRSTBLOOD = 1,
			STAT_ACOW_BLUEPLATESPECIAL = 6,
			STAT_ACOW_STICKYKILL = 1,
			STAT_ACOW_HEADSHOT = 1,
			STAT_ACOW_ARTILLERYSTRIKE = 3,
			STAT_ACOW_MELEE = 1,
			STAT_ACOW_ROADKILL = 1,
			STAT_ACOW_FLAG_CAPTURE = 30,
			STAT_ACOW_FLAG_GRAB = 1,
			STAT_ACOW_BK_GEN = 2,
			STAT_ACOW_RABBITKILL = 1,
			STAT_ACOW_KILLASRABBIT = 1,
			STAT_ACOW_FINALBLOW = 4,
			STAT_ACOW_REPAIR = 1,
			STAT_ACOW_BK_TURRET = 1,
			STAT_ACOW_ASSIST = 1,
			STAT_ACOW_FLAG_RETURN = 1,
			STAT_ACOW_BK_RADAR = 1,
			STAT_ACOW_FLAG_ASSIST = 1,
			STAT_ACOW_AIRMAIL = 6,
			STAT_ACOW_HOTAIR = 3,
			STAT_ACOW_GAME_COMPLETE = 1,
			STAT_ACOW_GAME_WINNER = 1,
			STAT_ACOW_FLAG_GRABDM = 1,
			STAT_ACOW_FLAG_HOLDER = 1,
			STAT_ACOW_FLAG_KILLER = 3,
			STAT_ACOW_FLAG_GRABFAST = 1,
			STAT_ACOW_DEFENSE_GEN = 1,
			STAT_ACOW_DEFENSE_FLAG = 1,
			STAT_ACOW_VD_BIKE = 2,
			STAT_ACOW_VD_TANK = 2,
			STAT_ACOW_VD_SHRIKE = 2,
			STAT_ACOW_FLAG_GRABE = 5,
			STAT_ACOW_FLAG_GRABLLAMA = 1,
			STAT_ACOW_ASSIST_VEHICLE = 1,
			STAT_ACOW_FLAG_GRABULTRA = 2,
			STAT_ACOW_BASEASSIST = 1,
			STAT_ACOW_TURRETASSIST = 1,
			STAT_AWD_CREDITS_EARNED = 204001,
			STAT_AWD_CREDITS_SPENT = 204002,
			STAT_AWD_DESTRUCTION_DEPLOYABLE = 204003,
			STAT_AWD_DESTRUCTION_VEHICLE = 204004,
			STAT_AWD_DISTANCE_HEADSHOT = 204005,
			STAT_AWD_DISTANCE_KILL = 204006,
			STAT_AWD_DISTANCE_SKIED = 204007,
			STAT_AWD_KILLS = 204008,
			STAT_AWD_KILLS_DEPLOYABLE = 204009,
			STAT_AWD_KILLS_MIDAIR = 204010,
			STAT_AWD_KILLS_VEHICLE = 204011,
			STAT_AWD_REPAIRS = 204012,
			STAT_AWD_SPEED_FLAGCAP = 204013,
			STAT_AWD_SPEED_FLAGGRAB = 204014,
			STAT_AWD_SPEED_SKIED = 204015,
			STAT_AWD_FLAG_RETURNS = 204016,
			STAT_AWD_DEATHS = 204017,
			STAT_AWDW_CREDITS_EARNED = 98,
			STAT_AWDW_CREDITS_SPENT = 89,
			STAT_AWDW_DESTRUCTION_DEPLOYABLE = 84,
			STAT_AWDW_DESTRUCTION_VEHICLE = 88,
			STAT_AWDW_DISTANCE_HEADSHOT = 87,
			STAT_AWDW_DISTANCE_KILL = 93,
			STAT_AWDW_DISTANCE_SKIED = 90,
			STAT_AWDW_KILLS = 86,
			STAT_AWDW_KILLS_DEPLOYABLE = 92,
			STAT_AWDW_KILLS_MIDAIR = 94,
			STAT_AWDW_KILLS_VEHICLE = 81,
			STAT_AWDW_REPAIRS = 96,
			STAT_AWDW_SPEED_FLAGCAP = -100,
			STAT_AWDW_SPEED_FLAGGRAB = 97,
			STAT_AWDW_SPEED_SKIED = 95,
			STAT_AWDW_FLAG_RETURNS = 85,
			STAT_AWDW_DEATHS = 1,
			MIN_CREDITS_FOR_XP = 100,
		}
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillProfile()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillProfile, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	float GetKDR()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetKDR, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetPlayedPercent(int ClassId, bool* bResolve = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		if (bResolve !is null)
			*cast(bool*)&params[4] = *bResolve;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayedPercent, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptString GetMostPlayed()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMostPlayed, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetTimePlayed()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTimePlayed, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetGamesPlayed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGamesPlayed, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetTotalScore()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTotalScore, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetScorePerHour()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScorePerHour, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetTotalAccolades()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTotalAccolades, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetAccoladesPerHour()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAccoladesPerHour, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetGamesWon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGamesWon, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetGamesLost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGamesLost, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString GetWinLossRatio()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWinLossRatio, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetAccoladeCount(int AccoladeId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AccoladeId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAccoladeCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetTopBadgeIcon(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTopBadgeIcon, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetFlagDefenses()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlagDefenses, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetFlagDefensesPerHour()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlagDefensesPerHour, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetFlagCaps()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlagCaps, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetFlagCapsHour()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlagCapsHour, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetGensDestroyed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGensDestroyed, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetGensDestroyedPerHour()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGensDestroyedPerHour, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetObjsDestroyed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetObjsDestroyed, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetObjsDestroyedPerHour()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetObjsDestroyedPerHour, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetAssists()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAssists, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetMidairCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMidairCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetFastestSki()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFastestSki, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
