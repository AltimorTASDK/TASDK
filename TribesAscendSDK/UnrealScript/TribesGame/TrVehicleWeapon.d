module UnrealScript.TribesGame.TrVehicleWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicleWeapon")()); }
	private static __gshared TrVehicleWeapon mDefaultProperties;
	@property final static TrVehicleWeapon DefaultProperties() { mixin(MGDPC!(TrVehicleWeapon, "TrVehicleWeapon TribesGame.Default__TrVehicleWeapon")()); }
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
			ScriptFunction HasReticuleCharge() { mixin(MGF!("mHasReticuleCharge", "Function TribesGame.TrVehicleWeapon.HasReticuleCharge")()); }
			ScriptFunction CalculateReloadPercentRemaining() { mixin(MGF!("mCalculateReloadPercentRemaining", "Function TribesGame.TrVehicleWeapon.CalculateReloadPercentRemaining")()); }
			ScriptFunction GetAccuracy() { mixin(MGF!("mGetAccuracy", "Function TribesGame.TrVehicleWeapon.GetAccuracy")()); }
			ScriptFunction CanClientRequestReloadNow() { mixin(MGF!("mCanClientRequestReloadNow", "Function TribesGame.TrVehicleWeapon.CanClientRequestReloadNow")()); }
			ScriptFunction CanViewZoom() { mixin(MGF!("mCanViewZoom", "Function TribesGame.TrVehicleWeapon.CanViewZoom")()); }
			ScriptFunction GetTargetAccuracy() { mixin(MGF!("mGetTargetAccuracy", "Function TribesGame.TrVehicleWeapon.GetTargetAccuracy")()); }
			ScriptFunction RestoreAccuracy() { mixin(MGF!("mRestoreAccuracy", "Function TribesGame.TrVehicleWeapon.RestoreAccuracy")()); }
			ScriptFunction InitVehicleGun() { mixin(MGF!("mInitVehicleGun", "Function TribesGame.TrVehicleWeapon.InitVehicleGun")()); }
			ScriptFunction CalculateReloadTime() { mixin(MGF!("mCalculateReloadTime", "Function TribesGame.TrVehicleWeapon.CalculateReloadTime")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrVehicleWeapon.PostBeginPlay")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function TribesGame.TrVehicleWeapon.StartFire")()); }
			ScriptFunction IsWeaponInFiringCone() { mixin(MGF!("mIsWeaponInFiringCone", "Function TribesGame.TrVehicleWeapon.IsWeaponInFiringCone")()); }
			ScriptFunction ProjectileFire() { mixin(MGF!("mProjectileFire", "Function TribesGame.TrVehicleWeapon.ProjectileFire")()); }
			ScriptFunction GetProjectileClass() { mixin(MGF!("mGetProjectileClass", "Function TribesGame.TrVehicleWeapon.GetProjectileClass")()); }
			ScriptFunction UpdateShotsFired() { mixin(MGF!("mUpdateShotsFired", "Function TribesGame.TrVehicleWeapon.UpdateShotsFired")()); }
			ScriptFunction GetNumRoundsCurrentlyInClip() { mixin(MGF!("mGetNumRoundsCurrentlyInClip", "Function TribesGame.TrVehicleWeapon.GetNumRoundsCurrentlyInClip")()); }
			ScriptFunction GetEffectLocation() { mixin(MGF!("mGetEffectLocation", "Function TribesGame.TrVehicleWeapon.GetEffectLocation")()); }
			ScriptFunction AttachMuzzleFlash() { mixin(MGF!("mAttachMuzzleFlash", "Function TribesGame.TrVehicleWeapon.AttachMuzzleFlash")()); }
			ScriptFunction MuzzleFlashTimer() { mixin(MGF!("mMuzzleFlashTimer", "Function TribesGame.TrVehicleWeapon.MuzzleFlashTimer")()); }
			ScriptFunction CauseMuzzleFlash() { mixin(MGF!("mCauseMuzzleFlash", "Function TribesGame.TrVehicleWeapon.CauseMuzzleFlash")()); }
			ScriptFunction StopMuzzleFlash() { mixin(MGF!("mStopMuzzleFlash", "Function TribesGame.TrVehicleWeapon.StopMuzzleFlash")()); }
			ScriptFunction PlayFireEffects() { mixin(MGF!("mPlayFireEffects", "Function TribesGame.TrVehicleWeapon.PlayFireEffects")()); }
			ScriptFunction ShakeView() { mixin(MGF!("mShakeView", "Function TribesGame.TrVehicleWeapon.ShakeView")()); }
			ScriptFunction ShouldFireTracer() { mixin(MGF!("mShouldFireTracer", "Function TribesGame.TrVehicleWeapon.ShouldFireTracer")()); }
			ScriptFunction ShouldFireTracerBeam() { mixin(MGF!("mShouldFireTracerBeam", "Function TribesGame.TrVehicleWeapon.ShouldFireTracerBeam")()); }
			ScriptFunction SpawnTracerBeam() { mixin(MGF!("mSpawnTracerBeam", "Function TribesGame.TrVehicleWeapon.SpawnTracerBeam")()); }
			ScriptFunction SpawnTracerEffect() { mixin(MGF!("mSpawnTracerEffect", "Function TribesGame.TrVehicleWeapon.SpawnTracerEffect")()); }
			ScriptFunction WeaponPlaySoundLocal() { mixin(MGF!("mWeaponPlaySoundLocal", "Function TribesGame.TrVehicleWeapon.WeaponPlaySoundLocal")()); }
			ScriptFunction GetTracer() { mixin(MGF!("mGetTracer", "Function TribesGame.TrVehicleWeapon.GetTracer")()); }
			ScriptFunction PayAccuracyForShot() { mixin(MGF!("mPayAccuracyForShot", "Function TribesGame.TrVehicleWeapon.PayAccuracyForShot")()); }
			ScriptFunction AddSpreadWithAccuracy() { mixin(MGF!("mAddSpreadWithAccuracy", "Function TribesGame.TrVehicleWeapon.AddSpreadWithAccuracy")()); }
			ScriptFunction GetAdjustedAim() { mixin(MGF!("mGetAdjustedAim", "Function TribesGame.TrVehicleWeapon.GetAdjustedAim")()); }
			ScriptFunction AddSpread() { mixin(MGF!("mAddSpread", "Function TribesGame.TrVehicleWeapon.AddSpread")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function TribesGame.TrVehicleWeapon.FireAmmunition")()); }
			ScriptFunction BeginFire() { mixin(MGF!("mBeginFire", "Function TribesGame.TrVehicleWeapon.BeginFire")()); }
			ScriptFunction PutDownWeapon() { mixin(MGF!("mPutDownWeapon", "Function TribesGame.TrVehicleWeapon.PutDownWeapon")()); }
			ScriptFunction RequestReload() { mixin(MGF!("mRequestReload", "Function TribesGame.TrVehicleWeapon.RequestReload")()); }
			ScriptFunction OnClientReloaded() { mixin(MGF!("mOnClientReloaded", "Function TribesGame.TrVehicleWeapon.OnClientReloaded")()); }
			ScriptFunction ClientFinishedReload() { mixin(MGF!("mClientFinishedReload", "Function TribesGame.TrVehicleWeapon.ClientFinishedReload")()); }
			ScriptFunction OnReloadComplete() { mixin(MGF!("mOnReloadComplete", "Function TribesGame.TrVehicleWeapon.OnReloadComplete")()); }
			ScriptFunction BeginAReload() { mixin(MGF!("mBeginAReload", "Function TribesGame.TrVehicleWeapon.BeginAReload")()); }
			ScriptFunction AddCarriedAmmo() { mixin(MGF!("mAddCarriedAmmo", "Function TribesGame.TrVehicleWeapon.AddCarriedAmmo")()); }
			ScriptFunction UpdateReplicatedCarriedAmmo() { mixin(MGF!("mUpdateReplicatedCarriedAmmo", "Function TribesGame.TrVehicleWeapon.UpdateReplicatedCarriedAmmo")()); }
			ScriptFunction StartZoom() { mixin(MGF!("mStartZoom", "Function TribesGame.TrVehicleWeapon.StartZoom")()); }
			ScriptFunction EndZoom() { mixin(MGF!("mEndZoom", "Function TribesGame.TrVehicleWeapon.EndZoom")()); }
			ScriptFunction SetAltReticule() { mixin(MGF!("mSetAltReticule", "Function TribesGame.TrVehicleWeapon.SetAltReticule")()); }
			ScriptFunction ResetAltReticule() { mixin(MGF!("mResetAltReticule", "Function TribesGame.TrVehicleWeapon.ResetAltReticule")()); }
		}
	}
	static struct Active
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrVehicleWeapon.Active")()); }
	}
	static struct WeaponFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrVehicleWeapon.WeaponFiring")()); }
	}
	static struct DeviceReloading
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrVehicleWeapon.DeviceReloading")()); }
	}
	@property final
	{
		auto ref
		{
			int m_nReticuleIndex() { mixin(MGPC!("int", 1656)()); }
			float m_fReloadTimeRemaining() { mixin(MGPC!("float", 1704)()); }
			ScriptName m_WeaponSpinControl() { mixin(MGPC!("ScriptName", 1772)()); }
			TrObject.EWeaponTracerType m_TracerType() { mixin(MGPC!("TrObject.EWeaponTracerType", 1708)()); }
			ParticleSystem m_TracerBeamTemplate() { mixin(MGPC!("ParticleSystem", 1724)()); }
			float m_fShowTracerDistance() { mixin(MGPC!("float", 1720)()); }
			CameraShake m_FireCameraShake() { mixin(MGPC!("CameraShake", 1768)()); }
			MaterialInstanceConstant m_ZoomOverlayMaterial() { mixin(MGPC!("MaterialInstanceConstant", 1764)()); }
			ScriptName m_nmZoomMaterialEffectName() { mixin(MGPC!("ScriptName", 1756)()); }
			int r_nCarriedAmmoCount() { mixin(MGPC!("int", 1752)()); }
			SoundCue m_DryFireSoundCue() { mixin(MGPC!("SoundCue", 1748)()); }
			SoundCue m_ReloadAmmoSoundCue() { mixin(MGPC!("SoundCue", 1744)()); }
			float m_fPctTimeBeforeReload() { mixin(MGPC!("float", 1740)()); }
			float m_fReloadTime() { mixin(MGPC!("float", 1736)()); }
			int m_nCarriedAmmo() { mixin(MGPC!("int", 1732)()); }
			int m_nLowAmmoWarning() { mixin(MGPC!("int", 1728)()); }
			int m_nTracerInterval() { mixin(MGPC!("int", 1716)()); }
			float m_fAccuracyCorrectionRate() { mixin(MGPC!("float", 1700)()); }
			float m_fAimingModeAccuracyBonus() { mixin(MGPC!("float", 1696)()); }
			float m_fAccuracyLossMax() { mixin(MGPC!("float", 1692)()); }
			float m_fAccuracyLossOnShot() { mixin(MGPC!("float", 1688)()); }
			float m_fAccuracyLossOnWeaponSwitch() { mixin(MGPC!("float", 1684)()); }
			float m_fAccuracyLossOnJump() { mixin(MGPC!("float", 1680)()); }
			float m_fDefaultAccuracy() { mixin(MGPC!("float", 1676)()); }
			float m_fCachedFiringCone() { mixin(MGPC!("float", 1672)()); }
			int m_nFiringConeWidthDegrees() { mixin(MGPC!("int", 1668)()); }
			int m_ShotsFired() { mixin(MGPC!("int", 1664)()); }
			int m_nAltReticuleIndex() { mixin(MGPC!("int", 1660)()); }
			int DBWeaponId() { mixin(MGPC!("int", 1652)()); }
		}
		bool m_bShowAmmoIndicator() { mixin(MGBPC!(1712, 0x20)()); }
		bool m_bShowAmmoIndicator(bool val) { mixin(MSBPC!(1712, 0x20)()); }
		bool m_bEndZoomOnReload() { mixin(MGBPC!(1712, 0x100)()); }
		bool m_bEndZoomOnReload(bool val) { mixin(MSBPC!(1712, 0x100)()); }
		bool r_bIsReloading() { mixin(MGBPC!(1712, 0x40)()); }
		bool r_bIsReloading(bool val) { mixin(MSBPC!(1712, 0x40)()); }
		bool m_bSpawnTracers() { mixin(MGBPC!(1712, 0x1)()); }
		bool m_bSpawnTracers(bool val) { mixin(MSBPC!(1712, 0x1)()); }
		bool m_bSpawnTracerBeams() { mixin(MGBPC!(1712, 0x2)()); }
		bool m_bSpawnTracerBeams(bool val) { mixin(MSBPC!(1712, 0x2)()); }
		bool m_bCanZoom() { mixin(MGBPC!(1712, 0x80)()); }
		bool m_bCanZoom(bool val) { mixin(MSBPC!(1712, 0x80)()); }
		bool m_bPendingReload() { mixin(MGBPC!(1712, 0x10)()); }
		bool m_bPendingReload(bool val) { mixin(MSBPC!(1712, 0x10)()); }
		bool m_bReloadSingles() { mixin(MGBPC!(1712, 0x8)()); }
		bool m_bReloadSingles(bool val) { mixin(MSBPC!(1712, 0x8)()); }
		bool m_bLowAmmoOn() { mixin(MGBPC!(1712, 0x4)()); }
		bool m_bLowAmmoOn(bool val) { mixin(MSBPC!(1712, 0x4)()); }
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
	void UpdateShotsFired(bool* Reset = null)
	{
		ubyte params[4];
		params[] = 0;
		if (Reset !is null)
			*cast(bool*)params.ptr = *Reset;
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
	void PlayFireEffects(ubyte FireModeNum, Vector* HitLocation = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		if (HitLocation !is null)
			*cast(Vector*)&params[4] = *HitLocation;
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
	void WeaponPlaySoundLocal(SoundCue Sound, float* NoiseLoudness = null, bool* bStopWhenOwnerDestroyed = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		if (NoiseLoudness !is null)
			*cast(float*)&params[4] = *NoiseLoudness;
		if (bStopWhenOwnerDestroyed !is null)
			*cast(bool*)&params[8] = *bStopWhenOwnerDestroyed;
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
	void EndZoom(UTPlayerController PC, bool* bReturningTo3P = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		if (bReturningTo3P !is null)
			*cast(bool*)&params[4] = *bReturningTo3P;
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
