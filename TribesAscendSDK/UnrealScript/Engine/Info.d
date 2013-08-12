module UnrealScript.Engine.Info;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface Info : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Info")); }
	struct KeyValuePair
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Info.KeyValuePair")); }
		@property final auto ref
		{
			ScriptString Value() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString Key() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct PlayerResponseLine
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Info.PlayerResponseLine")); }
		@property final auto ref
		{
			ScriptArray!(Info.KeyValuePair) PlayerInfo() { return *cast(ScriptArray!(Info.KeyValuePair)*)(cast(size_t)&this + 32); }
			int StatsID() { return *cast(int*)(cast(size_t)&this + 28); }
			int Score() { return *cast(int*)(cast(size_t)&this + 24); }
			int Ping() { return *cast(int*)(cast(size_t)&this + 20); }
			ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			int PlayerID() { return *cast(int*)(cast(size_t)&this + 4); }
			int PlayerNum() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct ServerResponseLine
	{
		private ubyte __buffer__[96];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Info.ServerResponseLine")); }
		@property final auto ref
		{
			// WARNING: Property 'ServerInfo' has the same name as a defined type!
			ScriptArray!(Info.PlayerResponseLine) PlayerInfo() { return *cast(ScriptArray!(Info.PlayerResponseLine)*)(cast(size_t)&this + 84); }
			int Ping() { return *cast(int*)(cast(size_t)&this + 68); }
			int MaxPlayers() { return *cast(int*)(cast(size_t)&this + 64); }
			int CurrentPlayers() { return *cast(int*)(cast(size_t)&this + 60); }
			ScriptString GameType() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
			ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
			ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
			int QueryPort() { return *cast(int*)(cast(size_t)&this + 20); }
			int Port() { return *cast(int*)(cast(size_t)&this + 16); }
			ScriptString IP() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			int ServerID() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
}
