module UnrealScript.Engine.GameplayEventsWriter;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.GenericParamListStatEntry;
import UnrealScript.Engine.GameplayEvents;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface GameplayEventsWriter : GameplayEvents
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameplayEventsWriter")); }
	private static __gshared GameplayEventsWriter mDefaultProperties;
	@property final static GameplayEventsWriter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameplayEventsWriter)("GameplayEventsWriter Engine.Default__GameplayEventsWriter")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mResolvePlayerIndex;
			ScriptFunction mStartLogging;
			ScriptFunction mResetLogging;
			ScriptFunction mEndLogging;
			ScriptFunction mIsSessionInProgress;
			ScriptFunction mOpenStatsFile;
			ScriptFunction mCloseStatsFile;
			ScriptFunction mSerializeHeader;
			ScriptFunction mSerializeFooter;
			ScriptFunction mPoll;
			ScriptFunction mGetGameTypeId;
			ScriptFunction mLogGameIntEvent;
			ScriptFunction mLogGameStringEvent;
			ScriptFunction mLogGameFloatEvent;
			ScriptFunction mLogGamePositionEvent;
			ScriptFunction mLogTeamIntEvent;
			ScriptFunction mLogTeamFloatEvent;
			ScriptFunction mLogTeamStringEvent;
			ScriptFunction mLogPlayerIntEvent;
			ScriptFunction mLogPlayerFloatEvent;
			ScriptFunction mLogPlayerStringEvent;
			ScriptFunction mLogPlayerSpawnEvent;
			ScriptFunction mLogPlayerLoginChange;
			ScriptFunction mLogAllPlayerPositionsEvent;
			ScriptFunction mLogPlayerKillDeath;
			ScriptFunction mLogPlayerPlayerEvent;
			ScriptFunction mLogWeaponIntEvent;
			ScriptFunction mLogDamageEvent;
			ScriptFunction mLogProjectileIntEvent;
			ScriptFunction mLogSystemPollEvents;
			ScriptFunction mGetGenericParamListEntry;
			ScriptFunction mRecordAIPathFail;
			ScriptFunction mRecordCoverLinkFireLinks;
		}
		public @property static final
		{
			ScriptFunction ResolvePlayerIndex() { return mResolvePlayerIndex ? mResolvePlayerIndex : (mResolvePlayerIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.ResolvePlayerIndex")); }
			ScriptFunction StartLogging() { return mStartLogging ? mStartLogging : (mStartLogging = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.StartLogging")); }
			ScriptFunction ResetLogging() { return mResetLogging ? mResetLogging : (mResetLogging = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.ResetLogging")); }
			ScriptFunction EndLogging() { return mEndLogging ? mEndLogging : (mEndLogging = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.EndLogging")); }
			ScriptFunction IsSessionInProgress() { return mIsSessionInProgress ? mIsSessionInProgress : (mIsSessionInProgress = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.IsSessionInProgress")); }
			ScriptFunction OpenStatsFile() { return mOpenStatsFile ? mOpenStatsFile : (mOpenStatsFile = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.OpenStatsFile")); }
			ScriptFunction CloseStatsFile() { return mCloseStatsFile ? mCloseStatsFile : (mCloseStatsFile = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.CloseStatsFile")); }
			ScriptFunction SerializeHeader() { return mSerializeHeader ? mSerializeHeader : (mSerializeHeader = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.SerializeHeader")); }
			ScriptFunction SerializeFooter() { return mSerializeFooter ? mSerializeFooter : (mSerializeFooter = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.SerializeFooter")); }
			ScriptFunction Poll() { return mPoll ? mPoll : (mPoll = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.Poll")); }
			ScriptFunction GetGameTypeId() { return mGetGameTypeId ? mGetGameTypeId : (mGetGameTypeId = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.GetGameTypeId")); }
			ScriptFunction LogGameIntEvent() { return mLogGameIntEvent ? mLogGameIntEvent : (mLogGameIntEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogGameIntEvent")); }
			ScriptFunction LogGameStringEvent() { return mLogGameStringEvent ? mLogGameStringEvent : (mLogGameStringEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogGameStringEvent")); }
			ScriptFunction LogGameFloatEvent() { return mLogGameFloatEvent ? mLogGameFloatEvent : (mLogGameFloatEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogGameFloatEvent")); }
			ScriptFunction LogGamePositionEvent() { return mLogGamePositionEvent ? mLogGamePositionEvent : (mLogGamePositionEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogGamePositionEvent")); }
			ScriptFunction LogTeamIntEvent() { return mLogTeamIntEvent ? mLogTeamIntEvent : (mLogTeamIntEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogTeamIntEvent")); }
			ScriptFunction LogTeamFloatEvent() { return mLogTeamFloatEvent ? mLogTeamFloatEvent : (mLogTeamFloatEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogTeamFloatEvent")); }
			ScriptFunction LogTeamStringEvent() { return mLogTeamStringEvent ? mLogTeamStringEvent : (mLogTeamStringEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogTeamStringEvent")); }
			ScriptFunction LogPlayerIntEvent() { return mLogPlayerIntEvent ? mLogPlayerIntEvent : (mLogPlayerIntEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogPlayerIntEvent")); }
			ScriptFunction LogPlayerFloatEvent() { return mLogPlayerFloatEvent ? mLogPlayerFloatEvent : (mLogPlayerFloatEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogPlayerFloatEvent")); }
			ScriptFunction LogPlayerStringEvent() { return mLogPlayerStringEvent ? mLogPlayerStringEvent : (mLogPlayerStringEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogPlayerStringEvent")); }
			ScriptFunction LogPlayerSpawnEvent() { return mLogPlayerSpawnEvent ? mLogPlayerSpawnEvent : (mLogPlayerSpawnEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogPlayerSpawnEvent")); }
			ScriptFunction LogPlayerLoginChange() { return mLogPlayerLoginChange ? mLogPlayerLoginChange : (mLogPlayerLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogPlayerLoginChange")); }
			ScriptFunction LogAllPlayerPositionsEvent() { return mLogAllPlayerPositionsEvent ? mLogAllPlayerPositionsEvent : (mLogAllPlayerPositionsEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogAllPlayerPositionsEvent")); }
			ScriptFunction LogPlayerKillDeath() { return mLogPlayerKillDeath ? mLogPlayerKillDeath : (mLogPlayerKillDeath = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogPlayerKillDeath")); }
			ScriptFunction LogPlayerPlayerEvent() { return mLogPlayerPlayerEvent ? mLogPlayerPlayerEvent : (mLogPlayerPlayerEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogPlayerPlayerEvent")); }
			ScriptFunction LogWeaponIntEvent() { return mLogWeaponIntEvent ? mLogWeaponIntEvent : (mLogWeaponIntEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogWeaponIntEvent")); }
			ScriptFunction LogDamageEvent() { return mLogDamageEvent ? mLogDamageEvent : (mLogDamageEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogDamageEvent")); }
			ScriptFunction LogProjectileIntEvent() { return mLogProjectileIntEvent ? mLogProjectileIntEvent : (mLogProjectileIntEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogProjectileIntEvent")); }
			ScriptFunction LogSystemPollEvents() { return mLogSystemPollEvents ? mLogSystemPollEvents : (mLogSystemPollEvents = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.LogSystemPollEvents")); }
			ScriptFunction GetGenericParamListEntry() { return mGetGenericParamListEntry ? mGetGenericParamListEntry : (mGetGenericParamListEntry = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.GetGenericParamListEntry")); }
			ScriptFunction RecordAIPathFail() { return mRecordAIPathFail ? mRecordAIPathFail : (mRecordAIPathFail = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.RecordAIPathFail")); }
			ScriptFunction RecordCoverLinkFireLinks() { return mRecordCoverLinkFireLinks ? mRecordCoverLinkFireLinks : (mRecordCoverLinkFireLinks = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsWriter.RecordCoverLinkFireLinks")); }
		}
	}
	static struct Constants
	{
		enum
		{
			GAMEEVENT_MATCH_STARTED = 0,
			GAMEEVENT_MATCH_ENDED = 1,
			GAMEEVENT_ROUND_STARTED = 2,
			GAMEEVENT_ROUND_ENDED = 3,
			GAMEEVENT_GAME_CLASS = 6,
			GAMEEVENT_GAME_OPTION_URL = 7,
			GAMEEVENT_GAME_MAPNAME = 8,
			GAMEEVENT_MEMORYUSAGE_POLL = 35,
			GAMEEVENT_FRAMERATE_POLL = 36,
			GAMEEVENT_NETWORKUSAGEIN_POLL = 37,
			GAMEEVENT_NETWORKUSAGEOUT_POLL = 38,
			GAMEEVENT_PING_POLL = 39,
			GAMEEVENT_RENDERTHREAD_POLL = 40,
			GAMEEVENT_GAMETHREAD_POLL = 41,
			GAMEEVENT_GPUFRAMETIME_POLL = 42,
			GAMEEVENT_FRAMETIME_POLL = 43,
			GAMEEVENT_TEAM_CREATED = 50,
			GAMEEVENT_TEAM_GAME_SCORE = 51,
			GAMEEVENT_TEAM_MATCH_WON = 4,
			GAMEEVENT_TEAM_ROUND_WON = 5,
			GAMEEVENT_TEAM_ROUND_STALEMATE = 6,
			GAMEEVENT_PLAYER_LOGIN = 100,
			GAMEEVENT_PLAYER_LOGOUT = 101,
			GAMEEVENT_PLAYER_SPAWN = 102,
			GAMEEVENT_PLAYER_MATCH_WON = 103,
			GAMEEVENT_PLAYER_KILL = 104,
			GAMEEVENT_PLAYER_LOCATION_POLL = 105,
			GAMEEVENT_PLAYER_TEAMCHANGE = 106,
			GAMEEVENT_PLAYER_KILL_STREAK = 107,
			GAMEEVENT_PLAYER_DEATH = 108,
			GAMEEVENT_PLAYER_ROUND_WON = 109,
			GAMEEVENT_PLAYER_ROUND_STALEMATE = 110,
			GAMEEVENT_WEAPON_DAMAGE = 150,
			GAMEEVENT_WEAPON_DAMAGE_MELEE = 151,
			GAMEEVENT_WEAPON_FIRED = 152,
			GAMEEVENT_PLAYER_KILL_NORMAL = 200,
			GAMEEVENT_GENERIC_PARAM_LIST_START = 300,
			GAMEEVENT_GENERIC_PARAM_LIST_END = 400,
			GAMEEVENT_GAME_SPECIFIC = 1000,
			GAMEEVENT_MAX_EVENTID = 0x0000FFFF,
		}
	}
	@property final auto ref GameInfo Game() { return *cast(GameInfo*)(cast(size_t)cast(void*)this + 336); }
final:
	int ResolvePlayerIndex(Controller pPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolvePlayerIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void StartLogging(float HeartbeatDelta)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeartbeatDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartLogging, params.ptr, cast(void*)0);
	}
	void ResetLogging(float HeartbeatDelta)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeartbeatDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetLogging, params.ptr, cast(void*)0);
	}
	void EndLogging()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndLogging, cast(void*)0, cast(void*)0);
	}
	bool IsSessionInProgress()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSessionInProgress, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool OpenStatsFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenStatsFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void CloseStatsFile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseStatsFile, cast(void*)0, cast(void*)0);
	}
	bool SerializeHeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SerializeHeader, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SerializeFooter()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SerializeFooter, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Poll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Poll, cast(void*)0, cast(void*)0);
	}
	int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameTypeId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void LogGameIntEvent(int EventID, int Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogGameIntEvent, params.ptr, cast(void*)0);
	}
	void LogGameStringEvent(int EventID, ScriptString Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(ScriptString*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogGameStringEvent, params.ptr, cast(void*)0);
	}
	void LogGameFloatEvent(int EventID, float Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogGameFloatEvent, params.ptr, cast(void*)0);
	}
	void LogGamePositionEvent(int EventID, Vector* Position, float Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Vector*)&params[4] = *Position;
		*cast(float*)&params[16] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogGamePositionEvent, params.ptr, cast(void*)0);
		*Position = *cast(Vector*)&params[4];
	}
	void LogTeamIntEvent(int EventID, TeamInfo Team, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(TeamInfo*)&params[4] = Team;
		*cast(int*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogTeamIntEvent, params.ptr, cast(void*)0);
	}
	void LogTeamFloatEvent(int EventID, TeamInfo Team, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(TeamInfo*)&params[4] = Team;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogTeamFloatEvent, params.ptr, cast(void*)0);
	}
	void LogTeamStringEvent(int EventID, TeamInfo Team, ScriptString Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(TeamInfo*)&params[4] = Team;
		*cast(ScriptString*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogTeamStringEvent, params.ptr, cast(void*)0);
	}
	void LogPlayerIntEvent(int EventID, Controller pPlayer, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(int*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogPlayerIntEvent, params.ptr, cast(void*)0);
	}
	void LogPlayerFloatEvent(int EventID, Controller pPlayer, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogPlayerFloatEvent, params.ptr, cast(void*)0);
	}
	void LogPlayerStringEvent(int EventID, Controller pPlayer, ScriptString EventString)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptString*)&params[8] = EventString;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogPlayerStringEvent, params.ptr, cast(void*)0);
	}
	void LogPlayerSpawnEvent(int EventID, Controller pPlayer, ScriptClass PawnClass, int TeamID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptClass*)&params[8] = PawnClass;
		*cast(int*)&params[12] = TeamID;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogPlayerSpawnEvent, params.ptr, cast(void*)0);
	}
	void LogPlayerLoginChange(int EventID, Controller pPlayer, ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID, bool bSplitScreen)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptString*)&params[8] = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[20] = PlayerID;
		*cast(bool*)&params[28] = bSplitScreen;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogPlayerLoginChange, params.ptr, cast(void*)0);
	}
	void LogAllPlayerPositionsEvent(int EventID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogAllPlayerPositionsEvent, params.ptr, cast(void*)0);
	}
	void LogPlayerKillDeath(int EventID, int KillType, Controller Killer, ScriptClass dmgType, Controller Dead)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(int*)&params[4] = KillType;
		*cast(Controller*)&params[8] = Killer;
		*cast(ScriptClass*)&params[12] = dmgType;
		*cast(Controller*)&params[16] = Dead;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogPlayerKillDeath, params.ptr, cast(void*)0);
	}
	void LogPlayerPlayerEvent(int EventID, Controller pPlayer, Controller Target)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(Controller*)&params[8] = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogPlayerPlayerEvent, params.ptr, cast(void*)0);
	}
	void LogWeaponIntEvent(int EventID, Controller pPlayer, ScriptClass WeaponClass, int Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptClass*)&params[8] = WeaponClass;
		*cast(int*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogWeaponIntEvent, params.ptr, cast(void*)0);
	}
	void LogDamageEvent(int EventID, Controller pPlayer, ScriptClass dmgType, Controller Target, int Amount)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptClass*)&params[8] = dmgType;
		*cast(Controller*)&params[12] = Target;
		*cast(int*)&params[16] = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogDamageEvent, params.ptr, cast(void*)0);
	}
	void LogProjectileIntEvent(int EventID, Controller pPlayer, ScriptClass Proj, int Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptClass*)&params[8] = Proj;
		*cast(int*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogProjectileIntEvent, params.ptr, cast(void*)0);
	}
	void LogSystemPollEvents()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LogSystemPollEvents, cast(void*)0, cast(void*)0);
	}
	GenericParamListStatEntry GetGenericParamListEntry()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGenericParamListEntry, params.ptr, cast(void*)0);
		return *cast(GenericParamListStatEntry*)params.ptr;
	}
	void RecordAIPathFail(Controller AI, ScriptString Reason, Vector Dest)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Controller*)params.ptr = AI;
		*cast(ScriptString*)&params[4] = Reason;
		*cast(Vector*)&params[16] = Dest;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecordAIPathFail, params.ptr, cast(void*)0);
	}
	int RecordCoverLinkFireLinks(CoverLink Link, Controller pPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(Controller*)&params[4] = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecordCoverLinkFireLinks, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
