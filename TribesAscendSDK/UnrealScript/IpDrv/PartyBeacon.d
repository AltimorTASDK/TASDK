module UnrealScript.IpDrv.PartyBeacon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface PartyBeacon : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.PartyBeacon")()); }
	private static __gshared PartyBeacon mDefaultProperties;
	@property final static PartyBeacon DefaultProperties() { mixin(MGDPC!(PartyBeacon, "PartyBeacon IpDrv.Default__PartyBeacon")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnDestroyComplete;
			ScriptFunction mDestroyBeacon;
		}
		public @property static final
		{
			ScriptFunction OnDestroyComplete() { mixin(MGF!("mOnDestroyComplete", "Function IpDrv.PartyBeacon.OnDestroyComplete")()); }
			ScriptFunction DestroyBeacon() { mixin(MGF!("mDestroyBeacon", "Function IpDrv.PartyBeacon.DestroyBeacon")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct IpDrv.PartyBeacon.PlayerReservation")()); }
		@property final auto ref
		{
			float ElapsedSessionTime() { mixin(MGPS!(float, 32)()); }
			UObject.Double Sigma() { mixin(MGPS!(UObject.Double, 24)()); }
			UObject.Double Mu() { mixin(MGPS!(UObject.Double, 16)()); }
			int XpLevel() { mixin(MGPS!(int, 12)()); }
			int Skill() { mixin(MGPS!(int, 8)()); }
			OnlineSubsystem.UniqueNetId NetId() { mixin(MGPS!(OnlineSubsystem.UniqueNetId, 0)()); }
		}
	}
	struct PartyReservation
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct IpDrv.PartyBeacon.PartyReservation")()); }
		@property final auto ref
		{
			ScriptArray!(PartyBeacon.PlayerReservation) PartyMembers() { mixin(MGPS!(ScriptArray!(PartyBeacon.PlayerReservation), 12)()); }
			OnlineSubsystem.UniqueNetId PartyLeader() { mixin(MGPS!(OnlineSubsystem.UniqueNetId, 4)()); }
			int TeamNum() { mixin(MGPS!(int, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnDestroyComplete__Delegate'!
			ScriptName BeaconName() { mixin(MGPC!(ScriptName, 84)()); }
			float ElapsedHeartbeatTime() { mixin(MGPC!(float, 80)()); }
			float HeartbeatTimeout() { mixin(MGPC!(float, 76)()); }
			UObject.Pointer Socket() { mixin(MGPC!(UObject.Pointer, 68)()); }
			int PartyBeaconPort() { mixin(MGPC!(int, 64)()); }
			UObject.Pointer VfTable_FTickableObject() { mixin(MGPC!(UObject.Pointer, 60)()); }
		}
		bool bShouldTick() { mixin(MGBPC!(72, 0x4)()); }
		bool bShouldTick(bool val) { mixin(MSBPC!(72, 0x4)()); }
		bool bWantsDeferredDestroy() { mixin(MGBPC!(72, 0x2)()); }
		bool bWantsDeferredDestroy(bool val) { mixin(MSBPC!(72, 0x2)()); }
		bool bIsInTick() { mixin(MGBPC!(72, 0x1)()); }
		bool bIsInTick(bool val) { mixin(MSBPC!(72, 0x1)()); }
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
