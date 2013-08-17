module UnrealScript.TribesGame.TrPlayerPawn;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerPawn")()); }
	private static __gshared TrPlayerPawn mDefaultProperties;
	@property final static TrPlayerPawn DefaultProperties() { mixin(MGDPC!(TrPlayerPawn, "TrPlayerPawn TribesGame.Default__TrPlayerPawn")()); }
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
			ScriptFunction SetCharacterClassFromInfo() { mixin(MGF!("mSetCharacterClassFromInfo", "Function TribesGame.TrPlayerPawn.SetCharacterClassFromInfo")()); }
			ScriptFunction UpdateEyeHeight() { mixin(MGF!("mUpdateEyeHeight", "Function TribesGame.TrPlayerPawn.UpdateEyeHeight")()); }
			ScriptFunction GetMaterialBelowFeetByLoc() { mixin(MGF!("mGetMaterialBelowFeetByLoc", "Function TribesGame.TrPlayerPawn.GetMaterialBelowFeetByLoc")()); }
			ScriptFunction GetMaterialBelowFeet() { mixin(MGF!("mGetMaterialBelowFeet", "Function TribesGame.TrPlayerPawn.GetMaterialBelowFeet")()); }
			ScriptFunction ActuallyPlayFootstepSound() { mixin(MGF!("mActuallyPlayFootstepSound", "Function TribesGame.TrPlayerPawn.ActuallyPlayFootstepSound")()); }
			ScriptFunction WeaponBob() { mixin(MGF!("mWeaponBob", "Function TribesGame.TrPlayerPawn.WeaponBob")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrPlayerPawn.ReplicatedEvent")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrPlayerPawn.PostInitAnimTree")()); }
			ScriptFunction PlayHardLandingEffect() { mixin(MGF!("mPlayHardLandingEffect", "Function TribesGame.TrPlayerPawn.PlayHardLandingEffect")()); }
			ScriptFunction PlaySonicPunchEffect() { mixin(MGF!("mPlaySonicPunchEffect", "Function TribesGame.TrPlayerPawn.PlaySonicPunchEffect")()); }
			ScriptFunction CreateSkiParticleEffects() { mixin(MGF!("mCreateSkiParticleEffects", "Function TribesGame.TrPlayerPawn.CreateSkiParticleEffects")()); }
			ScriptFunction ClearSkiParticleEffects() { mixin(MGF!("mClearSkiParticleEffects", "Function TribesGame.TrPlayerPawn.ClearSkiParticleEffects")()); }
			ScriptFunction PlaySkiEffects() { mixin(MGF!("mPlaySkiEffects", "Function TribesGame.TrPlayerPawn.PlaySkiEffects")()); }
			ScriptFunction StopSkiEffects() { mixin(MGF!("mStopSkiEffects", "Function TribesGame.TrPlayerPawn.StopSkiEffects")()); }
			ScriptFunction CreateJetpackParticleEffects() { mixin(MGF!("mCreateJetpackParticleEffects", "Function TribesGame.TrPlayerPawn.CreateJetpackParticleEffects")()); }
			ScriptFunction ClearJetpackParticleEffects() { mixin(MGF!("mClearJetpackParticleEffects", "Function TribesGame.TrPlayerPawn.ClearJetpackParticleEffects")()); }
			ScriptFunction PlayJetpackEffects() { mixin(MGF!("mPlayJetpackEffects", "Function TribesGame.TrPlayerPawn.PlayJetpackEffects")()); }
			ScriptFunction UpdateJetpackEffects() { mixin(MGF!("mUpdateJetpackEffects", "Function TribesGame.TrPlayerPawn.UpdateJetpackEffects")()); }
			ScriptFunction StopJetpackEffects() { mixin(MGF!("mStopJetpackEffects", "Function TribesGame.TrPlayerPawn.StopJetpackEffects")()); }
			ScriptFunction PlayReload() { mixin(MGF!("mPlayReload", "Function TribesGame.TrPlayerPawn.PlayReload")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrPlayerPawn.Tick")()); }
			ScriptFunction CalcCamera() { mixin(MGF!("mCalcCamera", "Function TribesGame.TrPlayerPawn.CalcCamera")()); }
			ScriptFunction SetThirdPersonCamera() { mixin(MGF!("mSetThirdPersonCamera", "Function TribesGame.TrPlayerPawn.SetThirdPersonCamera")()); }
			ScriptFunction CalcThirdPersonCam() { mixin(MGF!("mCalcThirdPersonCam", "Function TribesGame.TrPlayerPawn.CalcThirdPersonCam")()); }
			ScriptFunction CalcOtherWatchingCam() { mixin(MGF!("mCalcOtherWatchingCam", "Function TribesGame.TrPlayerPawn.CalcOtherWatchingCam")()); }
			ScriptFunction ClearMeshAnimSeqNodes() { mixin(MGF!("mClearMeshAnimSeqNodes", "Function TribesGame.TrPlayerPawn.ClearMeshAnimSeqNodes")()); }
			ScriptFunction CacheMeshAnimSeqNodes() { mixin(MGF!("mCacheMeshAnimSeqNodes", "Function TribesGame.TrPlayerPawn.CacheMeshAnimSeqNodes")()); }
			ScriptFunction SuppressAnimNotifies() { mixin(MGF!("mSuppressAnimNotifies", "Function TribesGame.TrPlayerPawn.SuppressAnimNotifies")()); }
		}
	}
	@property final auto ref
	{
		ubyte r_nFlashReloadPrimaryWeapon() { mixin(MGPC!("ubyte", 3212)()); }
		ubyte r_nFlashReloadSecondaryWeapon() { mixin(MGPC!("ubyte", 3213)()); }
		TrAnimNodeBlendBy3pDevice m_3pDeviceAnimNode() { mixin(MGPC!("TrAnimNodeBlendBy3pDevice", 3204)()); }
		TrAnimNodeBlendBy3pDevice m_1pBodyMeshDeviceAnimNode() { mixin(MGPC!("TrAnimNodeBlendBy3pDevice", 3208)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_JetpackPSCs() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 3216)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_JetpackRibbonPSCs() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 3228)()); }
		ScriptArray!(TrPawn.FootstepParticleInfo) m_HardLandingParticles() { mixin(MGPC!("ScriptArray!(TrPawn.FootstepParticleInfo)", 3240)()); }
		ScriptArray!(TrPawn.FootstepParticleInfo) m_StepParticles() { mixin(MGPC!("ScriptArray!(TrPawn.FootstepParticleInfo)", 3252)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_FootThrusterPSCs() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 3268)()); }
		ScriptArray!(AnimNodeSequence) m_MeshAnimSequenceNodes() { mixin(MGPC!("ScriptArray!(AnimNodeSequence)", 3436)()); }
		float BobGroundSpeedMultiplier2() { mixin(MGPC!("float", 3432)()); }
		float BobGroundSpeedMultiplier1() { mixin(MGPC!("float", 3428)()); }
		float BobTimeMultiplier() { mixin(MGPC!("float", 3424)()); }
		float m_WeaponBobMultiplier2() { mixin(MGPC!("float", 3420)()); }
		float m_WeaponBobMultiplier1() { mixin(MGPC!("float", 3416)()); }
		float m_BobFootstepMultiplier() { mixin(MGPC!("float", 3412)()); }
		float m_JumpBob5() { mixin(MGPC!("float", 3408)()); }
		float m_JumpBob4() { mixin(MGPC!("float", 3404)()); }
		float m_JumpBob3() { mixin(MGPC!("float", 3400)()); }
		float m_JumpBob2() { mixin(MGPC!("float", 3396)()); }
		float m_JumpBob1() { mixin(MGPC!("float", 3392)()); }
		float m_EyeHeightLandingSkiingMultiplier2() { mixin(MGPC!("float", 3388)()); }
		float m_EyeHeightLandingSkiingMultiplier() { mixin(MGPC!("float", 3384)()); }
		float m_EyeHeightLandingSpeedSqThresholdSkiing() { mixin(MGPC!("float", 3380)()); }
		float m_EyeHeightLandingSpeedSqThreshold() { mixin(MGPC!("float", 3376)()); }
		float m_EyeHeightLandingMultiplier5() { mixin(MGPC!("float", 3372)()); }
		float m_EyeHeightLandingMultiplier4() { mixin(MGPC!("float", 3368)()); }
		float m_EyeHeightLandingMultiplier3() { mixin(MGPC!("float", 3364)()); }
		float m_EyeHeightLandingMultiplier2() { mixin(MGPC!("float", 3360)()); }
		float m_EyeHeightLandingMultiplier1() { mixin(MGPC!("float", 3356)()); }
		float m_EyeHeightLandingMultiplier() { mixin(MGPC!("float", 3352)()); }
		float m_EyeHeightLandingMinSmoothing() { mixin(MGPC!("float", 3348)()); }
		float m_EyeHeightLandRecoveryMultiplier2() { mixin(MGPC!("float", 3344)()); }
		float m_EyeHeightLandRecoveryMultiplier1() { mixin(MGPC!("float", 3340)()); }
		float m_EyeHeightLandRecoveryMultiplier() { mixin(MGPC!("float", 3336)()); }
		float m_EyeHeightLandRecoveryMinSmoothing() { mixin(MGPC!("float", 3332)()); }
		float m_EyeHeightWalkingMultiplier() { mixin(MGPC!("float", 3328)()); }
		float m_EyeHeightWalkingMinSmoothing() { mixin(MGPC!("float", 3324)()); }
		float m_Cam3pZoomInSpeed() { mixin(MGPC!("float", 3320)()); }
		float m_Cam3pZoomOutSpeed() { mixin(MGPC!("float", 3316)()); }
		Actor m_DeathCamFocus() { mixin(MGPC!("Actor", 3312)()); }
		Rotator m_CamRotOffset() { mixin(MGPC!("Rotator", 3300)()); }
		float m_fRibbonZVelocity() { mixin(MGPC!("float", 3296)()); }
		ParticleSystem m_SonicPunchEffect3p() { mixin(MGPC!("ParticleSystem", 3292)()); }
		ParticleSystem m_SonicPunchEffect1p() { mixin(MGPC!("ParticleSystem", 3288)()); }
		SoundCue m_SonicPunch3p() { mixin(MGPC!("SoundCue", 3284)()); }
		SoundCue m_SonicPunch1p() { mixin(MGPC!("SoundCue", 3280)()); }
		ParticleSystem m_DefaultSkiJetParticle() { mixin(MGPC!("ParticleSystem", 3264)()); }
		float m_fJetpackSoundFadeOutTime() { mixin(MGPC!("float", 3200)()); }
		float m_fRemainingJetpackSoundFadeOutTime() { mixin(MGPC!("float", 3196)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComonentJetpackAttack'!
	}
final:
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool* bForce = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		if (bForce !is null)
			*cast(bool*)&params[4] = *bForce;
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
	bool CalcCamera(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	void SetThirdPersonCamera(bool bNewBehindView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBehindView;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetThirdPersonCamera, params.ptr, cast(void*)0);
	}
	bool CalcThirdPersonCam(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcThirdPersonCam, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	bool CalcOtherWatchingCam(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV, TrPlayerController WatcherController)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		*cast(TrPlayerController*)&params[32] = WatcherController;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcOtherWatchingCam, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
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
