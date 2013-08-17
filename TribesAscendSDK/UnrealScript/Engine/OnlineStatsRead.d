module UnrealScript.Engine.OnlineStatsRead;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineStats;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStatsRead : OnlineStats
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineStatsRead")()); }
	private static __gshared OnlineStatsRead mDefaultProperties;
	@property final static OnlineStatsRead DefaultProperties() { mixin(MGDPC!(OnlineStatsRead, "OnlineStatsRead Engine.Default__OnlineStatsRead")()); }
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
			ScriptFunction OnReadComplete() { mixin(MGF!("mOnReadComplete", "Function Engine.OnlineStatsRead.OnReadComplete")()); }
			ScriptFunction GetIntStatValueForPlayer() { mixin(MGF!("mGetIntStatValueForPlayer", "Function Engine.OnlineStatsRead.GetIntStatValueForPlayer")()); }
			ScriptFunction SetIntStatValueForPlayer() { mixin(MGF!("mSetIntStatValueForPlayer", "Function Engine.OnlineStatsRead.SetIntStatValueForPlayer")()); }
			ScriptFunction GetFloatStatValueForPlayer() { mixin(MGF!("mGetFloatStatValueForPlayer", "Function Engine.OnlineStatsRead.GetFloatStatValueForPlayer")()); }
			ScriptFunction SetFloatStatValueForPlayer() { mixin(MGF!("mSetFloatStatValueForPlayer", "Function Engine.OnlineStatsRead.SetFloatStatValueForPlayer")()); }
			ScriptFunction AddPlayer() { mixin(MGF!("mAddPlayer", "Function Engine.OnlineStatsRead.AddPlayer")()); }
			ScriptFunction GetRankForPlayer() { mixin(MGF!("mGetRankForPlayer", "Function Engine.OnlineStatsRead.GetRankForPlayer")()); }
		}
	}
	struct OnlineStatsRow
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.OnlineStatsRead.OnlineStatsRow")()); }
		@property final auto ref
		{
			ScriptArray!(OnlineStatsRead.OnlineStatsColumn) Columns() { mixin(MGPS!(ScriptArray!(OnlineStatsRead.OnlineStatsColumn), 32)()); }
			ScriptString NickName() { mixin(MGPS!(ScriptString, 20)()); }
			Settings.SettingsData Rank() { mixin(MGPS!(Settings.SettingsData, 8)()); }
			OnlineSubsystem.UniqueNetId PlayerID() { mixin(MGPS!(OnlineSubsystem.UniqueNetId, 0)()); }
		}
	}
	struct ColumnMetaData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.OnlineStatsRead.ColumnMetaData")()); }
		@property final auto ref
		{
			ScriptString ColumnName() { mixin(MGPS!(ScriptString, 12)()); }
			ScriptName Name() { mixin(MGPS!(ScriptName, 4)()); }
			int Id() { mixin(MGPS!(int, 0)()); }
		}
	}
	struct OnlineStatsColumn
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.OnlineStatsRead.OnlineStatsColumn")()); }
		@property final auto ref
		{
			Settings.SettingsData StatValue() { mixin(MGPS!(Settings.SettingsData, 4)()); }
			int ColumnNo() { mixin(MGPS!(int, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(int) ColumnIds() { mixin(MGPC!(ScriptArray!(int), 80)()); }
		ScriptArray!(OnlineStatsRead.OnlineStatsRow) Rows() { mixin(MGPC!(ScriptArray!(OnlineStatsRead.OnlineStatsRow), 96)()); }
		ScriptArray!(OnlineStatsRead.ColumnMetaData) ColumnMappings() { mixin(MGPC!(ScriptArray!(OnlineStatsRead.ColumnMetaData), 108)()); }
		int TitleId() { mixin(MGPC!(int, 132)()); }
		ScriptString ViewName() { mixin(MGPC!(ScriptString, 120)()); }
		int TotalRowsInView() { mixin(MGPC!(int, 92)()); }
		int SortColumnId() { mixin(MGPC!(int, 76)()); }
		int ViewId() { mixin(MGPC!(int, 72)()); }
	}
final:
	void OnReadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadComplete, cast(void*)0, cast(void*)0);
	}
	bool GetIntStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, ref int StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(int*)&params[12] = StatValue;
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
	bool GetFloatStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, ref float StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(float*)&params[12] = StatValue;
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
