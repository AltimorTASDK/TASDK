module UnrealScript.Engine.OnlineStatsRead;

import ScriptClasses;
import UnrealScript.Engine.OnlineStats;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStatsRead : OnlineStats
{
	struct OnlineStatsRow
	{
		public @property final auto ref ScriptArray!(OnlineStatsRead.OnlineStatsColumn) Columns() { return *cast(ScriptArray!(OnlineStatsRead.OnlineStatsColumn)*)(cast(size_t)&this + 32); }
		private ubyte __Columns[12];
		public @property final auto ref ScriptString NickName() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
		private ubyte __NickName[12];
		public @property final auto ref Settings.SettingsData Rank() { return *cast(Settings.SettingsData*)(cast(size_t)&this + 8); }
		private ubyte __Rank[12];
		public @property final auto ref OnlineSubsystem.UniqueNetId PlayerID() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __PlayerID[8];
	}
	struct ColumnMetaData
	{
		public @property final auto ref ScriptString ColumnName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __ColumnName[12];
		public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __Name[8];
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
	}
	struct OnlineStatsColumn
	{
		public @property final auto ref Settings.SettingsData StatValue() { return *cast(Settings.SettingsData*)(cast(size_t)&this + 4); }
		private ubyte __StatValue[12];
		public @property final auto ref int ColumnNo() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ColumnNo[4];
	}
	public @property final auto ref ScriptArray!(int) ColumnIds() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptArray!(OnlineStatsRead.OnlineStatsRow) Rows() { return *cast(ScriptArray!(OnlineStatsRead.OnlineStatsRow)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(OnlineStatsRead.ColumnMetaData) ColumnMappings() { return *cast(ScriptArray!(OnlineStatsRead.ColumnMetaData)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int TitleId() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptString ViewName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref int TotalRowsInView() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int SortColumnId() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int ViewId() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	final void OnReadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22839], cast(void*)0, cast(void*)0);
	}
	final bool GetIntStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, int* StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(int*)&params[12] = *StatValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22840], params.ptr, cast(void*)0);
		*StatValue = *cast(int*)&params[12];
		return *cast(bool*)&params[16];
	}
	final bool SetIntStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, int StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(int*)&params[12] = StatValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22845], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool GetFloatStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, float* StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(float*)&params[12] = *StatValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22850], params.ptr, cast(void*)0);
		*StatValue = *cast(float*)&params[12];
		return *cast(bool*)&params[16];
	}
	final bool SetFloatStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, float StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(float*)&params[12] = StatValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22855], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void AddPlayer(ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22860], params.ptr, cast(void*)0);
	}
	final int GetRankForPlayer(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22863], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
