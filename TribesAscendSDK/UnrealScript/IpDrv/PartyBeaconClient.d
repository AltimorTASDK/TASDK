module UnrealScript.IpDrv.PartyBeaconClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.IpDrv.PartyBeacon;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.IpDrv.ClientBeaconAddressResolver;

extern(C++) interface PartyBeaconClient : PartyBeacon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.PartyBeaconClient")()); }
	private static __gshared PartyBeaconClient mDefaultProperties;
	@property final static PartyBeaconClient DefaultProperties() { mixin(MGDPC!(PartyBeaconClient, "PartyBeaconClient IpDrv.Default__PartyBeaconClient")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnHostHasCancelled;
			ScriptFunction mOnHostIsReady;
			ScriptFunction mOnTravelRequestReceived;
			ScriptFunction mOnReservationCountUpdated;
			ScriptFunction mOnReservationRequestComplete;
			ScriptFunction mRequestReservation;
			ScriptFunction mRequestReservationUpdate;
			ScriptFunction mCancelReservation;
			ScriptFunction mDestroyBeacon;
		}
		public @property static final
		{
			ScriptFunction OnHostHasCancelled() { mixin(MGF!("mOnHostHasCancelled", "Function IpDrv.PartyBeaconClient.OnHostHasCancelled")()); }
			ScriptFunction OnHostIsReady() { mixin(MGF!("mOnHostIsReady", "Function IpDrv.PartyBeaconClient.OnHostIsReady")()); }
			ScriptFunction OnTravelRequestReceived() { mixin(MGF!("mOnTravelRequestReceived", "Function IpDrv.PartyBeaconClient.OnTravelRequestReceived")()); }
			ScriptFunction OnReservationCountUpdated() { mixin(MGF!("mOnReservationCountUpdated", "Function IpDrv.PartyBeaconClient.OnReservationCountUpdated")()); }
			ScriptFunction OnReservationRequestComplete() { mixin(MGF!("mOnReservationRequestComplete", "Function IpDrv.PartyBeaconClient.OnReservationRequestComplete")()); }
			ScriptFunction RequestReservation() { mixin(MGF!("mRequestReservation", "Function IpDrv.PartyBeaconClient.RequestReservation")()); }
			ScriptFunction RequestReservationUpdate() { mixin(MGF!("mRequestReservationUpdate", "Function IpDrv.PartyBeaconClient.RequestReservationUpdate")()); }
			ScriptFunction CancelReservation() { mixin(MGF!("mCancelReservation", "Function IpDrv.PartyBeaconClient.CancelReservation")()); }
			ScriptFunction DestroyBeacon() { mixin(MGF!("mDestroyBeacon", "Function IpDrv.PartyBeaconClient.DestroyBeacon")()); }
		}
	}
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
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnHostHasCancelled__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnHostIsReady__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnTravelRequestReceived__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReservationCountUpdated__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReservationRequestComplete__Delegate'!
		ClientBeaconAddressResolver Resolver() { mixin(MGPC!(ClientBeaconAddressResolver, 164)()); }
		ScriptClass ResolverClass() { mixin(MGPC!(ScriptClass, 160)()); }
		ScriptString ResolverClassName() { mixin(MGPC!(ScriptString, 148)()); }
		float ReservationRequestElapsedTime() { mixin(MGPC!(float, 144)()); }
		float ReservationRequestTimeout() { mixin(MGPC!(float, 140)()); }
		PartyBeaconClient.EPartyBeaconClientRequest ClientBeaconRequestType() { mixin(MGPC!(PartyBeaconClient.EPartyBeaconClientRequest, 137)()); }
		PartyBeaconClient.EPartyBeaconClientState ClientBeaconState() { mixin(MGPC!(PartyBeaconClient.EPartyBeaconClientState, 136)()); }
		OnlineGameSearch.OnlineGameSearchResult HostPendingRequest() { mixin(MGPC!(OnlineGameSearch.OnlineGameSearchResult, 104)()); }
		PartyBeacon.PartyReservation PendingRequest() { mixin(MGPC!(PartyBeacon.PartyReservation, 112)()); }
	}
final:
	void OnHostHasCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnHostHasCancelled, cast(void*)0, cast(void*)0);
	}
	void OnHostIsReady()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnHostIsReady, cast(void*)0, cast(void*)0);
	}
	void OnTravelRequestReceived(ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTravelRequestReceived, params.ptr, cast(void*)0);
	}
	void OnReservationCountUpdated(int ReservationRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ReservationRemaining;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReservationCountUpdated, params.ptr, cast(void*)0);
	}
	void OnReservationRequestComplete(PartyBeacon.EPartyReservationResult ReservationResult)
	{
		ubyte params[1];
		params[] = 0;
		*cast(PartyBeacon.EPartyReservationResult*)params.ptr = ReservationResult;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReservationRequestComplete, params.ptr, cast(void*)0);
	}
	bool RequestReservation(ref const OnlineGameSearch.OnlineGameSearchResult DesiredHost, OnlineSubsystem.UniqueNetId RequestingPartyLeader, ref const ScriptArray!(PartyBeacon.PlayerReservation) Players)
	{
		ubyte params[32];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = DesiredHost;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = RequestingPartyLeader;
		*cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[16] = Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestReservation, params.ptr, cast(void*)0);
		*DesiredHost = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*Players = *cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool RequestReservationUpdate(ref const OnlineGameSearch.OnlineGameSearchResult DesiredHost, OnlineSubsystem.UniqueNetId RequestingPartyLeader, ref const ScriptArray!(PartyBeacon.PlayerReservation) PlayersToAdd)
	{
		ubyte params[32];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = DesiredHost;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = RequestingPartyLeader;
		*cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[16] = PlayersToAdd;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestReservationUpdate, params.ptr, cast(void*)0);
		*DesiredHost = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
		*PlayersToAdd = *cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool CancelReservation(OnlineSubsystem.UniqueNetId CancellingPartyLeader)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = CancellingPartyLeader;
		(cast(ScriptObject)this).ProcessEvent(Functions.CancelReservation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyBeacon, cast(void*)0, cast(void*)0);
	}
}
