module UnrealScript.IpDrv.MeshBeaconClient;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.IpDrv.MeshBeacon;
import UnrealScript.IpDrv.ClientBeaconAddressResolver;

extern(C++) interface MeshBeaconClient : MeshBeacon
{
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
		public @property final auto ref float ElapsedTestTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __ElapsedTestTime[4];
		public @property final auto ref int NumBytesSentLast() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __NumBytesSentLast[4];
		public @property final auto ref int NumBytesSentTotal() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __NumBytesSentTotal[4];
		public @property final auto ref int NumBytesToSendTotal() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __NumBytesToSendTotal[4];
		public @property final auto ref MeshBeacon.EMeshBeaconBandwidthTestState CurrentState() { return *cast(MeshBeacon.EMeshBeaconBandwidthTestState*)(cast(size_t)&this + 1); }
		private ubyte __CurrentState[1];
		public @property final auto ref MeshBeacon.EMeshBeaconBandwidthTestType TestType() { return *cast(MeshBeacon.EMeshBeaconBandwidthTestType*)(cast(size_t)&this + 0); }
		private ubyte __TestType[1];
	}
	struct ClientConnectionRequest
	{
		public @property final auto ref ScriptArray!(MeshBeacon.ConnectionBandwidthStats) BandwidthHistory() { return *cast(ScriptArray!(MeshBeacon.ConnectionBandwidthStats)*)(cast(size_t)&this + 20); }
		private ubyte __BandwidthHistory[12];
		public @property final auto ref int MinutesSinceLastTest() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __MinutesSinceLastTest[4];
		public @property final auto ref float GoodHostRatio() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __GoodHostRatio[4];
		public @property final bool bCanHostVs() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bCanHostVs(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bCanHostVs[4];
		public @property final auto ref OnlineSubsystem.ENATType NatType() { return *cast(OnlineSubsystem.ENATType*)(cast(size_t)&this + 8); }
		private ubyte __NatType[1];
		public @property final auto ref OnlineSubsystem.UniqueNetId PlayerNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __PlayerNetId[8];
	}
	public @property final bool bUsingRegisteredAddr() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1) != 0; }
	public @property final bool bUsingRegisteredAddr(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1; } return val; }
	public @property final auto ref ClientBeaconAddressResolver Resolver() { return *cast(ClientBeaconAddressResolver*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptClass ResolverClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref ScriptString ResolverClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref float ConnectionRequestElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float ConnectionRequestTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref MeshBeacon.EMeshBeaconPacketType ClientBeaconRequestType() { return *cast(MeshBeacon.EMeshBeaconPacketType*)(cast(size_t)cast(void*)this + 185); }
	public @property final auto ref MeshBeaconClient.EMeshBeaconClientState ClientBeaconState() { return *cast(MeshBeaconClient.EMeshBeaconClientState*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref MeshBeaconClient.ClientBandwidthTestData CurrentBandwidthTest() { return *cast(MeshBeaconClient.ClientBandwidthTestData*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref MeshBeaconClient.ClientConnectionRequest ClientPendingRequest() { return *cast(MeshBeaconClient.ClientConnectionRequest*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref OnlineGameSearch.OnlineGameSearchResult HostPendingRequest() { return *cast(OnlineGameSearch.OnlineGameSearchResult*)(cast(size_t)cast(void*)this + 120); }
	final void OnCreateNewSessionRequestReceived(ScriptName SessionName, ScriptClass SearchClass, ScriptArray!(MeshBeacon.PlayerMember)* Players)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		*cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[12] = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33194], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(MeshBeacon.PlayerMember)*)&params[12];
	}
	final void OnTravelRequestReceived(ScriptName SessionName, ScriptClass SearchClass, ubyte* PlatformSpecificInfo)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33196], params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[12];
	}
	final void OnReceivedBandwidthTestResults(MeshBeacon.EMeshBeaconBandwidthTestType TestType, MeshBeacon.EMeshBeaconBandwidthTestResult TestResult, MeshBeacon.ConnectionBandwidthStats* BandwidthStats)
	{
		ubyte params[14];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)params.ptr = TestType;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestResult*)&params[1] = TestResult;
		*cast(MeshBeacon.ConnectionBandwidthStats*)&params[4] = *BandwidthStats;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33198], params.ptr, cast(void*)0);
		*BandwidthStats = *cast(MeshBeacon.ConnectionBandwidthStats*)&params[4];
	}
	final void OnReceivedBandwidthTestRequest(MeshBeacon.EMeshBeaconBandwidthTestType TestType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)params.ptr = TestType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33200], params.ptr, cast(void*)0);
	}
	final void OnConnectionRequestResult(MeshBeacon.EMeshBeaconConnectionResult ConnectionResult)
	{
		ubyte params[1];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconConnectionResult*)params.ptr = ConnectionResult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33202], params.ptr, cast(void*)0);
	}
	final void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33230], cast(void*)0, cast(void*)0);
	}
	final bool RequestConnection(OnlineGameSearch.OnlineGameSearchResult* DesiredHost, MeshBeaconClient.ClientConnectionRequest* ClientRequest, bool bRegisterSecureAddress)
	{
		ubyte params[52];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *DesiredHost;
		*cast(MeshBeaconClient.ClientConnectionRequest*)&params[8] = *ClientRequest;
		*cast(bool*)&params[44] = bRegisterSecureAddress;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33231], params.ptr, cast(void*)0);
		*DesiredHost = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*ClientRequest = *cast(MeshBeaconClient.ClientConnectionRequest*)&params[8];
		return *cast(bool*)&params[48];
	}
	final bool BeginBandwidthTest(MeshBeacon.EMeshBeaconBandwidthTestType TestType, int TestBufferSize)
	{
		ubyte params[9];
		params[] = 0;
		*cast(MeshBeacon.EMeshBeaconBandwidthTestType*)params.ptr = TestType;
		*cast(int*)&params[4] = TestBufferSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33236], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool SendHostNewGameSessionResponse(bool bSuccess, ScriptName SessionName, ScriptClass SearchClass, ubyte* PlatformSpecificInfo)
	{
		ubyte params[100];
		params[] = 0;
		*cast(bool*)params.ptr = bSuccess;
		*cast(ScriptName*)&params[4] = SessionName;
		*cast(ScriptClass*)&params[12] = SearchClass;
		params[16] = *PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33252], params.ptr, cast(void*)0);
		*PlatformSpecificInfo = params[16];
		return *cast(bool*)&params[96];
	}
}
