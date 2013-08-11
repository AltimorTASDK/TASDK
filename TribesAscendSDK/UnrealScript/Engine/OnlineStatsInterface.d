module UnrealScript.Engine.OnlineStatsInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineStatsRead;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.OnlineStatsWrite;

extern(C++) interface OnlineStatsInterface : UInterface
{
public extern(D):
final:
	bool WriteOnlinePlayerScores(ScriptName SessionName, int LeaderboardId, ScriptArray!(OnlineSubsystem.OnlinePlayerScore)* PlayerScores)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(int*)&params[8] = LeaderboardId;
		*cast(ScriptArray!(OnlineSubsystem.OnlinePlayerScore)*)&params[12] = *PlayerScores;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9304], params.ptr, cast(void*)0);
		*PlayerScores = *cast(ScriptArray!(OnlineSubsystem.OnlinePlayerScore)*)&params[12];
		return *cast(bool*)&params[24];
	}
	bool RegisterHostStatGuid(ScriptString* HostStatGuid)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *HostStatGuid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9360], params.ptr, cast(void*)0);
		*HostStatGuid = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	ScriptString GetClientStatGuid()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9365], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool RegisterStatGuid(OnlineSubsystem.UniqueNetId PlayerID, ScriptString* ClientStatGuid)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(ScriptString*)&params[8] = *ClientStatGuid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9369], params.ptr, cast(void*)0);
		*ClientStatGuid = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	ScriptString GetHostStatGuid()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16958], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool ReadOnlineStats(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players, OnlineStatsRead StatsRead)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		*cast(OnlineStatsRead*)&params[12] = StatsRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22756], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
		return *cast(bool*)&params[16];
	}
	bool ReadOnlineStatsForFriends(ubyte LocalUserNum, OnlineStatsRead StatsRead)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineStatsRead*)&params[4] = StatsRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22761], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool ReadOnlineStatsByRank(OnlineStatsRead StatsRead, int StartIndex, int NumToRead)
	{
		ubyte params[16];
		params[] = 0;
		*cast(OnlineStatsRead*)params.ptr = StatsRead;
		*cast(int*)&params[4] = StartIndex;
		*cast(int*)&params[8] = NumToRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22765], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ReadOnlineStatsByRankAroundPlayer(ubyte LocalUserNum, OnlineStatsRead StatsRead, int NumRows)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineStatsRead*)&params[4] = StatsRead;
		*cast(int*)&params[8] = NumRows;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22770], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void OnReadOnlineStatsComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22775], params.ptr, cast(void*)0);
	}
	void OnRegisterHostStatGuidComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22778], params.ptr, cast(void*)0);
	}
	void OnFlushOnlineStatsComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22780], params.ptr, cast(void*)0);
	}
	void AddReadOnlineStatsCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadOnlineStatsCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadOnlineStatsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22782], params.ptr, cast(void*)0);
	}
	void ClearReadOnlineStatsCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadOnlineStatsCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadOnlineStatsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22784], params.ptr, cast(void*)0);
	}
	void FreeStats(OnlineStatsRead StatsRead)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineStatsRead*)params.ptr = StatsRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22786], params.ptr, cast(void*)0);
	}
	bool WriteOnlineStats(ScriptName SessionName, OnlineSubsystem.UniqueNetId pPlayer, OnlineStatsWrite StatsWrite)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = pPlayer;
		*cast(OnlineStatsWrite*)&params[16] = StatsWrite;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22788], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool FlushOnlineStats(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22793], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddFlushOnlineStatsCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* FlushOnlineStatsCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = FlushOnlineStatsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22798], params.ptr, cast(void*)0);
	}
	void ClearFlushOnlineStatsCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* FlushOnlineStatsCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = FlushOnlineStatsCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22800], params.ptr, cast(void*)0);
	}
	void AddRegisterHostStatGuidCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RegisterHostStatGuidCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = RegisterHostStatGuidCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22808], params.ptr, cast(void*)0);
	}
	void ClearRegisterHostStatGuidCompleteDelegateDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* RegisterHostStatGuidCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = RegisterHostStatGuidCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22810], params.ptr, cast(void*)0);
	}
}
