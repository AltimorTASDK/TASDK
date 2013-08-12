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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetCharacterClassFromInfo;
			ScriptFunction mUpdateEyeHeight;
			ScriptFunction mGetMaterialBelowFeetByLoc;
			ScriptFunction mGetMaterialBelowFeet;
			ScriptFunction mActuallyPlayFootstepSound;
			ScriptFunction mWeaponBob;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mPlayHardLandingEffect;
			ScriptFunction mPlaySonicPunchEffect;
			ScriptFunction mCreateSkiParticleEffects;
			ScriptFunction mClearSkiParticleEffects;
			ScriptFunction mPlaySkiEffects;
			ScriptFunction mStopSkiEffects;
			ScriptFunction mCreateJetpackParticleEffects;
			ScriptFunction mClearJetpackParticleEffects;
			ScriptFunction mPlayJetpackEffects;
			ScriptFunction mUpdateJetpackEffects;
			ScriptFunction mStopJetpackEffects;
			ScriptFunction mPlayReload;
			ScriptFunction mTick;
			ScriptFunction mCalcCamera;
			ScriptFunction mSetThirdPersonCamera;
			ScriptFunction mCalcThirdPersonCam;
			ScriptFunction mCalcOtherWatchingCam;
			ScriptFunction mClearMeshAnimSeqNodes;
			ScriptFunction mCacheMeshAnimSeqNodes;
			ScriptFunction mSuppressAnimNotifies;
		}
		public @property static final
		{
			ScriptFunction SetCharacterClassFromInfo() { return mSetCharacterClassFromInfo ? mSetCharacterClassFromInfo : (mSetCharacterClassFromInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.SetCharacterClassFromInfo")); }
			ScriptFunction UpdateEyeHeight() { return mUpdateEyeHeight ? mUpdateEyeHeight : (mUpdateEyeHeight = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.UpdateEyeHeight")); }
			ScriptFunction GetMaterialBelowFeetByLoc() { return mGetMaterialBelowFeetByLoc ? mGetMaterialBelowFeetByLoc : (mGetMaterialBelowFeetByLoc = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.GetMaterialBelowFeetByLoc")); }
			ScriptFunction GetMaterialBelowFeet() { return mGetMaterialBelowFeet ? mGetMaterialBelowFeet : (mGetMaterialBelowFeet = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.GetMaterialBelowFeet")); }
			ScriptFunction ActuallyPlayFootstepSound() { return mActuallyPlayFootstepSound ? mActuallyPlayFootstepSound : (mActuallyPlayFootstepSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.ActuallyPlayFootstepSound")); }
			ScriptFunction WeaponBob() { return mWeaponBob ? mWeaponBob : (mWeaponBob = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.WeaponBob")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.ReplicatedEvent")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.PostInitAnimTree")); }
			ScriptFunction PlayHardLandingEffect() { return mPlayHardLandingEffect ? mPlayHardLandingEffect : (mPlayHardLandingEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.PlayHardLandingEffect")); }
			ScriptFunction PlaySonicPunchEffect() { return mPlaySonicPunchEffect ? mPlaySonicPunchEffect : (mPlaySonicPunchEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.PlaySonicPunchEffect")); }
			ScriptFunction CreateSkiParticleEffects() { return mCreateSkiParticleEffects ? mCreateSkiParticleEffects : (mCreateSkiParticleEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.CreateSkiParticleEffects")); }
			ScriptFunction ClearSkiParticleEffects() { return mClearSkiParticleEffects ? mClearSkiParticleEffects : (mClearSkiParticleEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.ClearSkiParticleEffects")); }
			ScriptFunction PlaySkiEffects() { return mPlaySkiEffects ? mPlaySkiEffects : (mPlaySkiEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.PlaySkiEffects")); }
			ScriptFunction StopSkiEffects() { return mStopSkiEffects ? mStopSkiEffects : (mStopSkiEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.StopSkiEffects")); }
			ScriptFunction CreateJetpackParticleEffects() { return mCreateJetpackParticleEffects ? mCreateJetpackParticleEffects : (mCreateJetpackParticleEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.CreateJetpackParticleEffects")); }
			ScriptFunction ClearJetpackParticleEffects() { return mClearJetpackParticleEffects ? mClearJetpackParticleEffects : (mClearJetpackParticleEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.ClearJetpackParticleEffects")); }
			ScriptFunction PlayJetpackEffects() { return mPlayJetpackEffects ? mPlayJetpackEffects : (mPlayJetpackEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.PlayJetpackEffects")); }
			ScriptFunction UpdateJetpackEffects() { return mUpdateJetpackEffects ? mUpdateJetpackEffects : (mUpdateJetpackEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.UpdateJetpackEffects")); }
			ScriptFunction StopJetpackEffects() { return mStopJetpackEffects ? mStopJetpackEffects : (mStopJetpackEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.StopJetpackEffects")); }
			ScriptFunction PlayReload() { return mPlayReload ? mPlayReload : (mPlayReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.PlayReload")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.Tick")); }
			ScriptFunction CalcCamera() { return mCalcCamera ? mCalcCamera : (mCalcCamera = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.CalcCamera")); }
			ScriptFunction SetThirdPersonCamera() { return mSetThirdPersonCamera ? mSetThirdPersonCamera : (mSetThirdPersonCamera = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.SetThirdPersonCamera")); }
			ScriptFunction CalcThirdPersonCam() { return mCalcThirdPersonCam ? mCalcThirdPersonCam : (mCalcThirdPersonCam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.CalcThirdPersonCam")); }
			ScriptFunction CalcOtherWatchingCam() { return mCalcOtherWatchingCam ? mCalcOtherWatchingCam : (mCalcOtherWatchingCam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.CalcOtherWatchingCam")); }
			ScriptFunction ClearMeshAnimSeqNodes() { return mClearMeshAnimSeqNodes ? mClearMeshAnimSeqNodes : (mClearMeshAnimSeqNodes = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.ClearMeshAnimSeqNodes")); }
			ScriptFunction CacheMeshAnimSeqNodes() { return mCacheMeshAnimSeqNodes ? mCacheMeshAnimSeqNodes : (mCacheMeshAnimSeqNodes = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.CacheMeshAnimSeqNodes")); }
			ScriptFunction SuppressAnimNotifies() { return mSuppressAnimNotifies ? mSuppressAnimNotifies : (mSuppressAnimNotifies = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerPawn.SuppressAnimNotifies")); }
		}
	}
	@property final auto ref
	{
		ubyte r_nFlashReloadPrimaryWeapon() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 3212); }
		ubyte r_nFlashReloadSecondaryWeapon() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 3213); }
		TrAnimNodeBlendBy3pDevice m_3pDeviceAnimNode() { return *cast(TrAnimNodeBlendBy3pDevice*)(cast(size_t)cast(void*)this + 3204); }
		TrAnimNodeBlendBy3pDevice m_1pBodyMeshDeviceAnimNode() { return *cast(TrAnimNodeBlendBy3pDevice*)(cast(size_t)cast(void*)this + 3208); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_JetpackPSCs() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 3216); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_JetpackRibbonPSCs() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 3228); }
		ScriptArray!(TrPawn.FootstepParticleInfo) m_HardLandingParticles() { return *cast(ScriptArray!(TrPawn.FootstepParticleInfo)*)(cast(size_t)cast(void*)this + 3240); }
		ScriptArray!(TrPawn.FootstepParticleInfo) m_StepParticles() { return *cast(ScriptArray!(TrPawn.FootstepParticleInfo)*)(cast(size_t)cast(void*)this + 3252); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_FootThrusterPSCs() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 3268); }
		ScriptArray!(AnimNodeSequence) m_MeshAnimSequenceNodes() { return *cast(ScriptArray!(AnimNodeSequence)*)(cast(size_t)cast(void*)this + 3436); }
		float BobGroundSpeedMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3432); }
		float BobGroundSpeedMultiplier1() { return *cast(float*)(cast(size_t)cast(void*)this + 3428); }
		float BobTimeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3424); }
		float m_WeaponBobMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3420); }
		float m_WeaponBobMultiplier1() { return *cast(float*)(cast(size_t)cast(void*)this + 3416); }
		float m_BobFootstepMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3412); }
		float m_JumpBob5() { return *cast(float*)(cast(size_t)cast(void*)this + 3408); }
		float m_JumpBob4() { return *cast(float*)(cast(size_t)cast(void*)this + 3404); }
		float m_JumpBob3() { return *cast(float*)(cast(size_t)cast(void*)this + 3400); }
		float m_JumpBob2() { return *cast(float*)(cast(size_t)cast(void*)this + 3396); }
		float m_JumpBob1() { return *cast(float*)(cast(size_t)cast(void*)this + 3392); }
		float m_EyeHeightLandingSkiingMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3388); }
		float m_EyeHeightLandingSkiingMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3384); }
		float m_EyeHeightLandingSpeedSqThresholdSkiing() { return *cast(float*)(cast(size_t)cast(void*)this + 3380); }
		float m_EyeHeightLandingSpeedSqThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 3376); }
		float m_EyeHeightLandingMultiplier5() { return *cast(float*)(cast(size_t)cast(void*)this + 3372); }
		float m_EyeHeightLandingMultiplier4() { return *cast(float*)(cast(size_t)cast(void*)this + 3368); }
		float m_EyeHeightLandingMultiplier3() { return *cast(float*)(cast(size_t)cast(void*)this + 3364); }
		float m_EyeHeightLandingMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3360); }
		float m_EyeHeightLandingMultiplier1() { return *cast(float*)(cast(size_t)cast(void*)this + 3356); }
		float m_EyeHeightLandingMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3352); }
		float m_EyeHeightLandingMinSmoothing() { return *cast(float*)(cast(size_t)cast(void*)this + 3348); }
		float m_EyeHeightLandRecoveryMultiplier2() { return *cast(float*)(cast(size_t)cast(void*)this + 3344); }
		float m_EyeHeightLandRecoveryMultiplier1() { return *cast(float*)(cast(size_t)cast(void*)this + 3340); }
		float m_EyeHeightLandRecoveryMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3336); }
		float m_EyeHeightLandRecoveryMinSmoothing() { return *cast(float*)(cast(size_t)cast(void*)this + 3332); }
		float m_EyeHeightWalkingMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 3328); }
		float m_EyeHeightWalkingMinSmoothing() { return *cast(float*)(cast(size_t)cast(void*)this + 3324); }
		float m_Cam3pZoomInSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3320); }
		float m_Cam3pZoomOutSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3316); }
		Actor m_DeathCamFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 3312); }
		Rotator m_CamRotOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3300); }
		float m_fRibbonZVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 3296); }
		ParticleSystem m_SonicPunchEffect3p() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 3292); }
		ParticleSystem m_SonicPunchEffect1p() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 3288); }
		SoundCue m_SonicPunch3p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 3284); }
		SoundCue m_SonicPunch1p() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 3280); }
		ParticleSystem m_DefaultSkiJetParticle() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 3264); }
		float m_fJetpackSoundFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3200); }
		float m_fRemainingJetpackSoundFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3196); }
	}
