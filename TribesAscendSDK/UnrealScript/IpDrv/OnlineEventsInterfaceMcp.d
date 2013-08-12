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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.OnlineEventsInterfaceMcp")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUploadPlayerData;
			ScriptFunction mUploadGameplayEventsData;
			ScriptFunction mUpdatePlaylistPopulation;
			ScriptFunction mUploadMatchmakingStats;
		}
		public @property static final
		{
			ScriptFunction UploadPlayerData() { return mUploadPlayerData ? mUploadPlayerData : (mUploadPlayerData = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineEventsInterfaceMcp.UploadPlayerData")); }
			ScriptFunction UploadGameplayEventsData() { return mUploadGameplayEventsData ? mUploadGameplayEventsData : (mUploadGameplayEventsData = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineEventsInterfaceMcp.UploadGameplayEventsData")); }
			ScriptFunction UpdatePlaylistPopulation() { return mUpdatePlaylistPopulation ? mUpdatePlaylistPopulation : (mUpdatePlaylistPopulation = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineEventsInterfaceMcp.UpdatePlaylistPopulation")); }
			ScriptFunction UploadMatchmakingStats() { return mUploadMatchmakingStats ? mUploadMatchmakingStats : (mUploadMatchmakingStats = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineEventsInterfaceMcp.UploadMatchmakingStats")); }
		}
	}
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
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.OnlineEventsInterfaceMcp.EventUploadConfig")); }
		@property final
		{
			auto ref
			{
				float TimeOut() { return *cast(float*)(cast(size_t)&this + 16); }
				ScriptString UploadUrl() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
				OnlineEventsInterfaceMcp.EEventUploadType UploadType() { return *cast(OnlineEventsInterfaceMcp.EEventUploadType*)(cast(size_t)&this + 0); }
			}
			bool bUseCompression() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
			bool bUseCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(OnlineEventsInterfaceMcp.EventUploadConfig) EventUploadConfigs() { return *cast(ScriptArray!(OnlineEventsInterfaceMcp.EventUploadConfig)*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(UObject.Pointer) HttpPostObjects() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 76); }
			ScriptArray!(OnlineEventsInterfaceMcp.EEventUploadType) DisabledUploadTypes() { return *cast(ScriptArray!(OnlineEventsInterfaceMcp.EEventUploadType)*)(cast(size_t)cast(void*)this + 88); }
		}
		bool bBinaryStats() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bBinaryStats(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
final:
	bool UploadPlayerData(OnlineSubsystem.UniqueNetId UniqueId, ScriptString PlayerNick, OnlineProfileSettings ProfileSettings, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[32];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(ScriptString*)&params[8] = PlayerNick;
		*cast(OnlineProfileSettings*)&params[20] = ProfileSettings;
		*cast(OnlinePlayerStorage*)&params[24] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(Functions.UploadPlayerData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool UploadGameplayEventsData(OnlineSubsystem.UniqueNetId UniqueId, ScriptArray!(ubyte)* Payload)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(ScriptArray!(ubyte)*)&params[8] = *Payload;
		(cast(ScriptObject)this).ProcessEvent(Functions.UploadGameplayEventsData, params.ptr, cast(void*)0);
		*Payload = *cast(ScriptArray!(ubyte)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool UpdatePlaylistPopulation(int PlaylistId, int NumPlayers)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = NumPlayers;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePlaylistPopulation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UploadMatchmakingStats(OnlineSubsystem.UniqueNetId UniqueId, OnlineMatchmakingStats MMStats)
	{
		ubyte params[16];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(OnlineMatchmakingStats*)&params[8] = MMStats;
		(cast(ScriptObject)this).ProcessEvent(Functions.UploadMatchmakingStats, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
