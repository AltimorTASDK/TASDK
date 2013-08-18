module UnrealScript.IpDrv.PartyBeaconHost;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.IpDrv.PartyBeacon;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.OnlineGameSearch;

extern(C++) interface PartyBeaconHost : PartyBeacon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.PartyBeaconHost")); }
	private static __gshared PartyBeaconHost mDefaultProperties;
	@property final static PartyBeaconHost DefaultProperties() { mixin(MGDPC("PartyBeaconHost", "PartyBeaconHost IpDrv.Default__PartyBeaconHost")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnClientCancellationReceived;
			ScriptFunction mOnReservationsFull;
			ScriptFunction mOnReservationChange;
			ScriptFunction mPauseReservationRequests;
			ScriptFunction mInitHostBeacon;
			ScriptFunction mAddPartyReservationEntry;
			ScriptFunction mUpdatePartyReservationEntry;
			ScriptFunction mGetExistingReservation;
			ScriptFunction mHandlePlayerLogout;
			ScriptFunction mDestroyBeacon;
			ScriptFunction mTellClientsToTravel;
			ScriptFunction mTellClientsHostIsReady;
			ScriptFunction mTellClientsHostHasCancelled;
			ScriptFunction mAreReservationsFull;
			ScriptFunction mRegisterPartyMembers;
			ScriptFunction mUnregisterPartyMembers;
			ScriptFunction mUnregisterParty;
			ScriptFunction mAppendReservationSkillsToSearch;
			ScriptFunction mGetPlayers;
			ScriptFunction mGetPartyLeaders;
			ScriptFunction mGetMaxAvailableTeamSize;
		}
		public @property static final
		{
			ScriptFunction OnClientCancellationReceived() { mixin(MGF("mOnClientCancellationReceived", "Function IpDrv.PartyBeaconHost.OnClientCancellationReceived")); }
			ScriptFunction OnReservationsFull() { mixin(MGF("mOnReservationsFull", "Function IpDrv.PartyBeaconHost.OnReservationsFull")); }
			ScriptFunction OnReservationChange() { mixin(MGF("mOnReservationChange", "Function IpDrv.PartyBeaconHost.OnReservationChange")); }
			ScriptFunction PauseReservationRequests() { mixin(MGF("mPauseReservationRequests", "Function IpDrv.PartyBeaconHost.PauseReservationRequests")); }
			ScriptFunction InitHostBeacon() { mixin(MGF("mInitHostBeacon", "Function IpDrv.PartyBeaconHost.InitHostBeacon")); }
			ScriptFunction AddPartyReservationEntry() { mixin(MGF("mAddPartyReservationEntry", "Function IpDrv.PartyBeaconHost.AddPartyReservationEntry")); }
			ScriptFunction UpdatePartyReservationEntry() { mixin(MGF("mUpdatePartyReservationEntry", "Function IpDrv.PartyBeaconHost.UpdatePartyReservationEntry")); }
			ScriptFunction GetExistingReservation() { mixin(MGF("mGetExistingReservation", "Function IpDrv.PartyBeaconHost.GetExistingReservation")); }
			ScriptFunction HandlePlayerLogout() { mixin(MGF("mHandlePlayerLogout", "Function IpDrv.PartyBeaconHost.HandlePlayerLogout")); }
			ScriptFunction DestroyBeacon() { mixin(MGF("mDestroyBeacon", "Function IpDrv.PartyBeaconHost.DestroyBeacon")); }
			ScriptFunction TellClientsToTravel() { mixin(MGF("mTellClientsToTravel", "Function IpDrv.PartyBeaconHost.TellClientsToTravel")); }
			ScriptFunction TellClientsHostIsReady() { mixin(MGF("mTellClientsHostIsReady", "Function IpDrv.PartyBeaconHost.TellClientsHostIsReady")); }
			ScriptFunction TellClientsHostHasCancelled() { mixin(MGF("mTellClientsHostHasCancelled", "Function IpDrv.PartyBeaconHost.TellClientsHostHasCancelled")); }
			ScriptFunction AreReservationsFull() { mixin(MGF("mAreReservationsFull", "Function IpDrv.PartyBeaconHost.AreReservationsFull")); }
			ScriptFunction RegisterPartyMembers() { mixin(MGF("mRegisterPartyMembers", "Function IpDrv.PartyBeaconHost.RegisterPartyMembers")); }
			ScriptFunction UnregisterPartyMembers() { mixin(MGF("mUnregisterPartyMembers", "Function IpDrv.PartyBeaconHost.UnregisterPartyMembers")); }
			ScriptFunction UnregisterParty() { mixin(MGF("mUnregisterParty", "Function IpDrv.PartyBeaconHost.UnregisterParty")); }
			ScriptFunction AppendReservationSkillsToSearch() { mixin(MGF("mAppendReservationSkillsToSearch", "Function IpDrv.PartyBeaconHost.AppendReservationSkillsToSearch")); }
			ScriptFunction GetPlayers() { mixin(MGF("mGetPlayers", "Function IpDrv.PartyBeaconHost.GetPlayers")); }
			ScriptFunction GetPartyLeaders() { mixin(MGF("mGetPartyLeaders", "Function IpDrv.PartyBeaconHost.GetPartyLeaders")); }
			ScriptFunction GetMaxAvailableTeamSize() { mixin(MGF("mGetMaxAvailableTeamSize", "Function IpDrv.PartyBeaconHost.GetMaxAvailableTeamSize")); }
		}
	}
	enum EPartyBeaconHostState : ubyte
	{
		PBHS_AllowReservations = 0,
		PBHS_DenyReservations = 1,
		PBHS_MAX = 2,
	}
	struct ClientBeaconConnection
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct IpDrv.PartyBeaconHost.ClientBeaconConnection")); }
		@property final auto ref
		{
			Pointer Socket() { mixin(MGPS("Pointer", 12)); }
			float ElapsedHeartbeatTime() { mixin(MGPS("float", 8)); }
			OnlineSubsystem.UniqueNetId PartyLeader() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PartyBeaconHost.ClientBeaconConnection) Clients() { mixin(MGPC("ScriptArray!(PartyBeaconHost.ClientBeaconConnection)", 104)); }
			ScriptArray!(PartyBeacon.PartyReservation) Reservations() { mixin(MGPC("ScriptArray!(PartyBeacon.PartyReservation)", 132)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnClientCancellationReceived__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReservationsFull__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReservationChange__Delegate'!
			PartyBeaconHost.EPartyBeaconHostState BeaconState() { mixin(MGPC("PartyBeaconHost.EPartyBeaconHostState", 168)); }
			int ReservedHostTeamNum() { mixin(MGPC("int", 160)); }
			int ForceTeamNum() { mixin(MGPC("int", 156)); }
			int ConnectionBacklog() { mixin(MGPC("int", 152)); }
			ScriptName OnlineSessionName() { mixin(MGPC("ScriptName", 144)); }
			int NumConsumedReservations() { mixin(MGPC("int", 128)); }
			int NumReservations() { mixin(MGPC("int", 124)); }
			int NumPlayersPerTeam() { mixin(MGPC("int", 120)); }
			int NumTeams() { mixin(MGPC("int", 116)); }
		}
		bool bBestFitTeamAssignment() { mixin(MGBPC(164, 0x1)); }
		bool bBestFitTeamAssignment(bool val) { mixin(MSBPC(164, 0x1)); }
	}
