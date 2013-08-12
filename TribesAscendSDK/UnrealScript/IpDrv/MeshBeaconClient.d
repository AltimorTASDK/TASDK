module UnrealScript.IpDrv.MeshBeaconClient;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.IpDrv.MeshBeacon;
import UnrealScript.IpDrv.ClientBeaconAddressResolver;

extern(C++) interface MeshBeaconClient : MeshBeacon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.MeshBeaconClient")); }
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
			ScriptFunction OnCreateNewSessionRequestReceived() { return mOnCreateNewSessionRequestReceived ? mOnCreateNewSessionRequestReceived : (mOnCreateNewSessionRequestReceived = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.OnCreateNewSessionRequestReceived")); }
			ScriptFunction OnTravelRequestReceived() { return mOnTravelRequestReceived ? mOnTravelRequestReceived : (mOnTravelRequestReceived = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.OnTravelRequestReceived")); }
			ScriptFunction OnReceivedBandwidthTestResults() { return mOnReceivedBandwidthTestResults ? mOnReceivedBandwidthTestResults : (mOnReceivedBandwidthTestResults = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.OnReceivedBandwidthTestResults")); }
			ScriptFunction OnReceivedBandwidthTestRequest() { return mOnReceivedBandwidthTestRequest ? mOnReceivedBandwidthTestRequest : (mOnReceivedBandwidthTestRequest = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.OnReceivedBandwidthTestRequest")); }
			ScriptFunction OnConnectionRequestResult() { return mOnConnectionRequestResult ? mOnConnectionRequestResult : (mOnConnectionRequestResult = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.OnConnectionRequestResult")); }
			ScriptFunction DestroyBeacon() { return mDestroyBeacon ? mDestroyBeacon : (mDestroyBeacon = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.DestroyBeacon")); }
			ScriptFunction RequestConnection() { return mRequestConnection ? mRequestConnection : (mRequestConnection = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.RequestConnection")); }
			ScriptFunction BeginBandwidthTest() { return mBeginBandwidthTest ? mBeginBandwidthTest : (mBeginBandwidthTest = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.BeginBandwidthTest")); }
			ScriptFunction SendHostNewGameSessionResponse() { return mSendHostNewGameSessionResponse ? mSendHostNewGameSessionResponse : (mSendHostNewGameSessionResponse = ScriptObject.Find!(ScriptFunction)("Function IpDrv.MeshBeaconClient.SendHostNewGameSessionResponse")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.MeshBeaconClient.ClientBandwidthTestData")); }
		@property final auto ref
		{
			float ElapsedTestTime() { return *cast(float*)(cast(size_t)&this + 16); }
			int NumBytesSentLast() { return *cast(int*)(cast(size_t)&this + 12); }
			int NumBytesSentTotal() { return *cast(int*)(cast(size_t)&this + 8); }
			int NumBytesToSendTotal() { return *cast(int*)(cast(size_t)&this + 4); }
			MeshBeacon.EMeshBeaconBandwidthTestState CurrentState() { return *cast(MeshBeacon.EMeshBeaconBandwidthTestState*)(cast(size_t)&this + 1); }
			MeshBeacon.EMeshBeaconBandwidthTestType TestType() { return *cast(MeshBeacon.EMeshBeaconBandwidthTestType*)(cast(size_t)&this + 0); }
		}
	}
	struct ClientConnectionRequest
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.MeshBeaconClient.ClientConnectionRequest")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(MeshBeacon.ConnectionBandwidthStats) BandwidthHistory() { return *cast(ScriptArray!(MeshBeacon.ConnectionBandwidthStats)*)(cast(size_t)&this + 20); }
				int MinutesSinceLastTest() { return *cast(int*)(cast(size_t)&this + 32); }
				float GoodHostRatio() { return *cast(float*)(cast(size_t)&this + 16); }
				OnlineSubsystem.ENATType NatType() { return *cast(OnlineSubsystem.ENATType*)(cast(size_t)&this + 8); }
				OnlineSubsystem.UniqueNetId PlayerNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
			}
			bool bCanHostVs() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bCanHostVs(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ClientBeaconAddressResolver Resolver() { return *cast(ClientBeaconAddressResolver*)(cast(size_t)cast(void*)this + 212); }
			ScriptClass ResolverClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 208); }
			ScriptString ResolverClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
			float ConnectionRequestElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			float ConnectionRequestTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			MeshBeacon.EMeshBeaconPacketType ClientBeaconRequestType() { return *cast(MeshBeacon.EMeshBeaconPacketType*)(cast(size_t)cast(void*)this + 185); }
			MeshBeaconClient.EMeshBeaconClientState ClientBeaconState() { return *cast(MeshBeaconClient.EMeshBeaconClientState*)(cast(size_t)cast(void*)this + 184); }
			MeshBeaconClient.ClientBandwidthTestData CurrentBandwidthTest() { return *cast(MeshBeaconClient.ClientBandwidthTestData*)(cast(size_t)cast(void*)this + 164); }
			MeshBeaconClient.ClientConnectionRequest ClientPendingRequest() { return *cast(MeshBeaconClient.ClientConnectionRequest*)(cast(size_t)cast(void*)this + 128); }
			OnlineGameSearch.OnlineGameSearchResult HostPendingRequest() { return *cast(OnlineGameSearch.OnlineGameSearchResult*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bUsingRegisteredAddr() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1) != 0; }
		bool bUsingRegisteredAddr(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1; } return val; }
	}
final:
	void OnCreateNewSessionRequestReceived(ScriptName SessionName, ScriptClass SearchClass, ScriptArray!(MeshBeacon.PlayerMember)* Players)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		*cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[12] = *Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCreateNewSessionRequestReceived, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[12];
	}
	void OnTravelRequestReceived(ScriptName SessionName, ScriptClass SearchClass, ubyte* PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTravelRequestReceived, params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[12];
	}
	void OnReceivedBandwidthTestResults(MeshBeacon.EMeshBeaconBandwidthTestType TestType, MeshBeacon.EMeshBeaconBandwidthTestResult TestResult, MeshBeacon.ConnectionBandwidthStats* BandwidthStats)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)params.ptr = TestType;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestResult*)&params[1] = TestResult;
		*cast(MeshBeacon.ConnectionBandwidthStats*)&params[4] = *BandwidthStats;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedBandwidthTestResults, params.ptr, cast(void*)0);
		*BandwidthStats = *cast(MeshBeacon.ConnectionBandwidthStats*)&params[4];
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
	bool RequestConnection(OnlineGameSearch.OnlineGameSearchResult* DesiredHost, MeshBeaconClient.ClientConnectionRequest* ClientRequest, bool bRegisterSecureAddress)
	{
		ubyte params[52];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *DesiredHost;
		*cast(MeshBeaconClient.ClientConnectionRequest*)&params[8] = *ClientRequest;
		*cast(bool*)&params[44] = bRegisterSecureAddress;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestConnection, params.ptr, cast(void*)0);
		*DesiredHost = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*ClientRequest = *cast(MeshBeaconClient.ClientConnectionRequest*)&params[8];
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
	bool SendHostNewGameSessionResponse(bool bSuccess, ScriptName SessionName, ScriptClass SearchClass, ubyte* PlatformSpecificInfo)
	{
		ubyte params[100];
		params[] = 0;
		*cast(bool*)params.ptr = bSuccess;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(ScriptClass*)&params[12] = SearchClass;
		params[16] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendHostNewGameSessionResponse, params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[16];
		return *cast(bool*)&params[96];
	}
}
