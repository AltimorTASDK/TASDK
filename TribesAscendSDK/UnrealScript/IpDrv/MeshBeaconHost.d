module UnrealScript.IpDrv.MeshBeaconHost;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MeshBeacon;

extern(C++) interface MeshBeaconHost : MeshBeacon
{
public extern(D):
	struct ClientMeshBeaconConnection
	{
		private ubyte __buffer__[88];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(MeshBeacon.ConnectionBandwidthStats) BandwidthHistory() { return *cast(ScriptArray!(MeshBeacon.ConnectionBandwidthStats)*)(cast(size_t)&this + 72); }
				int MinutesSinceLastTest() { return *cast(int*)(cast(size_t)&this + 84); }
				float GoodHostRatio() { return *cast(float*)(cast(size_t)&this + 68); }
				OnlineSubsystem.ENATType NatType() { return *cast(OnlineSubsystem.ENATType*)(cast(size_t)&this + 60); }
				MeshBeaconHost.ClientConnectionBandwidthTestData BandwidthTest() { return *cast(MeshBeaconHost.ClientConnectionBandwidthTestData*)(cast(size_t)&this + 20); }
				UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)&this + 12); }
				float ElapsedHeartbeatTime() { return *cast(float*)(cast(size_t)&this + 8); }
				OnlineSubsystem.UniqueNetId PlayerNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
			}
			bool bCanHostVs() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x1) != 0; }
			bool bCanHostVs(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x1; } return val; }
			bool bConnectionAccepted() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bConnectionAccepted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	struct ClientConnectionBandwidthTestData
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final auto ref
		{
			MeshBeacon.ConnectionBandwidthStats BandwidthStats() { return *cast(MeshBeacon.ConnectionBandwidthStats*)(cast(size_t)&this + 28); }
			UObject.Double TestStartTime() { return *cast(UObject.Double*)(cast(size_t)&this + 20); }
			UObject.Double RequestTestStartTime() { return *cast(UObject.Double*)(cast(size_t)&this + 12); }
			int BytesReceived() { return *cast(int*)(cast(size_t)&this + 8); }
			int BytesTotalNeeded() { return *cast(int*)(cast(size_t)&this + 4); }
			MeshBeacon.EMeshBeaconBandwidthTestType TestType() { return *cast(MeshBeacon.EMeshBeaconBandwidthTestType*)(cast(size_t)&this + 1); }
			MeshBeacon.EMeshBeaconBandwidthTestState CurrentState() { return *cast(MeshBeacon.EMeshBeaconBandwidthTestState*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MeshBeaconHost.ClientMeshBeaconConnection) ClientConnections() { return *cast(ScriptArray!(MeshBeaconHost.ClientMeshBeaconConnection)*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) PendingPlayerConnections() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 132); }
			int ConnectionBacklog() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			OnlineSubsystem.UniqueNetId OwningPlayerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)cast(void*)this + 144); }
		}
		bool bAllowBandwidthTesting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
		bool bAllowBandwidthTesting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	}
final:
	void OnReceivedClientCreateNewSessionResult(bool bSucceeded, ScriptName SessionName, ScriptClass SearchClass, ubyte* PlatformSpecificInfo)
	{
		ubyte params[96];
		params[] = 0;
		*cast(bool*)params.ptr = bSucceeded;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(ScriptClass*)&params[12] = SearchClass;
		params[16] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33283], params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[16];
	}
	void OnAllPendingPlayersConnected()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33285], cast(void*)0, cast(void*)0);
	}
	void OnFinishedBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, MeshBeacon.EMeshBeaconBandwidthTestResult TestResult, MeshBeacon.ConnectionBandwidthStats* BandwidthStats)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestResult*)&params[9] = TestResult;
		*cast(MeshBeacon.ConnectionBandwidthStats*)&params[12] = *BandwidthStats;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33287], params.ptr, cast(void*)0);
		*BandwidthStats = *cast(MeshBeacon.ConnectionBandwidthStats*)&params[12];
	}
	void OnStartedBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33289], params.ptr, cast(void*)0);
	}
	void OnReceivedClientConnectionRequest(MeshBeaconHost.ClientMeshBeaconConnection* NewClientConnection)
	{
		ubyte params[88];
		params[] = 0;
		*cast(MeshBeaconHost.ClientMeshBeaconConnection*)params.ptr = *NewClientConnection;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33291], params.ptr, cast(void*)0);
		*NewClientConnection = *cast(MeshBeaconHost.ClientMeshBeaconConnection*)params.ptr;
	}
	bool InitHostBeacon(OnlineSubsystem.UniqueNetId InOwningPlayerId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = InOwningPlayerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33295], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33298], cast(void*)0, cast(void*)0);
	}
	bool RequestClientBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, int TestBufferSize)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		*cast(int*)&params[12] = TestBufferSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33299], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool HasInProgressBandwidthTest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33304], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CancelInProgressBandwidthTests()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33306], cast(void*)0, cast(void*)0);
	}
	bool HasPendingBandwidthTest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33307], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CancelPendingBandwidthTests()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33309], cast(void*)0, cast(void*)0);
	}
	void AllowBandwidthTesting(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33310], params.ptr, cast(void*)0);
	}
	void SetPendingPlayerConnections(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33319], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	int GetConnectionIndexForPlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33322], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool AllPlayersConnected(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33325], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	void TellClientsToTravel(ScriptName SessionName, ScriptClass SearchClass, ubyte* PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33329], params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[12];
	}
	bool RequestClientCreateNewSession(OnlineSubsystem.UniqueNetId PlayerNetId, ScriptName SessionName, ScriptClass SearchClass, ScriptArray!(MeshBeacon.PlayerMember)* Players)
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
