module UnrealScript.IpDrv.MeshBeacon;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface MeshBeacon : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.MeshBeacon")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyBeacon;
		public @property static final ScriptFunction DestroyBeacon() { return mDestroyBeacon ? mDestroyBeacon : (mDestroyBeacon = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeacon.DestroyBeacon")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.MeshBeacon.ConnectionBandwidthStats")); }
		@property final auto ref
		{
			int RoundtripLatency() { return *cast(int*)(cast(size_t)&this + 8); }
			int DownstreamRate() { return *cast(int*)(cast(size_t)&this + 4); }
			int UpstreamRate() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct PlayerMember
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.MeshBeacon.PlayerMember")); }
		@property final auto ref
		{
			OnlineSubsystem.UniqueNetId NetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 8); }
			int Skill() { return *cast(int*)(cast(size_t)&this + 4); }
			int TeamNum() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			int MaxBandwidthHistoryEntries() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
			float MaxBandwidthTestReceiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float MaxBandwidthTestSendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			int MinBandwidthTestBufferSize() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
			int MaxBandwidthTestBufferSize() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
			int SocketReceiveBufferSize() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			int SocketSendBufferSize() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
			ScriptName BeaconName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 84); }
			float ElapsedHeartbeatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float HeartbeatTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
			int MeshBeaconPort() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bShouldTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
		bool bShouldTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
		bool bWantsDeferredDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
		bool bWantsDeferredDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
		bool bIsInTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bIsInTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
	final void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyBeacon, cast(void*)0, cast(void*)0);
	}
}