final:
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool bForce)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		*cast(bool*)&params[4] = bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCharacterClassFromInfo, params.ptr, cast(void*)0);
	}
	void UpdateEyeHeight(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateEyeHeight, params.ptr, cast(void*)0);
	}
	ScriptName GetMaterialBelowFeetByLoc(Vector TestLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaterialBelowFeetByLoc, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[12];
	}
	ScriptName GetMaterialBelowFeet()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaterialBelowFeet, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void ActuallyPlayFootstepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActuallyPlayFootstepSound, params.ptr, cast(void*)0);
	}
	Vector WeaponBob(float BobDamping, float JumpDamping)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = BobDamping;
		*cast(float*)&params[4] = JumpDamping;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponBob, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void PlayHardLandingEffect(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayHardLandingEffect, params.ptr, cast(void*)0);
	}
	void PlaySonicPunchEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySonicPunchEffect, cast(void*)0, cast(void*)0);
	}
	void CreateSkiParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateSkiParticleEffects, cast(void*)0, cast(void*)0);
	}
	void ClearSkiParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSkiParticleEffects, cast(void*)0, cast(void*)0);
	}
	void PlaySkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySkiEffects, cast(void*)0, cast(void*)0);
	}
	void StopSkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopSkiEffects, cast(void*)0, cast(void*)0);
	}
	void CreateJetpackParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateJetpackParticleEffects, cast(void*)0, cast(void*)0);
	}
	void ClearJetpackParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearJetpackParticleEffects, cast(void*)0, cast(void*)0);
	}
	void PlayJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayJetpackEffects, cast(void*)0, cast(void*)0);
	}
	void UpdateJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateJetpackEffects, cast(void*)0, cast(void*)0);
	}
	void StopJetpackEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopJetpackEffects, cast(void*)0, cast(void*)0);
	}
	void PlayReload(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReload, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	void SetThirdPersonCamera(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetThirdPersonCamera, params.ptr, cast(void*)0);
	}
	bool CalcThirdPersonCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcThirdPersonCam, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	bool CalcOtherWatchingCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV, TrPlayerController WatcherController)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		*cast(TrPlayerController*)&params[32] = WatcherController;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcOtherWatchingCam, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[36];
	}
	void ClearMeshAnimSeqNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearMeshAnimSeqNodes, cast(void*)0, cast(void*)0);
	}
	void CacheMeshAnimSeqNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CacheMeshAnimSeqNodes, cast(void*)0, cast(void*)0);
	}
	void SuppressAnimNotifies(bool bSuppress)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSuppress;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuppressAnimNotifies, params.ptr, cast(void*)0);
	}
}
