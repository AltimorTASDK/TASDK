module UnrealScript.IpDrv.MeshBeaconHost;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MeshBeacon;

extern(C++) interface MeshBeaconHost : MeshBeacon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.MeshBeaconHost")); }
	private static __gshared MeshBeaconHost mDefaultProperties;
	@property final static MeshBeaconHost DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MeshBeaconHost)("MeshBeaconHost IpDrv.Default__MeshBeaconHost")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnReceivedClientCreateNewSessionResult;
			ScriptFunction mOnAllPendingPlayersConnected;
			ScriptFunction mOnFinishedBandwidthTest;
			ScriptFunction mOnStartedBandwidthTest;
			ScriptFunction mOnReceivedClientConnectionRequest;
			ScriptFunction mInitHostBeacon;
			ScriptFunction mDestroyBeacon;
			ScriptFunction mRequestClientBandwidthTest;
			ScriptFunction mHasInProgressBandwidthTest;
			ScriptFunction mCancelInProgressBandwidthTests;
			ScriptFunction mHasPendingBandwidthTest;
			ScriptFunction mCancelPendingBandwidthTests;
			ScriptFunction mAllowBandwidthTesting;
			ScriptFunction mSetPendingPlayerConnections;
			ScriptFunction mGetConnectionIndexForPlayer;
			ScriptFunction mAllPlayersConnected;
			ScriptFunction mTellClientsToTravel;
			ScriptFunction mRequestClientCreateNewSession;
		}
		public @property static final
		{
			ScriptFunction OnReceivedClientCreateNewSessionResult() { return mOnReceivedClientCreateNewSessionResult ? mOnReceivedClientCreateNewSessionResult : (mOnReceivedClientCreateNewSessionResult = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.OnReceivedClientCreateNewSessionResult")); }
			ScriptFunction OnAllPendingPlayersConnected() { return mOnAllPendingPlayersConnected ? mOnAllPendingPlayersConnected : (mOnAllPendingPlayersConnected = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.OnAllPendingPlayersConnected")); }
			ScriptFunction OnFinishedBandwidthTest() { return mOnFinishedBandwidthTest ? mOnFinishedBandwidthTest : (mOnFinishedBandwidthTest = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.OnFinishedBandwidthTest")); }
			ScriptFunction OnStartedBandwidthTest() { return mOnStartedBandwidthTest ? mOnStartedBandwidthTest : (mOnStartedBandwidthTest = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.OnStartedBandwidthTest")); }
			ScriptFunction OnReceivedClientConnectionRequest() { return mOnReceivedClientConnectionRequest ? mOnReceivedClientConnectionRequest : (mOnReceivedClientConnectionRequest = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.OnReceivedClientConnectionRequest")); }
			ScriptFunction InitHostBeacon() { return mInitHostBeacon ? mInitHostBeacon : (mInitHostBeacon = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.InitHostBeacon")); }
			ScriptFunction DestroyBeacon() { return mDestroyBeacon ? mDestroyBeacon : (mDestroyBeacon = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.DestroyBeacon")); }
			ScriptFunction RequestClientBandwidthTest() { return mRequestClientBandwidthTest ? mRequestClientBandwidthTest : (mRequestClientBandwidthTest = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.RequestClientBandwidthTest")); }
			ScriptFunction HasInProgressBandwidthTest() { return mHasInProgressBandwidthTest ? mHasInProgressBandwidthTest : (mHasInProgressBandwidthTest = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.HasInProgressBandwidthTest")); }
			ScriptFunction CancelInProgressBandwidthTests() { return mCancelInProgressBandwidthTests ? mCancelInProgressBandwidthTests : (mCancelInProgressBandwidthTests = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.CancelInProgressBandwidthTests")); }
			ScriptFunction HasPendingBandwidthTest() { return mHasPendingBandwidthTest ? mHasPendingBandwidthTest : (mHasPendingBandwidthTest = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.HasPendingBandwidthTest")); }
			ScriptFunction CancelPendingBandwidthTests() { return mCancelPendingBandwidthTests ? mCancelPendingBandwidthTests : (mCancelPendingBandwidthTests = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.CancelPendingBandwidthTests")); }
			ScriptFunction AllowBandwidthTesting() { return mAllowBandwidthTesting ? mAllowBandwidthTesting : (mAllowBandwidthTesting = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.AllowBandwidthTesting")); }
			ScriptFunction SetPendingPlayerConnections() { return mSetPendingPlayerConnections ? mSetPendingPlayerConnections : (mSetPendingPlayerConnections = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.SetPendingPlayerConnections")); }
			ScriptFunction GetConnectionIndexForPlayer() { return mGetConnectionIndexForPlayer ? mGetConnectionIndexForPlayer : (mGetConnectionIndexForPlayer = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.GetConnectionIndexForPlayer")); }
			ScriptFunction AllPlayersConnected() { return mAllPlayersConnected ? mAllPlayersConnected : (mAllPlayersConnected = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.AllPlayersConnected")); }
			ScriptFunction TellClientsToTravel() { return mTellClientsToTravel ? mTellClientsToTravel : (mTellClientsToTravel = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.TellClientsToTravel")); }
			ScriptFunction RequestClientCreateNewSession() { return mRequestClientCreateNewSession ? mRequestClientCreateNewSession : (mRequestClientCreateNewSession = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconHost.RequestClientCreateNewSession")); }
		}
	}
	struct ClientMeshBeaconConnection
	{
		private ubyte __buffer__[88];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.MeshBeaconHost.ClientMeshBeaconConnection")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.MeshBeaconHost.ClientConnectionBandwidthTestData")); }
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
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedClientCreateNewSessionResult, params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[16];
	}
	void OnAllPendingPlayersConnected()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAllPendingPlayersConnected, cast(void*)0, cast(void*)0);
	}
	void OnFinishedBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, MeshBeacon.EMeshBeaconBandwidthTestResult TestResult, MeshBeacon.ConnectionBandwidthStats* BandwidthStats)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestResult*)&params[9] = TestResult;
		*cast(MeshBeacon.ConnectionBandwidthStats*)&params[12] = *BandwidthStats;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFinishedBandwidthTest, params.ptr, cast(void*)0);
		*BandwidthStats = *cast(MeshBeacon.ConnectionBandwidthStats*)&params[12];
	}
	void OnStartedBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartedBandwidthTest, params.ptr, cast(void*)0);
	}
	void OnReceivedClientConnectionRequest(MeshBeaconHost.ClientMeshBeaconConnection* NewClientConnection)
	{
		ubyte params[88];
		params[] = 0;
		*cast(MeshBeaconHost.ClientMeshBeaconConnection*)params.ptr = *NewClientConnection;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedClientConnectionRequest, params.ptr, cast(void*)0);
		*NewClientConnection = *cast(MeshBeaconHost.ClientMeshBeaconConnection*)params.ptr;
	}
	bool InitHostBeacon(OnlineSubsystem.UniqueNetId InOwningPlayerId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = InOwningPlayerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitHostBeacon, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyBeacon, cast(void*)0, cast(void*)0);
	}
	bool RequestClientBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, int TestBufferSize)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		*cast(int*)&params[12] = TestBufferSize;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestClientBandwidthTest, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool HasInProgressBandwidthTest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasInProgressBandwidthTest, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CancelInProgressBandwidthTests()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CancelInProgressBandwidthTests, cast(void*)0, cast(void*)0);
	}
	bool HasPendingBandwidthTest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasPendingBandwidthTest, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CancelPendingBandwidthTests()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CancelPendingBandwidthTests, cast(void*)0, cast(void*)0);
	}
	void AllowBandwidthTesting(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowBandwidthTesting, params.ptr, cast(void*)0);
	}
	void SetPendingPlayerConnections(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPendingPlayerConnections, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	int GetConnectionIndexForPlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetConnectionIndexForPlayer, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool AllPlayersConnected(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllPlayersConnected, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.TellClientsToTravel, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestClientCreateNewSession, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[20];
		return *cast(bool*)&params[32];
	}
}
