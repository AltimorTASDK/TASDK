module UnrealScript.TribesGame.TrDevice_SaberLauncher;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SaberLauncher")); }
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
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.PostBeginPlay")); }
			ScriptFunction ResumeTargeting() { return mResumeTargeting ? mResumeTargeting : (mResumeTargeting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.ResumeTargeting")); }
			ScriptFunction SuspendTargeting() { return mSuspendTargeting ? mSuspendTargeting : (mSuspendTargeting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.SuspendTargeting")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.Destroyed")); }
			ScriptFunction TargetInsideReticle() { return mTargetInsideReticle ? mTargetInsideReticle : (mTargetInsideReticle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.TargetInsideReticle")); }
			ScriptFunction IsActorInLOS() { return mIsActorInLOS ? mIsActorInLOS : (mIsActorInLOS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.IsActorInLOS")); }
			ScriptFunction ValidateTrackingTarget() { return mValidateTrackingTarget ? mValidateTrackingTarget : (mValidateTrackingTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.ValidateTrackingTarget")); }
			ScriptFunction SetTargetActorMissileLockState() { return mSetTargetActorMissileLockState ? mSetTargetActorMissileLockState : (mSetTargetActorMissileLockState = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.SetTargetActorMissileLockState")); }
			ScriptFunction SetNewTrackingTarget() { return mSetNewTrackingTarget ? mSetNewTrackingTarget : (mSetNewTrackingTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.SetNewTrackingTarget")); }
			ScriptFunction TargetLockAcquired() { return mTargetLockAcquired ? mTargetLockAcquired : (mTargetLockAcquired = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.TargetLockAcquired")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.Tick")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.FireAmmunition")); }
			ScriptFunction PerformTargeting() { return mPerformTargeting ? mPerformTargeting : (mPerformTargeting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.PerformTargeting")); }
			ScriptFunction OnSwitchAwayFromWeapon() { return mOnSwitchAwayFromWeapon ? mOnSwitchAwayFromWeapon : (mOnSwitchAwayFromWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.OnSwitchAwayFromWeapon")); }
			ScriptFunction OnSwitchToWeapon() { return mOnSwitchToWeapon ? mOnSwitchToWeapon : (mOnSwitchToWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.OnSwitchToWeapon")); }
			ScriptFunction HolderEnteredVehicle() { return mHolderEnteredVehicle ? mHolderEnteredVehicle : (mHolderEnteredVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.HolderEnteredVehicle")); }
			ScriptFunction HolderExitedVehicle() { return mHolderExitedVehicle ? mHolderExitedVehicle : (mHolderExitedVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.HolderExitedVehicle")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.ProjectileFire")); }
			ScriptFunction ServerTryNewPossibleTarget() { return mServerTryNewPossibleTarget ? mServerTryNewPossibleTarget : (mServerTryNewPossibleTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.ServerTryNewPossibleTarget")); }
			ScriptFunction BeginFire() { return mBeginFire ? mBeginFire : (mBeginFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.BeginFire")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.StartFire")); }
			ScriptFunction GetSeekingMissileManager() { return mGetSeekingMissileManager ? mGetSeekingMissileManager : (mGetSeekingMissileManager = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_SaberLauncher.GetSeekingMissileManager")); }
		}
	}
	@property final
	{
		auto ref
		{
			TrPlayerController m_TargetController() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 2212); }
			ubyte r_nFired() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2208); }
			float m_fLockingTargetTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2204); }
			float m_fTimeBeforeVictimKnowsMissileIsTargeting() { return *cast(float*)(cast(size_t)cast(void*)this + 2200); }
			float m_fGroundCheckDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2196); }
			float m_fPotentialTargetLockOnDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2192); }
			float m_fReticuleLockOnDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
			float m_fLockRetainSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 2184); }
			float m_fRestoreAimHelpRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2180); }
			float m_fMinCosineAcquireTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 2176); }
			float m_fAcquireTargetMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
			float m_fRetainTargetMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
			float m_fMinCosineRetainTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
			Actor m_Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2156); }
			float m_fPreLockTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2152); }
			float m_fTargetSightTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
		}
		bool r_bTargetLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2160) & 0x1) != 0; }
		bool r_bTargetLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2160) &= ~0x1; } return val; }
		bool m_bDebugMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2160) & 0x4) != 0; }
		bool m_bDebugMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2160) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2160) &= ~0x4; } return val; }
		bool m_bRestoreAimingHelp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2160) & 0x2) != 0; }
		bool m_bRestoreAimingHelp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2160) &= ~0x2; } return val; }
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
