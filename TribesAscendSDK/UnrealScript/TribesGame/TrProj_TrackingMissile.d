module UnrealScript.TribesGame.TrProj_TrackingMissile;

import ScriptClasses;
import UnrealScript.TribesGame.TrSeekingMissileManager;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_TrackingMissile : TrProjectile
{
	enum ETrackingMissileStage : ubyte
	{
		ETrackingMissileStage_JustFired = 0,
		ETrackingMissileStage_AdjustingForGoodLOS = 1,
		ETrackingMissileStage_HomingInOnTarget = 2,
		ETrackingMissileStage_MAX = 3,
	}
	public @property final auto ref float m_fLoseTightTrackingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
	public @property final auto ref Rotator m_MissileCaratRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 872); }
	public @property final auto ref float m_fStage1MinGroundDist() { return *cast(float*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref Vector m_vLastKnownTargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 856); }
	public @property final auto ref float m_fInitialLocationZ() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref float m_fMinHeightGainForGoodLOS() { return *cast(float*)(cast(size_t)cast(void*)this + 844); }
	public @property final auto ref float m_fIdealHeightAboveTargetForGoodLOS() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
	public @property final auto ref float m_fAdjustingForGoodLOSAccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
	public @property final auto ref float m_fTrackingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref float m_fTrackingDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref float m_fLOSDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
	public @property final bool m_bLostTightHoming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x2) != 0; }
	public @property final bool m_bLostTightHoming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x2; } return val; }
	public @property final bool m_bHasBentToTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x1) != 0; }
	public @property final bool m_bHasBentToTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x1; } return val; }
	public @property final auto ref TrProj_TrackingMissile.ETrackingMissileStage m_MissileStage() { return *cast(TrProj_TrackingMissile.ETrackingMissileStage*)(cast(size_t)cast(void*)this + 816); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109357], cast(void*)0, cast(void*)0);
	}
	final void Init(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109359], params.ptr, cast(void*)0);
	}
	final void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109361], params.ptr, cast(void*)0);
	}
	final void EnableCollisionTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109365], cast(void*)0, cast(void*)0);
	}
	final void SetSeekTarget(Actor NewSeekTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewSeekTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109366], params.ptr, cast(void*)0);
	}
	final void NativeExplode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109369], params.ptr, cast(void*)0);
	}
	final void OnExploded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109372], cast(void*)0, cast(void*)0);
	}
	final void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109374], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109377], cast(void*)0, cast(void*)0);
	}
	final TrSeekingMissileManager GetSeekingMissileManager()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109378], params.ptr, cast(void*)0);
		return *cast(TrSeekingMissileManager*)params.ptr;
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109381], cast(void*)0, cast(void*)0);
	}
	final void SpawnFlightEffectsTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109382], cast(void*)0, cast(void*)0);
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109388], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109400], params.ptr, cast(void*)0);
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109402], params.ptr, cast(void*)0);
	}
}
