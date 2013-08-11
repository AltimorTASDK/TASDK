module UnrealScript.IpDrv.PartyBeaconHost;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.IpDrv.PartyBeacon;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.OnlineGameSearch;

extern(C++) interface PartyBeaconHost : PartyBeacon
{
public extern(D):
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
		@property final auto ref
		{
			UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)&this + 12); }
			float ElapsedHeartbeatTime() { return *cast(float*)(cast(size_t)&this + 8); }
			OnlineSubsystem.UniqueNetId PartyLeader() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PartyBeaconHost.ClientBeaconConnection) Clients() { return *cast(ScriptArray!(PartyBeaconHost.ClientBeaconConnection)*)(cast(size_t)cast(void*)this + 104); }
			ScriptArray!(PartyBeacon.PartyReservation) Reservations() { return *cast(ScriptArray!(PartyBeacon.PartyReservation)*)(cast(size_t)cast(void*)this + 132); }
			PartyBeaconHost.EPartyBeaconHostState BeaconState() { return *cast(PartyBeaconHost.EPartyBeaconHostState*)(cast(size_t)cast(void*)this + 168); }
			int ReservedHostTeamNum() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			int ForceTeamNum() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			int ConnectionBacklog() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
			ScriptName OnlineSessionName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 144); }
			int NumConsumedReservations() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
			int NumReservations() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			int NumPlayersPerTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
			int NumTeams() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
		}
		bool bBestFitTeamAssignment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
		bool bBestFitTeamAssignment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	}
final:
	void OnClientCancellationReceived(OnlineSubsystem.UniqueNetId PartyLeader)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33961], params.ptr, cast(void*)0);
	}
	void OnReservationsFull()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33963], cast(void*)0, cast(void*)0);
	}
	void OnReservationChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33965], cast(void*)0, cast(void*)0);
	}
	void PauseReservationRequests(bool bPause)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33977], params.ptr, cast(void*)0);
	}
	bool InitHostBeacon(int InNumTeams, int InNumPlayersPerTeam, int InNumReservations, ScriptName InSessionName, int InForceTeamNum)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = InNumTeams;
		*cast(int*)&params[4] = InNumPlayersPerTeam;
		*cast(int*)&params[8] = InNumReservations;
		*cast(ScriptName*)&params[12] = InSessionName;
		*cast(int*)&params[20] = InForceTeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33979], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	PartyBeacon.EPartyReservationResult AddPartyReservationEntry(OnlineSubsystem.UniqueNetId PartyLeader, ScriptArray!(PartyBeacon.PlayerReservation)* PlayerMembers, int TeamNum, bool bIsHost)
	{
		ubyte params[29];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[8] = *PlayerMembers;
		*cast(int*)&params[20] = TeamNum;
		*cast(bool*)&params[24] = bIsHost;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33986], params.ptr, cast(void*)0);
		*PlayerMembers = *cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[8];
		return *cast(PartyBeacon.EPartyReservationResult*)&params[28];
	}
	PartyBeacon.EPartyReservationResult UpdatePartyReservationEntry(OnlineSubsystem.UniqueNetId PartyLeader, ScriptArray!(PartyBeacon.PlayerReservation)* PlayerMembers)
	{
		ubyte params[21];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		*cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[8] = *PlayerMembers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33993], params.ptr, cast(void*)0);
		*PlayerMembers = *cast(ScriptArray!(PartyBeacon.PlayerReservation)*)&params[8];
		return *cast(PartyBeacon.EPartyReservationResult*)&params[20];
	}
	int GetExistingReservation(OnlineSubsystem.UniqueNetId* PartyLeader)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *PartyLeader;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33998], params.ptr, cast(void*)0);
		*PartyLeader = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(int*)&params[8];
	}
	void HandlePlayerLogout(OnlineSubsystem.UniqueNetId PlayerID, bool bMaintainParty)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerID;
		*cast(bool*)&params[8] = bMaintainParty;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34001], params.ptr, cast(void*)0);
	}
	void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34005], cast(void*)0, cast(void*)0);
	}
	void TellClientsToTravel(ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34006], params.ptr, cast(void*)0);
	}
	void TellClientsHostIsReady()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34010], cast(void*)0, cast(void*)0);
	}
	void TellClientsHostHasCancelled()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34011], cast(void*)0, cast(void*)0);
	}
	bool AreReservationsFull()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34012], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RegisterPartyMembers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34014], cast(void*)0, cast(void*)0);
	}
	void UnregisterPartyMembers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34022], cast(void*)0, cast(void*)0);
	}
	void UnregisterParty(OnlineSubsystem.UniqueNetId PartyLeader)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PartyLeader;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34027], params.ptr, cast(void*)0);
	}
	void AppendReservationSkillsToSearch(OnlineGameSearch Search)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineGameSearch*)params.ptr = Search;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34033], params.ptr, cast(void*)0);
	}
	void GetPlayers(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34035], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	void GetPartyLeaders(ScriptArray!(OnlineSubsystem.UniqueNetId)* PartyLeaders)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *PartyLeaders;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34041], params.ptr, cast(void*)0);
		*PartyLeaders = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
	}
	int GetMaxAvailableTeamSize()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34045], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
