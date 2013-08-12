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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHasReticuleCharge;
			ScriptFunction mCalculateReloadPercentRemaining;
			ScriptFunction mGetAccuracy;
			ScriptFunction mCanClientRequestReloadNow;
			ScriptFunction mCanViewZoom;
			ScriptFunction mGetTargetAccuracy;
			ScriptFunction mRestoreAccuracy;
			ScriptFunction mInitVehicleGun;
			ScriptFunction mCalculateReloadTime;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mStartFire;
			ScriptFunction mIsWeaponInFiringCone;
			ScriptFunction mProjectileFire;
			ScriptFunction mGetProjectileClass;
			ScriptFunction mUpdateShotsFired;
			ScriptFunction mGetNumRoundsCurrentlyInClip;
			ScriptFunction mGetEffectLocation;
			ScriptFunction mAttachMuzzleFlash;
			ScriptFunction mMuzzleFlashTimer;
			ScriptFunction mCauseMuzzleFlash;
			ScriptFunction mStopMuzzleFlash;
			ScriptFunction mPlayFireEffects;
			ScriptFunction mShakeView;
			ScriptFunction mShouldFireTracer;
			ScriptFunction mShouldFireTracerBeam;
			ScriptFunction mSpawnTracerBeam;
			ScriptFunction mSpawnTracerEffect;
			ScriptFunction mWeaponPlaySoundLocal;
			ScriptFunction mGetTracer;
			ScriptFunction mPayAccuracyForShot;
			ScriptFunction mAddSpreadWithAccuracy;
			ScriptFunction mGetAdjustedAim;
			ScriptFunction mAddSpread;
			ScriptFunction mFireAmmunition;
			ScriptFunction mBeginFire;
			ScriptFunction mPutDownWeapon;
			ScriptFunction mRequestReload;
			ScriptFunction mOnClientReloaded;
			ScriptFunction mClientFinishedReload;
			ScriptFunction mOnReloadComplete;
			ScriptFunction mBeginAReload;
			ScriptFunction mAddCarriedAmmo;
			ScriptFunction mUpdateReplicatedCarriedAmmo;
			ScriptFunction mStartZoom;
			ScriptFunction mEndZoom;
			ScriptFunction mSetAltReticule;
			ScriptFunction mResetAltReticule;
		}
		public @property static final
		{
			ScriptFunction HasReticuleCharge() { return mHasReticuleCharge ? mHasReticuleCharge : (mHasReticuleCharge = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.HasReticuleCharge")); }
			ScriptFunction CalculateReloadPercentRemaining() { return mCalculateReloadPercentRemaining ? mCalculateReloadPercentRemaining : (mCalculateReloadPercentRemaining = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.CalculateReloadPercentRemaining")); }
			ScriptFunction GetAccuracy() { return mGetAccuracy ? mGetAccuracy : (mGetAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.GetAccuracy")); }
			ScriptFunction CanClientRequestReloadNow() { return mCanClientRequestReloadNow ? mCanClientRequestReloadNow : (mCanClientRequestReloadNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.CanClientRequestReloadNow")); }
			ScriptFunction CanViewZoom() { return mCanViewZoom ? mCanViewZoom : (mCanViewZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.CanViewZoom")); }
			ScriptFunction GetTargetAccuracy() { return mGetTargetAccuracy ? mGetTargetAccuracy : (mGetTargetAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.GetTargetAccuracy")); }
			ScriptFunction RestoreAccuracy() { return mRestoreAccuracy ? mRestoreAccuracy : (mRestoreAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.RestoreAccuracy")); }
			ScriptFunction InitVehicleGun() { return mInitVehicleGun ? mInitVehicleGun : (mInitVehicleGun = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.InitVehicleGun")); }
			ScriptFunction CalculateReloadTime() { return mCalculateReloadTime ? mCalculateReloadTime : (mCalculateReloadTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.CalculateReloadTime")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.PostBeginPlay")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.StartFire")); }
			ScriptFunction IsWeaponInFiringCone() { return mIsWeaponInFiringCone ? mIsWeaponInFiringCone : (mIsWeaponInFiringCone = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.IsWeaponInFiringCone")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.ProjectileFire")); }
			ScriptFunction GetProjectileClass() { return mGetProjectileClass ? mGetProjectileClass : (mGetProjectileClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.GetProjectileClass")); }
			ScriptFunction UpdateShotsFired() { return mUpdateShotsFired ? mUpdateShotsFired : (mUpdateShotsFired = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.UpdateShotsFired")); }
			ScriptFunction GetNumRoundsCurrentlyInClip() { return mGetNumRoundsCurrentlyInClip ? mGetNumRoundsCurrentlyInClip : (mGetNumRoundsCurrentlyInClip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.GetNumRoundsCurrentlyInClip")); }
			ScriptFunction GetEffectLocation() { return mGetEffectLocation ? mGetEffectLocation : (mGetEffectLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.GetEffectLocation")); }
			ScriptFunction AttachMuzzleFlash() { return mAttachMuzzleFlash ? mAttachMuzzleFlash : (mAttachMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.AttachMuzzleFlash")); }
			ScriptFunction MuzzleFlashTimer() { return mMuzzleFlashTimer ? mMuzzleFlashTimer : (mMuzzleFlashTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.MuzzleFlashTimer")); }
			ScriptFunction CauseMuzzleFlash() { return mCauseMuzzleFlash ? mCauseMuzzleFlash : (mCauseMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.CauseMuzzleFlash")); }
			ScriptFunction StopMuzzleFlash() { return mStopMuzzleFlash ? mStopMuzzleFlash : (mStopMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.StopMuzzleFlash")); }
			ScriptFunction PlayFireEffects() { return mPlayFireEffects ? mPlayFireEffects : (mPlayFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.PlayFireEffects")); }
			ScriptFunction ShakeView() { return mShakeView ? mShakeView : (mShakeView = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.ShakeView")); }
			ScriptFunction ShouldFireTracer() { return mShouldFireTracer ? mShouldFireTracer : (mShouldFireTracer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.ShouldFireTracer")); }
			ScriptFunction ShouldFireTracerBeam() { return mShouldFireTracerBeam ? mShouldFireTracerBeam : (mShouldFireTracerBeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.ShouldFireTracerBeam")); }
			ScriptFunction SpawnTracerBeam() { return mSpawnTracerBeam ? mSpawnTracerBeam : (mSpawnTracerBeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.SpawnTracerBeam")); }
			ScriptFunction SpawnTracerEffect() { return mSpawnTracerEffect ? mSpawnTracerEffect : (mSpawnTracerEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.SpawnTracerEffect")); }
			ScriptFunction WeaponPlaySoundLocal() { return mWeaponPlaySoundLocal ? mWeaponPlaySoundLocal : (mWeaponPlaySoundLocal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.WeaponPlaySoundLocal")); }
			ScriptFunction GetTracer() { return mGetTracer ? mGetTracer : (mGetTracer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.GetTracer")); }
			ScriptFunction PayAccuracyForShot() { return mPayAccuracyForShot ? mPayAccuracyForShot : (mPayAccuracyForShot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.PayAccuracyForShot")); }
			ScriptFunction AddSpreadWithAccuracy() { return mAddSpreadWithAccuracy ? mAddSpreadWithAccuracy : (mAddSpreadWithAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.AddSpreadWithAccuracy")); }
			ScriptFunction GetAdjustedAim() { return mGetAdjustedAim ? mGetAdjustedAim : (mGetAdjustedAim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.GetAdjustedAim")); }
			ScriptFunction AddSpread() { return mAddSpread ? mAddSpread : (mAddSpread = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.AddSpread")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.FireAmmunition")); }
			ScriptFunction BeginFire() { return mBeginFire ? mBeginFire : (mBeginFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.BeginFire")); }
			ScriptFunction PutDownWeapon() { return mPutDownWeapon ? mPutDownWeapon : (mPutDownWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.PutDownWeapon")); }
			ScriptFunction RequestReload() { return mRequestReload ? mRequestReload : (mRequestReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.RequestReload")); }
			ScriptFunction OnClientReloaded() { return mOnClientReloaded ? mOnClientReloaded : (mOnClientReloaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.OnClientReloaded")); }
			ScriptFunction ClientFinishedReload() { return mClientFinishedReload ? mClientFinishedReload : (mClientFinishedReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.ClientFinishedReload")); }
			ScriptFunction OnReloadComplete() { return mOnReloadComplete ? mOnReloadComplete : (mOnReloadComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.OnReloadComplete")); }
			ScriptFunction BeginAReload() { return mBeginAReload ? mBeginAReload : (mBeginAReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.BeginAReload")); }
			ScriptFunction AddCarriedAmmo() { return mAddCarriedAmmo ? mAddCarriedAmmo : (mAddCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.AddCarriedAmmo")); }
			ScriptFunction UpdateReplicatedCarriedAmmo() { return mUpdateReplicatedCarriedAmmo ? mUpdateReplicatedCarriedAmmo : (mUpdateReplicatedCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.UpdateReplicatedCarriedAmmo")); }
			ScriptFunction StartZoom() { return mStartZoom ? mStartZoom : (mStartZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.StartZoom")); }
			ScriptFunction EndZoom() { return mEndZoom ? mEndZoom : (mEndZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.EndZoom")); }
			ScriptFunction SetAltReticule() { return mSetAltReticule ? mSetAltReticule : (mSetAltReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.SetAltReticule")); }
			ScriptFunction ResetAltReticule() { return mResetAltReticule ? mResetAltReticule : (mResetAltReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon.ResetAltReticule")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.HasReticuleCharge, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float CalculateReloadPercentRemaining()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateReloadPercentRemaining, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAccuracy, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool CanClientRequestReloadNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanClientRequestReloadNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanViewZoom()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanViewZoom, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetTargetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetAccuracy, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void RestoreAccuracy(float fTimeStep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fTimeStep;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestoreAccuracy, params.ptr, cast(void*)0);
	}
	void InitVehicleGun()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitVehicleGun, cast(void*)0, cast(void*)0);
	}
	float CalculateReloadTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateReloadTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	bool IsWeaponInFiringCone()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsWeaponInFiringCone, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	ScriptClass GetProjectileClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProjectileClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void UpdateShotsFired(bool Reset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Reset;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateShotsFired, params.ptr, cast(void*)0);
	}
	int GetNumRoundsCurrentlyInClip()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumRoundsCurrentlyInClip, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	Vector GetEffectLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEffectLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void AttachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MuzzleFlashTimer, cast(void*)0, cast(void*)0);
	}
	void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CauseMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void StopMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireEffects, params.ptr, cast(void*)0);
	}
	void ShakeView()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShakeView, cast(void*)0, cast(void*)0);
	}
	bool ShouldFireTracer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldFireTracer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldFireTracerBeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldFireTracerBeam, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SpawnTracerBeam(Vector Start, Vector End)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnTracerBeam, params.ptr, cast(void*)0);
	}
	TrProj_Tracer SpawnTracerEffect(Vector HitLocation, float HitDistance)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(float*)&params[12] = HitDistance;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnTracerEffect, params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[16];
	}
	void WeaponPlaySoundLocal(SoundCue Sound, float NoiseLoudness, bool bStopWhenOwnerDestroyed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponPlaySoundLocal, params.ptr, cast(void*)0);
	}
	TrProj_Tracer GetTracer(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTracer, params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[24];
	}
	void PayAccuracyForShot()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PayAccuracyForShot, cast(void*)0, cast(void*)0);
	}
	Rotator AddSpreadWithAccuracy(Rotator BaseAim, float fAccuracy)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		*cast(float*)&params[12] = fAccuracy;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSpreadWithAccuracy, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	Rotator AddSpread(Rotator BaseAim)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = BaseAim;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSpread, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginFire, params.ptr, cast(void*)0);
	}
	void PutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PutDownWeapon, cast(void*)0, cast(void*)0);
	}
	void RequestReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestReload, cast(void*)0, cast(void*)0);
	}
	void OnClientReloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClientReloaded, cast(void*)0, cast(void*)0);
	}
	void ClientFinishedReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientFinishedReload, cast(void*)0, cast(void*)0);
	}
	void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReloadComplete, cast(void*)0, cast(void*)0);
	}
	void BeginAReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginAReload, cast(void*)0, cast(void*)0);
	}
	int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCarriedAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void UpdateReplicatedCarriedAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateReplicatedCarriedAmmo, cast(void*)0, cast(void*)0);
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
	void SetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAltReticule, cast(void*)0, cast(void*)0);
	}
	void ResetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetAltReticule, cast(void*)0, cast(void*)0);
	}
}
