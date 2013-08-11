module UnrealScript.TribesGame.TrPlayerPawn;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrAnimNodeBlendBy3pDevice;

extern(C++) interface TrPlayerPawn : TrPawn
{
	public @property final auto ref ubyte r_nFlashReloadPrimaryWeapon() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 3212); }
	public @property final auto ref ubyte r_nFlashReloadSecondaryWeapon() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 3213); }
	public @property final auto ref TrAnimNodeBlendBy3pDevice m_3pDeviceAnimNode() { return *cast(TrAnimNodeBlendBy3pDevice*)(cast(size_t)cast(void*)this + 3204); }
	public @property final auto ref TrAnimNodeBlendBy3pDevice m_1pBodyMeshDeviceAnimNode() { return *cast(TrAnimNodeBlendBy3pDevice*)(cast(size_t)cast(void*)this + 3208); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) m_JetpackPSCs() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 3216); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) m_JetpackRibbonPSCs() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 3228); }
	public @property final auto ref ScriptArray!(TrPawn.FootstepParticleInfo) m_HardLandingParticles() { return *cast(ScriptArray!(TrPawn.FootstepParticleInfo)*)(cast(size_t)cast(void*)this + 3240); }
	public @property final auto ref ScriptArray!(TrPawn.FootstepParticleInfo) m_StepParticles() { return *cast(ScriptArray!(TrPawn.FootstepParticleInfo)*)(cast(size_t)cast(void*)this + 3252); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) m_FootThrusterPSCs() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 3268); }
	public @property final auto ref ScriptArray!(AnimNodeSequence) m_MeshAnimSequenceNodes() { return *cast(ScriptArray!(AnimNodeSequence)*)(cast(size_t)cast(void*)this + 3436); }
	public @property final auto ref float BobGroundSpeedMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3432); }
	public @property final auto ref float BobGroundSpeedMultiplier1() { return *cast(float*)(cast(size_t)cast(void*)this + 3428); }
	public @property final auto ref float BobTimeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3424); }
	public @property final auto ref float m_WeaponBobMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3420); }
	public @property final auto ref float m_WeaponBobMultiplier1() { return *cast(float*)(cast(size_t)cast(void*)this + 3416); }
	public @property final auto ref float m_BobFootstepMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3412); }
	public @property final auto ref float m_JumpBob5() { return *cast(float*)(cast(size_t)cast(void*)this + 3408); }
	public @property final auto ref float m_JumpBob4() { return *cast(float*)(cast(size_t)cast(void*)this + 3404); }
	public @property final auto ref float m_JumpBob3() { return *cast(float*)(cast(size_t)cast(void*)this + 3400); }
	public @property final auto ref float m_JumpBob2() { return *cast(float*)(cast(size_t)cast(void*)this + 3396); }
	public @property final auto ref float m_JumpBob1() { return *cast(float*)(cast(size_t)cast(void*)this + 3392); }
	public @property final auto ref float m_EyeHeightLandingSkiingMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3388); }
	public @property final auto ref float m_EyeHeightLandingSkiingMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3384); }
	public @property final auto ref float m_EyeHeightLandingSpeedSqThresholdSkiing() { return *cast(float*)(cast(size_t)cast(void*)this + 3380); }
	public @property final auto ref float m_EyeHeightLandingSpeedSqThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 3376); }
	public @property final auto ref float m_EyeHeightLandingMultiplier5() { return *cast(float*)(cast(size_t)cast(void*)this + 3372); }
	public @property final auto ref float m_EyeHeightLandingMultiplier4() { return *cast(float*)(cast(size_t)cast(void*)this + 3368); }
	public @property final auto ref float m_EyeHeightLandingMultiplier3() { return *cast(float*)(cast(size_t)cast(void*)this + 3364); }
	public @property final auto ref float m_EyeHeightLandingMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3360); }
	public @property final auto ref float m_EyeHeightLandingMultiplier1() { return *cast(float*)(cast(size_t)cast(void*)this + 3356); }
	public @property final auto ref float m_EyeHeightLandingMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3352); }
	public @property final auto ref float m_EyeHeightLandingMinSmoothing() { return *cast(float*)(cast(size_t)cast(void*)this + 3348); }
	public @property final auto ref float m_EyeHeightLandRecoveryMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3344); }
	public @property final auto ref float m_EyeHeightLandRecoveryMultiplier1() { return *cast(float*)(cast(size_t)cast(void*)this + 3340); }
	public @property final auto ref float m_EyeHeightLandRecoveryMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3336); }
	public @property final auto ref float m_EyeHeightLandRecoveryMinSmoothing() { return *cast(float*)(cast(size_t)cast(void*)this + 3332); }
	public @property final auto ref float m_EyeHeightWalkingMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3328); }
	public @property final auto ref float m_EyeHeightWalkingMinSmoothing() { return *cast(float*)(cast(size_t)cast(void*)this + 3324); }
	public @property final auto ref float m_Cam3pZoomInSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3320); }
	public @property final auto ref float m_Cam3pZoomOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3316); }
	public @property final auto ref Actor m_DeathCamFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 3312); }
	public @property final auto ref Rotator m_CamRotOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3300); }
	public @property final auto ref float m_fRibbonZVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 3296); }
	public @property final auto ref ParticleSystem m_SonicPunchEffect3p() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 3292); }
	public @property final auto ref ParticleSystem m_SonicPunchEffect1p() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 3288); }
	public @property final auto ref SoundCue m_SonicPunch3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 3284); }
	public @property final auto ref SoundCue m_SonicPunch1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 3280); }
	public @property final auto ref ParticleSystem m_DefaultSkiJetParticle() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 3264); }
	public @property final auto ref float m_fJetpackSoundFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3200); }
	public @property final auto ref float m_fRemainingJetpackSoundFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3196); }
	final void SetCharacterClassFromInfo(ScriptClass Info, bool bForce)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Info;
		*cast(bool*)&params[4] = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73446], params.ptr, cast(void*)0);
	}
	final void UpdateEyeHeight(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73451], params.ptr, cast(void*)0);
	}
	final ScriptName GetMaterialBelowFeetByLoc(Vector TestLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73466], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[12];
	}
	final ScriptName GetMaterialBelowFeet()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73477], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final void ActuallyPlayFootstepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73479], params.ptr, cast(void*)0);
	}
	final Vector WeaponBob(float BobDamping, float JumpDamping)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = BobDamping;
		*cast(float*)&params[4] = JumpDamping;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73488], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73493], params.ptr, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73495], params.ptr, cast(void*)0);
	}
	final void PlayHardLandingEffect(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73498], params.ptr, cast(void*)0);
	}
	final void PlaySonicPunchEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73503], cast(void*)0, cast(void*)0);
	}
	final void CreateSkiParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73508], cast(void*)0, cast(void*)0);
	}
	final void ClearSkiParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73516], cast(void*)0, cast(void*)0);
	}
	final void PlaySkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73518], cast(void*)0, cast(void*)0);
	}
	final void StopSkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73520], cast(void*)0, cast(void*)0);
	}
	final void CreateJetpackParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73522], cast(void*)0, cast(void*)0);
	}
	final void ClearJetpackParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73535], cast(void*)0, cast(void*)0);
	}
	final void PlayJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73537], cast(void*)0, cast(void*)0);
	}
	final void UpdateJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73540], cast(void*)0, cast(void*)0);
	}
	final void StopJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73542], cast(void*)0, cast(void*)0);
	}
	final void PlayReload(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73544], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73549], params.ptr, cast(void*)0);
	}
	final bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73551], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	final void SetThirdPersonCamera(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73557], params.ptr, cast(void*)0);
	}
	final bool CalcThirdPersonCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73559], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	final bool CalcOtherWatchingCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV, TrPlayerController WatcherController)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		*cast(TrPlayerController*)&params[32] = WatcherController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73576], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[36];
	}
	final void ClearMeshAnimSeqNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73590], cast(void*)0, cast(void*)0);
	}
	final void CacheMeshAnimSeqNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73591], cast(void*)0, cast(void*)0);
	}
	final void SuppressAnimNotifies(bool bSuppress)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSuppress;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73593], params.ptr, cast(void*)0);
	}
}