final:
	void OnClientCancellationReceived(OnlineSubsystem.UniqueNetId PartyLeader)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClientCancellationReceived, params.ptr, cast(void*)0);
	}
	void OnReservationsFull()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReservationsFull, cast(void*)0, cast(void*)0);
	}
	void OnReservationChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReservationChange, cast(void*)0, cast(void*)0);
	}
	void PauseReservationRequests(bool bPause)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		(cast(ScriptObject)this).ProcessEvent(Functions.PauseReservationRequests, params.ptr, cast(void*)0);
	}
	bool InitHostBeacon(int InNumTeams, int InNumPlayersPerTeam, int InNumReservations, ScriptName InSessionName, int* InForceTeamNum = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = InNumTeams;
		*cast(int*)&params[4] = InNumPlayersPerTeam;
		*cast(int*)&params[8] = InNumReservations;
		*cast(ScriptName*)&params[12] = InSessionName;
		if (InForceTeamNum !is null)
			*cast(int*)&params[20] = *InForceTeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitHostBeacon, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	PartyBeacon.EPartyReservationResult AddPartyReservationEntry(OnlineSubsystem.UniqueNetId PartyLeader, ref in ScriptArray!(PartyBeacon.PlayerReservation) PlayerMembers, int TeamNum, bool bIsHost)
	{
		ubyte params[29];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[8] = cast(ScriptArray!(PartyBeacon.PlayerReservation))PlayerMembers;
		*cast(int*)&params[20] = TeamNum;
		*cast(bool*)&params[24] = bIsHost;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPartyReservationEntry, params.ptr, cast(void*)0);
		return *cast(PartyBeacon.EPartyReservationResult*)&params[28];
	}
	PartyBeacon.EPartyReservationResult UpdatePartyReservationEntry(OnlineSubsystem.UniqueNetId PartyLeader, ref in ScriptArray!(PartyBeacon.PlayerReservation) PlayerMembers)
	{
		ubyte params[21];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[8] = cast(ScriptArray!(PartyBeacon.PlayerReservation))PlayerMembers;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePartyReservationEntry, params.ptr, cast(void*)0);
		return *cast(PartyBeacon.EPartyReservationResult*)&params[20];
	}
	int GetExistingReservation(ref in OnlineSubsystem.UniqueNetId PartyLeader)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = cast(OnlineSubsystem.UniqueNetId)PartyLeader;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetExistingReservation, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void HandlePlayerLogout(OnlineSubsystem.UniqueNetId PlayerID, bool bMaintainParty)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(bool*)&params[8] = bMaintainParty;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePlayerLogout, params.ptr, cast(void*)0);
	}
	void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyBeacon, cast(void*)0, cast(void*)0);
	}
	void TellClientsToTravel(ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.TellClientsToTravel, params.ptr, cast(void*)0);
	}
	void TellClientsHostIsReady()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TellClientsHostIsReady, cast(void*)0, cast(void*)0);
	}
	void TellClientsHostHasCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TellClientsHostHasCancelled, cast(void*)0, cast(void*)0);
	}
	bool AreReservationsFull()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AreReservationsFull, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RegisterPartyMembers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterPartyMembers, cast(void*)0, cast(void*)0);
	}
	void UnregisterPartyMembers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterPartyMembers, cast(void*)0, cast(void*)0);
	}
	void UnregisterParty(OnlineSubsystem.UniqueNetId PartyLeader)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterParty, params.ptr, cast(void*)0);
	}
	void AppendReservationSkillsToSearch(OnlineGameSearch Search)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineGameSearch*)params.ptr = Search;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendReservationSkillsToSearch, params.ptr, cast(void*)0);
	}
	void GetPlayers(ref ScriptArray!(OnlineSubsystem.UniqueNetId) Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayers, params.ptr, cast(void*)0);
		Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	void GetPartyLeaders(ref ScriptArray!(OnlineSubsystem.UniqueNetId) PartyLeaders)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = PartyLeaders;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPartyLeaders, params.ptr, cast(void*)0);
		PartyLeaders = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	int GetMaxAvailableTeamSize()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxAvailableTeamSize, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
