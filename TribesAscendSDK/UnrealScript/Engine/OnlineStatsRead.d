module UnrealScript.Engine.OnlineStatsRead;

import ScriptClasses;
import UnrealScript.Engine.OnlineStats;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStatsRead : OnlineStats
{
public extern(D):
	struct OnlineStatsRow
	{
		private ubyte __buffer__[44];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22839], cast(void*)0, cast(void*)0);
	}
	bool GetIntStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, int* StatValue)
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
	bool SetIntStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, int StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(int*)&params[12] = StatValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22845], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool GetFloatStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, float* StatValue)
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
	bool SetFloatStatValueForPlayer(OnlineSubsystem.UniqueNetId PlayerID, int StatColumnNo, float StatValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(int*)&params[8] = StatColumnNo;
		*cast(float*)&params[12] = StatValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22855], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AddPlayer(ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22860], params.ptr, cast(void*)0);
	}
	int GetRankForPlayer(OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22863], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
