module UnrealScript.Engine.OnlineStatsInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineStatsRead;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.OnlineStatsWrite;

extern(C++) interface OnlineStatsInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineStatsInterface")()); }
	private static __gshared OnlineStatsInterface mDefaultProperties;
	@property final static OnlineStatsInterface DefaultProperties() { mixin(MGDPC!(OnlineStatsInterface, "OnlineStatsInterface Engine.Default__OnlineStatsInterface")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mWriteOnlinePlayerScores;
			ScriptFunction mRegisterHostStatGuid;
			ScriptFunction mGetClientStatGuid;
			ScriptFunction mRegisterStatGuid;
			ScriptFunction mGetHostStatGuid;
			ScriptFunction mReadOnlineStats;
			ScriptFunction mReadOnlineStatsForFriends;
			ScriptFunction mReadOnlineStatsByRank;
			ScriptFunction mReadOnlineStatsByRankAroundPlayer;
			ScriptFunction mOnReadOnlineStatsComplete;
			ScriptFunction mOnRegisterHostStatGuidComplete;
			ScriptFunction mOnFlushOnlineStatsComplete;
			ScriptFunction mAddReadOnlineStatsCompleteDelegate;
			ScriptFunction mClearReadOnlineStatsCompleteDelegate;
			ScriptFunction mFreeStats;
			ScriptFunction mWriteOnlineStats;
			ScriptFunction mFlushOnlineStats;
			ScriptFunction mAddFlushOnlineStatsCompleteDelegate;
			ScriptFunction mClearFlushOnlineStatsCompleteDelegate;
			ScriptFunction mAddRegisterHostStatGuidCompleteDelegate;
			ScriptFunction mClearRegisterHostStatGuidCompleteDelegateDelegate;
		}
		public @property static final
		{
			ScriptFunction WriteOnlinePlayerScores() { mixin(MGF!("mWriteOnlinePlayerScores", "Function Engine.OnlineStatsInterface.WriteOnlinePlayerScores")()); }
			ScriptFunction RegisterHostStatGuid() { mixin(MGF!("mRegisterHostStatGuid", "Function Engine.OnlineStatsInterface.RegisterHostStatGuid")()); }
			ScriptFunction GetClientStatGuid() { mixin(MGF!("mGetClientStatGuid", "Function Engine.OnlineStatsInterface.GetClientStatGuid")()); }
			ScriptFunction RegisterStatGuid() { mixin(MGF!("mRegisterStatGuid", "Function Engine.OnlineStatsInterface.RegisterStatGuid")()); }
			ScriptFunction GetHostStatGuid() { mixin(MGF!("mGetHostStatGuid", "Function Engine.OnlineStatsInterface.GetHostStatGuid")()); }
			ScriptFunction ReadOnlineStats() { mixin(MGF!("mReadOnlineStats", "Function Engine.OnlineStatsInterface.ReadOnlineStats")()); }
			ScriptFunction ReadOnlineStatsForFriends() { mixin(MGF!("mReadOnlineStatsForFriends", "Function Engine.OnlineStatsInterface.ReadOnlineStatsForFriends")()); }
			ScriptFunction ReadOnlineStatsByRank() { mixin(MGF!("mReadOnlineStatsByRank", "Function Engine.OnlineStatsInterface.ReadOnlineStatsByRank")()); }
			ScriptFunction ReadOnlineStatsByRankAroundPlayer() { mixin(MGF!("mReadOnlineStatsByRankAroundPlayer", "Function Engine.OnlineStatsInterface.ReadOnlineStatsByRankAroundPlayer")()); }
			ScriptFunction OnReadOnlineStatsComplete() { mixin(MGF!("mOnReadOnlineStatsComplete", "Function Engine.OnlineStatsInterface.OnReadOnlineStatsComplete")()); }
			ScriptFunction OnRegisterHostStatGuidComplete() { mixin(MGF!("mOnRegisterHostStatGuidComplete", "Function Engine.OnlineStatsInterface.OnRegisterHostStatGuidComplete")()); }
			ScriptFunction OnFlushOnlineStatsComplete() { mixin(MGF!("mOnFlushOnlineStatsComplete", "Function Engine.OnlineStatsInterface.OnFlushOnlineStatsComplete")()); }
			ScriptFunction AddReadOnlineStatsCompleteDelegate() { mixin(MGF!("mAddReadOnlineStatsCompleteDelegate", "Function Engine.OnlineStatsInterface.AddReadOnlineStatsCompleteDelegate")()); }
			ScriptFunction ClearReadOnlineStatsCompleteDelegate() { mixin(MGF!("mClearReadOnlineStatsCompleteDelegate", "Function Engine.OnlineStatsInterface.ClearReadOnlineStatsCompleteDelegate")()); }
			ScriptFunction FreeStats() { mixin(MGF!("mFreeStats", "Function Engine.OnlineStatsInterface.FreeStats")()); }
			ScriptFunction WriteOnlineStats() { mixin(MGF!("mWriteOnlineStats", "Function Engine.OnlineStatsInterface.WriteOnlineStats")()); }
			ScriptFunction FlushOnlineStats() { mixin(MGF!("mFlushOnlineStats", "Function Engine.OnlineStatsInterface.FlushOnlineStats")()); }
			ScriptFunction AddFlushOnlineStatsCompleteDelegate() { mixin(MGF!("mAddFlushOnlineStatsCompleteDelegate", "Function Engine.OnlineStatsInterface.AddFlushOnlineStatsCompleteDelegate")()); }
			ScriptFunction ClearFlushOnlineStatsCompleteDelegate() { mixin(MGF!("mClearFlushOnlineStatsCompleteDelegate", "Function Engine.OnlineStatsInterface.ClearFlushOnlineStatsCompleteDelegate")()); }
			ScriptFunction AddRegisterHostStatGuidCompleteDelegate() { mixin(MGF!("mAddRegisterHostStatGuidCompleteDelegate", "Function Engine.OnlineStatsInterface.AddRegisterHostStatGuidCompleteDelegate")()); }
			ScriptFunction ClearRegisterHostStatGuidCompleteDelegateDelegate() { mixin(MGF!("mClearRegisterHostStatGuidCompleteDelegateDelegate", "Function Engine.OnlineStatsInterface.ClearRegisterHostStatGuidCompleteDelegateDelegate")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnRegisterHostStatGuidComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFlushOnlineStatsComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadOnlineStatsComplete__Delegate'!
	}
final:
	bool WriteOnlinePlayerScores(ScriptName SessionName, int LeaderboardId, ref in ScriptArray!(OnlineSubsystem.OnlinePlayerScore) PlayerScores)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(int*)&params[8] = LeaderboardId;
		*cast(ScriptArray!(OnlineSubsystem.OnlinePlayerScore)*)&params[12] = cast(ScriptArray!(OnlineSubsystem.OnlinePlayerScore))PlayerScores;
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteOnlinePlayerScores, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool RegisterHostStatGuid(ref in ScriptString HostStatGuid)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)HostStatGuid;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterHostStatGuid, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	ScriptString GetClientStatGuid()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClientStatGuid, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool RegisterStatGuid(OnlineSubsystem.UniqueNetId PlayerID, ref in ScriptString ClientStatGuid)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(ScriptString*)&params[8] = cast(ScriptString)ClientStatGuid;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterStatGuid, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	ScriptString GetHostStatGuid()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHostStatGuid, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool ReadOnlineStats(ref in ScriptArray!(OnlineSubsystem.UniqueNetId) Players, OnlineStatsRead StatsRead)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = cast(ScriptArray!(OnlineSubsystem.UniqueNetId))Players;
		*cast(OnlineStatsRead*)&params[12] = StatsRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadOnlineStats, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool ReadOnlineStatsForFriends(ubyte LocalUserNum, OnlineStatsRead StatsRead)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineStatsRead*)&params[4] = StatsRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadOnlineStatsForFriends, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool ReadOnlineStatsByRank(OnlineStatsRead StatsRead, int* StartIndex = null, int* NumToRead = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(OnlineStatsRead*)params.ptr = StatsRead;
		if (StartIndex !is null)
			*cast(int*)&params[4] = *StartIndex;
		if (NumToRead !is null)
			*cast(int*)&params[8] = *NumToRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadOnlineStatsByRank, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ReadOnlineStatsByRankAroundPlayer(ubyte LocalUserNum, OnlineStatsRead StatsRead, int* NumRows = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineStatsRead*)&params[4] = StatsRead;
		if (NumRows !is null)
			*cast(int*)&params[8] = *NumRows;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadOnlineStatsByRankAroundPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void OnReadOnlineStatsComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadOnlineStatsComplete, params.ptr, cast(void*)0);
	}
	void OnRegisterHostStatGuidComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegisterHostStatGuidComplete, params.ptr, cast(void*)0);
	}
	void OnFlushOnlineStatsComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFlushOnlineStatsComplete, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadOnlineStatsCompleteDelegate, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadOnlineStatsCompleteDelegate, params.ptr, cast(void*)0);
	}
	void FreeStats(OnlineStatsRead StatsRead)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineStatsRead*)params.ptr = StatsRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.FreeStats, params.ptr, cast(void*)0);
	}
	bool WriteOnlineStats(ScriptName SessionName, OnlineSubsystem.UniqueNetId pPlayer, OnlineStatsWrite StatsWrite)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = pPlayer;
		*cast(OnlineStatsWrite*)&params[16] = StatsWrite;
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteOnlineStats, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool FlushOnlineStats(ScriptName SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlushOnlineStats, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFlushOnlineStatsCompleteDelegate, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlushOnlineStatsCompleteDelegate, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRegisterHostStatGuidCompleteDelegate, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRegisterHostStatGuidCompleteDelegateDelegate, params.ptr, cast(void*)0);
	}
}
