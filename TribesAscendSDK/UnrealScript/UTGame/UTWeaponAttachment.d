module UnrealScript.UTGame.UTWeaponAttachment;

import ScriptClasses;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.Material;

extern(C++) interface UTWeaponAttachment : Actor
{
	public @property final auto ref float MaxFireEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref ScriptArray!(UDKPawn.MaterialImpactEffect) AltImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref UTPawn.EWeapAnimType WeapAnimType() { return *cast(UTPawn.EWeapAnimType*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref ScriptName AltFireAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref ScriptName FireAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref float DistFactorForRefPose() { return *cast(float*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref float MaxDecalRangeSq() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref float MaxImpactEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 664); }
	public @property final auto ref SoundCue BulletWhip() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref UDKPawn.MaterialImpactEffect DefaultAltImpactEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref UDKPawn.MaterialImpactEffect DefaultImpactEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref ScriptName AttachmentSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref float MuzzleFlashDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref ScriptClass MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 516); }
	public @property final bool bMakeSplash() { return (*cast(uint*)(cast(size_t)cast(void*)this + 512) & 0x8) != 0; }
	public @property final bool bMakeSplash(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 512) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 512) &= ~0x8; } return val; }
	public @property final bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 512) & 0x4) != 0; }
	public @property final bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 512) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 512) &= ~0x4; } return val; }
	public @property final bool bAlignToSurfaceNormal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 512) & 0x2) != 0; }
	public @property final bool bAlignToSurfaceNormal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 512) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 512) &= ~0x2; } return val; }
	public @property final bool bMuzzleFlashPSCLoops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 512) & 0x1) != 0; }
	public @property final bool bMuzzleFlashPSCLoops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 512) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 512) &= ~0x1; } return val; }
	public @property final auto ref UObject.Color MuzzleFlashColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref ParticleSystem MuzzleFlashAltPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref ParticleSystem MuzzleFlashPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref ScriptName MuzzleFlashSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptClass SplashEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 476); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42331], cast(void*)0, cast(void*)0);
	}
	final void CheckToForceRefPose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42332], cast(void*)0, cast(void*)0);
	}
	final void CreateOverlayMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42333], cast(void*)0, cast(void*)0);
	}
	final void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42334], params.ptr, cast(void*)0);
	}
	final void SetMuzzleFlashParams(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42338], params.ptr, cast(void*)0);
	}
	final void AttachTo(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42340], params.ptr, cast(void*)0);
	}
	final void SetPuttingDownWeapon(bool bNowPuttingDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPuttingDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42342], params.ptr, cast(void*)0);
	}
	final void DetachFrom(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshCpnt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = MeshCpnt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42344], params.ptr, cast(void*)0);
	}
	final void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42346], cast(void*)0, cast(void*)0);
	}
	final void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42347], cast(void*)0, cast(void*)0);
	}
	final void StopMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42349], cast(void*)0, cast(void*)0);
	}
	final void FirstPersonFireEffects(Weapon PawnWeapon, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = PawnWeapon;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42350], params.ptr, cast(void*)0);
	}
	final void StopFirstPersonFireEffects(Weapon PawnWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = PawnWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42353], params.ptr, cast(void*)0);
	}
	final void ThirdPersonFireEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42355], params.ptr, cast(void*)0);
	}
	final void StopThirdPersonFireEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42358], cast(void*)0, cast(void*)0);
	}
	final UDKPawn.MaterialImpactEffect GetImpactEffect(PhysicalMaterial HitMaterial)
	{
		ubyte params[52];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42359], params.ptr, cast(void*)0);
		return *cast(UDKPawn.MaterialImpactEffect*)&params[4];
	}
	final bool AllowImpactEffects(Actor HitActor, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42364], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void SetImpactedActor(Actor HitActor, Vector HitLocation, Vector HitNormal, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42369], params.ptr, cast(void*)0);
	}
	final void PlayImpactEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42374], params.ptr, cast(void*)0);
	}
	final void CheckBulletWhip(Vector FireDir, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = FireDir;
		*cast(Vector*)&params[12] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42389], params.ptr, cast(void*)0);
	}
	final void SetWeaponOverlayFlags(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42394], params.ptr, cast(void*)0);
	}
	final void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42400], params.ptr, cast(void*)0);
	}
	final void FireModeUpdated(ubyte FiringMode, bool bViaReplication)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FiringMode;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42402], params.ptr, cast(void*)0);
	}
	final Vector GetEffectLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42405], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
}
