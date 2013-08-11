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
public extern(D):
	@property final
	{
		auto ref
		{
			int m_nReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1656); }
			float m_fReloadTimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 1704); }
			ScriptName m_WeaponSpinControl() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1772); }
			TrObject.EWeaponTracerType m_TracerType() { return *cast(TrObject.EWeaponTracerType*)(cast(size_t)cast(void*)this + 1708); }
			ParticleSystem m_TracerBeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1724); }
			float m_fShowTracerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1720); }
			CameraShake m_FireCameraShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 1768); }
			MaterialInstanceConstant m_ZoomOverlayMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1764); }
			ScriptName m_nmZoomMaterialEffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1756); }
			int r_nCarriedAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1752); }
			SoundCue m_DryFireSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1748); }
			SoundCue m_ReloadAmmoSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1744); }
			float m_fPctTimeBeforeReload() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
			float m_fReloadTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
			int m_nCarriedAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 1732); }
			int m_nLowAmmoWarning() { return *cast(int*)(cast(size_t)cast(void*)this + 1728); }
			int m_nTracerInterval() { return *cast(int*)(cast(size_t)cast(void*)this + 1716); }
			float m_fAccuracyCorrectionRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1700); }
			float m_fAimingModeAccuracyBonus() { return *cast(float*)(cast(size_t)cast(void*)this + 1696); }
			float m_fAccuracyLossMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1692); }
			float m_fAccuracyLossOnShot() { return *cast(float*)(cast(size_t)cast(void*)this + 1688); }
			float m_fAccuracyLossOnWeaponSwitch() { return *cast(float*)(cast(size_t)cast(void*)this + 1684); }
			float m_fAccuracyLossOnJump() { return *cast(float*)(cast(size_t)cast(void*)this + 1680); }
			float m_fDefaultAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 1676); }
			float m_fCachedFiringCone() { return *cast(float*)(cast(size_t)cast(void*)this + 1672); }
			int m_nFiringConeWidthDegrees() { return *cast(int*)(cast(size_t)cast(void*)this + 1668); }
			int m_ShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 1664); }
			int m_nAltReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1660); }
			int DBWeaponId() { return *cast(int*)(cast(size_t)cast(void*)this + 1652); }
		}
		bool m_bShowAmmoIndicator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x20) != 0; }
		bool m_bShowAmmoIndicator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x20; } return val; }
		bool m_bEndZoomOnReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x100) != 0; }
		bool m_bEndZoomOnReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x100; } return val; }
		bool r_bIsReloading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x40) != 0; }
		bool r_bIsReloading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x40; } return val; }
		bool m_bSpawnTracers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x1) != 0; }
		bool m_bSpawnTracers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x1; } return val; }
		bool m_bSpawnTracerBeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x2) != 0; }
		bool m_bSpawnTracerBeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x2; } return val; }
		bool m_bCanZoom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x80) != 0; }
		bool m_bCanZoom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x80; } return val; }
		bool m_bPendingReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x10) != 0; }
		bool m_bPendingReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x10; } return val; }
		bool m_bReloadSingles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x8) != 0; }
		bool m_bReloadSingles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x8; } return val; }
		bool m_bLowAmmoOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1712) & 0x4) != 0; }
		bool m_bLowAmmoOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1712) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1712) &= ~0x4; } return val; }
	}
final:
	bool HasReticuleCharge()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53721], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float CalculateReloadPercentRemaining()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53723], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61619], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool CanClientRequestReloadNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76406], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanViewZoom()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76916], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetTargetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115117], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void RestoreAccuracy(float fTimeStep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fTimeStep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115119], params.ptr, cast(void*)0);
	}
	void InitVehicleGun()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115121], cast(void*)0, cast(void*)0);
	}
	float CalculateReloadTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115122], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115124], cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115125], params.ptr, cast(void*)0);
	}
	bool IsWeaponInFiringCone()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115127], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115131], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	ScriptClass GetProjectileClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115136], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void UpdateShotsFired(bool Reset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Reset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115138], params.ptr, cast(void*)0);
	}
	int GetNumRoundsCurrentlyInClip()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115140], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	Vector GetEffectLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115142], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void AttachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115145], cast(void*)0, cast(void*)0);
	}
	void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115147], cast(void*)0, cast(void*)0);
	}
	void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115148], cast(void*)0, cast(void*)0);
	}
	void StopMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115150], cast(void*)0, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115151], params.ptr, cast(void*)0);
	}
	void ShakeView()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115154], cast(void*)0, cast(void*)0);
	}
	bool ShouldFireTracer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115156], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldFireTracerBeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115158], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SpawnTracerBeam(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115160], params.ptr, cast(void*)0);
	}
	TrProj_Tracer SpawnTracerEffect(Vector HitLocation, float HitDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(float*)&params[12] = HitDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115164], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[16];
	}
	void WeaponPlaySoundLocal(SoundCue Sound, float NoiseLoudness, bool bStopWhenOwnerDestroyed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115171], params.ptr, cast(void*)0);
	}
	TrProj_Tracer GetTracer(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115175], params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[24];
	}
	void PayAccuracyForShot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115179], cast(void*)0, cast(void*)0);
	}
	Rotator AddSpreadWithAccuracy(Rotator BaseAim, float fAccuracy)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		*cast(float*)&params[12] = fAccuracy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115182], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115193], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	Rotator AddSpread(Rotator BaseAim)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115199], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115202], cast(void*)0, cast(void*)0);
	}
	void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115203], params.ptr, cast(void*)0);
	}
	void PutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115205], cast(void*)0, cast(void*)0);
	}
	void RequestReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115224], cast(void*)0, cast(void*)0);
	}
	void OnClientReloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115225], cast(void*)0, cast(void*)0);
	}
	void ClientFinishedReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115249], cast(void*)0, cast(void*)0);
	}
	void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115250], cast(void*)0, cast(void*)0);
	}
	void BeginAReload()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115253], cast(void*)0, cast(void*)0);
	}
	int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115254], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void UpdateReplicatedCarriedAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115257], cast(void*)0, cast(void*)0);
	}
	void StartZoom(UTPlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115258], params.ptr, cast(void*)0);
	}
	void EndZoom(UTPlayerController PC, bool bReturningTo3P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bReturningTo3P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115262], params.ptr, cast(void*)0);
	}
	void SetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115266], cast(void*)0, cast(void*)0);
	}
	void ResetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115271], cast(void*)0, cast(void*)0);
	}
}
