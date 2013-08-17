module UnrealScript.IpDrv.MeshBeaconClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.IpDrv.MeshBeacon;
import UnrealScript.IpDrv.ClientBeaconAddressResolver;

extern(C++) interface MeshBeaconClient : MeshBeacon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.MeshBeaconClient")); }
	private static __gshared MeshBeaconClient mDefaultProperties;
	@property final static MeshBeaconClient DefaultProperties() { mixin(MGDPC("MeshBeaconClient", "MeshBeaconClient IpDrv.Default__MeshBeaconClient")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnCreateNewSessionRequestReceived;
			ScriptFunction mOnTravelRequestReceived;
			ScriptFunction mOnReceivedBandwidthTestResults;
			ScriptFunction mOnReceivedBandwidthTestRequest;
			ScriptFunction mOnConnectionRequestResult;
			ScriptFunction mDestroyBeacon;
			ScriptFunction mRequestConnection;
			ScriptFunction mBeginBandwidthTest;
			ScriptFunction mSendHostNewGameSessionResponse;
		}
		public @property static final
		{
			ScriptFunction OnCreateNewSessionRequestReceived() { mixin(MGF("mOnCreateNewSessionRequestReceived", "Function IpDrv.MeshBeaconClient.OnCreateNewSessionRequestReceived")); }
			ScriptFunction OnTravelRequestReceived() { mixin(MGF("mOnTravelRequestReceived", "Function IpDrv.MeshBeaconClient.OnTravelRequestReceived")); }
			ScriptFunction OnReceivedBandwidthTestResults() { mixin(MGF("mOnReceivedBandwidthTestResults", "Function IpDrv.MeshBeaconClient.OnReceivedBandwidthTestResults")); }
			ScriptFunction OnReceivedBandwidthTestRequest() { mixin(MGF("mOnReceivedBandwidthTestRequest", "Function IpDrv.MeshBeaconClient.OnReceivedBandwidthTestRequest")); }
			ScriptFunction OnConnectionRequestResult() { mixin(MGF("mOnConnectionRequestResult", "Function IpDrv.MeshBeaconClient.OnConnectionRequestResult")); }
			ScriptFunction DestroyBeacon() { mixin(MGF("mDestroyBeacon", "Function IpDrv.MeshBeaconClient.DestroyBeacon")); }
			ScriptFunction RequestConnection() { mixin(MGF("mRequestConnection", "Function IpDrv.MeshBeaconClient.RequestConnection")); }
			ScriptFunction BeginBandwidthTest() { mixin(MGF("mBeginBandwidthTest", "Function IpDrv.MeshBeaconClient.BeginBandwidthTest")); }
			ScriptFunction SendHostNewGameSessionResponse() { mixin(MGF("mSendHostNewGameSessionResponse", "Function IpDrv.MeshBeaconClient.SendHostNewGameSessionResponse")); }
		}
	}
	enum EMeshBeaconClientState : ubyte
	{
		MBCS_None = 0,
		MBCS_Connecting = 1,
		MBCS_Connected = 2,
		MBCS_ConnectionFailed = 3,
		MBCS_AwaitingResponse = 4,
		MBCS_Closed = 5,
		MBCS_MAX = 6,
	}
	struct ClientBandwidthTestData
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.MeshBeaconClient.ClientBandwidthTestData")); }
		@property final auto ref
		{
			float ElapsedTestTime() { mixin(MGPS("float", 16)); }
			int NumBytesSentLast() { mixin(MGPS("int", 12)); }
			int NumBytesSentTotal() { mixin(MGPS("int", 8)); }
			int NumBytesToSendTotal() { mixin(MGPS("int", 4)); }
			MeshBeacon.EMeshBeaconBandwidthTestState CurrentState() { mixin(MGPS("MeshBeacon.EMeshBeaconBandwidthTestState", 1)); }
			MeshBeacon.EMeshBeaconBandwidthTestType TestType() { mixin(MGPS("MeshBeacon.EMeshBeaconBandwidthTestType", 0)); }
		}
	}
	struct ClientConnectionRequest
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.MeshBeaconClient.ClientConnectionRequest")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(MeshBeacon.ConnectionBandwidthStats) BandwidthHistory() { mixin(MGPS("ScriptArray!(MeshBeacon.ConnectionBandwidthStats)", 20)); }
				int MinutesSinceLastTest() { mixin(MGPS("int", 32)); }
				float GoodHostRatio() { mixin(MGPS("float", 16)); }
				OnlineSubsystem.ENATType NatType() { mixin(MGPS("OnlineSubsystem.ENATType", 8)); }
				OnlineSubsystem.UniqueNetId PlayerNetId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
			}
			bool bCanHostVs() { mixin(MGBPS(12, 0x1)); }
			bool bCanHostVs(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnCreateNewSessionRequestReceived__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnTravelRequestReceived__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedBandwidthTestResults__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedBandwidthTestRequest__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnConnectionRequestResult__Delegate'!
			ClientBeaconAddressResolver Resolver() { mixin(MGPC("ClientBeaconAddressResolver", 212)); }
			ScriptClass ResolverClass() { mixin(MGPC("ScriptClass", 208)); }
			ScriptString ResolverClassName() { mixin(MGPC("ScriptString", 196)); }
			float ConnectionRequestElapsedTime() { mixin(MGPC("float", 192)); }
			float ConnectionRequestTimeout() { mixin(MGPC("float", 188)); }
			MeshBeacon.EMeshBeaconPacketType ClientBeaconRequestType() { mixin(MGPC("MeshBeacon.EMeshBeaconPacketType", 185)); }
			MeshBeaconClient.EMeshBeaconClientState ClientBeaconState() { mixin(MGPC("MeshBeaconClient.EMeshBeaconClientState", 184)); }
			MeshBeaconClient.ClientBandwidthTestData CurrentBandwidthTest() { mixin(MGPC("MeshBeaconClient.ClientBandwidthTestData", 164)); }
			MeshBeaconClient.ClientConnectionRequest ClientPendingRequest() { mixin(MGPC("MeshBeaconClient.ClientConnectionRequest", 128)); }
			OnlineGameSearch.OnlineGameSearchResult HostPendingRequest() { mixin(MGPC("OnlineGameSearch.OnlineGameSearchResult", 120)); }
		}
		bool bUsingRegisteredAddr() { mixin(MGBPC(216, 0x1)); }
		bool bUsingRegisteredAddr(bool val) { mixin(MSBPC(216, 0x1)); }
	}
