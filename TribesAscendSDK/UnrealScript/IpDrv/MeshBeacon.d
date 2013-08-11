module UnrealScript.IpDrv.MeshBeacon;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface MeshBeacon : UObject
{
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
		public @property final auto ref int RoundtripLatency() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __RoundtripLatency[4];
		public @property final auto ref int DownstreamRate() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __DownstreamRate[4];
		public @property final auto ref int UpstreamRate() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __UpstreamRate[4];
	}
	struct PlayerMember
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId NetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 8); }
		private ubyte __NetId[8];
		public @property final auto ref int Skill() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Skill[4];
		public @property final auto ref int TeamNum() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __TeamNum[4];
	}
	public @property final auto ref int MaxBandwidthHistoryEntries() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float MaxBandwidthTestReceiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float MaxBandwidthTestSendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int MinBandwidthTestBufferSize() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int MaxBandwidthTestBufferSize() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int SocketReceiveBufferSize() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int SocketSendBufferSize() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptName BeaconName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float ElapsedHeartbeatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float HeartbeatTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bShouldTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
	public @property final bool bShouldTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
	public @property final bool bWantsDeferredDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool bWantsDeferredDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool bIsInTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bIsInTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int MeshBeaconPort() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	final void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33192], cast(void*)0, cast(void*)0);
	}
}
