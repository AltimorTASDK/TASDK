module UnrealScript.IpDrv.OnlineEventsInterfaceMcp;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.OnlineProfileSettings;
import UnrealScript.IpDrv.MCPBase;
import UnrealScript.Engine.OnlineMatchmakingStats;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface OnlineEventsInterfaceMcp : MCPBase
{
	enum EEventUploadType : ubyte
	{
		EUT_GenericStats = 0,
		EUT_ProfileData = 1,
		EUT_MatchmakingData = 2,
		EUT_PlaylistPopulation = 3,
		EUT_MAX = 4,
	}
	struct EventUploadConfig
	{
		public @property final bool bUseCompression() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool bUseCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __bUseCompression[4];
		public @property final auto ref float TimeOut() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __TimeOut[4];
		public @property final auto ref ScriptString UploadUrl() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __UploadUrl[12];
		public @property final auto ref OnlineEventsInterfaceMcp.EEventUploadType UploadType() { return *cast(OnlineEventsInterfaceMcp.EEventUploadType*)(cast(size_t)&this + 0); }
		private ubyte __UploadType[1];
	}
	public @property final auto ref ScriptArray!(OnlineEventsInterfaceMcp.EventUploadConfig) EventUploadConfigs() { return *cast(ScriptArray!(OnlineEventsInterfaceMcp.EventUploadConfig)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(UObject.Pointer) HttpPostObjects() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptArray!(OnlineEventsInterfaceMcp.EEventUploadType) DisabledUploadTypes() { return *cast(ScriptArray!(OnlineEventsInterfaceMcp.EEventUploadType)*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bBinaryStats() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bBinaryStats(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	final bool UploadPlayerData(OnlineSubsystem.UniqueNetId UniqueId, ScriptString PlayerNick, OnlineProfileSettings ProfileSettings, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[32];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(ScriptString*)&params[8] = PlayerNick;
		*cast(OnlineProfileSettings*)&params[20] = ProfileSettings;
		*cast(OnlinePlayerStorage*)&params[24] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33357], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool UploadGameplayEventsData(OnlineSubsystem.UniqueNetId UniqueId, ScriptArray!(ubyte)* Payload)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(ScriptArray!(ubyte)*)&params[8] = *Payload;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33363], params.ptr, cast(void*)0);
		*Payload = *cast(ScriptArray!(ubyte)*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool UpdatePlaylistPopulation(int PlaylistId, int NumPlayers)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = NumPlayers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33368], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool UploadMatchmakingStats(OnlineSubsystem.UniqueNetId UniqueId, OnlineMatchmakingStats MMStats)
	{
		ubyte params[16];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(OnlineMatchmakingStats*)&params[8] = MMStats;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33372], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
