module UnrealScript.UTGame.UTVehicleWeapon;

import ScriptClasses;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.HUD;

extern(C++) interface UTVehicleWeapon : UTWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVehicleWeapon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetMaxFinalAimAdjustment;
			ScriptFunction mGetAdjustedAim;
			ScriptFunction mGetFireTriggerTag;
			ScriptFunction mGetImpactEffect;
			ScriptFunction mCanHitDesiredTarget;
			ScriptFunction mDrawKillIcon;
			ScriptFunction mGetCrosshairScaling;
			ScriptFunction mDrawWeaponCrosshair;
			ScriptFunction mGetDesiredAimPoint;
			ScriptFunction mGetFireStartLocationAndRotation;
			ScriptFunction mIsAimCorrect;
			ScriptFunction mGetFireInterval;
			ScriptFunction mAttachWeaponTo;
			ScriptFunction mDetachWeapon;
			ScriptFunction mActivate;
			ScriptFunction mPutDownWeapon;
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mBeginFire;
			ScriptFunction mEndFire;
			ScriptFunction mProjectileFire;
			ScriptFunction mInstantFireStartTrace;
			ScriptFunction mInstantFireEndTrace;
			ScriptFunction mGetTraceOwner;
			ScriptFunction mNotifyVehicleDeployed;
			ScriptFunction mNotifyVehicleUndeployed;
			ScriptFunction mWeaponPlaySound;
			ScriptFunction mGetZoomedState;
			ScriptFunction mServerSetZoom;
			ScriptFunction mStartZoom;
			ScriptFunction mEndZoom;
		}
		public @property static final
		{
			ScriptFunction GetMaxFinalAimAdjustment() { return mGetMaxFinalAimAdjustment ? mGetMaxFinalAimAdjustment : (mGetMaxFinalAimAdjustment = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetMaxFinalAimAdjustment")); }
			ScriptFunction GetAdjustedAim() { return mGetAdjustedAim ? mGetAdjustedAim : (mGetAdjustedAim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetAdjustedAim")); }
			ScriptFunction GetFireTriggerTag() { return mGetFireTriggerTag ? mGetFireTriggerTag : (mGetFireTriggerTag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetFireTriggerTag")); }
			ScriptFunction GetImpactEffect() { return mGetImpactEffect ? mGetImpactEffect : (mGetImpactEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetImpactEffect")); }
			ScriptFunction CanHitDesiredTarget() { return mCanHitDesiredTarget ? mCanHitDesiredTarget : (mCanHitDesiredTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.CanHitDesiredTarget")); }
			ScriptFunction DrawKillIcon() { return mDrawKillIcon ? mDrawKillIcon : (mDrawKillIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.DrawKillIcon")); }
			ScriptFunction GetCrosshairScaling() { return mGetCrosshairScaling ? mGetCrosshairScaling : (mGetCrosshairScaling = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetCrosshairScaling")); }
			ScriptFunction DrawWeaponCrosshair() { return mDrawWeaponCrosshair ? mDrawWeaponCrosshair : (mDrawWeaponCrosshair = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.DrawWeaponCrosshair")); }
			ScriptFunction GetDesiredAimPoint() { return mGetDesiredAimPoint ? mGetDesiredAimPoint : (mGetDesiredAimPoint = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetDesiredAimPoint")); }
			ScriptFunction GetFireStartLocationAndRotation() { return mGetFireStartLocationAndRotation ? mGetFireStartLocationAndRotation : (mGetFireStartLocationAndRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetFireStartLocationAndRotation")); }
			ScriptFunction IsAimCorrect() { return mIsAimCorrect ? mIsAimCorrect : (mIsAimCorrect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.IsAimCorrect")); }
			ScriptFunction GetFireInterval() { return mGetFireInterval ? mGetFireInterval : (mGetFireInterval = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetFireInterval")); }
			ScriptFunction AttachWeaponTo() { return mAttachWeaponTo ? mAttachWeaponTo : (mAttachWeaponTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.AttachWeaponTo")); }
			ScriptFunction DetachWeapon() { return mDetachWeapon ? mDetachWeapon : (mDetachWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.DetachWeapon")); }
			ScriptFunction Activate() { return mActivate ? mActivate : (mActivate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.Activate")); }
			ScriptFunction PutDownWeapon() { return mPutDownWeapon ? mPutDownWeapon : (mPutDownWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.PutDownWeapon")); }
			ScriptFunction GetPhysicalFireStartLoc() { return mGetPhysicalFireStartLoc ? mGetPhysicalFireStartLoc : (mGetPhysicalFireStartLoc = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetPhysicalFireStartLoc")); }
			ScriptFunction BeginFire() { return mBeginFire ? mBeginFire : (mBeginFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.BeginFire")); }
			ScriptFunction EndFire() { return mEndFire ? mEndFire : (mEndFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.EndFire")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.ProjectileFire")); }
			ScriptFunction InstantFireStartTrace() { return mInstantFireStartTrace ? mInstantFireStartTrace : (mInstantFireStartTrace = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.InstantFireStartTrace")); }
			ScriptFunction InstantFireEndTrace() { return mInstantFireEndTrace ? mInstantFireEndTrace : (mInstantFireEndTrace = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.InstantFireEndTrace")); }
			ScriptFunction GetTraceOwner() { return mGetTraceOwner ? mGetTraceOwner : (mGetTraceOwner = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetTraceOwner")); }
			ScriptFunction NotifyVehicleDeployed() { return mNotifyVehicleDeployed ? mNotifyVehicleDeployed : (mNotifyVehicleDeployed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.NotifyVehicleDeployed")); }
			ScriptFunction NotifyVehicleUndeployed() { return mNotifyVehicleUndeployed ? mNotifyVehicleUndeployed : (mNotifyVehicleUndeployed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.NotifyVehicleUndeployed")); }
			ScriptFunction WeaponPlaySound() { return mWeaponPlaySound ? mWeaponPlaySound : (mWeaponPlaySound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.WeaponPlaySound")); }
			ScriptFunction GetZoomedState() { return mGetZoomedState ? mGetZoomedState : (mGetZoomedState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.GetZoomedState")); }
			ScriptFunction ServerSetZoom() { return mServerSetZoom ? mServerSetZoom : (mServerSetZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.ServerSetZoom")); }
			ScriptFunction StartZoom() { return mStartZoom ? mStartZoom : (mStartZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.StartZoom")); }
			ScriptFunction EndZoom() { return mEndZoom ? mEndZoom : (mEndZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleWeapon.EndZoom")); }
		}
	}
	@property final
	{
		auto ref
		{
			int SeatIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1472); }
			UTVehicle MyVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 1476); }
			SoundCue BulletWhip() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1624); }
			ScriptArray!(ScriptName) FireTriggerTags() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1480); }
			ScriptArray!(ScriptName) AltFireTriggerTags() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1492); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 1504); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) AltImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 1516); }
			ScriptClass VehicleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1648); }
			float MaxFinalAimAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 1640); }
			float CurrentCrosshairScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1636); }
			float LastInCorrectAimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1632); }
			float LastCorrectAimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1628); }
			UDKPawn.MaterialImpactEffect DefaultAltImpactEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 1576); }
			UDKPawn.MaterialImpactEffect DefaultImpactEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 1528); }
		}
		bool bIgnoreSocketPitchRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x4) != 0; }
		bool bIgnoreSocketPitchRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x4; } return val; }
		bool bIgnoreDownwardPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x8) != 0; }
		bool bIgnoreDownwardPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x8; } return val; }
		bool bDebugTurret() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x10) != 0; }
		bool bDebugTurret(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x10; } return val; }
		bool bCurrentlyZoomed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x2) != 0; }
		bool bCurrentlyZoomed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x2; } return val; }
		bool bPlaySoundFromSocket() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x1) != 0; }
		bool bPlaySoundFromSocket(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x1; } return val; }
	}
final:
	float GetMaxFinalAimAdjustment()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxFinalAimAdjustment, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	static ScriptName GetFireTriggerTag(int BarrelIndex, int FireMode)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = BarrelIndex;
		*cast(int*)&params[4] = FireMode;
		StaticClass.ProcessEvent(Functions.GetFireTriggerTag, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	static UDKPawn.MaterialImpactEffect GetImpactEffect(Actor HitActor, PhysicalMaterial HitMaterial, ubyte FireModeNum)
	{
		ubyte params[60];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(PhysicalMaterial*)&params[4] = HitMaterial;
		params[8] = FireModeNum;
		StaticClass.ProcessEvent(Functions.GetImpactEffect, params.ptr, cast(void*)0);
		return *cast(UDKPawn.MaterialImpactEffect*)&params[12];
	}
	bool CanHitDesiredTarget(Vector SocketLocation, Rotator SocketRotation, Vector DesiredAimPoint, Actor TargetActor, Vector* RealAimPoint)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = SocketLocation;
		*cast(Rotator*)&params[12] = SocketRotation;
		*cast(Vector*)&params[24] = DesiredAimPoint;
		*cast(Actor*)&params[36] = TargetActor;
		*cast(Vector*)&params[40] = *RealAimPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanHitDesiredTarget, params.ptr, cast(void*)0);
		*RealAimPoint = *cast(Vector*)&params[40];
		return *cast(bool*)&params[52];
	}
	static void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(float*)&params[12] = HUDScaleX;
		*cast(float*)&params[16] = HUDScaleY;
		StaticClass.ProcessEvent(Functions.DrawKillIcon, params.ptr, cast(void*)0);
	}
	void GetCrosshairScaling(HUD pHUD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCrosshairScaling, params.ptr, cast(void*)0);
	}
	void DrawWeaponCrosshair(HUD pHUD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawWeaponCrosshair, params.ptr, cast(void*)0);
	}
	Vector GetDesiredAimPoint(Actor* TargetActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = *TargetActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDesiredAimPoint, params.ptr, cast(void*)0);
		*TargetActor = *cast(Actor*)params.ptr;
		return *cast(Vector*)&params[4];
	}
	void GetFireStartLocationAndRotation(Vector* StartLocation, Rotator* StartRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *StartLocation;
		*cast(Rotator*)&params[12] = *StartRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireStartLocationAndRotation, params.ptr, cast(void*)0);
		*StartLocation = *cast(Vector*)params.ptr;
		*StartRotation = *cast(Rotator*)&params[12];
	}
	bool IsAimCorrect()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAimCorrect, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireInterval, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachWeaponTo, params.ptr, cast(void*)0);
	}
	void DetachWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachWeapon, cast(void*)0, cast(void*)0);
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activate, cast(void*)0, cast(void*)0);
	}
	void PutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PutDownWeapon, cast(void*)0, cast(void*)0);
	}
	Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginFire, params.ptr, cast(void*)0);
	}
	void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndFire, params.ptr, cast(void*)0);
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	Vector InstantFireStartTrace()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFireStartTrace, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector InstantFireEndTrace(Vector StartTrace)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFireEndTrace, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	Actor GetTraceOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTraceOwner, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	void NotifyVehicleDeployed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyVehicleDeployed, cast(void*)0, cast(void*)0);
	}
	void NotifyVehicleUndeployed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyVehicleUndeployed, cast(void*)0, cast(void*)0);
	}
	void WeaponPlaySound(SoundCue Sound, float NoiseLoudness, bool bStopWhenOwnerDestroyed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponPlaySound, params.ptr, cast(void*)0);
	}
	UTWeapon.EZoomState GetZoomedState()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetZoomedState, params.ptr, cast(void*)0);
		return *cast(UTWeapon.EZoomState*)params.ptr;
	}
	void ServerSetZoom(bool bNowZoomed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowZoomed;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetZoom, params.ptr, cast(void*)0);
	}
	void StartZoom(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartZoom, params.ptr, cast(void*)0);
	}
	void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndZoom, params.ptr, cast(void*)0);
	}
}
