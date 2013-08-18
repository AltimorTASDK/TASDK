module UnrealScript.IpDrv.MeshBeaconHost;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MeshBeacon;

extern(C++) interface MeshBeaconHost : MeshBeacon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.MeshBeaconHost")); }
	private static __gshared MeshBeaconHost mDefaultProperties;
	@property final static MeshBeaconHost DefaultProperties() { mixin(MGDPC("MeshBeaconHost", "MeshBeaconHost IpDrv.Default__MeshBeaconHost")); }
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
			ScriptFunction OnReceivedClientCreateNewSessionResult() { mixin(MGF("mOnReceivedClientCreateNewSessionResult", "Function IpDrv.MeshBeaconHost.OnReceivedClientCreateNewSessionResult")); }
			ScriptFunction OnAllPendingPlayersConnected() { mixin(MGF("mOnAllPendingPlayersConnected", "Function IpDrv.MeshBeaconHost.OnAllPendingPlayersConnected")); }
			ScriptFunction OnFinishedBandwidthTest() { mixin(MGF("mOnFinishedBandwidthTest", "Function IpDrv.MeshBeaconHost.OnFinishedBandwidthTest")); }
			ScriptFunction OnStartedBandwidthTest() { mixin(MGF("mOnStartedBandwidthTest", "Function IpDrv.MeshBeaconHost.OnStartedBandwidthTest")); }
			ScriptFunction OnReceivedClientConnectionRequest() { mixin(MGF("mOnReceivedClientConnectionRequest", "Function IpDrv.MeshBeaconHost.OnReceivedClientConnectionRequest")); }
			ScriptFunction InitHostBeacon() { mixin(MGF("mInitHostBeacon", "Function IpDrv.MeshBeaconHost.InitHostBeacon")); }
			ScriptFunction DestroyBeacon() { mixin(MGF("mDestroyBeacon", "Function IpDrv.MeshBeaconHost.DestroyBeacon")); }
			ScriptFunction RequestClientBandwidthTest() { mixin(MGF("mRequestClientBandwidthTest", "Function IpDrv.MeshBeaconHost.RequestClientBandwidthTest")); }
			ScriptFunction HasInProgressBandwidthTest() { mixin(MGF("mHasInProgressBandwidthTest", "Function IpDrv.MeshBeaconHost.HasInProgressBandwidthTest")); }
			ScriptFunction CancelInProgressBandwidthTests() { mixin(MGF("mCancelInProgressBandwidthTests", "Function IpDrv.MeshBeaconHost.CancelInProgressBandwidthTests")); }
			ScriptFunction HasPendingBandwidthTest() { mixin(MGF("mHasPendingBandwidthTest", "Function IpDrv.MeshBeaconHost.HasPendingBandwidthTest")); }
			ScriptFunction CancelPendingBandwidthTests() { mixin(MGF("mCancelPendingBandwidthTests", "Function IpDrv.MeshBeaconHost.CancelPendingBandwidthTests")); }
			ScriptFunction AllowBandwidthTesting() { mixin(MGF("mAllowBandwidthTesting", "Function IpDrv.MeshBeaconHost.AllowBandwidthTesting")); }
			ScriptFunction SetPendingPlayerConnections() { mixin(MGF("mSetPendingPlayerConnections", "Function IpDrv.MeshBeaconHost.SetPendingPlayerConnections")); }
			ScriptFunction GetConnectionIndexForPlayer() { mixin(MGF("mGetConnectionIndexForPlayer", "Function IpDrv.MeshBeaconHost.GetConnectionIndexForPlayer")); }
			ScriptFunction AllPlayersConnected() { mixin(MGF("mAllPlayersConnected", "Function IpDrv.MeshBeaconHost.AllPlayersConnected")); }
			ScriptFunction TellClientsToTravel() { mixin(MGF("mTellClientsToTravel", "Function IpDrv.MeshBeaconHost.TellClientsToTravel")); }
			ScriptFunction RequestClientCreateNewSession() { mixin(MGF("mRequestClientCreateNewSession", "Function IpDrv.MeshBeaconHost.RequestClientCreateNewSession")); }
		}
	}
	struct ClientMeshBeaconConnection
	{
		private ubyte __buffer__[88];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.MeshBeaconHost.ClientMeshBeaconConnection")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(MeshBeacon.ConnectionBandwidthStats) BandwidthHistory() { mixin(MGPS("ScriptArray!(MeshBeacon.ConnectionBandwidthStats)", 72)); }
				int MinutesSinceLastTest() { mixin(MGPS("int", 84)); }
				float GoodHostRatio() { mixin(MGPS("float", 68)); }
				OnlineSubsystem.ENATType NatType() { mixin(MGPS("OnlineSubsystem.ENATType", 60)); }
				MeshBeaconHost.ClientConnectionBandwidthTestData BandwidthTest() { mixin(MGPS("MeshBeaconHost.ClientConnectionBandwidthTestData", 20)); }
				Pointer Socket() { mixin(MGPS("Pointer", 12)); }
				float ElapsedHeartbeatTime() { mixin(MGPS("float", 8)); }
				OnlineSubsystem.UniqueNetId PlayerNetId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
			}
			bool bCanHostVs() { mixin(MGBPS(64, 0x1)); }
			bool bCanHostVs(bool val) { mixin(MSBPS(64, 0x1)); }
			bool bConnectionAccepted() { mixin(MGBPS(16, 0x1)); }
			bool bConnectionAccepted(bool val) { mixin(MSBPS(16, 0x1)); }
		}
	}
	struct ClientConnectionBandwidthTestData
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.MeshBeaconHost.ClientConnectionBandwidthTestData")); }
		@property final auto ref
		{
			MeshBeacon.ConnectionBandwidthStats BandwidthStats() { mixin(MGPS("MeshBeacon.ConnectionBandwidthStats", 28)); }
			UObject.Double TestStartTime() { mixin(MGPS("UObject.Double", 20)); }
			UObject.Double RequestTestStartTime() { mixin(MGPS("UObject.Double", 12)); }
			int BytesReceived() { mixin(MGPS("int", 8)); }
			int BytesTotalNeeded() { mixin(MGPS("int", 4)); }
			MeshBeacon.EMeshBeaconBandwidthTestType TestType() { mixin(MGPS("MeshBeacon.EMeshBeaconBandwidthTestType", 1)); }
			MeshBeacon.EMeshBeaconBandwidthTestState CurrentState() { mixin(MGPS("MeshBeacon.EMeshBeaconBandwidthTestState", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MeshBeaconHost.ClientMeshBeaconConnection) ClientConnections() { mixin(MGPC("ScriptArray!(MeshBeaconHost.ClientMeshBeaconConnection)", 120)); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) PendingPlayerConnections() { mixin(MGPC("ScriptArray!(OnlineSubsystem.UniqueNetId)", 132)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedClientCreateNewSessionResult__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnAllPendingPlayersConnected__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnFinishedBandwidthTest__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnStartedBandwidthTest__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedClientConnectionRequest__Delegate'!
			int ConnectionBacklog() { mixin(MGPC("int", 156)); }
			OnlineSubsystem.UniqueNetId OwningPlayerId() { mixin(MGPC("OnlineSubsystem.UniqueNetId", 144)); }
		}
		bool bAllowBandwidthTesting() { mixin(MGBPC(152, 0x1)); }
		bool bAllowBandwidthTesting(bool val) { mixin(MSBPC(152, 0x1)); }
	}
final:
	void OnReceivedClientCreateNewSessionResult(bool bSucceeded, ScriptName SessionName, ScriptClass SearchClass, ref in ubyte PlatformSpecificInfo)
	{
		ubyte params[96];
		params[] = 0;
		*cast(bool*)params.ptr = bSucceeded;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(ScriptClass*)&params[12] = SearchClass;
		params[16] = cast(ubyte)PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedClientCreateNewSessionResult, params.ptr, cast(void*)0);
	}
	void OnAllPendingPlayersConnected()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAllPendingPlayersConnected, cast(void*)0, cast(void*)0);
	}
	void OnFinishedBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType, MeshBeacon.EMeshBeaconBandwidthTestResult TestResult, ref in MeshBeacon.ConnectionBandwidthStats BandwidthStats)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestResult*)&params[9] = TestResult;
		*cast(MeshBeacon.ConnectionBandwidthStats*)&params[12] = cast(MeshBeacon.ConnectionBandwidthStats)BandwidthStats;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFinishedBandwidthTest, params.ptr, cast(void*)0);
	}
	void OnStartedBandwidthTest(OnlineSubsystem.UniqueNetId PlayerNetId, MeshBeacon.EMeshBeaconBandwidthTestType TestType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)&params[8] = TestType;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartedBandwidthTest, params.ptr, cast(void*)0);
	}
	void OnReceivedClientConnectionRequest(ref in MeshBeaconHost.ClientMeshBeaconConnection NewClientConnection)
	{
		ubyte params[88];
		params[] = 0;
		*cast(MeshBeaconHost.ClientMeshBeaconConnection*)params.ptr = cast(MeshBeaconHost.ClientMeshBeaconConnection)NewClientConnection;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedClientConnectionRequest, params.ptr, cast(void*)0);
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
	void SetPendingPlayerConnections(ref in ScriptArray!(OnlineSubsystem.UniqueNetId) Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = cast(ScriptArray!(OnlineSubsystem.UniqueNetId))Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPendingPlayerConnections, params.ptr, cast(void*)0);
	}
	int GetConnectionIndexForPlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetConnectionIndexForPlayer, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool AllPlayersConnected(ref in ScriptArray!(OnlineSubsystem.UniqueNetId) Players)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = cast(ScriptArray!(OnlineSubsystem.UniqueNetId))Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllPlayersConnected, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void TellClientsToTravel(ScriptName SessionName, ScriptClass SearchClass, ref in ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = cast(ubyte)PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.TellClientsToTravel, params.ptr, cast(void*)0);
	}
	bool RequestClientCreateNewSession(OnlineSubsystem.UniqueNetId PlayerNetId, ScriptName SessionName, ScriptClass SearchClass, ref in ScriptArray!(MeshBeacon.PlayerMember) Players)
	{
		ubyte params[36];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		*cast(ScriptName*)&params[8] = SessionName;
		*cast(ScriptClass*)&params[16] = SearchClass;
		*cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[20] = cast(ScriptArray!(MeshBeacon.PlayerMember))Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestClientCreateNewSession, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
}
