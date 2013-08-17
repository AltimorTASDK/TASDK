module UnrealScript.UTGame.UTVehicleWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTVehicleWeapon")); }
	private static __gshared UTVehicleWeapon mDefaultProperties;
	@property final static UTVehicleWeapon DefaultProperties() { mixin(MGDPC("UTVehicleWeapon", "UTVehicleWeapon UTGame.Default__UTVehicleWeapon")); }
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
			ScriptFunction GetMaxFinalAimAdjustment() { mixin(MGF("mGetMaxFinalAimAdjustment", "Function UTGame.UTVehicleWeapon.GetMaxFinalAimAdjustment")); }
			ScriptFunction GetAdjustedAim() { mixin(MGF("mGetAdjustedAim", "Function UTGame.UTVehicleWeapon.GetAdjustedAim")); }
			ScriptFunction GetFireTriggerTag() { mixin(MGF("mGetFireTriggerTag", "Function UTGame.UTVehicleWeapon.GetFireTriggerTag")); }
			ScriptFunction GetImpactEffect() { mixin(MGF("mGetImpactEffect", "Function UTGame.UTVehicleWeapon.GetImpactEffect")); }
			ScriptFunction CanHitDesiredTarget() { mixin(MGF("mCanHitDesiredTarget", "Function UTGame.UTVehicleWeapon.CanHitDesiredTarget")); }
			ScriptFunction DrawKillIcon() { mixin(MGF("mDrawKillIcon", "Function UTGame.UTVehicleWeapon.DrawKillIcon")); }
			ScriptFunction GetCrosshairScaling() { mixin(MGF("mGetCrosshairScaling", "Function UTGame.UTVehicleWeapon.GetCrosshairScaling")); }
			ScriptFunction DrawWeaponCrosshair() { mixin(MGF("mDrawWeaponCrosshair", "Function UTGame.UTVehicleWeapon.DrawWeaponCrosshair")); }
			ScriptFunction GetDesiredAimPoint() { mixin(MGF("mGetDesiredAimPoint", "Function UTGame.UTVehicleWeapon.GetDesiredAimPoint")); }
			ScriptFunction GetFireStartLocationAndRotation() { mixin(MGF("mGetFireStartLocationAndRotation", "Function UTGame.UTVehicleWeapon.GetFireStartLocationAndRotation")); }
			ScriptFunction IsAimCorrect() { mixin(MGF("mIsAimCorrect", "Function UTGame.UTVehicleWeapon.IsAimCorrect")); }
			ScriptFunction GetFireInterval() { mixin(MGF("mGetFireInterval", "Function UTGame.UTVehicleWeapon.GetFireInterval")); }
			ScriptFunction AttachWeaponTo() { mixin(MGF("mAttachWeaponTo", "Function UTGame.UTVehicleWeapon.AttachWeaponTo")); }
			ScriptFunction DetachWeapon() { mixin(MGF("mDetachWeapon", "Function UTGame.UTVehicleWeapon.DetachWeapon")); }
			ScriptFunction Activate() { mixin(MGF("mActivate", "Function UTGame.UTVehicleWeapon.Activate")); }
			ScriptFunction PutDownWeapon() { mixin(MGF("mPutDownWeapon", "Function UTGame.UTVehicleWeapon.PutDownWeapon")); }
			ScriptFunction GetPhysicalFireStartLoc() { mixin(MGF("mGetPhysicalFireStartLoc", "Function UTGame.UTVehicleWeapon.GetPhysicalFireStartLoc")); }
			ScriptFunction BeginFire() { mixin(MGF("mBeginFire", "Function UTGame.UTVehicleWeapon.BeginFire")); }
			ScriptFunction EndFire() { mixin(MGF("mEndFire", "Function UTGame.UTVehicleWeapon.EndFire")); }
			ScriptFunction ProjectileFire() { mixin(MGF("mProjectileFire", "Function UTGame.UTVehicleWeapon.ProjectileFire")); }
			ScriptFunction InstantFireStartTrace() { mixin(MGF("mInstantFireStartTrace", "Function UTGame.UTVehicleWeapon.InstantFireStartTrace")); }
			ScriptFunction InstantFireEndTrace() { mixin(MGF("mInstantFireEndTrace", "Function UTGame.UTVehicleWeapon.InstantFireEndTrace")); }
			ScriptFunction GetTraceOwner() { mixin(MGF("mGetTraceOwner", "Function UTGame.UTVehicleWeapon.GetTraceOwner")); }
			ScriptFunction NotifyVehicleDeployed() { mixin(MGF("mNotifyVehicleDeployed", "Function UTGame.UTVehicleWeapon.NotifyVehicleDeployed")); }
			ScriptFunction NotifyVehicleUndeployed() { mixin(MGF("mNotifyVehicleUndeployed", "Function UTGame.UTVehicleWeapon.NotifyVehicleUndeployed")); }
			ScriptFunction WeaponPlaySound() { mixin(MGF("mWeaponPlaySound", "Function UTGame.UTVehicleWeapon.WeaponPlaySound")); }
			ScriptFunction GetZoomedState() { mixin(MGF("mGetZoomedState", "Function UTGame.UTVehicleWeapon.GetZoomedState")); }
			ScriptFunction ServerSetZoom() { mixin(MGF("mServerSetZoom", "Function UTGame.UTVehicleWeapon.ServerSetZoom")); }
			ScriptFunction StartZoom() { mixin(MGF("mStartZoom", "Function UTGame.UTVehicleWeapon.StartZoom")); }
			ScriptFunction EndZoom() { mixin(MGF("mEndZoom", "Function UTGame.UTVehicleWeapon.EndZoom")); }
		}
	}
	@property final
	{
		auto ref
		{
			int SeatIndex() { mixin(MGPC("int", 1472)); }
			UTVehicle MyVehicle() { mixin(MGPC("UTVehicle", 1476)); }
			SoundCue BulletWhip() { mixin(MGPC("SoundCue", 1624)); }
			ScriptArray!(ScriptName) FireTriggerTags() { mixin(MGPC("ScriptArray!(ScriptName)", 1480)); }
			ScriptArray!(ScriptName) AltFireTriggerTags() { mixin(MGPC("ScriptArray!(ScriptName)", 1492)); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { mixin(MGPC("ScriptArray!(UDKPawn.MaterialImpactEffect)", 1504)); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) AltImpactEffects() { mixin(MGPC("ScriptArray!(UDKPawn.MaterialImpactEffect)", 1516)); }
			ScriptClass VehicleClass() { mixin(MGPC("ScriptClass", 1648)); }
			float MaxFinalAimAdjustment() { mixin(MGPC("float", 1640)); }
			float CurrentCrosshairScaling() { mixin(MGPC("float", 1636)); }
			float LastInCorrectAimTime() { mixin(MGPC("float", 1632)); }
			float LastCorrectAimTime() { mixin(MGPC("float", 1628)); }
			UDKPawn.MaterialImpactEffect DefaultAltImpactEffect() { mixin(MGPC("UDKPawn.MaterialImpactEffect", 1576)); }
			UDKPawn.MaterialImpactEffect DefaultImpactEffect() { mixin(MGPC("UDKPawn.MaterialImpactEffect", 1528)); }
		}
		bool bIgnoreSocketPitchRotation() { mixin(MGBPC(1644, 0x4)); }
		bool bIgnoreSocketPitchRotation(bool val) { mixin(MSBPC(1644, 0x4)); }
		bool bIgnoreDownwardPitch() { mixin(MGBPC(1644, 0x8)); }
		bool bIgnoreDownwardPitch(bool val) { mixin(MSBPC(1644, 0x8)); }
		bool bDebugTurret() { mixin(MGBPC(1644, 0x10)); }
		bool bDebugTurret(bool val) { mixin(MSBPC(1644, 0x10)); }
		bool bCurrentlyZoomed() { mixin(MGBPC(1644, 0x2)); }
		bool bCurrentlyZoomed(bool val) { mixin(MSBPC(1644, 0x2)); }
		bool bPlaySoundFromSocket() { mixin(MGBPC(1644, 0x1)); }
		bool bPlaySoundFromSocket(bool val) { mixin(MSBPC(1644, 0x1)); }
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
	bool CanHitDesiredTarget(Vector SocketLocation, Rotator SocketRotation, Vector DesiredAimPoint, Actor TargetActor, ref Vector RealAimPoint)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = SocketLocation;
		*cast(Rotator*)&params[12] = SocketRotation;
		*cast(Vector*)&params[24] = DesiredAimPoint;
		*cast(Actor*)&params[36] = TargetActor;
		*cast(Vector*)&params[40] = RealAimPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanHitDesiredTarget, params.ptr, cast(void*)0);
		RealAimPoint = *cast(Vector*)&params[40];
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
	Vector GetDesiredAimPoint(Actor* TargetActor = null)
	{
		ubyte params[16];
		params[] = 0;
		if (TargetActor !is null)
			*cast(Actor*)params.ptr = *TargetActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDesiredAimPoint, params.ptr, cast(void*)0);
		if (TargetActor !is null)
			*TargetActor = *cast(Actor*)params.ptr;
		return *cast(Vector*)&params[4];
	}
	void GetFireStartLocationAndRotation(ref Vector StartLocation, ref Rotator StartRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Rotator*)&params[12] = StartRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireStartLocationAndRotation, params.ptr, cast(void*)0);
		StartLocation = *cast(Vector*)params.ptr;
		StartRotation = *cast(Rotator*)&params[12];
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
void* MeshCpnt, ScriptName* SocketName = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		if (SocketName !is null)
			*cast(ScriptName*)&params[4] = *SocketName;
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
	Vector GetPhysicalFireStartLoc(Vector* AimDir = null)
	{
		ubyte params[24];
		params[] = 0;
		if (AimDir !is null)
			*cast(Vector*)params.ptr = *AimDir;
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
	void WeaponPlaySound(SoundCue Sound, float* NoiseLoudness = null, bool* bStopWhenOwnerDestroyed = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		if (NoiseLoudness !is null)
			*cast(float*)&params[4] = *NoiseLoudness;
		if (bStopWhenOwnerDestroyed !is null)
			*cast(bool*)&params[8] = *bStopWhenOwnerDestroyed;
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
	void EndZoom(UTPlayerController PC, bool* bReturningTo3P = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		if (bReturningTo3P !is null)
			*cast(bool*)&params[4] = *bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndZoom, params.ptr, cast(void*)0);
	}
}
