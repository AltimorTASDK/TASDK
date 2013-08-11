module UnrealScript.UTGame.UTGameSettingsCommon;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;
import UnrealScript.UTGame.UTUIDataStore_MenuItems;
import UnrealScript.UDKBase.UDKGameSettingsCommon;

extern(C++) interface UTGameSettingsCommon : UDKGameSettingsCommon
{
	public static immutable auto GS_USERNAME_MAXLENGTH = 15;
	public static immutable auto GS_PASSWORD_MAXLENGTH = 30;
	public static immutable auto GS_MESSAGE_MAXLENGTH = 255;
	public static immutable auto GS_EMAIL_MAXLENGTH = 50;
	public static immutable auto GS_CDKEY_PART_MAXLENGTH = 4;
	public static immutable auto CONTEXT_PRESENCE_MENUPRESENCE = 0;
	public static immutable auto CONTEXT_GAME_MODE = 0x0000800B;
	public static immutable auto CONTEXT_GAME_MODE_DM = 0;
	public static immutable auto CONTEXT_GAME_MODE_CTF = 1;
	public static immutable auto CONTEXT_GAME_MODE_WAR = 2;
	public static immutable auto CONTEXT_GAME_MODE_VCTF = 3;
	public static immutable auto CONTEXT_GAME_MODE_TDM = 4;
	public static immutable auto CONTEXT_GAME_MODE_DUEL = 5;
	public static immutable auto CONTEXT_GAME_MODE_CUSTOM = 6;
	public static immutable auto CONTEXT_GAME_MODE_CAMPAIGN = 7;
	public static immutable auto CONTEXT_MAPNAME = 0;
	public static immutable auto CONTEXT_LOCKEDSERVER = 1;
	public static immutable auto CONTEXT_ALLOWKEYBOARD = 2;
	public static immutable auto CONTEXT_BOTSKILL = 10;
	public static immutable auto CONTEXT_PURESERVER = 11;
	public static immutable auto CONTEXT_VSBOTS = 12;
	public static immutable auto CONTEXT_CAMPAIGN = 13;
	public static immutable auto CONTEXT_FORCERESPAWN = 14;
	public static immutable auto CONTEXT_FULLSERVER = 15;
	public static immutable auto CONTEXT_EMPTYSERVER = 16;
	public static immutable auto CONTEXT_DEDICATEDSERVER = 17;
	public static immutable auto CONTEXT_MAPNAME_CUSTOM = 0;
	public static immutable auto CONTEXT_BOTSKILL_NOVICE = 0;
	public static immutable auto CONTEXT_BOTSKILL_AVERAGE = 1;
	public static immutable auto CONTEXT_BOTSKILL_EXPERIENCED = 2;
	public static immutable auto CONTEXT_BOTSKILL_SKILLED = 3;
	public static immutable auto CONTEXT_BOTSKILL_ADEPT = 4;
	public static immutable auto CONTEXT_BOTSKILL_MASTERFUL = 5;
	public static immutable auto CONTEXT_BOTSKILL_INHUMAN = 6;
	public static immutable auto CONTEXT_BOTSKILL_GODLIKE = 7;
	public static immutable auto CONTEXT_GOALSCORE_5 = 0;
	public static immutable auto CONTEXT_GOALSCORE_10 = 1;
	public static immutable auto CONTEXT_GOALSCORE_15 = 2;
	public static immutable auto CONTEXT_GOALSCORE_20 = 3;
	public static immutable auto CONTEXT_GOALSCORE_30 = 4;
	public static immutable auto CONTEXT_NUMBOTS_0 = 0;
	public static immutable auto CONTEXT_NUMBOTS_1 = 1;
	public static immutable auto CONTEXT_NUMBOTS_2 = 2;
	public static immutable auto CONTEXT_NUMBOTS_3 = 3;
	public static immutable auto CONTEXT_NUMBOTS_4 = 4;
	public static immutable auto CONTEXT_NUMBOTS_5 = 5;
	public static immutable auto CONTEXT_NUMBOTS_6 = 6;
	public static immutable auto CONTEXT_NUMBOTS_7 = 7;
	public static immutable auto CONTEXT_NUMBOTS_8 = 8;
	public static immutable auto CONTEXT_TIMELIMIT_5 = 0;
	public static immutable auto CONTEXT_TIMELIMIT_10 = 1;
	public static immutable auto CONTEXT_TIMELIMIT_15 = 2;
	public static immutable auto CONTEXT_TIMELIMIT_20 = 3;
	public static immutable auto CONTEXT_TIMELIMIT_30 = 4;
	public static immutable auto CONTEXT_PURESERVER_NO = 0;
	public static immutable auto CONTEXT_PURESERVER_YES = 1;
	public static immutable auto CONTEXT_PURESERVER_ANY = 2;
	public static immutable auto CONTEXT_LOCKEDSERVER_NO = 0;
	public static immutable auto CONTEXT_LOCKEDSERVER_YES = 1;
	public static immutable auto CONTEXT_CAMPAIGN_NO = 0;
	public static immutable auto CONTEXT_CAMPAIGN_YES = 1;
	public static immutable auto CONTEXT_FORCERESPAWN_NO = 0;
	public static immutable auto CONTEXT_FORCERESPAWN_YES = 1;
	public static immutable auto CONTEXT_ALLOWKEYBOARD_NO = 0;
	public static immutable auto CONTEXT_ALLOWKEYBOARD_YES = 1;
	public static immutable auto CONTEXT_ALLOWKEYBOARD_ANY = 2;
	public static immutable auto CONTEXT_FULLSERVER_NO = 0;
	public static immutable auto CONTEXT_FULLSERVER_YES = 1;
	public static immutable auto CONTEXT_EMPTYSERVER_NO = 0;
	public static immutable auto CONTEXT_EMPTYSERVER_YES = 1;
	public static immutable auto CONTEXT_DEDICATEDSERVER_NO = 0;
	public static immutable auto CONTEXT_DEDICATEDSERVER_YES = 1;
	public static immutable auto CONTEXT_VSBOTS_NONE = 0;
	public static immutable auto CONTEXT_VSBOTS_1_TO_2 = 1;
	public static immutable auto CONTEXT_VSBOTS_1_TO_1 = 2;
	public static immutable auto CONTEXT_VSBOTS_3_TO_2 = 3;
	public static immutable auto CONTEXT_VSBOTS_2_TO_1 = 4;
	public static immutable auto CONTEXT_VSBOTS_3_TO_1 = 5;
	public static immutable auto CONTEXT_VSBOTS_4_TO_1 = 6;
	public static immutable auto PROPERTY_NUMBOTS = 0x100000F7;
	public static immutable auto PROPERTY_TIMELIMIT = 0x1000000A;
	public static immutable auto PROPERTY_GOALSCORE = 0x1000000B;
	public static immutable auto PROPERTY_LEADERBOARDRATING = 0x20000004;
	public static immutable auto PROPERTY_EPICMUTATORS = 0x10000105;
	public static immutable auto PROPERTY_CUSTOMMAPNAME = 0x40000001;
	public static immutable auto PROPERTY_CUSTOMGAMEMODE = 0x40000002;
	public static immutable auto PROPERTY_SERVERDESCRIPTION = 0x40000003;
	public static immutable auto PROPERTY_CUSTOMMUTATORS = 0x40000004;
	public static immutable auto QUERY_DM = 0;
	public static immutable auto QUERY_TDM = 1;
	public static immutable auto QUERY_CTF = 2;
	public static immutable auto QUERY_VCTF = 3;
	public static immutable auto QUERY_WAR = 4;
	public static immutable auto QUERY_DUEL = 5;
	public static immutable auto QUERY_CAMPAIGN = 6;
	public static immutable auto STATS_VIEW_DM_PLAYER_ALLTIME = 1;
	public static immutable auto STATS_VIEW_DM_RANKED_ALLTIME = 2;
	public static immutable auto STATS_VIEW_DM_WEAPONS_ALLTIME = 3;
	public static immutable auto STATS_VIEW_DM_VEHICLES_ALLTIME = 4;
	public static immutable auto STATS_VIEW_DM_VEHICLEWEAPONS_ALLTIME = 5;
	public static immutable auto STATS_VIEW_DM_VEHICLES_RANKED_ALLTIME = 6;
	public static immutable auto STATS_VIEW_DM_VEHICLEWEAPONS_RANKED_ALLTIME = 7;
	public static immutable auto STATS_VIEW_DM_WEAPONS_RANKED_ALLTIME = 8;
	public @property final auto ref int MaxPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref int MinNetPlayers() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
	final void SetCustomMapName(ScriptString MapName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47727], params.ptr, cast(void*)0);
	}
	final void SetOfficialMutatorBitmask(int MutatorBitmask)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MutatorBitmask;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47730], params.ptr, cast(void*)0);
	}
	final void BuildURL(ScriptString* OutURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *OutURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47732], params.ptr, cast(void*)0);
		*OutURL = *cast(ScriptString*)params.ptr;
	}
	final void UpdateFromURL(ScriptString* URL, GameInfo Game)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *URL;
		*cast(GameInfo*)&params[12] = Game;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47740], params.ptr, cast(void*)0);
		*URL = *cast(ScriptString*)params.ptr;
	}
	final void SetMutators(ScriptString* URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47747], params.ptr, cast(void*)0);
		*URL = *cast(ScriptString*)params.ptr;
	}
	final int GenerateMutatorBitmaskFromURL(UTUIDataStore_MenuItems MenuDataStore, ScriptArray!(ScriptString)* MutatorClassNames)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTUIDataStore_MenuItems*)params.ptr = MenuDataStore;
		*cast(ScriptArray!(ScriptString)*)&params[4] = *MutatorClassNames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47754], params.ptr, cast(void*)0);
		*MutatorClassNames = *cast(ScriptArray!(ScriptString)*)&params[4];
		return *cast(int*)&params[16];
	}
	final void SetCustomMutators(UTUIDataStore_MenuItems MenuDataStore, ScriptArray!(ScriptString)* MutatorClassNames)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTUIDataStore_MenuItems*)params.ptr = MenuDataStore;
		*cast(ScriptArray!(ScriptString)*)&params[4] = *MutatorClassNames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47763], params.ptr, cast(void*)0);
		*MutatorClassNames = *cast(ScriptArray!(ScriptString)*)&params[4];
	}
}
