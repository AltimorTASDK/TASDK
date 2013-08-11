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
	public @property final auto ref int SeatIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref UTVehicle MyVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 1476); }
	public @property final bool bIgnoreSocketPitchRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x4) != 0; }
	public @property final bool bIgnoreSocketPitchRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x4; } return val; }
	public @property final bool bIgnoreDownwardPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x8) != 0; }
	public @property final bool bIgnoreDownwardPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x8; } return val; }
	public @property final auto ref SoundCue BulletWhip() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1624); }
	public @property final auto ref ScriptArray!(ScriptName) FireTriggerTags() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1480); }
	public @property final auto ref ScriptArray!(ScriptName) AltFireTriggerTags() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1492); }
	public @property final auto ref ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 1504); }
	public @property final auto ref ScriptArray!(UDKPawn.MaterialImpactEffect) AltImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 1516); }
	public @property final auto ref ScriptClass VehicleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1648); }
	public @property final bool bDebugTurret() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x10) != 0; }
	public @property final bool bDebugTurret(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x10; } return val; }
	public @property final bool bCurrentlyZoomed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x2) != 0; }
	public @property final bool bCurrentlyZoomed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x2; } return val; }
	public @property final bool bPlaySoundFromSocket() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1644) & 0x1) != 0; }
	public @property final bool bPlaySoundFromSocket(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1644) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1644) &= ~0x1; } return val; }
	public @property final auto ref float MaxFinalAimAdjustment() { return *cast(float*)(cast(size_t)cast(void*)this + 1640); }
	public @property final auto ref float CurrentCrosshairScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1636); }
	public @property final auto ref float LastInCorrectAimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1632); }
	public @property final auto ref float LastCorrectAimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1628); }
	public @property final auto ref UDKPawn.MaterialImpactEffect DefaultAltImpactEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 1576); }
	public @property final auto ref UDKPawn.MaterialImpactEffect DefaultImpactEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 1528); }
	final float GetMaxFinalAimAdjustment()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39530], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39917], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	final ScriptName GetFireTriggerTag(int BarrelIndex, int FireMode)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = BarrelIndex;
		*cast(int*)&params[4] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39947], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final UDKPawn.MaterialImpactEffect GetImpactEffect(Actor HitActor, PhysicalMaterial HitMaterial, ubyte FireModeNum)
	{
		ubyte params[57];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(PhysicalMaterial*)&params[4] = HitMaterial;
		params[8] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39974], params.ptr, cast(void*)0);
		return *cast(UDKPawn.MaterialImpactEffect*)&params[12];
	}
	final bool CanHitDesiredTarget(Vector SocketLocation, Rotator SocketRotation, Vector DesiredAimPoint, Actor TargetActor, Vector* RealAimPoint)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = SocketLocation;
		*cast(Rotator*)&params[12] = SocketRotation;
		*cast(Vector*)&params[24] = DesiredAimPoint;
		*cast(Actor*)&params[36] = TargetActor;
		*cast(Vector*)&params[40] = *RealAimPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49833], params.ptr, cast(void*)0);
		*RealAimPoint = *cast(Vector*)&params[40];
		return *cast(bool*)&params[52];
	}
	final void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(float*)&params[12] = HUDScaleX;
		*cast(float*)&params[16] = HUDScaleY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49847], params.ptr, cast(void*)0);
	}
	final void GetCrosshairScaling(HUD pHUD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49853], params.ptr, cast(void*)0);
	}
	final void DrawWeaponCrosshair(HUD pHUD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49855], params.ptr, cast(void*)0);
	}
	final Vector GetDesiredAimPoint(Actor* TargetActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = *TargetActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49865], params.ptr, cast(void*)0);
		*TargetActor = *cast(Actor*)params.ptr;
		return *cast(Vector*)&params[4];
	}
	final void GetFireStartLocationAndRotation(Vector* StartLocation, Rotator* StartRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *StartLocation;
		*cast(Rotator*)&params[12] = *StartRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49875], params.ptr, cast(void*)0);
		*StartLocation = *cast(Vector*)params.ptr;
		*StartRotation = *cast(Rotator*)&params[12];
	}
	final bool IsAimCorrect()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49878], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49886], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49895], params.ptr, cast(void*)0);
	}
	final void DetachWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49898], cast(void*)0, cast(void*)0);
	}
	final void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49899], cast(void*)0, cast(void*)0);
	}
	final void PutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49900], cast(void*)0, cast(void*)0);
	}
	final Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49901], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49904], params.ptr, cast(void*)0);
	}
	final void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49907], params.ptr, cast(void*)0);
	}
	final Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49911], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	final Vector InstantFireStartTrace()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49914], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final Vector InstantFireEndTrace(Vector StartTrace)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49916], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	final Actor GetTraceOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49919], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final void NotifyVehicleDeployed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49921], cast(void*)0, cast(void*)0);
	}
	final void NotifyVehicleUndeployed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49922], cast(void*)0, cast(void*)0);
	}
	final void WeaponPlaySound(SoundCue Sound, float NoiseLoudness, bool bStopWhenOwnerDestroyed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49923], params.ptr, cast(void*)0);
	}
	final UTWeapon.EZoomState GetZoomedState()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49931], params.ptr, cast(void*)0);
		return *cast(UTWeapon.EZoomState*)params.ptr;
	}
	final void ServerSetZoom(bool bNowZoomed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowZoomed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49933], params.ptr, cast(void*)0);
	}
	final void StartZoom(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49935], params.ptr, cast(void*)0);
	}
	final void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49937], params.ptr, cast(void*)0);
	}
}
