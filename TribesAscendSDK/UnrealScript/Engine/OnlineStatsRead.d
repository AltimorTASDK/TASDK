module UnrealScript.Engine.OnlineStatsRead;

import ScriptClasses;
import UnrealScript.Engine.OnlineStats;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStatsRead : OnlineStats
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineStatsRead")); }
	private static __gshared OnlineStatsRead mDefaultProperties;
	@property final static OnlineStatsRead DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlineStatsRead)("OnlineStatsRead Engine.Default__OnlineStatsRead")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnReadComplete;
			ScriptFunction mGetIntStatValueForPlayer;
			ScriptFunction mSetIntStatValueForPlayer;
			ScriptFunction mGetFloatStatValueForPlayer;
			ScriptFunction mSetFloatStatValueForPlayer;
			ScriptFunction mAddPlayer;
			ScriptFunction mGetRankForPlayer;
		}
		public @property static final
		{
			ScriptFunction OnReadComplete() { return mOnReadComplete ? mOnReadComplete : (mOnReadComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsRead.OnReadComplete")); }
			ScriptFunction GetIntStatValueForPlayer() { return mGetIntStatValueForPlayer ? mGetIntStatValueForPlayer : (mGetIntStatValueForPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsRead.GetIntStatValueForPlayer")); }
			ScriptFunction SetIntStatValueForPlayer() { return mSetIntStatValueForPlayer ? mSetIntStatValueForPlayer : (mSetIntStatValueForPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsRead.SetIntStatValueForPlayer")); }
			ScriptFunction GetFloatStatValueForPlayer() { return mGetFloatStatValueForPlayer ? mGetFloatStatValueForPlayer : (mGetFloatStatValueForPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsRead.GetFloatStatValueForPlayer")); }
			ScriptFunction SetFloatStatValueForPlayer() { return mSetFloatStatValueForPlayer ? mSetFloatStatValueForPlayer : (mSetFloatStatValueForPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsRead.SetFloatStatValueForPlayer")); }
			ScriptFunction AddPlayer() { return mAddPlayer ? mAddPlayer : (mAddPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsRead.AddPlayer")); }
			ScriptFunction GetRankForPlayer() { return mGetRankForPlayer ? mGetRankForPlayer : (mGetRankForPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsRead.GetRankForPlayer")); }
		}
	}
	struct OnlineStatsRow
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineStatsRead.OnlineStatsRow")); }
		@property final auto ref
		{
			ScriptArray!(OnlineStatsRead.OnlineStatsColumn) Columns() { return *cast(ScriptArray!(OnlineStatsRead.OnlineStatsColumn)*)(cast(size_t)&this + 32); }
			ScriptString NickName() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
			Settings.SettingsData Rank() { return *cast(Settings.SettingsData*)(cast(size_t)&this + 8); }
			OnlineSubsystem.UniqueNetId PlayerID() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		}
	}
	struct ColumnMetaData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineStatsRead.ColumnMetaData")); }
		@property final auto ref
		{
			ScriptString ColumnName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct OnlineStatsColumn
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineStatsRead.OnlineStatsColumn")); }
		@property final auto ref
		{
			Settings.SettingsData StatValue() { return *cast(Settings.SettingsData*)(cast(size_t)&this + 4); }
			int ColumnNo() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(int) ColumnIds() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 80); }
		ScriptArray!(OnlineStatsRead.OnlineStatsRow) Rows() { return *cast(ScriptArray!(OnlineStatsRead.OnlineStatsRow)*)(cast(size_t)cast(void*)this + 96); }
		ScriptArray!(OnlineStatsRead.ColumnMetaData) ColumnMappings() { return *cast(ScriptArray!(OnlineStatsRead.ColumnMetaData)*)(cast(size_t)cast(void*)this + 108); }
		int TitleId() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
		ScriptString ViewName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		int TotalRowsInView() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
		int SortColumnId() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		int ViewId() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	}
final:
	void OnReadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadComplete, cast(void*)0, cast(void*)0);
	}
	bool GetIntStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, int* StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(int*)&params[12] = *StatValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetIntStatValueForPlayer, params.ptr, cast(void*)0);
		*StatValue = *cast(int*)&params[12];
		return *cast(bool*)&params[16];
	}
	bool SetIntStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, int StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(int*)&params[12] = StatValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetIntStatValueForPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool GetFloatStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, float* StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(float*)&params[12] = *StatValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloatStatValueForPlayer, params.ptr, cast(void*)0);
		*StatValue = *cast(float*)&params[12];
		return *cast(bool*)&params[16];
	}
	bool SetFloatStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, float StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(float*)&params[12] = StatValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloatStatValueForPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AddPlayer(ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPlayer, params.ptr, cast(void*)0);
	}
	int GetRankForPlayer(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRankForPlayer, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
