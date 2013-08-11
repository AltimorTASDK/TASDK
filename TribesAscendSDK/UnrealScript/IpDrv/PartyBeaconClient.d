module UnrealScript.IpDrv.PartyBeaconClient;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.IpDrv.PartyBeacon;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.IpDrv.ClientBeaconAddressResolver;

extern(C++) interface PartyBeaconClient : PartyBeacon
{
	enum EPartyBeaconClientRequest : ubyte
	{
		PBClientRequest_NewReservation = 0,
		PBClientRequest_UpdateReservation = 1,
		PBClientRequest_MAX = 2,
	}
	enum EPartyBeaconClientState : ubyte
	{
		PBCS_None = 0,
		PBCS_Connecting = 1,
		PBCS_Connected = 2,
		PBCS_ConnectionFailed = 3,
		PBCS_AwaitingResponse = 4,
		PBCS_Closed = 5,
		PBCS_MAX = 6,
	}
	public @property final auto ref ClientBeaconAddressResolver Resolver() { return *cast(ClientBeaconAddressResolver*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptClass ResolverClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref ScriptString ResolverClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float ReservationRequestElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float ReservationRequestTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref PartyBeaconClient.EPartyBeaconClientRequest ClientBeaconRequestType() { return *cast(PartyBeaconClient.EPartyBeaconClientRequest*)(cast(size_t)cast(void*)this + 137); }
	public @property final auto ref PartyBeaconClient.EPartyBeaconClientState ClientBeaconState() { return *cast(PartyBeaconClient.EPartyBeaconClientState*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref OnlineGameSearch.OnlineGameSearchResult HostPendingRequest() { return *cast(OnlineGameSearch.OnlineGameSearchResult*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref PartyBeacon.PartyReservation PendingRequest() { return *cast(PartyBeacon.PartyReservation*)(cast(size_t)cast(void*)this + 112); }
	final void OnHostHasCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33911], cast(void*)0, cast(void*)0);
	}
	final void OnHostIsReady()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33913], cast(void*)0, cast(void*)0);
	}
	final void OnTravelRequestReceived(ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33915], params.ptr, cast(void*)0);
	}
	final void OnReservationCountUpdated(int ReservationRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ReservationRemaining;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33917], params.ptr, cast(void*)0);
	}
	final void OnReservationRequestComplete(PartyBeacon.EPartyReservationResult ReservationResult)
	{
		ubyte params[1];
		params[] = 0;
		*cast(PartyBeacon.EPartyReservationResult*)params.ptr = ReservationResult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33919], params.ptr, cast(void*)0);
	}
	final bool RequestReservation(OnlineGameSearch.OnlineGameSearchResult* DesiredHost, OnlineSubsystem.UniqueNetId RequestingPartyLeader, ScriptArray!(PartyBeacon.PlayerReservation)* Players)
	{
		ubyte params[32];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *DesiredHost;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = RequestingPartyLeader;
		*cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[16] = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33936], params.ptr, cast(void*)0);
		*DesiredHost = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*Players = *cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[16];
		return *cast(bool*)&params[28];
	}
	final bool RequestReservationUpdate(OnlineGameSearch.OnlineGameSearchResult* DesiredHost, OnlineSubsystem.UniqueNetId RequestingPartyLeader, ScriptArray!(PartyBeacon.PlayerReservation)* PlayersToAdd)
	{
		ubyte params[32];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *DesiredHost;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = RequestingPartyLeader;
		*cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[16] = *PlayersToAdd;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33942], params.ptr, cast(void*)0);
		*DesiredHost = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*PlayersToAdd = *cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[16];
		return *cast(bool*)&params[28];
	}
	final bool CancelReservation(OnlineSubsystem.UniqueNetId CancellingPartyLeader)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = CancellingPartyLeader;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33948], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33951], cast(void*)0, cast(void*)0);
	}
}