final:
	void OnCreateNewSessionRequestReceived(ScriptName SessionName, ScriptClass SearchClass, ref in ScriptArray!(MeshBeacon.PlayerMember) Players)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		*cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[12] = cast(ScriptArray!(MeshBeacon.PlayerMember))Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCreateNewSessionRequestReceived, params.ptr, cast(void*)0);
	}
	void OnTravelRequestReceived(ScriptName SessionName, ScriptClass SearchClass, ref in ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = cast(ubyte)PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTravelRequestReceived, params.ptr, cast(void*)0);
	}
	void OnReceivedBandwidthTestResults(MeshBeacon.EMeshBeaconBandwidthTestType TestType, MeshBeacon.EMeshBeaconBandwidthTestResult TestResult, ref in MeshBeacon.ConnectionBandwidthStats BandwidthStats)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)params.ptr = TestType;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestResult*)&params[1] = TestResult;
		*cast(MeshBeacon.ConnectionBandwidthStats*)&params[4] = cast(MeshBeacon.ConnectionBandwidthStats)BandwidthStats;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedBandwidthTestResults, params.ptr, cast(void*)0);
	}
	void OnReceivedBandwidthTestRequest(MeshBeacon.EMeshBeaconBandwidthTestType TestType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)params.ptr = TestType;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedBandwidthTestRequest, params.ptr, cast(void*)0);
	}
	void OnConnectionRequestResult(MeshBeacon.EMeshBeaconConnectionResult ConnectionResult)
	{
		ubyte params[1];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconConnectionResult*)params.ptr = ConnectionResult;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnConnectionRequestResult, params.ptr, cast(void*)0);
	}
	void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyBeacon, cast(void*)0, cast(void*)0);
	}
	bool RequestConnection(ref in OnlineGameSearch.OnlineGameSearchResult DesiredHost, ref in MeshBeaconClient.ClientConnectionRequest ClientRequest, bool bRegisterSecureAddress)
	{
		ubyte params[52];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = cast(OnlineGameSearch.OnlineGameSearchResult)DesiredHost;
		*cast(MeshBeaconClient.ClientConnectionRequest*)&params[8] = cast(MeshBeaconClient.ClientConnectionRequest)ClientRequest;
		*cast(bool*)&params[44] = bRegisterSecureAddress;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestConnection, params.ptr, cast(void*)0);
		return *cast(bool*)&params[48];
	}
	bool BeginBandwidthTest(MeshBeacon.EMeshBeaconBandwidthTestType TestType, int TestBufferSize)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)params.ptr = TestType;
		*cast(int*)&params[4] = TestBufferSize;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginBandwidthTest, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool SendHostNewGameSessionResponse(bool bSuccess, ScriptName SessionName, ScriptClass SearchClass, ref in ubyte PlatformSpecificInfo)
	{
		ubyte params[100];
		params[] = 0;
		*cast(bool*)params.ptr = bSuccess;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(ScriptClass*)&params[12] = SearchClass;
		params[16] = cast(ubyte)PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendHostNewGameSessionResponse, params.ptr, cast(void*)0);
		return *cast(bool*)&params[96];
	}
}
