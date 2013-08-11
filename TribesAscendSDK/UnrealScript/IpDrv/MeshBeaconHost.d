module UnrealScript.IpDrv.MeshBeaconHost;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MeshBeacon;

extern(C++) interface MeshBeaconHost : MeshBeacon
{
	struct ClientMeshBeaconConnection
	{
		public @property final auto ref ScriptArray!(MeshBeacon.ConnectionBandwidthStats) BandwidthHistory() { return *cast(ScriptArray!(MeshBeacon.ConnectionBandwidthStats)*)(cast(size_t)&this + 72); }
		private ubyte __BandwidthHistory[12];
		public @property final auto ref int MinutesSinceLastTest() { return *cast(int*)(cast(size_t)&this + 84); }
		private ubyte __MinutesSinceLastTest[4];
		public @property final auto ref float GoodHostRatio() { return *cast(float*)(cast(size_t)&this + 68); }
		private ubyte __GoodHostRatio[4];
		public @property final bool bCanHostVs() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x1) != 0; }
		public @property final bool bCanHostVs(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x1; } return val; }
		private ubyte __bCanHostVs[4];
		public @property final auto ref OnlineSubsystem.ENATType NatType() { return *cast(OnlineSubsystem.ENATType*)(cast(size_t)&this + 60); }
		private ubyte __NatType[1];
		public @property final auto ref MeshBeaconHost.ClientConnectionBandwidthTestData BandwidthTest() { return *cast(MeshBeaconHost.ClientConnectionBandwidthTestData*)(cast(size_t)&this + 20); }
		private ubyte __BandwidthTest[40];
		public @property final bool bConnectionAccepted() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bConnectionAccepted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bConnectionAccepted[4];
		public @property final auto ref UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)&this + 12); }
		private ubyte __Socket[4];
		public @property final auto ref float ElapsedHeartbeatTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ElapsedHeartbeatTime[4];
		public @property final auto ref OnlineSubsystem.UniqueNetId PlayerNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __PlayerNetId[8];
	}
	struct ClientConnectionBandwidthTestData
	{
		public @property final auto ref MeshBeacon.ConnectionBandwidthStats BandwidthStats() { return *cast(MeshBeacon.ConnectionBandwidthStats*)(cast(size_t)&this + 28); }
		private ubyte __BandwidthStats[12];
		public @property final auto ref UObject.Double TestStartTime() { return *cast(UObject.Double*)(cast(size_t)&this + 20); }
		private ubyte __TestStartTime[8];
		public @property final auto ref UObject.Double RequestTestStartTime() { return *cast(UObject.Double*)(cast(size_t)&this + 12); }
		private ubyte __RequestTestStartTime[8];
		public @property final auto ref int BytesReceived() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __BytesReceived[4];
		public @property final auto ref int BytesTotalNeeded() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __BytesTotalNeeded[4];
		public @property final auto ref MeshBeacon.EMeshBeaconBandwidthTestType TestType() { return *cast(MeshBeacon.EMeshBeaconBandwidthTestType*)(cast(size_t)&this + 1); }
		private ubyte __TestType[1];
		public @property final auto ref MeshBeacon.EMeshBeaconBandwidthTestState CurrentState() { return *cast(MeshBeacon.EMeshBeaconBandwidthTestState*)(cast(size_t)&this + 0); }
		private ubyte __CurrentState[1];
	}
	public @property final auto ref ScriptArray!(MeshBeaconHost.ClientMeshBeaconConnection) ClientConnections() { return *cast(ScriptArray!(MeshBeaconHost.ClientMeshBeaconConnection)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(OnlineSubsystem.UniqueNetId) PendingPlayerConnections() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref int ConnectionBacklog() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final bool bAllowBandwidthTesting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
	public @property final bool bAllowBandwidthTesting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	public @property final auto ref OnlineSubsystem.UniqueNetId OwningPlayerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)cast(void*)this + 144); }
	final void OnReceivedClientCreateNewSessionResult(bool bSucceeded, ScriptName SessionName, ScriptClass SearchClass, ubyte* PlatformSpecificInfo)
	{
		ubyte params[17];
		params[] = 0;
		*cast(bool*)params.ptr = bSucceeded;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(ScriptClass*)&params[12] = SearchClass;
		params[16] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33283], params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[16];
	}
	final void OnAllPendingPlayersConnected()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33285], cast(void*)0, cast(void*)0);
	}
	final void OnFinishedBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, MeshBeacon.EMeshBeaconBandwidthTestResult TestResult, MeshBeacon.ConnectionBandwidthStats* BandwidthStats)
	{
		ubyte params[22];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestResult*)&params[9] = TestResult;
		*cast(MeshBeacon.ConnectionBandwidthStats*)&params[12] = *BandwidthStats;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33287], params.ptr, cast(void*)0);
		*BandwidthStats = *cast(MeshBeacon.ConnectionBandwidthStats*)&params[12];
	}
	final void OnStartedBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33289], params.ptr, cast(void*)0);
	}
	final void OnReceivedClientConnectionRequest(MeshBeaconHost.ClientMeshBeaconConnection* NewClientConnection)
	{
		ubyte params[88];
		params[] = 0;
		*cast(MeshBeaconHost.ClientMeshBeaconConnection*)params.ptr = *NewClientConnection;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33291], params.ptr, cast(void*)0);
		*NewClientConnection = *cast(MeshBeaconHost.ClientMeshBeaconConnection*)params.ptr;
	}
	final bool InitHostBeacon(OnlineSubsystem.UniqueNetId InOwningPlayerId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = InOwningPlayerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33295], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33298], cast(void*)0, cast(void*)0);
	}
	final bool RequestClientBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, int TestBufferSize)
	{
		ubyte params[17];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		*cast(int*)&params[12] = TestBufferSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33299], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool HasInProgressBandwidthTest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33304], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CancelInProgressBandwidthTests()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33306], cast(void*)0, cast(void*)0);
	}
	final bool HasPendingBandwidthTest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33307], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CancelPendingBandwidthTests()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33309], cast(void*)0, cast(void*)0);
	}
	final void AllowBandwidthTesting(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33310], params.ptr, cast(void*)0);
	}
	final void SetPendingPlayerConnections(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33319], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	final int GetConnectionIndexForPlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33322], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool AllPlayersConnected(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33325], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final void TellClientsToTravel(ScriptName SessionName, ScriptClass SearchClass, ubyte* PlatformSpecificInfo)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33329], params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[12];
	}
	final bool RequestClientCreateNewSession(OnlineSubsystem.UniqueNetId PlayerNetId, ScriptName SessionName, ScriptClass SearchClass, ScriptArray!(MeshBeacon.PlayerMember)* Players)
	{
		ubyte params[36];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(ScriptName*)&params[8] = SessionName;
		*cast(ScriptClass*)&params[16] = SearchClass;
		*cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[20] = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33333], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[20];
		return *cast(bool*)&params[32];
	}
}
