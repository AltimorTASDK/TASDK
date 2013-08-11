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
	@property final auto ref GameInfo Game() { return *cast(GameInfo*)(cast(size_t)cast(void*)this + 336); }
final:
	int ResolvePlayerIndex(Controller pPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17645], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void StartLogging(float HeartbeatDelta)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeartbeatDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17648], params.ptr, cast(void*)0);
	}
	void ResetLogging(float HeartbeatDelta)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeartbeatDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17650], params.ptr, cast(void*)0);
	}
	void EndLogging()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17652], cast(void*)0, cast(void*)0);
	}
	bool IsSessionInProgress()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17653], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool OpenStatsFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17655], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void CloseStatsFile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17658], cast(void*)0, cast(void*)0);
	}
	bool SerializeHeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17659], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SerializeFooter()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17661], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Poll()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17663], cast(void*)0, cast(void*)0);
	}
	int GetGameTypeId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17665], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void LogGameIntEvent(int EventID, int Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17667], params.ptr, cast(void*)0);
	}
	void LogGameStringEvent(int EventID, ScriptString Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(ScriptString*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17670], params.ptr, cast(void*)0);
	}
	void LogGameFloatEvent(int EventID, float Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17673], params.ptr, cast(void*)0);
	}
	void LogGamePositionEvent(int EventID, Vector* Position, float Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Vector*)&params[4] = *Position;
		*cast(float*)&params[16] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17676], params.ptr, cast(void*)0);
		*Position = *cast(Vector*)&params[4];
	}
	void LogTeamIntEvent(int EventID, TeamInfo Team, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(TeamInfo*)&params[4] = Team;
		*cast(int*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17680], params.ptr, cast(void*)0);
	}
	void LogTeamFloatEvent(int EventID, TeamInfo Team, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(TeamInfo*)&params[4] = Team;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17684], params.ptr, cast(void*)0);
	}
	void LogTeamStringEvent(int EventID, TeamInfo Team, ScriptString Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(TeamInfo*)&params[4] = Team;
		*cast(ScriptString*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17688], params.ptr, cast(void*)0);
	}
	void LogPlayerIntEvent(int EventID, Controller pPlayer, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(int*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17692], params.ptr, cast(void*)0);
	}
	void LogPlayerFloatEvent(int EventID, Controller pPlayer, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17696], params.ptr, cast(void*)0);
	}
	void LogPlayerStringEvent(int EventID, Controller pPlayer, ScriptString EventString)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptString*)&params[8] = EventString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17700], params.ptr, cast(void*)0);
	}
	void LogPlayerSpawnEvent(int EventID, Controller pPlayer, ScriptClass PawnClass, int TeamID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptClass*)&params[8] = PawnClass;
		*cast(int*)&params[12] = TeamID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17704], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17709], params.ptr, cast(void*)0);
	}
	void LogAllPlayerPositionsEvent(int EventID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17715], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17717], params.ptr, cast(void*)0);
	}
	void LogPlayerPlayerEvent(int EventID, Controller pPlayer, Controller Target)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(Controller*)&params[8] = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17723], params.ptr, cast(void*)0);
	}
	void LogWeaponIntEvent(int EventID, Controller pPlayer, ScriptClass WeaponClass, int Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptClass*)&params[8] = WeaponClass;
		*cast(int*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17727], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17732], params.ptr, cast(void*)0);
	}
	void LogProjectileIntEvent(int EventID, Controller pPlayer, ScriptClass Proj, int Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(Controller*)&params[4] = pPlayer;
		*cast(ScriptClass*)&params[8] = Proj;
		*cast(int*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17738], params.ptr, cast(void*)0);
	}
	void LogSystemPollEvents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17743], cast(void*)0, cast(void*)0);
	}
	GenericParamListStatEntry GetGenericParamListEntry()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17744], params.ptr, cast(void*)0);
		return *cast(GenericParamListStatEntry*)params.ptr;
	}
	void RecordAIPathFail(Controller AI, ScriptString Reason, Vector Dest)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Controller*)params.ptr = AI;
		*cast(ScriptString*)&params[4] = Reason;
		*cast(Vector*)&params[16] = Dest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17746], params.ptr, cast(void*)0);
	}
	int RecordCoverLinkFireLinks(CoverLink Link, Controller pPlayer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(Controller*)&params[4] = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17750], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
