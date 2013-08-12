module UnrealScript.IpDrv.PartyBeacon;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface PartyBeacon : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.PartyBeacon")); }
	private static __gshared PartyBeacon mDefaultProperties;
	@property final static PartyBeacon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PartyBeacon)("PartyBeacon IpDrv.Default__PartyBeacon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnDestroyComplete;
			ScriptFunction mDestroyBeacon;
		}
		public @property static final
		{
			ScriptFunction OnDestroyComplete() { return mOnDestroyComplete ? mOnDestroyComplete : (mOnDestroyComplete = ScriptObject.Find!(ScriptFunction)("Function IpDrv.PartyBeacon.OnDestroyComplete")); }
			ScriptFunction DestroyBeacon() { return mDestroyBeacon ? mDestroyBeacon : (mDestroyBeacon = ScriptObject.Find!(ScriptFunction)("Function IpDrv.PartyBeacon.DestroyBeacon")); }
		}
	}
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
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.PartyBeacon.PlayerReservation")); }
		@property final auto ref
		{
			float ElapsedSessionTime() { return *cast(float*)(cast(size_t)&this + 32); }
			UObject.Double Sigma() { return *cast(UObject.Double*)(cast(size_t)&this + 24); }
			UObject.Double Mu() { return *cast(UObject.Double*)(cast(size_t)&this + 16); }
			int XpLevel() { return *cast(int*)(cast(size_t)&this + 12); }
			int Skill() { return *cast(int*)(cast(size_t)&this + 8); }
			OnlineSubsystem.UniqueNetId NetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		}
	}
	struct PartyReservation
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.PartyBeacon.PartyReservation")); }
		@property final auto ref
		{
			ScriptArray!(PartyBeacon.PlayerReservation) PartyMembers() { return *cast(ScriptArray!(PartyBeacon.PlayerReservation)*)(cast(size_t)&this + 12); }
			OnlineSubsystem.UniqueNetId PartyLeader() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 4); }
			int TeamNum() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName BeaconName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 84); }
			float ElapsedHeartbeatTime() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float HeartbeatTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			UObject.Pointer Socket() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
			int PartyBeaconPort() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bShouldTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
		bool bShouldTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
		bool bWantsDeferredDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
		bool bWantsDeferredDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
		bool bIsInTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bIsInTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
final:
	void OnDestroyComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDestroyComplete, cast(void*)0, cast(void*)0);
	}
	void DestroyBeacon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyBeacon, cast(void*)0, cast(void*)0);
	}
}
