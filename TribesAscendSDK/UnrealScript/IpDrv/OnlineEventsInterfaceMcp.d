module UnrealScript.IpDrv.OnlineEventsInterfaceMcp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineProfileSettings;
import UnrealScript.IpDrv.MCPBase;
import UnrealScript.Engine.OnlineMatchmakingStats;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface OnlineEventsInterfaceMcp : MCPBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.OnlineEventsInterfaceMcp")); }
	private static __gshared OnlineEventsInterfaceMcp mDefaultProperties;
	@property final static OnlineEventsInterfaceMcp DefaultProperties() { mixin(MGDPC("OnlineEventsInterfaceMcp", "OnlineEventsInterfaceMcp IpDrv.Default__OnlineEventsInterfaceMcp")); }
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
			ScriptFunction UploadPlayerData() { mixin(MGF("mUploadPlayerData", "Function IpDrv.OnlineEventsInterfaceMcp.UploadPlayerData")); }
			ScriptFunction UploadGameplayEventsData() { mixin(MGF("mUploadGameplayEventsData", "Function IpDrv.OnlineEventsInterfaceMcp.UploadGameplayEventsData")); }
			ScriptFunction UpdatePlaylistPopulation() { mixin(MGF("mUpdatePlaylistPopulation", "Function IpDrv.OnlineEventsInterfaceMcp.UpdatePlaylistPopulation")); }
			ScriptFunction UploadMatchmakingStats() { mixin(MGF("mUploadMatchmakingStats", "Function IpDrv.OnlineEventsInterfaceMcp.UploadMatchmakingStats")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.OnlineEventsInterfaceMcp.EventUploadConfig")); }
		@property final
		{
			auto ref
			{
				float TimeOut() { mixin(MGPS("float", 16)); }
				ScriptString UploadUrl() { mixin(MGPS("ScriptString", 4)); }
				OnlineEventsInterfaceMcp.EEventUploadType UploadType() { mixin(MGPS("OnlineEventsInterfaceMcp.EEventUploadType", 0)); }
			}
			bool bUseCompression() { mixin(MGBPS(20, 0x1)); }
			bool bUseCompression(bool val) { mixin(MSBPS(20, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(OnlineEventsInterfaceMcp.EventUploadConfig) EventUploadConfigs() { mixin(MGPC("ScriptArray!(OnlineEventsInterfaceMcp.EventUploadConfig)", 64)); }
			ScriptArray!(Pointer) HttpPostObjects() { mixin(MGPC("ScriptArray!(Pointer)", 76)); }
			ScriptArray!(OnlineEventsInterfaceMcp.EEventUploadType) DisabledUploadTypes() { mixin(MGPC("ScriptArray!(OnlineEventsInterfaceMcp.EEventUploadType)", 88)); }
		}
		bool bBinaryStats() { mixin(MGBPC(100, 0x1)); }
		bool bBinaryStats(bool val) { mixin(MSBPC(100, 0x1)); }
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
	bool UploadGameplayEventsData(OnlineSubsystem.UniqueNetId UniqueId, ref in ScriptArray!(ubyte) Payload)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(ScriptArray!(ubyte)*)&params[8] = cast(ScriptArray!(ubyte))Payload;
		(cast(ScriptObject)this).ProcessEvent(Functions.UploadGameplayEventsData, params.ptr, cast(void*)0);
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
