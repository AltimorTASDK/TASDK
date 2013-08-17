module UnrealScript.UTGame.GFxUIView;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUIView : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUIView")()); }
	private static __gshared GFxUIView mDefaultProperties;
	@property final static GFxUIView DefaultProperties() { mixin(MGDPC!(GFxUIView, "GFxUIView UTGame.Default__GFxUIView")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHasLinkConnection;
			ScriptFunction mGetPlayerOwner;
			ScriptFunction mGetUDKPlayerOwner;
			ScriptFunction mGetPlayerName;
			ScriptFunction mIsLoggedIn;
			ScriptFunction mGetCommonOptionsURL;
			ScriptFunction mGetPlayerIndex;
			ScriptFunction mGetPlayerControllerId;
			ScriptFunction mConsoleCommand;
		}
		public @property static final
		{
			ScriptFunction HasLinkConnection() { mixin(MGF!("mHasLinkConnection", "Function UTGame.GFxUIView.HasLinkConnection")()); }
			ScriptFunction GetPlayerOwner() { mixin(MGF!("mGetPlayerOwner", "Function UTGame.GFxUIView.GetPlayerOwner")()); }
			ScriptFunction GetUDKPlayerOwner() { mixin(MGF!("mGetUDKPlayerOwner", "Function UTGame.GFxUIView.GetUDKPlayerOwner")()); }
			ScriptFunction GetPlayerName() { mixin(MGF!("mGetPlayerName", "Function UTGame.GFxUIView.GetPlayerName")()); }
			ScriptFunction IsLoggedIn() { mixin(MGF!("mIsLoggedIn", "Function UTGame.GFxUIView.IsLoggedIn")()); }
			ScriptFunction GetCommonOptionsURL() { mixin(MGF!("mGetCommonOptionsURL", "Function UTGame.GFxUIView.GetCommonOptionsURL")()); }
			ScriptFunction GetPlayerIndex() { mixin(MGF!("mGetPlayerIndex", "Function UTGame.GFxUIView.GetPlayerIndex")()); }
			ScriptFunction GetPlayerControllerId() { mixin(MGF!("mGetPlayerControllerId", "Function UTGame.GFxUIView.GetPlayerControllerId")()); }
			ScriptFunction ConsoleCommand() { mixin(MGF!("mConsoleCommand", "Function UTGame.GFxUIView.ConsoleCommand")()); }
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
	@property final
	{
		bool bRequiresNetwork() { mixin(MGBPC!(120, 0x1)()); }
		bool bRequiresNetwork(bool val) { mixin(MSBPC!(120, 0x1)()); }
	}
final:
	static bool HasLinkConnection()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.HasLinkConnection, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	LocalPlayer GetPlayerOwner(int* PlayerIndex = null)
	{
		ubyte params[8];
		params[] = 0;
		if (PlayerIndex !is null)
			*cast(int*)params.ptr = *PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerOwner, params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)&params[4];
	}
	UDKPlayerController GetUDKPlayerOwner(int* PlayerIndex = null)
	{
		ubyte params[8];
		params[] = 0;
		if (PlayerIndex !is null)
			*cast(int*)params.ptr = *PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUDKPlayerOwner, params.ptr, cast(void*)0);
		return *cast(UDKPlayerController*)&params[4];
	}
	ScriptString GetPlayerName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool IsLoggedIn(int* ControllerId = null, bool* bRequireOnlineLogin = null)
	{
		ubyte params[12];
		params[] = 0;
		if (ControllerId !is null)
			*cast(int*)params.ptr = *ControllerId;
		if (bRequireOnlineLogin !is null)
			*cast(bool*)&params[4] = *bRequireOnlineLogin;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLoggedIn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptString GetCommonOptionsURL()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCommonOptionsURL, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetPlayerIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerIndex, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetPlayerControllerId(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerControllerId, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ConsoleCommand(ScriptString Cmd, bool* bWriteToLog = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Cmd;
		if (bWriteToLog !is null)
			*cast(bool*)&params[12] = *bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
	}
}
