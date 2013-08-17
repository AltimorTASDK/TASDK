module UnrealScript.UTGame.UTPlayerReplicationInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.Engine.Texture;

extern(C++) interface UTPlayerReplicationInfo : PlayerReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTPlayerReplicationInfo")); }
	private static __gshared UTPlayerReplicationInfo mDefaultProperties;
	@property final static UTPlayerReplicationInfo DefaultProperties() { mixin(MGDPC("UTPlayerReplicationInfo", "UTPlayerReplicationInfo UTGame.Default__UTPlayerReplicationInfo")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIncrementEventStat;
			ScriptFunction mGetFlag;
			ScriptFunction mIncrementPickupStat;
			ScriptFunction mIncrementVehicleKillStat;
			ScriptFunction mIncrementSuicideStat;
			ScriptFunction mIncrementKillStat;
			ScriptFunction mIncrementDeathStat;
			ScriptFunction mGetCallSign;
			ScriptFunction mIsLocalPlayerPRI;
			ScriptFunction mShouldBroadCastWelcomeMessage;
			ScriptFunction mStartDrivingStat;
			ScriptFunction mStopDrivingStat;
			ScriptFunction mStartPowerupTimeStat;
			ScriptFunction mStopPowerupTimeStat;
			ScriptFunction mSetFlag;
			ScriptFunction mIncrementKills;
			ScriptFunction mReset;
			ScriptFunction mOverrideWith;
			ScriptFunction mCopyProperties;
			ScriptFunction mSeamlessTravelTo;
			ScriptFunction mAllowClientToTeleport;
			ScriptFunction mServerTeleportToActor;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mShowMidGameMenu;
			ScriptFunction mAttemptMidGameMenu;
		}
		public @property static final
		{
			ScriptFunction IncrementEventStat() { mixin(MGF("mIncrementEventStat", "Function UTGame.UTPlayerReplicationInfo.IncrementEventStat")); }
			ScriptFunction GetFlag() { mixin(MGF("mGetFlag", "Function UTGame.UTPlayerReplicationInfo.GetFlag")); }
			ScriptFunction IncrementPickupStat() { mixin(MGF("mIncrementPickupStat", "Function UTGame.UTPlayerReplicationInfo.IncrementPickupStat")); }
			ScriptFunction IncrementVehicleKillStat() { mixin(MGF("mIncrementVehicleKillStat", "Function UTGame.UTPlayerReplicationInfo.IncrementVehicleKillStat")); }
			ScriptFunction IncrementSuicideStat() { mixin(MGF("mIncrementSuicideStat", "Function UTGame.UTPlayerReplicationInfo.IncrementSuicideStat")); }
			ScriptFunction IncrementKillStat() { mixin(MGF("mIncrementKillStat", "Function UTGame.UTPlayerReplicationInfo.IncrementKillStat")); }
			ScriptFunction IncrementDeathStat() { mixin(MGF("mIncrementDeathStat", "Function UTGame.UTPlayerReplicationInfo.IncrementDeathStat")); }
			ScriptFunction GetCallSign() { mixin(MGF("mGetCallSign", "Function UTGame.UTPlayerReplicationInfo.GetCallSign")); }
			ScriptFunction IsLocalPlayerPRI() { mixin(MGF("mIsLocalPlayerPRI", "Function UTGame.UTPlayerReplicationInfo.IsLocalPlayerPRI")); }
			ScriptFunction ShouldBroadCastWelcomeMessage() { mixin(MGF("mShouldBroadCastWelcomeMessage", "Function UTGame.UTPlayerReplicationInfo.ShouldBroadCastWelcomeMessage")); }
			ScriptFunction StartDrivingStat() { mixin(MGF("mStartDrivingStat", "Function UTGame.UTPlayerReplicationInfo.StartDrivingStat")); }
			ScriptFunction StopDrivingStat() { mixin(MGF("mStopDrivingStat", "Function UTGame.UTPlayerReplicationInfo.StopDrivingStat")); }
			ScriptFunction StartPowerupTimeStat() { mixin(MGF("mStartPowerupTimeStat", "Function UTGame.UTPlayerReplicationInfo.StartPowerupTimeStat")); }
			ScriptFunction StopPowerupTimeStat() { mixin(MGF("mStopPowerupTimeStat", "Function UTGame.UTPlayerReplicationInfo.StopPowerupTimeStat")); }
			ScriptFunction SetFlag() { mixin(MGF("mSetFlag", "Function UTGame.UTPlayerReplicationInfo.SetFlag")); }
			ScriptFunction IncrementKills() { mixin(MGF("mIncrementKills", "Function UTGame.UTPlayerReplicationInfo.IncrementKills")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function UTGame.UTPlayerReplicationInfo.Reset")); }
			ScriptFunction OverrideWith() { mixin(MGF("mOverrideWith", "Function UTGame.UTPlayerReplicationInfo.OverrideWith")); }
			ScriptFunction CopyProperties() { mixin(MGF("mCopyProperties", "Function UTGame.UTPlayerReplicationInfo.CopyProperties")); }
			ScriptFunction SeamlessTravelTo() { mixin(MGF("mSeamlessTravelTo", "Function UTGame.UTPlayerReplicationInfo.SeamlessTravelTo")); }
			ScriptFunction AllowClientToTeleport() { mixin(MGF("mAllowClientToTeleport", "Function UTGame.UTPlayerReplicationInfo.AllowClientToTeleport")); }
			ScriptFunction ServerTeleportToActor() { mixin(MGF("mServerTeleportToActor", "Function UTGame.UTPlayerReplicationInfo.ServerTeleportToActor")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTPlayerReplicationInfo.ReplicatedEvent")); }
			ScriptFunction ShowMidGameMenu() { mixin(MGF("mShowMidGameMenu", "Function UTGame.UTPlayerReplicationInfo.ShowMidGameMenu")); }
			ScriptFunction AttemptMidGameMenu() { mixin(MGF("mAttemptMidGameMenu", "Function UTGame.UTPlayerReplicationInfo.AttemptMidGameMenu")); }
		}
	}
	struct IntStat
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTPlayerReplicationInfo.IntStat")); }
		@property final auto ref
		{
			int StatValue() { mixin(MGPS("int", 8)); }
			ScriptName StatName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct TimeStat
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTPlayerReplicationInfo.TimeStat")); }
		@property final auto ref
		{
			float CurrentStart() { mixin(MGPS("float", 12)); }
			float TotalTime() { mixin(MGPS("float", 8)); }
			ScriptName StatName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptClass CharClassInfo() { mixin(MGPC("ScriptClass", 700)); }
			ScriptClass VoiceClass() { mixin(MGPC("ScriptClass", 676)); }
			Texture CharPortrait() { mixin(MGPC("Texture", 704)); }
			UTPlayerReplicationInfo LastKillerPRI() { mixin(MGPC("UTPlayerReplicationInfo", 680)); }
			int spree() { mixin(MGPC("int", 656)); }
			UTSquadAI Squad() { mixin(MGPC("UTSquadAI", 668)); }
			int MultiKillLevel() { mixin(MGPC("int", 660)); }
			float LastKillTime() { mixin(MGPC("float", 664)); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) KillStats() { mixin(MGPC("ScriptArray!(UTPlayerReplicationInfo.IntStat)", 708)); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) DeathStats() { mixin(MGPC("ScriptArray!(UTPlayerReplicationInfo.IntStat)", 720)); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) SuicideStats() { mixin(MGPC("ScriptArray!(UTPlayerReplicationInfo.IntStat)", 732)); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) EventStats() { mixin(MGPC("ScriptArray!(UTPlayerReplicationInfo.IntStat)", 744)); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) VehicleKillStats() { mixin(MGPC("ScriptArray!(UTPlayerReplicationInfo.IntStat)", 756)); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) PickupStats() { mixin(MGPC("ScriptArray!(UTPlayerReplicationInfo.IntStat)", 768)); }
			ScriptArray!(UTPlayerReplicationInfo.TimeStat) DrivingStats() { mixin(MGPC("ScriptArray!(UTPlayerReplicationInfo.TimeStat)", 780)); }
			ScriptArray!(UTPlayerReplicationInfo.TimeStat) PowerupTimeStats() { mixin(MGPC("ScriptArray!(UTPlayerReplicationInfo.TimeStat)", 792)); }
			ubyte OrdersIndex() { mixin(MGPC("ubyte", 900)); }
			ScriptString OrdersString() { mixin(MGPC("ScriptString", 804)); }
			Vector HUDLocation() { mixin(MGPC("Vector", 688)); }
			UObject.Color DefaultHudColor() { mixin(MGPC("UObject.Color", 684)); }
			UTCarriedObject HasFlag() { mixin(MGPC("UTCarriedObject", 672)); }
		}
		bool bHasFlag() { mixin(MGBPC(652, 0x1)); }
		bool bHasFlag(bool val) { mixin(MSBPC(652, 0x1)); }
		bool bIsFemale() { mixin(MGBPC(652, 0x4)); }
		bool bIsFemale(bool val) { mixin(MSBPC(652, 0x4)); }
		bool bHolding() { mixin(MGBPC(652, 0x2)); }
		bool bHolding(bool val) { mixin(MSBPC(652, 0x2)); }
	}
final:
	int IncrementEventStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementEventStat, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlag, params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	int IncrementPickupStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementPickupStat, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int IncrementVehicleKillStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementVehicleKillStat, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int IncrementSuicideStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementSuicideStat, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int IncrementKillStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementKillStat, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int IncrementDeathStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementDeathStat, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptString GetCallSign()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCallSign, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool IsLocalPlayerPRI()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocalPlayerPRI, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldBroadCastWelcomeMessage(bool* bExiting = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bExiting !is null)
			*cast(bool*)params.ptr = *bExiting;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBroadCastWelcomeMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StartDrivingStat(ScriptName NewStatName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartDrivingStat, params.ptr, cast(void*)0);
	}
	void StopDrivingStat(ScriptName NewStatName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopDrivingStat, params.ptr, cast(void*)0);
	}
	void StartPowerupTimeStat(ScriptName NewStatName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartPowerupTimeStat, params.ptr, cast(void*)0);
	}
	void StopPowerupTimeStat(ScriptName NewStatName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopPowerupTimeStat, params.ptr, cast(void*)0);
	}
	void SetFlag(UTCarriedObject NewFlag)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = NewFlag;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlag, params.ptr, cast(void*)0);
	}
	void IncrementKills(bool bEnemyKill)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnemyKill;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementKills, params.ptr, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void OverrideWith(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideWith, params.ptr, cast(void*)0);
	}
	void CopyProperties(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.CopyProperties, params.ptr, cast(void*)0);
	}
	void SeamlessTravelTo(PlayerReplicationInfo NewPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewPRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeamlessTravelTo, params.ptr, cast(void*)0);
	}
	bool AllowClientToTeleport(Actor DestinationActor, ref UTPawn OwnerPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = DestinationActor;
		*cast(UTPawn*)&params[4] = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowClientToTeleport, params.ptr, cast(void*)0);
		OwnerPawn = *cast(UTPawn*)&params[4];
		return *cast(bool*)&params[8];
	}
	void ServerTeleportToActor(Actor DestinationActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = DestinationActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerTeleportToActor, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void ShowMidGameMenu(bool bInitial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInitial;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMidGameMenu, params.ptr, cast(void*)0);
	}
	bool AttemptMidGameMenu()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttemptMidGameMenu, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
