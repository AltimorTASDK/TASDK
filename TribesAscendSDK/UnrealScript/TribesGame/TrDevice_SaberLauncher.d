module UnrealScript.TribesGame.TrDevice_SaberLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrSeekingMissileManager;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_SaberLauncher : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_SaberLauncher")); }
	private static __gshared TrDevice_SaberLauncher mDefaultProperties;
	@property final static TrDevice_SaberLauncher DefaultProperties() { mixin(MGDPC("TrDevice_SaberLauncher", "TrDevice_SaberLauncher TribesGame.Default__TrDevice_SaberLauncher")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mResumeTargeting;
			ScriptFunction mSuspendTargeting;
			ScriptFunction mDestroyed;
			ScriptFunction mTargetInsideReticle;
			ScriptFunction mIsActorInLOS;
			ScriptFunction mValidateTrackingTarget;
			ScriptFunction mSetTargetActorMissileLockState;
			ScriptFunction mSetNewTrackingTarget;
			ScriptFunction mTargetLockAcquired;
			ScriptFunction mTick;
			ScriptFunction mFireAmmunition;
			ScriptFunction mPerformTargeting;
			ScriptFunction mOnSwitchAwayFromWeapon;
			ScriptFunction mOnSwitchToWeapon;
			ScriptFunction mHolderEnteredVehicle;
			ScriptFunction mHolderExitedVehicle;
			ScriptFunction mProjectileFire;
			ScriptFunction mServerTryNewPossibleTarget;
			ScriptFunction mBeginFire;
			ScriptFunction mStartFire;
			ScriptFunction mGetSeekingMissileManager;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function TribesGame.TrDevice_SaberLauncher.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrDevice_SaberLauncher.PostBeginPlay")); }
			ScriptFunction ResumeTargeting() { mixin(MGF("mResumeTargeting", "Function TribesGame.TrDevice_SaberLauncher.ResumeTargeting")); }
			ScriptFunction SuspendTargeting() { mixin(MGF("mSuspendTargeting", "Function TribesGame.TrDevice_SaberLauncher.SuspendTargeting")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function TribesGame.TrDevice_SaberLauncher.Destroyed")); }
			ScriptFunction TargetInsideReticle() { mixin(MGF("mTargetInsideReticle", "Function TribesGame.TrDevice_SaberLauncher.TargetInsideReticle")); }
			ScriptFunction IsActorInLOS() { mixin(MGF("mIsActorInLOS", "Function TribesGame.TrDevice_SaberLauncher.IsActorInLOS")); }
			ScriptFunction ValidateTrackingTarget() { mixin(MGF("mValidateTrackingTarget", "Function TribesGame.TrDevice_SaberLauncher.ValidateTrackingTarget")); }
			ScriptFunction SetTargetActorMissileLockState() { mixin(MGF("mSetTargetActorMissileLockState", "Function TribesGame.TrDevice_SaberLauncher.SetTargetActorMissileLockState")); }
			ScriptFunction SetNewTrackingTarget() { mixin(MGF("mSetNewTrackingTarget", "Function TribesGame.TrDevice_SaberLauncher.SetNewTrackingTarget")); }
			ScriptFunction TargetLockAcquired() { mixin(MGF("mTargetLockAcquired", "Function TribesGame.TrDevice_SaberLauncher.TargetLockAcquired")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrDevice_SaberLauncher.Tick")); }
			ScriptFunction FireAmmunition() { mixin(MGF("mFireAmmunition", "Function TribesGame.TrDevice_SaberLauncher.FireAmmunition")); }
			ScriptFunction PerformTargeting() { mixin(MGF("mPerformTargeting", "Function TribesGame.TrDevice_SaberLauncher.PerformTargeting")); }
			ScriptFunction OnSwitchAwayFromWeapon() { mixin(MGF("mOnSwitchAwayFromWeapon", "Function TribesGame.TrDevice_SaberLauncher.OnSwitchAwayFromWeapon")); }
			ScriptFunction OnSwitchToWeapon() { mixin(MGF("mOnSwitchToWeapon", "Function TribesGame.TrDevice_SaberLauncher.OnSwitchToWeapon")); }
			ScriptFunction HolderEnteredVehicle() { mixin(MGF("mHolderEnteredVehicle", "Function TribesGame.TrDevice_SaberLauncher.HolderEnteredVehicle")); }
			ScriptFunction HolderExitedVehicle() { mixin(MGF("mHolderExitedVehicle", "Function TribesGame.TrDevice_SaberLauncher.HolderExitedVehicle")); }
			ScriptFunction ProjectileFire() { mixin(MGF("mProjectileFire", "Function TribesGame.TrDevice_SaberLauncher.ProjectileFire")); }
			ScriptFunction ServerTryNewPossibleTarget() { mixin(MGF("mServerTryNewPossibleTarget", "Function TribesGame.TrDevice_SaberLauncher.ServerTryNewPossibleTarget")); }
			ScriptFunction BeginFire() { mixin(MGF("mBeginFire", "Function TribesGame.TrDevice_SaberLauncher.BeginFire")); }
			ScriptFunction StartFire() { mixin(MGF("mStartFire", "Function TribesGame.TrDevice_SaberLauncher.StartFire")); }
			ScriptFunction GetSeekingMissileManager() { mixin(MGF("mGetSeekingMissileManager", "Function TribesGame.TrDevice_SaberLauncher.GetSeekingMissileManager")); }
		}
	}
	static struct Active
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDevice_SaberLauncher.Active")); }
	}
	@property final
	{
		auto ref
		{
			TrPlayerController m_TargetController() { mixin(MGPC("TrPlayerController", 2212)); }
			ubyte r_nFired() { mixin(MGPC("ubyte", 2208)); }
			float m_fLockingTargetTimestamp() { mixin(MGPC("float", 2204)); }
			float m_fTimeBeforeVictimKnowsMissileIsTargeting() { mixin(MGPC("float", 2200)); }
			float m_fGroundCheckDistance() { mixin(MGPC("float", 2196)); }
			float m_fPotentialTargetLockOnDist() { mixin(MGPC("float", 2192)); }
			float m_fReticuleLockOnDist() { mixin(MGPC("float", 2188)); }
			float m_fLockRetainSeconds() { mixin(MGPC("float", 2184)); }
			float m_fRestoreAimHelpRadius() { mixin(MGPC("float", 2180)); }
			float m_fMinCosineAcquireTarget() { mixin(MGPC("float", 2176)); }
			float m_fAcquireTargetMaxAngle() { mixin(MGPC("float", 2172)); }
			float m_fRetainTargetMaxAngle() { mixin(MGPC("float", 2168)); }
			float m_fMinCosineRetainTarget() { mixin(MGPC("float", 2164)); }
			Actor m_Target() { mixin(MGPC("Actor", 2156)); }
			float m_fPreLockTime() { mixin(MGPC("float", 2152)); }
			float m_fTargetSightTime() { mixin(MGPC("float", 2148)); }
		}
		bool r_bTargetLocked() { mixin(MGBPC(2160, 0x1)); }
		bool r_bTargetLocked(bool val) { mixin(MSBPC(2160, 0x1)); }
		bool m_bDebugMode() { mixin(MGBPC(2160, 0x4)); }
		bool m_bDebugMode(bool val) { mixin(MSBPC(2160, 0x4)); }
		bool m_bRestoreAimingHelp() { mixin(MGBPC(2160, 0x2)); }
		bool m_bRestoreAimingHelp(bool val) { mixin(MSBPC(2160, 0x2)); }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ResumeTargeting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResumeTargeting, cast(void*)0, cast(void*)0);
	}
	void SuspendTargeting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SuspendTargeting, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	bool TargetInsideReticle(Actor Target, bool initialAcquire)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(bool*)&params[4] = initialAcquire;
		(cast(ScriptObject)this).ProcessEvent(Functions.TargetInsideReticle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsActorInLOS(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsActorInLOS, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ValidateTrackingTarget(Actor Target, bool initialAcquire)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(bool*)&params[4] = initialAcquire;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidateTrackingTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SetTargetActorMissileLockState(Actor Target, TrObject.EMissileLock lockValue)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(TrObject.EMissileLock*)&params[4] = lockValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTargetActorMissileLockState, params.ptr, cast(void*)0);
	}
	void SetNewTrackingTarget(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNewTrackingTarget, params.ptr, cast(void*)0);
	}
	void TargetLockAcquired()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TargetLockAcquired, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	void PerformTargeting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformTargeting, cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchAwayFromWeapon, cast(void*)0, cast(void*)0);
	}
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchToWeapon, cast(void*)0, cast(void*)0);
	}
	void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HolderEnteredVehicle, cast(void*)0, cast(void*)0);
	}
	void HolderExitedVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HolderExitedVehicle, cast(void*)0, cast(void*)0);
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	void ServerTryNewPossibleTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerTryNewPossibleTarget, cast(void*)0, cast(void*)0);
	}
	void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginFire, params.ptr, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	TrSeekingMissileManager GetSeekingMissileManager()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeekingMissileManager, params.ptr, cast(void*)0);
		return *cast(TrSeekingMissileManager*)params.ptr;
	}
}
