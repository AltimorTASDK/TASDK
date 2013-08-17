module UnrealScript.IpDrv.MeshBeacon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface MeshBeacon : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.MeshBeacon")); }
	private static __gshared MeshBeacon mDefaultProperties;
	@property final static MeshBeacon DefaultProperties() { mixin(MGDPC("MeshBeacon", "MeshBeacon IpDrv.Default__MeshBeacon")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyBeacon;
		public @property static final ScriptFunction DestroyBeacon() { mixin(MGF("mDestroyBeacon", "Function IpDrv.MeshBeacon.DestroyBeacon")); }
	}
	enum EMeshBeaconPacketType : ubyte
	{
		MB_Packet_UnknownType = 0,
		MB_Packet_ClientNewConnectionRequest = 1,
		MB_Packet_ClientBeginBandwidthTest = 2,
		MB_Packet_ClientCreateNewSessionResponse = 3,
		MB_Packet_HostNewConnectionResponse = 4,
		MB_Packet_HostBandwidthTestRequest = 5,
		MB_Packet_HostCompletedBandwidthTest = 6,
		MB_Packet_HostTravelRequest = 7,
		MB_Packet_HostCreateNewSessionRequest = 8,
		MB_Packet_DummyData = 9,
		MB_Packet_Heartbeat = 10,
		MB_Packet_MAX = 11,
	}
	enum EMeshBeaconConnectionResult : ubyte
	{
		MB_ConnectionResult_Succeeded = 0,
		MB_ConnectionResult_Duplicate = 1,
		MB_ConnectionResult_Timeout = 2,
		MB_ConnectionResult_Error = 3,
		MB_ConnectionResult_MAX = 4,
	}
	enum EMeshBeaconBandwidthTestState : ubyte
	{
		MB_BandwidthTestState_NotStarted = 0,
		MB_BandwidthTestState_RequestPending = 1,
		MB_BandwidthTestState_StartPending = 2,
		MB_BandwidthTestState_InProgress = 3,
		MB_BandwidthTestState_Completed = 4,
		MB_BandwidthTestState_Incomplete = 5,
		MB_BandwidthTestState_Timeout = 6,
		MB_BandwidthTestState_Error = 7,
		MB_BandwidthTestState_MAX = 8,
	}
	enum EMeshBeaconBandwidthTestResult : ubyte
	{
		MB_BandwidthTestResult_Succeeded = 0,
		MB_BandwidthTestResult_Timeout = 1,
		MB_BandwidthTestResult_Error = 2,
		MB_BandwidthTestResult_MAX = 3,
	}
	enum EMeshBeaconBandwidthTestType : ubyte
	{
		MB_BandwidthTestType_Upstream = 0,
		MB_BandwidthTestType_Downstream = 1,
		MB_BandwidthTestType_RoundtripLatency = 2,
		MB_BandwidthTestType_MAX = 3,
	}
	struct ConnectionBandwidthStats
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.MeshBeacon.ConnectionBandwidthStats")); }
		@property final auto ref
		{
			int RoundtripLatency() { mixin(MGPS("int", 8)); }
			int DownstreamRate() { mixin(MGPS("int", 4)); }
			int UpstreamRate() { mixin(MGPS("int", 0)); }
		}
	}
	struct PlayerMember
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.MeshBeacon.PlayerMember")); }
		@property final auto ref
		{
			OnlineSubsystem.UniqueNetId NetId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 8)); }
			int Skill() { mixin(MGPS("int", 4)); }
			int TeamNum() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			int MaxBandwidthHistoryEntries() { mixin(MGPC("int", 116)); }
			float MaxBandwidthTestReceiveTime() { mixin(MGPC("float", 112)); }
			float MaxBandwidthTestSendTime() { mixin(MGPC("float", 108)); }
			int MinBandwidthTestBufferSize() { mixin(MGPC("int", 104)); }
			int MaxBandwidthTestBufferSize() { mixin(MGPC("int", 100)); }
			int SocketReceiveBufferSize() { mixin(MGPC("int", 96)); }
			int SocketSendBufferSize() { mixin(MGPC("int", 92)); }
			ScriptName BeaconName() { mixin(MGPC("ScriptName", 84)); }
			float ElapsedHeartbeatTime() { mixin(MGPC("float", 80)); }
			float HeartbeatTimeout() { mixin(MGPC("float", 76)); }
			UObject.Pointer Socket() { mixin(MGPC("UObject.Pointer", 68)); }
			int MeshBeaconPort() { mixin(MGPC("int", 64)); }
			UObject.Pointer VfTable_FTickableObject() { mixin(MGPC("UObject.Pointer", 60)); }
		}
		bool bShouldTick() { mixin(MGBPC(72, 0x4)); }
		bool bShouldTick(bool val) { mixin(MSBPC(72, 0x4)); }
		bool bWantsDeferredDestroy() { mixin(MGBPC(72, 0x2)); }
		bool bWantsDeferredDestroy(bool val) { mixin(MSBPC(72, 0x2)); }
		bool bIsInTick() { mixin(MGBPC(72, 0x1)); }
		bool bIsInTick(bool val) { mixin(MSBPC(72, 0x1)); }
	}
	final void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyBeacon, cast(void*)0, cast(void*)0);
	}
}
