module UnrealScript.UTGame.UTGameSettingsCommon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameInfo;
import UnrealScript.UTGame.UTUIDataStore_MenuItems;
import UnrealScript.UDKBase.UDKGameSettingsCommon;

extern(C++) interface UTGameSettingsCommon : UDKGameSettingsCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGameSettingsCommon")); }
	private static __gshared UTGameSettingsCommon mDefaultProperties;
	@property final static UTGameSettingsCommon DefaultProperties() { mixin(MGDPC("UTGameSettingsCommon", "UTGameSettingsCommon UTGame.Default__UTGameSettingsCommon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetCustomMapName;
			ScriptFunction mSetOfficialMutatorBitmask;
			ScriptFunction mBuildURL;
			ScriptFunction mUpdateFromURL;
			ScriptFunction mSetMutators;
			ScriptFunction mGenerateMutatorBitmaskFromURL;
			ScriptFunction mSetCustomMutators;
		}
		public @property static final
		{
			ScriptFunction SetCustomMapName() { mixin(MGF("mSetCustomMapName", "Function UTGame.UTGameSettingsCommon.SetCustomMapName")); }
			ScriptFunction SetOfficialMutatorBitmask() { mixin(MGF("mSetOfficialMutatorBitmask", "Function UTGame.UTGameSettingsCommon.SetOfficialMutatorBitmask")); }
			ScriptFunction BuildURL() { mixin(MGF("mBuildURL", "Function UTGame.UTGameSettingsCommon.BuildURL")); }
			ScriptFunction UpdateFromURL() { mixin(MGF("mUpdateFromURL", "Function UTGame.UTGameSettingsCommon.UpdateFromURL")); }
			ScriptFunction SetMutators() { mixin(MGF("mSetMutators", "Function UTGame.UTGameSettingsCommon.SetMutators")); }
			ScriptFunction GenerateMutatorBitmaskFromURL() { mixin(MGF("mGenerateMutatorBitmaskFromURL", "Function UTGame.UTGameSettingsCommon.GenerateMutatorBitmaskFromURL")); }
			ScriptFunction SetCustomMutators() { mixin(MGF("mSetCustomMutators", "Function UTGame.UTGameSettingsCommon.SetCustomMutators")); }
		}
	}
	static struct Constants
	{
		enum
		{
			GS_USERNAME_MAXLENGTH = 15,
			GS_PASSWORD_MAXLENGTH = 30,
			GS_MESSAGE_MAXLENGTH = 255,
			GS_EMAIL_MAXLENGTH = 50,
			GS_CDKEY_PART_MAXLENGTH = 4,
			CONTEXT_PRESENCE_MENUPRESENCE = 0,
			CONTEXT_GAME_MODE = 0x0000800B,
			CONTEXT_GAME_MODE_DM = 0,
			CONTEXT_GAME_MODE_CTF = 1,
			CONTEXT_GAME_MODE_WAR = 2,
			CONTEXT_GAME_MODE_VCTF = 3,
			CONTEXT_GAME_MODE_TDM = 4,
			CONTEXT_GAME_MODE_DUEL = 5,
			CONTEXT_GAME_MODE_CUSTOM = 6,
			CONTEXT_GAME_MODE_CAMPAIGN = 7,
			CONTEXT_MAPNAME = 0,
			CONTEXT_LOCKEDSERVER = 1,
			CONTEXT_ALLOWKEYBOARD = 2,
			CONTEXT_BOTSKILL = 10,
			CONTEXT_PURESERVER = 11,
			CONTEXT_VSBOTS = 12,
			CONTEXT_CAMPAIGN = 13,
			CONTEXT_FORCERESPAWN = 14,
			CONTEXT_FULLSERVER = 15,
			CONTEXT_EMPTYSERVER = 16,
			CONTEXT_DEDICATEDSERVER = 17,
			CONTEXT_MAPNAME_CUSTOM = 0,
			CONTEXT_BOTSKILL_NOVICE = 0,
			CONTEXT_BOTSKILL_AVERAGE = 1,
			CONTEXT_BOTSKILL_EXPERIENCED = 2,
			CONTEXT_BOTSKILL_SKILLED = 3,
			CONTEXT_BOTSKILL_ADEPT = 4,
			CONTEXT_BOTSKILL_MASTERFUL = 5,
			CONTEXT_BOTSKILL_INHUMAN = 6,
			CONTEXT_BOTSKILL_GODLIKE = 7,
			CONTEXT_GOALSCORE_5 = 0,
			CONTEXT_GOALSCORE_10 = 1,
			CONTEXT_GOALSCORE_15 = 2,
			CONTEXT_GOALSCORE_20 = 3,
			CONTEXT_GOALSCORE_30 = 4,
			CONTEXT_NUMBOTS_0 = 0,
			CONTEXT_NUMBOTS_1 = 1,
			CONTEXT_NUMBOTS_2 = 2,
			CONTEXT_NUMBOTS_3 = 3,
			CONTEXT_NUMBOTS_4 = 4,
			CONTEXT_NUMBOTS_5 = 5,
			CONTEXT_NUMBOTS_6 = 6,
			CONTEXT_NUMBOTS_7 = 7,
			CONTEXT_NUMBOTS_8 = 8,
			CONTEXT_TIMELIMIT_5 = 0,
			CONTEXT_TIMELIMIT_10 = 1,
			CONTEXT_TIMELIMIT_15 = 2,
			CONTEXT_TIMELIMIT_20 = 3,
			CONTEXT_TIMELIMIT_30 = 4,
			CONTEXT_PURESERVER_NO = 0,
			CONTEXT_PURESERVER_YES = 1,
			CONTEXT_PURESERVER_ANY = 2,
			CONTEXT_LOCKEDSERVER_NO = 0,
			CONTEXT_LOCKEDSERVER_YES = 1,
			CONTEXT_CAMPAIGN_NO = 0,
			CONTEXT_CAMPAIGN_YES = 1,
			CONTEXT_FORCERESPAWN_NO = 0,
			CONTEXT_FORCERESPAWN_YES = 1,
			CONTEXT_ALLOWKEYBOARD_NO = 0,
			CONTEXT_ALLOWKEYBOARD_YES = 1,
			CONTEXT_ALLOWKEYBOARD_ANY = 2,
			CONTEXT_FULLSERVER_NO = 0,
			CONTEXT_FULLSERVER_YES = 1,
			CONTEXT_EMPTYSERVER_NO = 0,
			CONTEXT_EMPTYSERVER_YES = 1,
			CONTEXT_DEDICATEDSERVER_NO = 0,
			CONTEXT_DEDICATEDSERVER_YES = 1,
			CONTEXT_VSBOTS_NONE = 0,
			CONTEXT_VSBOTS_1_TO_2 = 1,
			CONTEXT_VSBOTS_1_TO_1 = 2,
			CONTEXT_VSBOTS_3_TO_2 = 3,
			CONTEXT_VSBOTS_2_TO_1 = 4,
			CONTEXT_VSBOTS_3_TO_1 = 5,
			CONTEXT_VSBOTS_4_TO_1 = 6,
			PROPERTY_NUMBOTS = 0x100000F7,
			PROPERTY_TIMELIMIT = 0x1000000A,
			PROPERTY_GOALSCORE = 0x1000000B,
			PROPERTY_LEADERBOARDRATING = 0x20000004,
			PROPERTY_EPICMUTATORS = 0x10000105,
			PROPERTY_CUSTOMMAPNAME = 0x40000001,
			PROPERTY_CUSTOMGAMEMODE = 0x40000002,
			PROPERTY_SERVERDESCRIPTION = 0x40000003,
			PROPERTY_CUSTOMMUTATORS = 0x40000004,
			QUERY_DM = 0,
			QUERY_TDM = 1,
			QUERY_CTF = 2,
			QUERY_VCTF = 3,
			QUERY_WAR = 4,
			QUERY_DUEL = 5,
			QUERY_CAMPAIGN = 6,
			STATS_VIEW_DM_PLAYER_ALLTIME = 1,
			STATS_VIEW_DM_RANKED_ALLTIME = 2,
			STATS_VIEW_DM_WEAPONS_ALLTIME = 3,
			STATS_VIEW_DM_VEHICLES_ALLTIME = 4,
			STATS_VIEW_DM_VEHICLEWEAPONS_ALLTIME = 5,
			STATS_VIEW_DM_VEHICLES_RANKED_ALLTIME = 6,
			STATS_VIEW_DM_VEHICLEWEAPONS_RANKED_ALLTIME = 7,
			STATS_VIEW_DM_WEAPONS_RANKED_ALLTIME = 8,
		}
	}
	@property final auto ref
	{
		int MaxPlayers() { mixin(MGPC("int", 172)); }
		int MinNetPlayers() { mixin(MGPC("int", 176)); }
	}
final:
	void SetCustomMapName(ScriptString MapName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCustomMapName, params.ptr, cast(void*)0);
	}
	void SetOfficialMutatorBitmask(int MutatorBitmask)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MutatorBitmask;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOfficialMutatorBitmask, params.ptr, cast(void*)0);
	}
	void BuildURL(ref ScriptString OutURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OutURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.BuildURL, params.ptr, cast(void*)0);
		OutURL = *cast(ScriptString*)params.ptr;
	}
	void UpdateFromURL(ref in ScriptString pURL, GameInfo Game)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)pURL;
		*cast(GameInfo*)&params[12] = Game;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFromURL, params.ptr, cast(void*)0);
	}
	void SetMutators(ref in ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMutators, params.ptr, cast(void*)0);
	}
	int GenerateMutatorBitmaskFromURL(UTUIDataStore_MenuItems MenuDataStore, ref ScriptArray!(ScriptString) MutatorClassNames)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTUIDataStore_MenuItems*)params.ptr = MenuDataStore;
		*cast(ScriptArray!(ScriptString)*)&params[4] = MutatorClassNames;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenerateMutatorBitmaskFromURL, params.ptr, cast(void*)0);
		MutatorClassNames = *cast(ScriptArray!(ScriptString)*)&params[4];
		return *cast(int*)&params[16];
	}
	void SetCustomMutators(UTUIDataStore_MenuItems MenuDataStore, ref in ScriptArray!(ScriptString) MutatorClassNames)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTUIDataStore_MenuItems*)params.ptr = MenuDataStore;
		*cast(ScriptArray!(ScriptString)*)&params[4] = cast(ScriptArray!(ScriptString))MutatorClassNames;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCustomMutators, params.ptr, cast(void*)0);
	}
}
