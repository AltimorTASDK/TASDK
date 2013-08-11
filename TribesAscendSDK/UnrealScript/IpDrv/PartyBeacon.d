module UnrealScript.IpDrv.PartyBeacon;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface PartyBeacon : UObject
{
	enum EReservationPacketType : ubyte
	{
		RPT_UnknownPacketType = 0,
		RPT_ClientReservationRequest = 1,
		RPT_ClientReservationUpdateRequest = 2,
		RPT_ClientCancellationRequest = 3,
		RPT_HostReservationResponse = 4,
		RPT_HostReservationCountUpdate = 5,
		RPT_HostTravelRequest = 6,
		RPT_HostIsReady = 7,
		RPT_HostHasCancelled = 8,
		RPT_Heartbeat = 9,
		RPT_MAX = 10,
	}
	enum EPartyReservationResult : ubyte
	{
		PRR_GeneralError = 0,
		PRR_PartyLimitReached = 1,
		PRR_IncorrectPlayerCount = 2,
		PRR_RequestTimedOut = 3,
		PRR_ReservationDuplicate = 4,
		PRR_ReservationNotFound = 5,
		PRR_ReservationAccepted = 6,
		PRR_ReservationDenied = 7,
		PRR_MAX = 8,
	}
	struct PlayerReservation
	{
		public @property final auto ref float ElapsedSessionTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __ElapsedSessionTime[4];
		public @property final auto ref UObject.Double Sigma() { return *cast(UObject.Double*)(cast(size_t)&this + 24); }
		private ubyte __Sigma[8];
		public @property final auto ref UObject.Double Mu() { return *cast(UObject.Double*)(cast(size_t)&this + 16); }
		private ubyte __Mu[8];
		public @property final auto ref int XpLevel() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __XpLevel[4];
		public @property final auto ref int Skill() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Skill[4];
		public @property final auto ref OnlineSubsystem.UniqueNetId NetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __NetId[8];
	}
	struct PartyReservation
	{
		public @property final auto ref ScriptArray!(PartyBeacon.PlayerReservation) PartyMembers() { return *cast(ScriptArray!(PartyBeacon.PlayerReservation)*)(cast(size_t)&this + 12); }
		private ubyte __PartyMembers[12];
		public @property final auto ref OnlineSubsystem.UniqueNetId PartyLeader() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 4); }
		private ubyte __PartyLeader[8];
		public @property final auto ref int TeamNum() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __TeamNum[4];
	}
	public @property final auto ref ScriptName BeaconName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float ElapsedHeartbeatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float HeartbeatTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bShouldTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
	public @property final bool bShouldTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
	public @property final bool bWantsDeferredDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool bWantsDeferredDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool bIsInTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bIsInTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int PartyBeaconPort() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	final void OnDestroyComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33885], cast(void*)0, cast(void*)0);
	}
	final void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33909], cast(void*)0, cast(void*)0);
	}
}
