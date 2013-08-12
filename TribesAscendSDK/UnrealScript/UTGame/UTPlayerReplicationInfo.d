module UnrealScript.UTGame.UTPlayerReplicationInfo;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPlayerReplicationInfo")); }
	private static __gshared UTPlayerReplicationInfo mDefaultProperties;
	@property final static UTPlayerReplicationInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTPlayerReplicationInfo)("UTPlayerReplicationInfo UTGame.Default__UTPlayerReplicationInfo")); }
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
			ScriptFunction IncrementEventStat() { return mIncrementEventStat ? mIncrementEventStat : (mIncrementEventStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.IncrementEventStat")); }
			ScriptFunction GetFlag() { return mGetFlag ? mGetFlag : (mGetFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.GetFlag")); }
			ScriptFunction IncrementPickupStat() { return mIncrementPickupStat ? mIncrementPickupStat : (mIncrementPickupStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.IncrementPickupStat")); }
			ScriptFunction IncrementVehicleKillStat() { return mIncrementVehicleKillStat ? mIncrementVehicleKillStat : (mIncrementVehicleKillStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.IncrementVehicleKillStat")); }
			ScriptFunction IncrementSuicideStat() { return mIncrementSuicideStat ? mIncrementSuicideStat : (mIncrementSuicideStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.IncrementSuicideStat")); }
			ScriptFunction IncrementKillStat() { return mIncrementKillStat ? mIncrementKillStat : (mIncrementKillStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.IncrementKillStat")); }
			ScriptFunction IncrementDeathStat() { return mIncrementDeathStat ? mIncrementDeathStat : (mIncrementDeathStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.IncrementDeathStat")); }
			ScriptFunction GetCallSign() { return mGetCallSign ? mGetCallSign : (mGetCallSign = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.GetCallSign")); }
			ScriptFunction IsLocalPlayerPRI() { return mIsLocalPlayerPRI ? mIsLocalPlayerPRI : (mIsLocalPlayerPRI = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.IsLocalPlayerPRI")); }
			ScriptFunction ShouldBroadCastWelcomeMessage() { return mShouldBroadCastWelcomeMessage ? mShouldBroadCastWelcomeMessage : (mShouldBroadCastWelcomeMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.ShouldBroadCastWelcomeMessage")); }
			ScriptFunction StartDrivingStat() { return mStartDrivingStat ? mStartDrivingStat : (mStartDrivingStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.StartDrivingStat")); }
			ScriptFunction StopDrivingStat() { return mStopDrivingStat ? mStopDrivingStat : (mStopDrivingStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.StopDrivingStat")); }
			ScriptFunction StartPowerupTimeStat() { return mStartPowerupTimeStat ? mStartPowerupTimeStat : (mStartPowerupTimeStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.StartPowerupTimeStat")); }
			ScriptFunction StopPowerupTimeStat() { return mStopPowerupTimeStat ? mStopPowerupTimeStat : (mStopPowerupTimeStat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.StopPowerupTimeStat")); }
			ScriptFunction SetFlag() { return mSetFlag ? mSetFlag : (mSetFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.SetFlag")); }
			ScriptFunction IncrementKills() { return mIncrementKills ? mIncrementKills : (mIncrementKills = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.IncrementKills")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.Reset")); }
			ScriptFunction OverrideWith() { return mOverrideWith ? mOverrideWith : (mOverrideWith = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.OverrideWith")); }
			ScriptFunction CopyProperties() { return mCopyProperties ? mCopyProperties : (mCopyProperties = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.CopyProperties")); }
			ScriptFunction SeamlessTravelTo() { return mSeamlessTravelTo ? mSeamlessTravelTo : (mSeamlessTravelTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.SeamlessTravelTo")); }
			ScriptFunction AllowClientToTeleport() { return mAllowClientToTeleport ? mAllowClientToTeleport : (mAllowClientToTeleport = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.AllowClientToTeleport")); }
			ScriptFunction ServerTeleportToActor() { return mServerTeleportToActor ? mServerTeleportToActor : (mServerTeleportToActor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.ServerTeleportToActor")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.ReplicatedEvent")); }
			ScriptFunction ShowMidGameMenu() { return mShowMidGameMenu ? mShowMidGameMenu : (mShowMidGameMenu = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.ShowMidGameMenu")); }
			ScriptFunction AttemptMidGameMenu() { return mAttemptMidGameMenu ? mAttemptMidGameMenu : (mAttemptMidGameMenu = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPlayerReplicationInfo.AttemptMidGameMenu")); }
		}
	}
	struct IntStat
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTPlayerReplicationInfo.IntStat")); }
		@property final auto ref
		{
			int StatValue() { return *cast(int*)(cast(size_t)&this + 8); }
			ScriptName StatName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct TimeStat
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTPlayerReplicationInfo.TimeStat")); }
		@property final auto ref
		{
			float CurrentStart() { return *cast(float*)(cast(size_t)&this + 12); }
			float TotalTime() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName StatName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptClass CharClassInfo() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 700); }
			ScriptClass VoiceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 676); }
			Texture CharPortrait() { return *cast(Texture*)(cast(size_t)cast(void*)this + 704); }
			UTPlayerReplicationInfo LastKillerPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 680); }
			int spree() { return *cast(int*)(cast(size_t)cast(void*)this + 656); }
			UTSquadAI Squad() { return *cast(UTSquadAI*)(cast(size_t)cast(void*)this + 668); }
			int MultiKillLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 660); }
			float LastKillTime() { return *cast(float*)(cast(size_t)cast(void*)this + 664); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) KillStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 708); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) DeathStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 720); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) SuicideStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 732); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) EventStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 744); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) VehicleKillStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 756); }
			ScriptArray!(UTPlayerReplicationInfo.IntStat) PickupStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 768); }
			ScriptArray!(UTPlayerReplicationInfo.TimeStat) DrivingStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.TimeStat)*)(cast(size_t)cast(void*)this + 780); }
			ScriptArray!(UTPlayerReplicationInfo.TimeStat) PowerupTimeStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.TimeStat)*)(cast(size_t)cast(void*)this + 792); }
			ubyte OrdersIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 900); }
			ScriptString OrdersString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 804); }
			Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 688); }
			UObject.Color DefaultHudColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 684); }
			UTCarriedObject HasFlag() { return *cast(UTCarriedObject*)(cast(size_t)cast(void*)this + 672); }
		}
		bool bHasFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1) != 0; }
		bool bHasFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1; } return val; }
		bool bIsFemale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x4) != 0; }
		bool bIsFemale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x4; } return val; }
		bool bHolding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x2) != 0; }
		bool bHolding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x2; } return val; }
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
	bool ShouldBroadCastWelcomeMessage(bool bExiting)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bExiting;
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
	bool AllowClientToTeleport(Actor DestinationActor, UTPawn* OwnerPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = DestinationActor;
		*cast(UTPawn*)&params[4] = *OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowClientToTeleport, params.ptr, cast(void*)0);
		*OwnerPawn = *cast(UTPawn*)&params[4];
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
