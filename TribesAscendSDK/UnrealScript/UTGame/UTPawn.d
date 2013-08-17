module UnrealScript.UTGame.UTPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.UTGame.UTAnimBlendByHoverboarding;
import UnrealScript.UTGame.UTClientSideWeaponPawn;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.UTGame.UTSeqAct_InfiniteAmmo;
import UnrealScript.Engine.AnimNodeBlend;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.UTGame.UTGib;
import UnrealScript.Engine.SVehicle;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.Material;
import UnrealScript.UTGame.UTAnimBlendByDriving;
import UnrealScript.UTGame.UTSeqAct_PlayAnim;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.UTGame.UTAnimBlendByVehicle;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Teleporter;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_ModifyHealth;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UTGame.UTSeqAct_ExitVehicle;
import UnrealScript.Engine.Texture;
import UnrealScript.UTGame.UTProjectile;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTSeqAct_UseHoverboard;
import UnrealScript.UTGame.UTWeaponAttachment;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTWeapon;

extern(C++) interface UTPawn : UDKPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTPawn")); }
	private static __gshared UTPawn mDefaultProperties;
	@property final static UTPawn DefaultProperties() { mixin(MGDPC("UTPawn", "UTPawn UTGame.Default__UTPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanDoubleJump;
			ScriptFunction mWeaponBob;
			ScriptFunction mGetEyeHeight;
			ScriptFunction mIsFirstPerson;
			ScriptFunction mAdjustPPEffects;
			ScriptFunction mAdjustedStrength;
			ScriptFunction mGetUTPlayerReplicationInfo;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mHeadVolumeChange;
			ScriptFunction mPoweredUp;
			ScriptFunction mInCombat;
			ScriptFunction mRenderMapIcon;
			ScriptFunction mSetWalking;
			ScriptFunction mClearBodyMatColor;
			ScriptFunction mSetBodyMatColor;
			ScriptFunction mSetInvisible;
			ScriptFunction mSetSkin;
			ScriptFunction mSetArmsSkin;
			ScriptFunction mVerifyBodyMaterialInstance;
			ScriptFunction mSetCharacterClassFromInfo;
			ScriptFunction mSetCharacterMeshInfo;
			ScriptFunction mSetPawnRBChannels;
			ScriptFunction mResetCharPhysState;
			ScriptFunction mNotifyTeamChanged;
			ScriptFunction mSetFirstPersonArmsInfo;
			ScriptFunction mSetTeamColor;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mUpdateShadowSettings;
			ScriptFunction mReattachMesh;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mSetHandIKEnabled;
			ScriptFunction mSetAnimRateScale;
			ScriptFunction mSetWeapAnimType;
			ScriptFunction mLeaveABloodSplatterDecal;
			ScriptFunction mPerformEmoteCommand;
			ScriptFunction mDoPlayEmote;
			ScriptFunction mServerPlayEmote;
			ScriptFunction mPlayEmote;
			ScriptFunction mOnPlayAnim;
			ScriptFunction mSpawnDefaultController;
			ScriptFunction mTurnOff;
			ScriptFunction mEncroachingOn;
			ScriptFunction mEncroachedBy;
			ScriptFunction mgibbedBy;
			ScriptFunction mJumpOffPawn;
			ScriptFunction mStuckOnPawn;
			ScriptFunction mFalling;
			ScriptFunction mAddVelocity;
			ScriptFunction mDied;
			ScriptFunction mStartFire;
			ScriptFunction mStopFiring;
			ScriptFunction mBotFire;
			ScriptFunction mStopWeaponFiring;
			ScriptFunction mChooseFireMode;
			ScriptFunction mRecommendLongRangedAttack;
			ScriptFunction mRangedAttackTime;
			ScriptFunction mPlayVictoryAnimation;
			ScriptFunction mOnModifyHealth;
			ScriptFunction mGetScreenName;
			ScriptFunction mFaceRotation;
			ScriptFunction mUpdateEyeHeight;
			ScriptFunction mGetPawnViewLocation;
			ScriptFunction mBecomeViewTarget;
			ScriptFunction mEndViewTarget;
			ScriptFunction mSetWeaponVisibility;
			ScriptFunction mSetWeaponAttachmentVisibility;
			ScriptFunction mSetMeshVisibility;
			ScriptFunction mDeactivateSpawnProtection;
			ScriptFunction mPlayTeleportEffect;
			ScriptFunction mSpawnTransEffect;
			ScriptFunction mStartDriving;
			ScriptFunction mStopDriving;
			ScriptFunction mClientRestart;
			ScriptFunction mGetShieldStrength;
			ScriptFunction mAbsorbDamage;
			ScriptFunction mShieldAbsorb;
			ScriptFunction mAdjustDamage;
			ScriptFunction mDropFlag;
			ScriptFunction mEnableInventoryPickup;
			ScriptFunction mHoldGameObject;
			ScriptFunction mGiveHealth;
			ScriptFunction mGetDebugName;
			ScriptFunction mPlayFootStepSound;
			ScriptFunction mActuallyPlayFootstepSound;
			ScriptFunction mGetMaterialBelowFeet;
			ScriptFunction mPlayLandingSound;
			ScriptFunction mPlayJumpingSound;
			ScriptFunction mShouldGib;
			ScriptFunction mSpawnHeadGib;
			ScriptFunction mSpawnGib;
			ScriptFunction mSpawnGibs;
			ScriptFunction mTurnOffPawn;
			ScriptFunction mPlayDying;
			ScriptFunction mDoingDeathAnim;
			ScriptFunction mDestroyed;
			ScriptFunction mAddDefaultInventory;
			ScriptFunction mCalcCamera;
			ScriptFunction mSetThirdPersonCamera;
			ScriptFunction mFindGoodEndView;
			ScriptFunction mTryNewCamRot;
			ScriptFunction mSetHeroCam;
			ScriptFunction mCalcThirdPersonCam;
			ScriptFunction mGetWeaponStartTraceLocation;
			ScriptFunction mDodge;
			ScriptFunction mBotDodge;
			ScriptFunction mPerformDodge;
			ScriptFunction mDoDoubleJump;
			ScriptFunction mGasp;
			ScriptFunction mStartFlying;
			ScriptFunction mStopFlying;
			ScriptFunction mDoJump;
			ScriptFunction mLanded;
			ScriptFunction mJumpOutOfWater;
			ScriptFunction mCanMultiJump;
			ScriptFunction mPlayDyingSound;
			ScriptFunction mDisplayDebug;
			ScriptFunction mSetPawnAmbientSound;
			ScriptFunction mGetPawnAmbientSound;
			ScriptFunction mSetWeaponAmbientSound;
			ScriptFunction mGetWeaponAmbientSound;
			ScriptFunction mSetOverlayMaterial;
			ScriptFunction mGetShieldMaterialInstance;
			ScriptFunction mGetOverlayMaterial;
			ScriptFunction mSetWeaponOverlayFlag;
			ScriptFunction mClearWeaponOverlayFlag;
			ScriptFunction mApplyWeaponOverlayFlags;
			ScriptFunction mStartFeignDeathRecoveryAnim;
			ScriptFunction mFeignDeathDelayTimer;
			ScriptFunction mPlayFeignDeath;
			ScriptFunction mSetFeignEndLocation;
			ScriptFunction mCheckValidLocation;
			ScriptFunction mServerFeignDeath;
			ScriptFunction mFeignDeath;
			ScriptFunction mForceRagdoll;
			ScriptFunction mFiringModeUpdated;
			ScriptFunction mSetBigHead;
			ScriptFunction mFireRateChanged;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mSetHeadScale;
			ScriptFunction mSetPuttingDownWeapon;
			ScriptFunction mGetPuttingDownWeapon;
			ScriptFunction mTakeDamage;
			ScriptFunction mWeaponFired;
			ScriptFunction mWeaponStoppedFiring;
			ScriptFunction mWeaponChanged;
			ScriptFunction mWeaponAttachmentChanged;
			ScriptFunction mPlayHit;
			ScriptFunction mPlayTakeHitEffects;
			ScriptFunction mTakeHitBlendedOut;
			ScriptFunction mServerHoverboard;
			ScriptFunction mOnUseHoverboard;
			ScriptFunction mSwitchWeapon;
			ScriptFunction mTakeDrowningDamage;
			ScriptFunction mIsLocationOnHead;
			ScriptFunction mModifyRotForDebugFreeCam;
			ScriptFunction mAdjustCameraScale;
			ScriptFunction mGetViewRotation;
			ScriptFunction mTornOff;
			ScriptFunction mSetOverlayVisibility;
			ScriptFunction mTakeFallingDamage;
			ScriptFunction mRigidBodyCollision;
			ScriptFunction mOnRanOver;
			ScriptFunction mStuckFalling;
			ScriptFunction mOnExitVehicle;
			ScriptFunction mOnInfiniteAmmo;
			ScriptFunction mPossessedBy;
			ScriptFunction mNeedToTurn;
			ScriptFunction mGetFamilyInfo;
			ScriptFunction mPostTeleport;
			ScriptFunction mPostBigTeleport;
		}
		public @property static final
		{
			ScriptFunction CanDoubleJump() { mixin(MGF("mCanDoubleJump", "Function UTGame.UTPawn.CanDoubleJump")); }
			ScriptFunction WeaponBob() { mixin(MGF("mWeaponBob", "Function UTGame.UTPawn.WeaponBob")); }
			ScriptFunction GetEyeHeight() { mixin(MGF("mGetEyeHeight", "Function UTGame.UTPawn.GetEyeHeight")); }
			ScriptFunction IsFirstPerson() { mixin(MGF("mIsFirstPerson", "Function UTGame.UTPawn.IsFirstPerson")); }
			ScriptFunction AdjustPPEffects() { mixin(MGF("mAdjustPPEffects", "Function UTGame.UTPawn.AdjustPPEffects")); }
			ScriptFunction AdjustedStrength() { mixin(MGF("mAdjustedStrength", "Function UTGame.UTPawn.AdjustedStrength")); }
			ScriptFunction GetUTPlayerReplicationInfo() { mixin(MGF("mGetUTPlayerReplicationInfo", "Function UTGame.UTPawn.GetUTPlayerReplicationInfo")); }
			ScriptFunction FellOutOfWorld() { mixin(MGF("mFellOutOfWorld", "Function UTGame.UTPawn.FellOutOfWorld")); }
			ScriptFunction HeadVolumeChange() { mixin(MGF("mHeadVolumeChange", "Function UTGame.UTPawn.HeadVolumeChange")); }
			ScriptFunction PoweredUp() { mixin(MGF("mPoweredUp", "Function UTGame.UTPawn.PoweredUp")); }
			ScriptFunction InCombat() { mixin(MGF("mInCombat", "Function UTGame.UTPawn.InCombat")); }
			ScriptFunction RenderMapIcon() { mixin(MGF("mRenderMapIcon", "Function UTGame.UTPawn.RenderMapIcon")); }
			ScriptFunction SetWalking() { mixin(MGF("mSetWalking", "Function UTGame.UTPawn.SetWalking")); }
			ScriptFunction ClearBodyMatColor() { mixin(MGF("mClearBodyMatColor", "Function UTGame.UTPawn.ClearBodyMatColor")); }
			ScriptFunction SetBodyMatColor() { mixin(MGF("mSetBodyMatColor", "Function UTGame.UTPawn.SetBodyMatColor")); }
			ScriptFunction SetInvisible() { mixin(MGF("mSetInvisible", "Function UTGame.UTPawn.SetInvisible")); }
			ScriptFunction SetSkin() { mixin(MGF("mSetSkin", "Function UTGame.UTPawn.SetSkin")); }
			ScriptFunction SetArmsSkin() { mixin(MGF("mSetArmsSkin", "Function UTGame.UTPawn.SetArmsSkin")); }
			ScriptFunction VerifyBodyMaterialInstance() { mixin(MGF("mVerifyBodyMaterialInstance", "Function UTGame.UTPawn.VerifyBodyMaterialInstance")); }
			ScriptFunction SetCharacterClassFromInfo() { mixin(MGF("mSetCharacterClassFromInfo", "Function UTGame.UTPawn.SetCharacterClassFromInfo")); }
			ScriptFunction SetCharacterMeshInfo() { mixin(MGF("mSetCharacterMeshInfo", "Function UTGame.UTPawn.SetCharacterMeshInfo")); }
			ScriptFunction SetPawnRBChannels() { mixin(MGF("mSetPawnRBChannels", "Function UTGame.UTPawn.SetPawnRBChannels")); }
			ScriptFunction ResetCharPhysState() { mixin(MGF("mResetCharPhysState", "Function UTGame.UTPawn.ResetCharPhysState")); }
			ScriptFunction NotifyTeamChanged() { mixin(MGF("mNotifyTeamChanged", "Function UTGame.UTPawn.NotifyTeamChanged")); }
			ScriptFunction SetFirstPersonArmsInfo() { mixin(MGF("mSetFirstPersonArmsInfo", "Function UTGame.UTPawn.SetFirstPersonArmsInfo")); }
			ScriptFunction SetTeamColor() { mixin(MGF("mSetTeamColor", "Function UTGame.UTPawn.SetTeamColor")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTPawn.PostBeginPlay")); }
			ScriptFunction UpdateShadowSettings() { mixin(MGF("mUpdateShadowSettings", "Function UTGame.UTPawn.UpdateShadowSettings")); }
			ScriptFunction ReattachMesh() { mixin(MGF("mReattachMesh", "Function UTGame.UTPawn.ReattachMesh")); }
			ScriptFunction PostInitAnimTree() { mixin(MGF("mPostInitAnimTree", "Function UTGame.UTPawn.PostInitAnimTree")); }
			ScriptFunction SetHandIKEnabled() { mixin(MGF("mSetHandIKEnabled", "Function UTGame.UTPawn.SetHandIKEnabled")); }
			ScriptFunction SetAnimRateScale() { mixin(MGF("mSetAnimRateScale", "Function UTGame.UTPawn.SetAnimRateScale")); }
			ScriptFunction SetWeapAnimType() { mixin(MGF("mSetWeapAnimType", "Function UTGame.UTPawn.SetWeapAnimType")); }
			ScriptFunction LeaveABloodSplatterDecal() { mixin(MGF("mLeaveABloodSplatterDecal", "Function UTGame.UTPawn.LeaveABloodSplatterDecal")); }
			ScriptFunction PerformEmoteCommand() { mixin(MGF("mPerformEmoteCommand", "Function UTGame.UTPawn.PerformEmoteCommand")); }
			ScriptFunction DoPlayEmote() { mixin(MGF("mDoPlayEmote", "Function UTGame.UTPawn.DoPlayEmote")); }
			ScriptFunction ServerPlayEmote() { mixin(MGF("mServerPlayEmote", "Function UTGame.UTPawn.ServerPlayEmote")); }
			ScriptFunction PlayEmote() { mixin(MGF("mPlayEmote", "Function UTGame.UTPawn.PlayEmote")); }
			ScriptFunction OnPlayAnim() { mixin(MGF("mOnPlayAnim", "Function UTGame.UTPawn.OnPlayAnim")); }
			ScriptFunction SpawnDefaultController() { mixin(MGF("mSpawnDefaultController", "Function UTGame.UTPawn.SpawnDefaultController")); }
			ScriptFunction TurnOff() { mixin(MGF("mTurnOff", "Function UTGame.UTPawn.TurnOff")); }
			ScriptFunction EncroachingOn() { mixin(MGF("mEncroachingOn", "Function UTGame.UTPawn.EncroachingOn")); }
			ScriptFunction EncroachedBy() { mixin(MGF("mEncroachedBy", "Function UTGame.UTPawn.EncroachedBy")); }
			ScriptFunction gibbedBy() { mixin(MGF("mgibbedBy", "Function UTGame.UTPawn.gibbedBy")); }
			ScriptFunction JumpOffPawn() { mixin(MGF("mJumpOffPawn", "Function UTGame.UTPawn.JumpOffPawn")); }
			ScriptFunction StuckOnPawn() { mixin(MGF("mStuckOnPawn", "Function UTGame.UTPawn.StuckOnPawn")); }
			ScriptFunction Falling() { mixin(MGF("mFalling", "Function UTGame.UTPawn.Falling")); }
			ScriptFunction AddVelocity() { mixin(MGF("mAddVelocity", "Function UTGame.UTPawn.AddVelocity")); }
			ScriptFunction Died() { mixin(MGF("mDied", "Function UTGame.UTPawn.Died")); }
			ScriptFunction StartFire() { mixin(MGF("mStartFire", "Function UTGame.UTPawn.StartFire")); }
			ScriptFunction StopFiring() { mixin(MGF("mStopFiring", "Function UTGame.UTPawn.StopFiring")); }
			ScriptFunction BotFire() { mixin(MGF("mBotFire", "Function UTGame.UTPawn.BotFire")); }
			ScriptFunction StopWeaponFiring() { mixin(MGF("mStopWeaponFiring", "Function UTGame.UTPawn.StopWeaponFiring")); }
			ScriptFunction ChooseFireMode() { mixin(MGF("mChooseFireMode", "Function UTGame.UTPawn.ChooseFireMode")); }
			ScriptFunction RecommendLongRangedAttack() { mixin(MGF("mRecommendLongRangedAttack", "Function UTGame.UTPawn.RecommendLongRangedAttack")); }
			ScriptFunction RangedAttackTime() { mixin(MGF("mRangedAttackTime", "Function UTGame.UTPawn.RangedAttackTime")); }
			ScriptFunction PlayVictoryAnimation() { mixin(MGF("mPlayVictoryAnimation", "Function UTGame.UTPawn.PlayVictoryAnimation")); }
			ScriptFunction OnModifyHealth() { mixin(MGF("mOnModifyHealth", "Function UTGame.UTPawn.OnModifyHealth")); }
			ScriptFunction GetScreenName() { mixin(MGF("mGetScreenName", "Function UTGame.UTPawn.GetScreenName")); }
			ScriptFunction FaceRotation() { mixin(MGF("mFaceRotation", "Function UTGame.UTPawn.FaceRotation")); }
			ScriptFunction UpdateEyeHeight() { mixin(MGF("mUpdateEyeHeight", "Function UTGame.UTPawn.UpdateEyeHeight")); }
			ScriptFunction GetPawnViewLocation() { mixin(MGF("mGetPawnViewLocation", "Function UTGame.UTPawn.GetPawnViewLocation")); }
			ScriptFunction BecomeViewTarget() { mixin(MGF("mBecomeViewTarget", "Function UTGame.UTPawn.BecomeViewTarget")); }
			ScriptFunction EndViewTarget() { mixin(MGF("mEndViewTarget", "Function UTGame.UTPawn.EndViewTarget")); }
			ScriptFunction SetWeaponVisibility() { mixin(MGF("mSetWeaponVisibility", "Function UTGame.UTPawn.SetWeaponVisibility")); }
			ScriptFunction SetWeaponAttachmentVisibility() { mixin(MGF("mSetWeaponAttachmentVisibility", "Function UTGame.UTPawn.SetWeaponAttachmentVisibility")); }
			ScriptFunction SetMeshVisibility() { mixin(MGF("mSetMeshVisibility", "Function UTGame.UTPawn.SetMeshVisibility")); }
			ScriptFunction DeactivateSpawnProtection() { mixin(MGF("mDeactivateSpawnProtection", "Function UTGame.UTPawn.DeactivateSpawnProtection")); }
			ScriptFunction PlayTeleportEffect() { mixin(MGF("mPlayTeleportEffect", "Function UTGame.UTPawn.PlayTeleportEffect")); }
			ScriptFunction SpawnTransEffect() { mixin(MGF("mSpawnTransEffect", "Function UTGame.UTPawn.SpawnTransEffect")); }
			ScriptFunction StartDriving() { mixin(MGF("mStartDriving", "Function UTGame.UTPawn.StartDriving")); }
			ScriptFunction StopDriving() { mixin(MGF("mStopDriving", "Function UTGame.UTPawn.StopDriving")); }
			ScriptFunction ClientRestart() { mixin(MGF("mClientRestart", "Function UTGame.UTPawn.ClientRestart")); }
			ScriptFunction GetShieldStrength() { mixin(MGF("mGetShieldStrength", "Function UTGame.UTPawn.GetShieldStrength")); }
			ScriptFunction AbsorbDamage() { mixin(MGF("mAbsorbDamage", "Function UTGame.UTPawn.AbsorbDamage")); }
			ScriptFunction ShieldAbsorb() { mixin(MGF("mShieldAbsorb", "Function UTGame.UTPawn.ShieldAbsorb")); }
			ScriptFunction AdjustDamage() { mixin(MGF("mAdjustDamage", "Function UTGame.UTPawn.AdjustDamage")); }
			ScriptFunction DropFlag() { mixin(MGF("mDropFlag", "Function UTGame.UTPawn.DropFlag")); }
			ScriptFunction EnableInventoryPickup() { mixin(MGF("mEnableInventoryPickup", "Function UTGame.UTPawn.EnableInventoryPickup")); }
			ScriptFunction HoldGameObject() { mixin(MGF("mHoldGameObject", "Function UTGame.UTPawn.HoldGameObject")); }
			ScriptFunction GiveHealth() { mixin(MGF("mGiveHealth", "Function UTGame.UTPawn.GiveHealth")); }
			ScriptFunction GetDebugName() { mixin(MGF("mGetDebugName", "Function UTGame.UTPawn.GetDebugName")); }
			ScriptFunction PlayFootStepSound() { mixin(MGF("mPlayFootStepSound", "Function UTGame.UTPawn.PlayFootStepSound")); }
			ScriptFunction ActuallyPlayFootstepSound() { mixin(MGF("mActuallyPlayFootstepSound", "Function UTGame.UTPawn.ActuallyPlayFootstepSound")); }
			ScriptFunction GetMaterialBelowFeet() { mixin(MGF("mGetMaterialBelowFeet", "Function UTGame.UTPawn.GetMaterialBelowFeet")); }
			ScriptFunction PlayLandingSound() { mixin(MGF("mPlayLandingSound", "Function UTGame.UTPawn.PlayLandingSound")); }
			ScriptFunction PlayJumpingSound() { mixin(MGF("mPlayJumpingSound", "Function UTGame.UTPawn.PlayJumpingSound")); }
			ScriptFunction ShouldGib() { mixin(MGF("mShouldGib", "Function UTGame.UTPawn.ShouldGib")); }
			ScriptFunction SpawnHeadGib() { mixin(MGF("mSpawnHeadGib", "Function UTGame.UTPawn.SpawnHeadGib")); }
			ScriptFunction SpawnGib() { mixin(MGF("mSpawnGib", "Function UTGame.UTPawn.SpawnGib")); }
			ScriptFunction SpawnGibs() { mixin(MGF("mSpawnGibs", "Function UTGame.UTPawn.SpawnGibs")); }
			ScriptFunction TurnOffPawn() { mixin(MGF("mTurnOffPawn", "Function UTGame.UTPawn.TurnOffPawn")); }
			ScriptFunction PlayDying() { mixin(MGF("mPlayDying", "Function UTGame.UTPawn.PlayDying")); }
			ScriptFunction DoingDeathAnim() { mixin(MGF("mDoingDeathAnim", "Function UTGame.UTPawn.DoingDeathAnim")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function UTGame.UTPawn.Destroyed")); }
			ScriptFunction AddDefaultInventory() { mixin(MGF("mAddDefaultInventory", "Function UTGame.UTPawn.AddDefaultInventory")); }
			ScriptFunction CalcCamera() { mixin(MGF("mCalcCamera", "Function UTGame.UTPawn.CalcCamera")); }
			ScriptFunction SetThirdPersonCamera() { mixin(MGF("mSetThirdPersonCamera", "Function UTGame.UTPawn.SetThirdPersonCamera")); }
			ScriptFunction FindGoodEndView() { mixin(MGF("mFindGoodEndView", "Function UTGame.UTPawn.FindGoodEndView")); }
			ScriptFunction TryNewCamRot() { mixin(MGF("mTryNewCamRot", "Function UTGame.UTPawn.TryNewCamRot")); }
			ScriptFunction SetHeroCam() { mixin(MGF("mSetHeroCam", "Function UTGame.UTPawn.SetHeroCam")); }
			ScriptFunction CalcThirdPersonCam() { mixin(MGF("mCalcThirdPersonCam", "Function UTGame.UTPawn.CalcThirdPersonCam")); }
			ScriptFunction GetWeaponStartTraceLocation() { mixin(MGF("mGetWeaponStartTraceLocation", "Function UTGame.UTPawn.GetWeaponStartTraceLocation")); }
			ScriptFunction Dodge() { mixin(MGF("mDodge", "Function UTGame.UTPawn.Dodge")); }
			ScriptFunction BotDodge() { mixin(MGF("mBotDodge", "Function UTGame.UTPawn.BotDodge")); }
			ScriptFunction PerformDodge() { mixin(MGF("mPerformDodge", "Function UTGame.UTPawn.PerformDodge")); }
			ScriptFunction DoDoubleJump() { mixin(MGF("mDoDoubleJump", "Function UTGame.UTPawn.DoDoubleJump")); }
			ScriptFunction Gasp() { mixin(MGF("mGasp", "Function UTGame.UTPawn.Gasp")); }
			ScriptFunction StartFlying() { mixin(MGF("mStartFlying", "Function UTGame.UTPawn.StartFlying")); }
			ScriptFunction StopFlying() { mixin(MGF("mStopFlying", "Function UTGame.UTPawn.StopFlying")); }
			ScriptFunction DoJump() { mixin(MGF("mDoJump", "Function UTGame.UTPawn.DoJump")); }
			ScriptFunction Landed() { mixin(MGF("mLanded", "Function UTGame.UTPawn.Landed")); }
			ScriptFunction JumpOutOfWater() { mixin(MGF("mJumpOutOfWater", "Function UTGame.UTPawn.JumpOutOfWater")); }
			ScriptFunction CanMultiJump() { mixin(MGF("mCanMultiJump", "Function UTGame.UTPawn.CanMultiJump")); }
			ScriptFunction PlayDyingSound() { mixin(MGF("mPlayDyingSound", "Function UTGame.UTPawn.PlayDyingSound")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function UTGame.UTPawn.DisplayDebug")); }
			ScriptFunction SetPawnAmbientSound() { mixin(MGF("mSetPawnAmbientSound", "Function UTGame.UTPawn.SetPawnAmbientSound")); }
			ScriptFunction GetPawnAmbientSound() { mixin(MGF("mGetPawnAmbientSound", "Function UTGame.UTPawn.GetPawnAmbientSound")); }
			ScriptFunction SetWeaponAmbientSound() { mixin(MGF("mSetWeaponAmbientSound", "Function UTGame.UTPawn.SetWeaponAmbientSound")); }
			ScriptFunction GetWeaponAmbientSound() { mixin(MGF("mGetWeaponAmbientSound", "Function UTGame.UTPawn.GetWeaponAmbientSound")); }
			ScriptFunction SetOverlayMaterial() { mixin(MGF("mSetOverlayMaterial", "Function UTGame.UTPawn.SetOverlayMaterial")); }
			ScriptFunction GetShieldMaterialInstance() { mixin(MGF("mGetShieldMaterialInstance", "Function UTGame.UTPawn.GetShieldMaterialInstance")); }
			ScriptFunction GetOverlayMaterial() { mixin(MGF("mGetOverlayMaterial", "Function UTGame.UTPawn.GetOverlayMaterial")); }
			ScriptFunction SetWeaponOverlayFlag() { mixin(MGF("mSetWeaponOverlayFlag", "Function UTGame.UTPawn.SetWeaponOverlayFlag")); }
			ScriptFunction ClearWeaponOverlayFlag() { mixin(MGF("mClearWeaponOverlayFlag", "Function UTGame.UTPawn.ClearWeaponOverlayFlag")); }
			ScriptFunction ApplyWeaponOverlayFlags() { mixin(MGF("mApplyWeaponOverlayFlags", "Function UTGame.UTPawn.ApplyWeaponOverlayFlags")); }
			ScriptFunction StartFeignDeathRecoveryAnim() { mixin(MGF("mStartFeignDeathRecoveryAnim", "Function UTGame.UTPawn.StartFeignDeathRecoveryAnim")); }
			ScriptFunction FeignDeathDelayTimer() { mixin(MGF("mFeignDeathDelayTimer", "Function UTGame.UTPawn.FeignDeathDelayTimer")); }
			ScriptFunction PlayFeignDeath() { mixin(MGF("mPlayFeignDeath", "Function UTGame.UTPawn.PlayFeignDeath")); }
			ScriptFunction SetFeignEndLocation() { mixin(MGF("mSetFeignEndLocation", "Function UTGame.UTPawn.SetFeignEndLocation")); }
			ScriptFunction CheckValidLocation() { mixin(MGF("mCheckValidLocation", "Function UTGame.UTPawn.CheckValidLocation")); }
			ScriptFunction ServerFeignDeath() { mixin(MGF("mServerFeignDeath", "Function UTGame.UTPawn.ServerFeignDeath")); }
			ScriptFunction FeignDeath() { mixin(MGF("mFeignDeath", "Function UTGame.UTPawn.FeignDeath")); }
			ScriptFunction ForceRagdoll() { mixin(MGF("mForceRagdoll", "Function UTGame.UTPawn.ForceRagdoll")); }
			ScriptFunction FiringModeUpdated() { mixin(MGF("mFiringModeUpdated", "Function UTGame.UTPawn.FiringModeUpdated")); }
			ScriptFunction SetBigHead() { mixin(MGF("mSetBigHead", "Function UTGame.UTPawn.SetBigHead")); }
			ScriptFunction FireRateChanged() { mixin(MGF("mFireRateChanged", "Function UTGame.UTPawn.FireRateChanged")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTPawn.ReplicatedEvent")); }
			ScriptFunction SetHeadScale() { mixin(MGF("mSetHeadScale", "Function UTGame.UTPawn.SetHeadScale")); }
			ScriptFunction SetPuttingDownWeapon() { mixin(MGF("mSetPuttingDownWeapon", "Function UTGame.UTPawn.SetPuttingDownWeapon")); }
			ScriptFunction GetPuttingDownWeapon() { mixin(MGF("mGetPuttingDownWeapon", "Function UTGame.UTPawn.GetPuttingDownWeapon")); }
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function UTGame.UTPawn.TakeDamage")); }
			ScriptFunction WeaponFired() { mixin(MGF("mWeaponFired", "Function UTGame.UTPawn.WeaponFired")); }
			ScriptFunction WeaponStoppedFiring() { mixin(MGF("mWeaponStoppedFiring", "Function UTGame.UTPawn.WeaponStoppedFiring")); }
			ScriptFunction WeaponChanged() { mixin(MGF("mWeaponChanged", "Function UTGame.UTPawn.WeaponChanged")); }
			ScriptFunction WeaponAttachmentChanged() { mixin(MGF("mWeaponAttachmentChanged", "Function UTGame.UTPawn.WeaponAttachmentChanged")); }
			ScriptFunction PlayHit() { mixin(MGF("mPlayHit", "Function UTGame.UTPawn.PlayHit")); }
			ScriptFunction PlayTakeHitEffects() { mixin(MGF("mPlayTakeHitEffects", "Function UTGame.UTPawn.PlayTakeHitEffects")); }
			ScriptFunction TakeHitBlendedOut() { mixin(MGF("mTakeHitBlendedOut", "Function UTGame.UTPawn.TakeHitBlendedOut")); }
			ScriptFunction ServerHoverboard() { mixin(MGF("mServerHoverboard", "Function UTGame.UTPawn.ServerHoverboard")); }
			ScriptFunction OnUseHoverboard() { mixin(MGF("mOnUseHoverboard", "Function UTGame.UTPawn.OnUseHoverboard")); }
			ScriptFunction SwitchWeapon() { mixin(MGF("mSwitchWeapon", "Function UTGame.UTPawn.SwitchWeapon")); }
			ScriptFunction TakeDrowningDamage() { mixin(MGF("mTakeDrowningDamage", "Function UTGame.UTPawn.TakeDrowningDamage")); }
			ScriptFunction IsLocationOnHead() { mixin(MGF("mIsLocationOnHead", "Function UTGame.UTPawn.IsLocationOnHead")); }
			ScriptFunction ModifyRotForDebugFreeCam() { mixin(MGF("mModifyRotForDebugFreeCam", "Function UTGame.UTPawn.ModifyRotForDebugFreeCam")); }
			ScriptFunction AdjustCameraScale() { mixin(MGF("mAdjustCameraScale", "Function UTGame.UTPawn.AdjustCameraScale")); }
			ScriptFunction GetViewRotation() { mixin(MGF("mGetViewRotation", "Function UTGame.UTPawn.GetViewRotation")); }
			ScriptFunction TornOff() { mixin(MGF("mTornOff", "Function UTGame.UTPawn.TornOff")); }
			ScriptFunction SetOverlayVisibility() { mixin(MGF("mSetOverlayVisibility", "Function UTGame.UTPawn.SetOverlayVisibility")); }
			ScriptFunction TakeFallingDamage() { mixin(MGF("mTakeFallingDamage", "Function UTGame.UTPawn.TakeFallingDamage")); }
			ScriptFunction RigidBodyCollision() { mixin(MGF("mRigidBodyCollision", "Function UTGame.UTPawn.RigidBodyCollision")); }
			ScriptFunction OnRanOver() { mixin(MGF("mOnRanOver", "Function UTGame.UTPawn.OnRanOver")); }
			ScriptFunction StuckFalling() { mixin(MGF("mStuckFalling", "Function UTGame.UTPawn.StuckFalling")); }
			ScriptFunction OnExitVehicle() { mixin(MGF("mOnExitVehicle", "Function UTGame.UTPawn.OnExitVehicle")); }
			ScriptFunction OnInfiniteAmmo() { mixin(MGF("mOnInfiniteAmmo", "Function UTGame.UTPawn.OnInfiniteAmmo")); }
			ScriptFunction PossessedBy() { mixin(MGF("mPossessedBy", "Function UTGame.UTPawn.PossessedBy")); }
			ScriptFunction NeedToTurn() { mixin(MGF("mNeedToTurn", "Function UTGame.UTPawn.NeedToTurn")); }
			ScriptFunction GetFamilyInfo() { mixin(MGF("mGetFamilyInfo", "Function UTGame.UTPawn.GetFamilyInfo")); }
			ScriptFunction PostTeleport() { mixin(MGF("mPostTeleport", "Function UTGame.UTPawn.PostTeleport")); }
			ScriptFunction PostBigTeleport() { mixin(MGF("mPostBigTeleport", "Function UTGame.UTPawn.PostBigTeleport")); }
		}
	}
	static struct Constants
	{
		enum MINTIMEBETWEENPAINSOUNDS = 0.35;
	}
	enum EWeapAnimType : ubyte
	{
		EWAT_Default = 0,
		EWAT_Pistol = 1,
		EWAT_DualPistols = 2,
		EWAT_ShoulderRocket = 3,
		EWAT_Stinger = 4,
		EWAT_MAX = 5,
	}
	struct GibInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTPawn.GibInfo")); }
		@property final
		{
			auto ref
			{
				ScriptClass GibClass() { mixin(MGPS("ScriptClass", 8)); }
				ScriptName BoneName() { mixin(MGPS("ScriptName", 0)); }
			}
			bool bHighDetailOnly() { mixin(MGBPS(12, 0x1)); }
			bool bHighDetailOnly(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	static struct FeigningDeath
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTPawn.FeigningDeath")); }
	}
	static struct Dying
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTPawn.Dying")); }
	}
	@property final
	{
		auto ref
		{
			float CurrentCameraScale() { mixin(MGPC("float", 1700)); }
			float CameraScale() { mixin(MGPC("float", 1696)); }
			Vector WalkBob() { mixin(MGPC("Vector", 1780)); }
			float VestArmor() { mixin(MGPC("float", 1876)); }
			float ShieldBeltArmor() { mixin(MGPC("float", 1872)); }
			ScriptClass HoverboardClass() { mixin(MGPC("ScriptClass", 2072)); }
			Vector FixedViewLoc() { mixin(MGPC("Vector", 1672)); }
			Rotator FixedViewRot() { mixin(MGPC("Rotator", 1684)); }
			float LandBob() { mixin(MGPC("float", 1764)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			ScriptClass CurrentWeaponAttachmentClass() { mixin(MGPC("ScriptClass", 1620)); }
			float LastPainSound() { mixin(MGPC("float", 2052)); }
			float MapSize() { mixin(MGPC("float", 2032)); }
			UIRoot.TextureCoordinates IconCoords() { mixin(MGPC("UIRoot.TextureCoordinates", 2036)); }
			UTWeaponAttachment CurrentWeaponAttachment() { mixin(MGPC("UTWeaponAttachment", 1884)); }
			ScriptClass CurrCharClassInfo() { mixin(MGPC("ScriptClass", 1812)); }
			ScriptArray!(ScriptName) TakeHitPhysicsFixedBones() { mixin(MGPC("ScriptArray!(ScriptName)", 1816)); }
			ScriptClass SoundGroupClass() { mixin(MGPC("ScriptClass", 1808)); }
			float DefaultMeshScale() { mixin(MGPC("float", 2116)); }
			ScriptArray!(ScriptName) NoDriveBodies() { mixin(MGPC("ScriptArray!(ScriptName)", 1828)); }
			AnimNodeBlend FeignDeathBlend() { mixin(MGPC("AnimNodeBlend", 1632)); }
			AnimNodeSlot FullBodyAnimSlot() { mixin(MGPC("AnimNodeSlot", 1636)); }
			AnimNodeSlot TopHalfAnimSlot() { mixin(MGPC("AnimNodeSlot", 1640)); }
			UTAnimBlendByDriving DrivingNode() { mixin(MGPC("UTAnimBlendByDriving", 1860)); }
			UTAnimBlendByVehicle VehicleNode() { mixin(MGPC("UTAnimBlendByVehicle", 1864)); }
			UTAnimBlendByHoverboarding HoverboardingNode() { mixin(MGPC("UTAnimBlendByHoverboarding", 1868)); }
			float JumpBob() { mixin(MGPC("float", 1768)); }
			ScriptName TauntNames() { mixin(MGPC("ScriptName", 2120)); }
			float bobtime() { mixin(MGPC("float", 1776)); }
			float Bob() { mixin(MGPC("float", 1760)); }
			float AppliedBob() { mixin(MGPC("float", 1772)); }
			UObject.LinearColor SpawnProtectionColor() { mixin(MGPC("UObject.LinearColor", 2008)); }
			SoundCue SpawnSound() { mixin(MGPC("SoundCue", 2000)); }
			UObject.LinearColor TranslocateColor() { mixin(MGPC("UObject.LinearColor", 1952)); }
			SoundCue TeleportSound() { mixin(MGPC("SoundCue", 2004)); }
			CameraAnim TransCameraAnim() { mixin(MGPC("CameraAnim", 1984)); }
			ScriptClass TransInEffects() { mixin(MGPC("ScriptClass", 1944)); }
			UTClientSideWeaponPawn ClientSideWeaponPawn() { mixin(MGPC("UTClientSideWeaponPawn", 2088)); }
			float ThighpadArmor() { mixin(MGPC("float", 1880)); }
			SoundCue ArmorHitSound() { mixin(MGPC("SoundCue", 1996)); }
			float MaxFootstepDistSq() { mixin(MGPC("float", 2064)); }
			float MaxJumpSoundDistSq() { mixin(MGPC("float", 2068)); }
			float DeathTime() { mixin(MGPC("float", 2200)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'HeadshotNeckAttachment'!
			float DeathHipLinSpring() { mixin(MGPC("float", 1644)); }
			float DeathHipLinDamp() { mixin(MGPC("float", 1648)); }
			float DeathHipAngSpring() { mixin(MGPC("float", 1652)); }
			float DeathHipAngDamp() { mixin(MGPC("float", 1656)); }
			float StartDeathAnimTime() { mixin(MGPC("float", 1660)); }
			float TimeLastTookDeathAnimDamage() { mixin(MGPC("float", 1668)); }
			ScriptClass DeathAnimDamageType() { mixin(MGPC("ScriptClass", 1664)); }
			float CameraZOffset() { mixin(MGPC("float", 1724)); }
			int HeroCameraPitch() { mixin(MGPC("int", 1732)); }
			float HeroCameraScale() { mixin(MGPC("float", 1728)); }
			Vector CamOffset() { mixin(MGPC("Vector", 2172)); }
			float DodgeSpeed() { mixin(MGPC("float", 1736)); }
			float DodgeSpeedZ() { mixin(MGPC("float", 1740)); }
			int JumpBootCharge() { mixin(MGPC("int", 2112)); }
			Actor.EDoubleClickDir CurrentDir() { mixin(MGPC("Actor.EDoubleClickDir", 1744)); }
			float DoubleJumpEyeHeight() { mixin(MGPC("float", 1748)); }
			float DoubleJumpThreshold() { mixin(MGPC("float", 1752)); }
			float DefaultAirControl() { mixin(MGPC("float", 1756)); }
			MaterialInterface ShieldBeltTeamMaterialInstances() { mixin(MGPC("MaterialInterface", 2096)); }
			MaterialInterface ShieldBeltMaterialInstance() { mixin(MGPC("MaterialInterface", 2092)); }
			float FeignDeathStartTime() { mixin(MGPC("float", 1796)); }
			float FeignDeathBodyAtRestSpeed() { mixin(MGPC("float", 1792)); }
			int UnfeignFailedCount() { mixin(MGPC("int", 1624)); }
			float FeignDeathRecoveryStartTime() { mixin(MGPC("float", 1800)); }
			ScriptName HeadBone() { mixin(MGPC("ScriptName", 1932)); }
			UDKPawn.DrivenWeaponPawnInfo LastDrivenWeaponPawn() { mixin(MGPC("UDKPawn.DrivenWeaponPawnInfo", 2076)); }
			ScriptClass m_ClientSideWeaponPawnClass() { mixin(MGPC("ScriptClass", 2204)); }
			UTProjectile AttachedProj() { mixin(MGPC("UTProjectile", 2060)); }
			float AccumulationTime() { mixin(MGPC("float", 1848)); }
			float AccumulateDamage() { mixin(MGPC("float", 1844)); }
			float LastHoverboardTime() { mixin(MGPC("float", 1852)); }
			float MinHoverboardInterval() { mixin(MGPC("float", 1856)); }
			float HeadHeight() { mixin(MGPC("float", 1928)); }
			float HeadRadius() { mixin(MGPC("float", 1924)); }
			float CameraScaleMin() { mixin(MGPC("float", 1704)); }
			float CameraScaleMax() { mixin(MGPC("float", 1708)); }
			ForceFeedbackWaveform FallingDamageWaveForm() { mixin(MGPC("ForceFeedbackWaveform", 1840)); }
			Vector OldCameraPosition() { mixin(MGPC("Vector", 1712)); }
			float BioBurnAwayTime() { mixin(MGPC("float", 2188)); }
			ScriptName BioEffectName() { mixin(MGPC("ScriptName", 2192)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BioBurnAway'!
			float RagdollLifespan() { mixin(MGPC("float", 2056)); }
			int SuperHealthMax() { mixin(MGPC("int", 1804)); }
			ScriptName WeaponSocket() { mixin(MGPC("ScriptName", 1888)); }
			ScriptName WeaponSocket2() { mixin(MGPC("ScriptName", 1896)); }
			ScriptName PawnEffectSockets() { mixin(MGPC("ScriptName", 1904)); }
			float HeadOffset() { mixin(MGPC("float", 1920)); }
			float TeamBeaconPlayerInfoMaxDist() { mixin(MGPC("float", 2024)); }
			Texture SpeakingBeaconTexture() { mixin(MGPC("Texture", 2028)); }
			float DesiredMeshScale() { mixin(MGPC("float", 2168)); }
		}
		bool bIsInvulnerable() { mixin(MGBPC(1616, 0x40)); }
		bool bIsInvulnerable(bool val) { mixin(MSBPC(1616, 0x40)); }
		bool bFixedView() { mixin(MGBPC(1616, 0x1)); }
		bool bFixedView(bool val) { mixin(MSBPC(1616, 0x1)); }
		bool bJustLanded() { mixin(MGBPC(1616, 0x400)); }
		bool bJustLanded(bool val) { mixin(MSBPC(1616, 0x400)); }
		bool bLandRecovery() { mixin(MGBPC(1616, 0x800)); }
		bool bLandRecovery(bool val) { mixin(MSBPC(1616, 0x800)); }
		bool bArmsAttached() { mixin(MGBPC(1616, 0x20000)); }
		bool bArmsAttached(bool val) { mixin(MSBPC(1616, 0x20000)); }
		bool bStopDeathCamera() { mixin(MGBPC(1616, 0x2000)); }
		bool bStopDeathCamera(bool val) { mixin(MSBPC(1616, 0x2000)); }
		bool bReceivedValidTeam() { mixin(MGBPC(1616, 0x200000)); }
		bool bReceivedValidTeam(bool val) { mixin(MSBPC(1616, 0x200000)); }
		bool bWeaponBob() { mixin(MGBPC(1616, 0x200)); }
		bool bWeaponBob(bool val) { mixin(MSBPC(1616, 0x200)); }
		bool bWeaponAttachmentVisible() { mixin(MGBPC(1616, 0x40000)); }
		bool bWeaponAttachmentVisible(bool val) { mixin(MSBPC(1616, 0x40000)); }
		bool bSpawnDone() { mixin(MGBPC(1616, 0x2)); }
		bool bSpawnDone(bool val) { mixin(MSBPC(1616, 0x2)); }
		bool bSpawnIn() { mixin(MGBPC(1616, 0x4)); }
		bool bSpawnIn(bool val) { mixin(MSBPC(1616, 0x4)); }
		bool bShieldAbsorb() { mixin(MGBPC(1616, 0x8)); }
		bool bShieldAbsorb(bool val) { mixin(MSBPC(1616, 0x8)); }
		bool bJustDroppedOrb() { mixin(MGBPC(1616, 0x80)); }
		bool bJustDroppedOrb(bool val) { mixin(MSBPC(1616, 0x80)); }
		bool bHeadGibbed() { mixin(MGBPC(1616, 0x10000)); }
		bool bHeadGibbed(bool val) { mixin(MSBPC(1616, 0x10000)); }
		bool bGibbed() { mixin(MGBPC(1616, 0x8000)); }
		bool bGibbed(bool val) { mixin(MSBPC(1616, 0x8000)); }
		bool bForcedFeignDeath() { mixin(MGBPC(1616, 0x100)); }
		bool bForcedFeignDeath(bool val) { mixin(MSBPC(1616, 0x100)); }
		bool bHideOnListenServer() { mixin(MGBPC(1616, 0x80000)); }
		bool bHideOnListenServer(bool val) { mixin(MSBPC(1616, 0x80000)); }
		bool bWinnerCam() { mixin(MGBPC(1616, 0x4000)); }
		bool bWinnerCam(bool val) { mixin(MSBPC(1616, 0x4000)); }
		bool bDodging() { mixin(MGBPC(1616, 0x10)); }
		bool bDodging(bool val) { mixin(MSBPC(1616, 0x10)); }
		bool bStopOnDoubleLanding() { mixin(MGBPC(1616, 0x20)); }
		bool bStopOnDoubleLanding(bool val) { mixin(MSBPC(1616, 0x20)); }
		bool bKillsAffectHead() { mixin(MGBPC(1616, 0x400000)); }
		bool bKillsAffectHead(bool val) { mixin(MSBPC(1616, 0x400000)); }
		bool bHasHoverboard() { mixin(MGBPC(1616, 0x1000)); }
		bool bHasHoverboard(bool val) { mixin(MSBPC(1616, 0x1000)); }
		bool bKilledByBio() { mixin(MGBPC(1616, 0x800000)); }
		bool bKilledByBio(bool val) { mixin(MSBPC(1616, 0x800000)); }
		bool bPostRenderTraceSucceeded() { mixin(MGBPC(1616, 0x100000)); }
		bool bPostRenderTraceSucceeded(bool val) { mixin(MSBPC(1616, 0x100000)); }
	}
final:
	bool CanDoubleJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanDoubleJump, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	float GetEyeHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEyeHeight, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFirstPerson, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void AdjustPPEffects(UTPlayerController PC, bool bRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustPPEffects, params.ptr, cast(void*)0);
	}
	float AdjustedStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustedStrength, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	UTPlayerReplicationInfo GetUTPlayerReplicationInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUTPlayerReplicationInfo, params.ptr, cast(void*)0);
		return *cast(UTPlayerReplicationInfo*)params.ptr;
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	void HeadVolumeChange(PhysicsVolume newHeadVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = newHeadVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.HeadVolumeChange, params.ptr, cast(void*)0);
	}
	bool PoweredUp()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PoweredUp, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool InCombat()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InCombat, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UObject.LinearColor FinalColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[12] = FinalColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderMapIcon, params.ptr, cast(void*)0);
	}
	void SetWalking(bool bNewIsWalking)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewIsWalking;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWalking, params.ptr, cast(void*)0);
	}
	void ClearBodyMatColor()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearBodyMatColor, cast(void*)0, cast(void*)0);
	}
	void SetBodyMatColor(UObject.LinearColor NewBodyMatColor, float NewOverlayDuration)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = NewBodyMatColor;
		*cast(float*)&params[16] = NewOverlayDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBodyMatColor, params.ptr, cast(void*)0);
	}
	void SetInvisible(bool bNowInvisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowInvisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInvisible, params.ptr, cast(void*)0);
	}
	void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkin, params.ptr, cast(void*)0);
	}
	void SetArmsSkin(MaterialInterface NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetArmsSkin, params.ptr, cast(void*)0);
	}
	bool VerifyBodyMaterialInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyBodyMaterialInstance, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool* bForce = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		if (bForce !is null)
			*cast(bool*)&params[4] = *bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCharacterClassFromInfo, params.ptr, cast(void*)0);
	}
	void SetCharacterMeshInfo(SkeletalMesh SkelMesh, MaterialInterface HeadMaterial, MaterialInterface BodyMaterial)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = SkelMesh;
		*cast(MaterialInterface*)&params[4] = HeadMaterial;
		*cast(MaterialInterface*)&params[8] = BodyMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCharacterMeshInfo, params.ptr, cast(void*)0);
	}
	void SetPawnRBChannels(bool bRagdollMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRagdollMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPawnRBChannels, params.ptr, cast(void*)0);
	}
	void ResetCharPhysState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetCharPhysState, cast(void*)0, cast(void*)0);
	}
	void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTeamChanged, cast(void*)0, cast(void*)0);
	}
	void SetFirstPersonArmsInfo(SkeletalMesh FirstPersonArmMesh, MaterialInterface ArmMaterial)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = FirstPersonArmMesh;
		*cast(MaterialInterface*)&params[4] = ArmMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFirstPersonArmsInfo, params.ptr, cast(void*)0);
	}
	void SetTeamColor()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeamColor, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void UpdateShadowSettings(bool bWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWantShadow;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateShadowSettings, params.ptr, cast(void*)0);
	}
	void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReattachMesh, cast(void*)0, cast(void*)0);
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
	void SetHandIKEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHandIKEnabled, params.ptr, cast(void*)0);
	}
	void SetAnimRateScale(float RateScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = RateScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimRateScale, params.ptr, cast(void*)0);
	}
	void SetWeapAnimType(UTPawn.EWeapAnimType AnimType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTPawn.EWeapAnimType*)params.ptr = AnimType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeapAnimType, params.ptr, cast(void*)0);
	}
	void LeaveABloodSplatterDecal(Vector HitLoc, Vector HitNorm)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNorm;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveABloodSplatterDecal, params.ptr, cast(void*)0);
	}
	void PerformEmoteCommand(UDKPawn.EmoteInfo EInfo, int PlayerID)
	{
		ubyte params[56];
		params[] = 0;
		*cast(UDKPawn.EmoteInfo*)params.ptr = EInfo;
		*cast(int*)&params[52] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformEmoteCommand, params.ptr, cast(void*)0);
	}
	void DoPlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoPlayEmote, params.ptr, cast(void*)0);
	}
	void ServerPlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerPlayEmote, params.ptr, cast(void*)0);
	}
	void PlayEmote(ScriptName InEmoteTag, int InPlayerID)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InEmoteTag;
		*cast(int*)&params[8] = InPlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayEmote, params.ptr, cast(void*)0);
	}
	void OnPlayAnim(UTSeqAct_PlayAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_PlayAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayAnim, params.ptr, cast(void*)0);
	}
	void SpawnDefaultController()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnDefaultController, cast(void*)0, cast(void*)0);
	}
	void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurnOff, cast(void*)0, cast(void*)0);
	}
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachingOn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachedBy, params.ptr, cast(void*)0);
	}
	void gibbedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.gibbedBy, params.ptr, cast(void*)0);
	}
	void JumpOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.JumpOffPawn, cast(void*)0, cast(void*)0);
	}
	void StuckOnPawn(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.StuckOnPawn, params.ptr, cast(void*)0);
	}
	void Falling()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Falling, cast(void*)0, cast(void*)0);
	}
	void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[28] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVelocity, params.ptr, cast(void*)0);
	}
	bool Died(Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.Died, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	bool StopFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFiring, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool BotFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StopWeaponFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopWeaponFiring, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ubyte ChooseFireMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChooseFireMode, params.ptr, cast(void*)0);
		return params[0];
	}
	bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecommendLongRangedAttack, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RangedAttackTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlayVictoryAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVictoryAnimation, cast(void*)0, cast(void*)0);
	}
	void OnModifyHealth(SeqAct_ModifyHealth Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyHealth*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnModifyHealth, params.ptr, cast(void*)0);
	}
	ScriptString GetScreenName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScreenName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceRotation, params.ptr, cast(void*)0);
	}
	void UpdateEyeHeight(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateEyeHeight, params.ptr, cast(void*)0);
	}
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnViewLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.BecomeViewTarget, params.ptr, cast(void*)0);
	}
	void EndViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndViewTarget, params.ptr, cast(void*)0);
	}
	void SetWeaponVisibility(bool bWeaponVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWeaponVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponVisibility, params.ptr, cast(void*)0);
	}
	void SetWeaponAttachmentVisibility(bool bAttachmentVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachmentVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponAttachmentVisibility, params.ptr, cast(void*)0);
	}
	void SetMeshVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMeshVisibility, params.ptr, cast(void*)0);
	}
	void DeactivateSpawnProtection()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeactivateSpawnProtection, cast(void*)0, cast(void*)0);
	}
	void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayTeleportEffect, params.ptr, cast(void*)0);
	}
	void SpawnTransEffect(int TeamNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnTransEffect, params.ptr, cast(void*)0);
	}
	void StartDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartDriving, params.ptr, cast(void*)0);
	}
	void StopDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopDriving, params.ptr, cast(void*)0);
	}
	void ClientRestart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRestart, cast(void*)0, cast(void*)0);
	}
	int GetShieldStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetShieldStrength, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int AbsorbDamage(ref int Damage, int CurrentShieldStrength, float AbsorptionRate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(int*)&params[4] = CurrentShieldStrength;
		*cast(float*)&params[8] = AbsorptionRate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AbsorbDamage, params.ptr, cast(void*)0);
		Damage = *cast(int*)params.ptr;
		return *cast(int*)&params[12];
	}
	int ShieldAbsorb(int Damage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShieldAbsorb, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void AdjustDamage(ref int InDamage, ref Vector Momentum, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = InDamage;
		*cast(Vector*)&params[4] = Momentum;
		*cast(Controller*)&params[16] = InstigatedBy;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustDamage, params.ptr, cast(void*)0);
		InDamage = *cast(int*)params.ptr;
		Momentum = *cast(Vector*)&params[4];
	}
	void DropFlag(Controller* C = null)
	{
		ubyte params[4];
		params[] = 0;
		if (C !is null)
			*cast(Controller*)params.ptr = *C;
		(cast(ScriptObject)this).ProcessEvent(Functions.DropFlag, params.ptr, cast(void*)0);
	}
	void EnableInventoryPickup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableInventoryPickup, cast(void*)0, cast(void*)0);
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldGameObject, params.ptr, cast(void*)0);
	}
	bool GiveHealth(int HealAmount, int HealMax)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(int*)&params[4] = HealMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveHealth, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptString GetDebugName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void PlayFootStepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFootStepSound, params.ptr, cast(void*)0);
	}
	void ActuallyPlayFootstepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActuallyPlayFootstepSound, params.ptr, cast(void*)0);
	}
	ScriptName GetMaterialBelowFeet()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaterialBelowFeet, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void PlayLandingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayLandingSound, cast(void*)0, cast(void*)0);
	}
	void PlayJumpingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayJumpingSound, cast(void*)0, cast(void*)0);
	}
	bool ShouldGib(ScriptClass pUTDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pUTDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldGib, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SpawnHeadGib(ScriptClass pUTDamageType, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pUTDamageType;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnHeadGib, params.ptr, cast(void*)0);
	}
	UTGib SpawnGib(ScriptClass GibClass, ScriptName BoneName, ScriptClass pUTDamageType, Vector HitLocation, bool bSpinGib)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GibClass;
		*cast(ScriptName*)&params[4] = BoneName;
		*cast(ScriptClass*)&params[12] = pUTDamageType;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(bool*)&params[28] = bSpinGib;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnGib, params.ptr, cast(void*)0);
		return *cast(UTGib*)&params[32];
	}
	void SpawnGibs(ScriptClass pUTDamageType, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pUTDamageType;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnGibs, params.ptr, cast(void*)0);
	}
	void TurnOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurnOffPawn, cast(void*)0, cast(void*)0);
	}
	void PlayDying(ScriptClass pDamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDying, params.ptr, cast(void*)0);
	}
	void DoingDeathAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoingDeathAnim, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void AddDefaultInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDefaultInventory, cast(void*)0, cast(void*)0);
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
	void FindGoodEndView(PlayerController InPC, ref Rotator GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = InPC;
		*cast(Rotator*)&params[4] = GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGoodEndView, params.ptr, cast(void*)0);
		GoodRotation = *cast(Rotator*)&params[4];
	}
	bool TryNewCamRot(UTPlayerController PC, Rotator ViewRotation, ref float CamDist)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = ViewRotation;
		*cast(float*)&params[16] = CamDist;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryNewCamRot, params.ptr, cast(void*)0);
		CamDist = *cast(float*)&params[16];
		return *cast(bool*)&params[20];
	}
	void SetHeroCam(ref Rotator out_CamRot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHeroCam, params.ptr, cast(void*)0);
		out_CamRot = *cast(Rotator*)params.ptr;
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
	Vector GetWeaponStartTraceLocation(Weapon* CurrentWeapon = null)
	{
		ubyte params[16];
		params[] = 0;
		if (CurrentWeapon !is null)
			*cast(Weapon*)params.ptr = *CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponStartTraceLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.Dodge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Vector BotDodge(Vector Dir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotDodge, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	bool PerformDodge(Actor.EDoubleClickDir DoubleClickMove, Vector Dir, Vector Cross)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		*cast(Vector*)&params[4] = Dir;
		*cast(Vector*)&params[16] = Cross;
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformDodge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void DoDoubleJump(bool bUpdating)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoDoubleJump, params.ptr, cast(void*)0);
	}
	void Gasp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Gasp, cast(void*)0, cast(void*)0);
	}
	void StartFlying()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFlying, cast(void*)0, cast(void*)0);
	}
	void StopFlying()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFlying, cast(void*)0, cast(void*)0);
	}
	bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoJump, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	void JumpOutOfWater(Vector JumpDir)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = JumpDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.JumpOutOfWater, params.ptr, cast(void*)0);
	}
	bool CanMultiJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanMultiJump, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayDyingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDyingSound, cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
	}
	void SetPawnAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPawnAmbientSound, params.ptr, cast(void*)0);
	}
	SoundCue GetPawnAmbientSound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnAmbientSound, params.ptr, cast(void*)0);
		return *cast(SoundCue*)params.ptr;
	}
	void SetWeaponAmbientSound(SoundCue NewAmbientSound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = NewAmbientSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponAmbientSound, params.ptr, cast(void*)0);
	}
	SoundCue GetWeaponAmbientSound()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponAmbientSound, params.ptr, cast(void*)0);
		return *cast(SoundCue*)params.ptr;
	}
	void SetOverlayMaterial(MaterialInterface NewOverlay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewOverlay;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOverlayMaterial, params.ptr, cast(void*)0);
	}
	MaterialInterface GetShieldMaterialInstance(bool bTeamGame)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bTeamGame;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetShieldMaterialInstance, params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	MaterialInterface GetOverlayMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOverlayMaterial, params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)params.ptr;
	}
	void SetWeaponOverlayFlag(ubyte FlagToSet)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FlagToSet;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponOverlayFlag, params.ptr, cast(void*)0);
	}
	void ClearWeaponOverlayFlag(ubyte FlagToClear)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FlagToClear;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearWeaponOverlayFlag, params.ptr, cast(void*)0);
	}
	void ApplyWeaponOverlayFlags(ubyte NewFlags)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewFlags;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyWeaponOverlayFlags, params.ptr, cast(void*)0);
	}
	void StartFeignDeathRecoveryAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFeignDeathRecoveryAnim, cast(void*)0, cast(void*)0);
	}
	void FeignDeathDelayTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FeignDeathDelayTimer, cast(void*)0, cast(void*)0);
	}
	void PlayFeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFeignDeath, cast(void*)0, cast(void*)0);
	}
	bool SetFeignEndLocation(Vector HitLocation, Vector FeignLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = FeignLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFeignEndLocation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool CheckValidLocation(Vector FeignLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FeignLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckValidLocation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void ServerFeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerFeignDeath, cast(void*)0, cast(void*)0);
	}
	void FeignDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FeignDeath, cast(void*)0, cast(void*)0);
	}
	void ForceRagdoll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceRagdoll, cast(void*)0, cast(void*)0);
	}
	void FiringModeUpdated(Weapon InWeapon, ubyte InFiringMode, bool bViaReplication)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.FiringModeUpdated, params.ptr, cast(void*)0);
	}
	void SetBigHead()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBigHead, cast(void*)0, cast(void*)0);
	}
	void FireRateChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireRateChanged, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void SetHeadScale(float NewScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHeadScale, params.ptr, cast(void*)0);
	}
	void SetPuttingDownWeapon(bool bNowPuttingDownWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowPuttingDownWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPuttingDownWeapon, params.ptr, cast(void*)0);
	}
	bool GetPuttingDownWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPuttingDownWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector* HitLocation = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		if (HitLocation !is null)
			*cast(Vector*)&params[8] = *HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponFired, params.ptr, cast(void*)0);
	}
	void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponStoppedFiring, params.ptr, cast(void*)0);
	}
	void WeaponChanged(UTWeapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponChanged, params.ptr, cast(void*)0);
	}
	void WeaponAttachmentChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponAttachmentChanged, cast(void*)0, cast(void*)0);
	}
	void PlayHit(float Damage, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Vector Momentum, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayHit, params.ptr, cast(void*)0);
	}
	void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayTakeHitEffects, cast(void*)0, cast(void*)0);
	}
	void TakeHitBlendedOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeHitBlendedOut, cast(void*)0, cast(void*)0);
	}
	void ServerHoverboard()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerHoverboard, cast(void*)0, cast(void*)0);
	}
	void OnUseHoverboard(UTSeqAct_UseHoverboard Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_UseHoverboard*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUseHoverboard, params.ptr, cast(void*)0);
	}
	void SwitchWeapon(ubyte NewGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchWeapon, params.ptr, cast(void*)0);
	}
	void TakeDrowningDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDrowningDamage, cast(void*)0, cast(void*)0);
	}
	bool IsLocationOnHead(ref in Actor.ImpactInfo Impact, float AdditionalScale)
	{
		ubyte params[88];
		params[] = 0;
		*cast(Actor.ImpactInfo*)params.ptr = cast(Actor.ImpactInfo)Impact;
		*cast(float*)&params[80] = AdditionalScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocationOnHead, params.ptr, cast(void*)0);
		return *cast(bool*)&params[84];
	}
	void ModifyRotForDebugFreeCam(ref Rotator out_CamRot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyRotForDebugFreeCam, params.ptr, cast(void*)0);
		out_CamRot = *cast(Rotator*)params.ptr;
	}
	void AdjustCameraScale(bool bMoveCameraIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveCameraIn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustCameraScale, params.ptr, cast(void*)0);
	}
	Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TornOff, cast(void*)0, cast(void*)0);
	}
	void SetOverlayVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOverlayVisibility, params.ptr, cast(void*)0);
	}
	void TakeFallingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFallingDamage, cast(void*)0, cast(void*)0);
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, ref in Actor.CollisionImpactData RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = cast(Actor.CollisionImpactData)RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyCollision, params.ptr, cast(void*)0);
	}
	void OnRanOver(SVehicle pVehicle, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* RunOverComponent, int WheelIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SVehicle*)params.ptr = pVehicle;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = RunOverComponent;
		*cast(int*)&params[8] = WheelIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRanOver, params.ptr, cast(void*)0);
	}
	void StuckFalling()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StuckFalling, cast(void*)0, cast(void*)0);
	}
	void OnExitVehicle(UTSeqAct_ExitVehicle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_ExitVehicle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExitVehicle, params.ptr, cast(void*)0);
	}
	void OnInfiniteAmmo(UTSeqAct_InfiniteAmmo Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_InfiniteAmmo*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnInfiniteAmmo, params.ptr, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.PossessedBy, params.ptr, cast(void*)0);
	}
	bool NeedToTurn(Vector targ)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = targ;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedToTurn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	ScriptClass GetFamilyInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFamilyInfo, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void PostTeleport(Teleporter OutTeleporter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Teleporter*)params.ptr = OutTeleporter;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostTeleport, params.ptr, cast(void*)0);
	}
	void PostBigTeleport()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBigTeleport, cast(void*)0, cast(void*)0);
	}
}
