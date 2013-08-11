module UnrealScript.TribesGame.TrVehicleWeapon;

import ScriptClasses;
import UnrealScript.UTGame.UTVehicleWeapon;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Projectile;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.TribesGame.TrProj_Tracer;

extern(C++) interface TrVehicleWeapon : UTVehicleWeapon
{
	public @property final auto ref int m_nReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1656); }
	public @property final bool m_bShowAmmoIndicator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x20) != 0; }
	public @property final bool m_bShowAmmoIndicator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x20; } return val; }
	public @property final auto ref float m_fReloadTimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 1704); }
	public @property final bool m_bEndZoomOnReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x100) != 0; }
	public @property final bool m_bEndZoomOnReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x100; } return val; }
	public @property final bool r_bIsReloading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x40) != 0; }
	public @property final bool r_bIsReloading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x40; } return val; }
	public @property final auto ref ScriptName m_WeaponSpinControl() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1772); }
	public @property final bool m_bSpawnTracers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x1) != 0; }
	public @property final bool m_bSpawnTracers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x1; } return val; }
	public @property final auto ref TrObject.EWeaponTracerType m_TracerType() { return *cast(TrObject.EWeaponTracerType*)(cast(size_t)cast(void*)this + 1708); }
	public @property final bool m_bSpawnTracerBeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x2) != 0; }
	public @property final bool m_bSpawnTracerBeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x2; } return val; }
	public @property final auto ref ParticleSystem m_TracerBeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1724); }
	public @property final auto ref float m_fShowTracerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1720); }
	public @property final auto ref CameraShake m_FireCameraShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 1768); }
	public @property final auto ref MaterialInstanceConstant m_ZoomOverlayMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1764); }
	public @property final auto ref ScriptName m_nmZoomMaterialEffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1756); }
	public @property final auto ref int r_nCarriedAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1752); }
	public @property final auto ref SoundCue m_DryFireSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1748); }
	public @property final auto ref SoundCue m_ReloadAmmoSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1744); }
	public @property final auto ref float m_fPctTimeBeforeReload() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
	public @property final auto ref float m_fReloadTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
	public @property final auto ref int m_nCarriedAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 1732); }
	public @property final auto ref int m_nLowAmmoWarning() { return *cast(int*)(cast(size_t)cast(void*)this + 1728); }
	public @property final auto ref int m_nTracerInterval() { return *cast(int*)(cast(size_t)cast(void*)this + 1716); }
	public @property final bool m_bCanZoom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x80) != 0; }
	public @property final bool m_bCanZoom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x80; } return val; }
	public @property final bool m_bPendingReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x10) != 0; }
	public @property final bool m_bPendingReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x10; } return val; }
	public @property final bool m_bReloadSingles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x8) != 0; }
	public @property final bool m_bReloadSingles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x8; } return val; }
	public @property final bool m_bLowAmmoOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x4) != 0; }
	public @property final bool m_bLowAmmoOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x4; } return val; }
	public @property final auto ref float m_fAccuracyCorrectionRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1700); }
	public @property final auto ref float m_fAimingModeAccuracyBonus() { return *cast(float*)(cast(size_t)cast(void*)this + 1696); }
	public @property final auto ref float m_fAccuracyLossMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1692); }
	public @property final auto ref float m_fAccuracyLossOnShot() { return *cast(float*)(cast(size_t)cast(void*)this + 1688); }
	public @property final auto ref float m_fAccuracyLossOnWeaponSwitch() { return *cast(float*)(cast(size_t)cast(void*)this + 1684); }
	public @property final auto ref float m_fAccuracyLossOnJump() { return *cast(float*)(cast(size_t)cast(void*)this + 1680); }
	public @property final auto ref float m_fDefaultAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 1676); }
	public @property final auto ref float m_fCachedFiringCone() { return *cast(float*)(cast(size_t)cast(void*)this + 1672); }
	public @property final auto ref int m_nFiringConeWidthDegrees() { return *cast(int*)(cast(size_t)cast(void*)this + 1668); }
	public @property final auto ref int m_ShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 1664); }
	public @property final auto ref int m_nAltReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1660); }
	public @property final auto ref int DBWeaponId() { return *cast(int*)(cast(size_t)cast(void*)this + 1652); }
	final bool HasReticuleCharge()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53721], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float CalculateReloadPercentRemaining()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53723], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61619], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool CanClientRequestReloadNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76406], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CanViewZoom()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76916], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float GetTargetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115117], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void RestoreAccuracy(float fTimeStep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fTimeStep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115119], params.ptr, cast(void*)0);
	}
	final void InitVehicleGun()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115121], cast(void*)0, cast(void*)0);
	}
	final float CalculateReloadTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115122], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115124], cast(void*)0, cast(void*)0);
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115125], params.ptr, cast(void*)0);
	}
	final bool IsWeaponInFiringCone()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115127], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115131], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	final ScriptClass GetProjectileClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115136], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	final void UpdateShotsFired(bool Reset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Reset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115138], params.ptr, cast(void*)0);
	}
	final int GetNumRoundsCurrentlyInClip()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115140], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final Vector GetEffectLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115142], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final void AttachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115145], cast(void*)0, cast(void*)0);
	}
	final void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115147], cast(void*)0, cast(void*)0);
	}
	final void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115148], cast(void*)0, cast(void*)0);
	}
	final void StopMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115150], cast(void*)0, cast(void*)0);
	}
	final void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115151], params.ptr, cast(void*)0);
	}
	final void ShakeView()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115154], cast(void*)0, cast(void*)0);
	}
	final bool ShouldFireTracer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115156], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ShouldFireTracerBeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115158], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SpawnTracerBeam(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115160], params.ptr, cast(void*)0);
	}
	final TrProj_Tracer SpawnTracerEffect(Vector HitLocation, float HitDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(float*)&params[12] = HitDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115164], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[16];
	}
	final void WeaponPlaySoundLocal(SoundCue Sound, float NoiseLoudness, bool bStopWhenOwnerDestroyed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115171], params.ptr, cast(void*)0);
	}
	final TrProj_Tracer GetTracer(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115175], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[24];
	}
	final void PayAccuracyForShot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115179], cast(void*)0, cast(void*)0);
	}
	final Rotator AddSpreadWithAccuracy(Rotator BaseAim, float fAccuracy)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		*cast(float*)&params[12] = fAccuracy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115182], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115193], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	final Rotator AddSpread(Rotator BaseAim)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115199], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	final void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115202], cast(void*)0, cast(void*)0);
	}
	final void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115203], params.ptr, cast(void*)0);
	}
	final void PutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115205], cast(void*)0, cast(void*)0);
	}
	final void RequestReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115224], cast(void*)0, cast(void*)0);
	}
	final void OnClientReloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115225], cast(void*)0, cast(void*)0);
	}
	final void ClientFinishedReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115249], cast(void*)0, cast(void*)0);
	}
	final void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115250], cast(void*)0, cast(void*)0);
	}
	final void BeginAReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115253], cast(void*)0, cast(void*)0);
	}
	final int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115254], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void UpdateReplicatedCarriedAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115257], cast(void*)0, cast(void*)0);
	}
	final void StartZoom(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115258], params.ptr, cast(void*)0);
	}
	final void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115262], params.ptr, cast(void*)0);
	}
	final void SetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115266], cast(void*)0, cast(void*)0);
	}
	final void ResetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115271], cast(void*)0, cast(void*)0);
	}
}
