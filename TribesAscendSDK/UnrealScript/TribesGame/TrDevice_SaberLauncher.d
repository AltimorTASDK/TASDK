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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86024], params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86032], cast(void*)0, cast(void*)0);
	}
	void ResumeTargeting()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86033], cast(void*)0, cast(void*)0);
	}
	void SuspendTargeting()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86034], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86037], cast(void*)0, cast(void*)0);
	}
	bool TargetInsideReticle(Actor Target, bool initialAcquire)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(bool*)&params[4] = initialAcquire;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86038], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsActorInLOS(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86042], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ValidateTrackingTarget(Actor Target, bool initialAcquire)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(bool*)&params[4] = initialAcquire;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86047], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SetTargetActorMissileLockState(Actor Target, TrObject.EMissileLock lockValue)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(TrObject.EMissileLock*)&params[4] = lockValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86054], params.ptr, cast(void*)0);
	}
	void SetNewTrackingTarget(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86058], params.ptr, cast(void*)0);
	}
	void TargetLockAcquired()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86060], cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86061], params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86064], cast(void*)0, cast(void*)0);
	}
	void PerformTargeting()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86065], cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86078], cast(void*)0, cast(void*)0);
	}
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86079], cast(void*)0, cast(void*)0);
	}
	void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86080], cast(void*)0, cast(void*)0);
	}
	void HolderExitedVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86081], cast(void*)0, cast(void*)0);
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86082], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	void ServerTryNewPossibleTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86085], cast(void*)0, cast(void*)0);
	}
	void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86086], params.ptr, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86088], params.ptr, cast(void*)0);
	}
	TrSeekingMissileManager GetSeekingMissileManager()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86091], params.ptr, cast(void*)0);
		return *cast(TrSeekingMissileManager*)params.ptr;
	}
}
