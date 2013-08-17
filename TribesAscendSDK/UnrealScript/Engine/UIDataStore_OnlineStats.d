module UnrealScript.Engine.UIDataStore_OnlineStats;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_Remote;
import UnrealScript.Engine.OnlineStatsRead;

extern(C++) interface UIDataStore_OnlineStats : UIDataStore_Remote
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStore_OnlineStats")); }
	private static __gshared UIDataStore_OnlineStats mDefaultProperties;
	@property final static UIDataStore_OnlineStats DefaultProperties() { mixin(MGDPC("UIDataStore_OnlineStats", "UIDataStore_OnlineStats Engine.Default__UIDataStore_OnlineStats")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mSetStatsReadInfo;
			ScriptFunction mRefreshStats;
			ScriptFunction mShowGamercard;
			ScriptFunction mOnReadComplete;
			ScriptFunction mSortResultsByRank;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF("mInit", "Function Engine.UIDataStore_OnlineStats.Init")); }
			ScriptFunction SetStatsReadInfo() { mixin(MGF("mSetStatsReadInfo", "Function Engine.UIDataStore_OnlineStats.SetStatsReadInfo")); }
			ScriptFunction RefreshStats() { mixin(MGF("mRefreshStats", "Function Engine.UIDataStore_OnlineStats.RefreshStats")); }
			ScriptFunction ShowGamercard() { mixin(MGF("mShowGamercard", "Function Engine.UIDataStore_OnlineStats.ShowGamercard")); }
			ScriptFunction OnReadComplete() { mixin(MGF("mOnReadComplete", "Function Engine.UIDataStore_OnlineStats.OnReadComplete")); }
			ScriptFunction SortResultsByRank() { mixin(MGF("mSortResultsByRank", "Function Engine.UIDataStore_OnlineStats.SortResultsByRank")); }
		}
	}
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.UIDataStore_OnlineStats.RankMetaData")); }
		@property final auto ref
		{
			ScriptString RankColumnName() { mixin(MGPS("ScriptString", 8)); }
			ScriptName RankName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct PlayerNickMetaData
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.UIDataStore_OnlineStats.PlayerNickMetaData")); }
		@property final auto ref
		{
			ScriptString PlayerNickColumnName() { mixin(MGPS("ScriptString", 8)); }
			ScriptName PlayerNickName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptClass) StatsReadClasses() { mixin(MGPC("ScriptArray!(ScriptClass)", 128)); }
		ScriptArray!(OnlineStatsRead) StatsReadObjects() { mixin(MGPC("ScriptArray!(OnlineStatsRead)", 196)); }
		// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'PlayerInterface'!
		// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'StatsInterface'!
		UIDataStore_OnlineStats.EStatsFetchType CurrentReadType() { mixin(MGPC("UIDataStore_OnlineStats.EStatsFetchType", 212)); }
		OnlineStatsRead StatsRead() { mixin(MGPC("OnlineStatsRead", 208)); }
		ScriptName TotalRowsName() { mixin(MGPC("ScriptName", 188)); }
		UIDataStore_OnlineStats.RankMetaData RankNameMetaData() { mixin(MGPC("UIDataStore_OnlineStats.RankMetaData", 168)); }
		UIDataStore_OnlineStats.PlayerNickMetaData PlayerNickData() { mixin(MGPC("UIDataStore_OnlineStats.PlayerNickMetaData", 148)); }
		ScriptName StatsReadName() { mixin(MGPC("ScriptName", 140)); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("UObject.Pointer", 124)); }
		UObject.Pointer VfTable_IUIListElementProvider() { mixin(MGPC("UObject.Pointer", 120)); }
	}
final:
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void SetStatsReadInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStatsReadInfo, cast(void*)0, cast(void*)0);
	}
	bool RefreshStats(ubyte ControllerIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = ControllerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshStats, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShowGamercard(ubyte ConrollerIndex, int ListIndex)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = ConrollerIndex;
		*cast(int*)&params[4] = ListIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowGamercard, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void OnReadComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadComplete, params.ptr, cast(void*)0);
	}
	void SortResultsByRank()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SortResultsByRank, cast(void*)0, cast(void*)0);
	}
}
