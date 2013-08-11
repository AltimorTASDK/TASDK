module UnrealScript.Engine.UIDataStore_OnlineStats;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_Remote;
import UnrealScript.Engine.OnlineStatsRead;

extern(C++) interface UIDataStore_OnlineStats : UIDataStore_Remote
{
public extern(D):
	enum EStatsFetchType : ubyte
	{
		SFT_Player = 0,
		SFT_CenteredOnPlayer = 1,
		SFT_Friends = 2,
		SFT_TopRankings = 3,
		SFT_MAX = 4,
	}
	struct RankMetaData
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			ScriptString RankColumnName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			ScriptName RankName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct PlayerNickMetaData
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			ScriptString PlayerNickColumnName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			ScriptName PlayerNickName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptClass) StatsReadClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 128); }
		ScriptArray!(OnlineStatsRead) StatsReadObjects() { return *cast(ScriptArray!(OnlineStatsRead)*)(cast(size_t)cast(void*)this + 196); }
		UIDataStore_OnlineStats.EStatsFetchType CurrentReadType() { return *cast(UIDataStore_OnlineStats.EStatsFetchType*)(cast(size_t)cast(void*)this + 212); }
		OnlineStatsRead StatsRead() { return *cast(OnlineStatsRead*)(cast(size_t)cast(void*)this + 208); }
		ScriptName TotalRowsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 188); }
		UIDataStore_OnlineStats.RankMetaData RankNameMetaData() { return *cast(UIDataStore_OnlineStats.RankMetaData*)(cast(size_t)cast(void*)this + 168); }
		UIDataStore_OnlineStats.PlayerNickMetaData PlayerNickData() { return *cast(UIDataStore_OnlineStats.PlayerNickMetaData*)(cast(size_t)cast(void*)this + 148); }
		ScriptName StatsReadName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 140); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 124); }
		UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
	}
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28847], cast(void*)0, cast(void*)0);
	}
	void SetStatsReadInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28849], cast(void*)0, cast(void*)0);
	}
	bool RefreshStats(ubyte ControllerIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = ControllerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28850], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowGamercard(ubyte ConrollerIndex, int ListIndex)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ConrollerIndex;
		*cast(int*)&params[4] = ListIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28856], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void OnReadComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28863], params.ptr, cast(void*)0);
	}
	void SortResultsByRank()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28865], cast(void*)0, cast(void*)0);
	}
}
