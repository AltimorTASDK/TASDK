module UnrealScript.Engine.Info;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface Info : Actor
{
	struct KeyValuePair
	{
		public @property final auto ref ScriptString Value() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __Value[12];
		public @property final auto ref ScriptString Key() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Key[12];
	}
	struct PlayerResponseLine
	{
		public @property final auto ref ScriptArray!(Info.KeyValuePair) PlayerInfo() { return *cast(ScriptArray!(Info.KeyValuePair)*)(cast(size_t)&this + 32); }
		private ubyte __PlayerInfo[12];
		public @property final auto ref int StatsID() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __StatsID[4];
		public @property final auto ref int Score() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __Score[4];
		public @property final auto ref int Ping() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __Ping[4];
		public @property final auto ref ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __PlayerName[12];
		public @property final auto ref int PlayerID() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __PlayerID[4];
		public @property final auto ref int PlayerNum() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PlayerNum[4];
	}
	struct ServerResponseLine
	{
		// WARNING: Property 'ServerInfo' has the same name as a defined type!
		public @property final auto ref ScriptArray!(Info.PlayerResponseLine) PlayerInfo() { return *cast(ScriptArray!(Info.PlayerResponseLine)*)(cast(size_t)&this + 84); }
		private ubyte __PlayerInfo[12];
		public @property final auto ref int Ping() { return *cast(int*)(cast(size_t)&this + 68); }
		private ubyte __Ping[4];
		public @property final auto ref int MaxPlayers() { return *cast(int*)(cast(size_t)&this + 64); }
		private ubyte __MaxPlayers[4];
		public @property final auto ref int CurrentPlayers() { return *cast(int*)(cast(size_t)&this + 60); }
		private ubyte __CurrentPlayers[4];
		public @property final auto ref ScriptString GameType() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
		private ubyte __GameType[12];
		public @property final auto ref ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
		private ubyte __MapName[12];
		public @property final auto ref ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __ServerName[12];
		public @property final auto ref int QueryPort() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __QueryPort[4];
		public @property final auto ref int Port() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __Port[4];
		public @property final auto ref ScriptString IP() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __IP[12];
		public @property final auto ref int ServerID() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ServerID[4];
	}
}
