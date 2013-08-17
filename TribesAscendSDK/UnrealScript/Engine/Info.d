module UnrealScript.Engine.Info;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface Info : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Info")()); }
	private static __gshared Info mDefaultProperties;
	@property final static Info DefaultProperties() { mixin(MGDPC!(Info, "Info Engine.Default__Info")()); }
	struct KeyValuePair
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Info.KeyValuePair")()); }
		@property final auto ref
		{
			ScriptString Value() { mixin(MGPS!(ScriptString, 12)()); }
			ScriptString Key() { mixin(MGPS!(ScriptString, 0)()); }
		}
	}
	struct PlayerResponseLine
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Info.PlayerResponseLine")()); }
		@property final auto ref
		{
			ScriptArray!(Info.KeyValuePair) PlayerInfo() { mixin(MGPS!(ScriptArray!(Info.KeyValuePair), 32)()); }
			int StatsID() { mixin(MGPS!(int, 28)()); }
			int Score() { mixin(MGPS!(int, 24)()); }
			int Ping() { mixin(MGPS!(int, 20)()); }
			ScriptString PlayerName() { mixin(MGPS!(ScriptString, 8)()); }
			int PlayerID() { mixin(MGPS!(int, 4)()); }
			int PlayerNum() { mixin(MGPS!(int, 0)()); }
		}
	}
	struct ServerResponseLine
	{
		private ubyte __buffer__[96];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Info.ServerResponseLine")()); }
		@property final auto ref
		{
			// WARNING: Property 'ServerInfo' has the same name as a defined type!
			ScriptArray!(Info.PlayerResponseLine) PlayerInfo() { mixin(MGPS!(ScriptArray!(Info.PlayerResponseLine), 84)()); }
			int Ping() { mixin(MGPS!(int, 68)()); }
			int MaxPlayers() { mixin(MGPS!(int, 64)()); }
			int CurrentPlayers() { mixin(MGPS!(int, 60)()); }
			ScriptString GameType() { mixin(MGPS!(ScriptString, 48)()); }
			ScriptString MapName() { mixin(MGPS!(ScriptString, 36)()); }
			ScriptString ServerName() { mixin(MGPS!(ScriptString, 24)()); }
			int QueryPort() { mixin(MGPS!(int, 20)()); }
			int Port() { mixin(MGPS!(int, 16)()); }
			ScriptString IP() { mixin(MGPS!(ScriptString, 4)()); }
			int ServerID() { mixin(MGPS!(int, 0)()); }
		}
	}
}
