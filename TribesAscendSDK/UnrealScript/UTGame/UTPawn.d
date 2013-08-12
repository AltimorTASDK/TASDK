module UnrealScript.UTGame.UTPawn;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPawn")); }
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
			ScriptFunction CanDoubleJump() { return mCanDoubleJump ? mCanDoubleJump : (mCanDoubleJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.CanDoubleJump")); }
			ScriptFunction WeaponBob() { return mWeaponBob ? mWeaponBob : (mWeaponBob = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.WeaponBob")); }
			ScriptFunction GetEyeHeight() { return mGetEyeHeight ? mGetEyeHeight : (mGetEyeHeight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetEyeHeight")); }
			ScriptFunction IsFirstPerson() { return mIsFirstPerson ? mIsFirstPerson : (mIsFirstPerson = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.IsFirstPerson")); }
			ScriptFunction AdjustPPEffects() { return mAdjustPPEffects ? mAdjustPPEffects : (mAdjustPPEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.AdjustPPEffects")); }
			ScriptFunction AdjustedStrength() { return mAdjustedStrength ? mAdjustedStrength : (mAdjustedStrength = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.AdjustedStrength")); }
			ScriptFunction GetUTPlayerReplicationInfo() { return mGetUTPlayerReplicationInfo ? mGetUTPlayerReplicationInfo : (mGetUTPlayerReplicationInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetUTPlayerReplicationInfo")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.FellOutOfWorld")); }
			ScriptFunction HeadVolumeChange() { return mHeadVolumeChange ? mHeadVolumeChange : (mHeadVolumeChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.HeadVolumeChange")); }
			ScriptFunction PoweredUp() { return mPoweredUp ? mPoweredUp : (mPoweredUp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PoweredUp")); }
			ScriptFunction InCombat() { return mInCombat ? mInCombat : (mInCombat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.InCombat")); }
			ScriptFunction RenderMapIcon() { return mRenderMapIcon ? mRenderMapIcon : (mRenderMapIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.RenderMapIcon")); }
			ScriptFunction SetWalking() { return mSetWalking ? mSetWalking : (mSetWalking = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetWalking")); }
			ScriptFunction ClearBodyMatColor() { return mClearBodyMatColor ? mClearBodyMatColor : (mClearBodyMatColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ClearBodyMatColor")); }
			ScriptFunction SetBodyMatColor() { return mSetBodyMatColor ? mSetBodyMatColor : (mSetBodyMatColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetBodyMatColor")); }
			ScriptFunction SetInvisible() { return mSetInvisible ? mSetInvisible : (mSetInvisible = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetInvisible")); }
			ScriptFunction SetSkin() { return mSetSkin ? mSetSkin : (mSetSkin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetSkin")); }
			ScriptFunction SetArmsSkin() { return mSetArmsSkin ? mSetArmsSkin : (mSetArmsSkin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetArmsSkin")); }
			ScriptFunction VerifyBodyMaterialInstance() { return mVerifyBodyMaterialInstance ? mVerifyBodyMaterialInstance : (mVerifyBodyMaterialInstance = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.VerifyBodyMaterialInstance")); }
			ScriptFunction SetCharacterClassFromInfo() { return mSetCharacterClassFromInfo ? mSetCharacterClassFromInfo : (mSetCharacterClassFromInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetCharacterClassFromInfo")); }
			ScriptFunction SetCharacterMeshInfo() { return mSetCharacterMeshInfo ? mSetCharacterMeshInfo : (mSetCharacterMeshInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetCharacterMeshInfo")); }
			ScriptFunction SetPawnRBChannels() { return mSetPawnRBChannels ? mSetPawnRBChannels : (mSetPawnRBChannels = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetPawnRBChannels")); }
			ScriptFunction ResetCharPhysState() { return mResetCharPhysState ? mResetCharPhysState : (mResetCharPhysState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ResetCharPhysState")); }
			ScriptFunction NotifyTeamChanged() { return mNotifyTeamChanged ? mNotifyTeamChanged : (mNotifyTeamChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.NotifyTeamChanged")); }
			ScriptFunction SetFirstPersonArmsInfo() { return mSetFirstPersonArmsInfo ? mSetFirstPersonArmsInfo : (mSetFirstPersonArmsInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetFirstPersonArmsInfo")); }
			ScriptFunction SetTeamColor() { return mSetTeamColor ? mSetTeamColor : (mSetTeamColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetTeamColor")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PostBeginPlay")); }
			ScriptFunction UpdateShadowSettings() { return mUpdateShadowSettings ? mUpdateShadowSettings : (mUpdateShadowSettings = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.UpdateShadowSettings")); }
			ScriptFunction ReattachMesh() { return mReattachMesh ? mReattachMesh : (mReattachMesh = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ReattachMesh")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PostInitAnimTree")); }
			ScriptFunction SetHandIKEnabled() { return mSetHandIKEnabled ? mSetHandIKEnabled : (mSetHandIKEnabled = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetHandIKEnabled")); }
			ScriptFunction SetAnimRateScale() { return mSetAnimRateScale ? mSetAnimRateScale : (mSetAnimRateScale = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetAnimRateScale")); }
			ScriptFunction SetWeapAnimType() { return mSetWeapAnimType ? mSetWeapAnimType : (mSetWeapAnimType = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetWeapAnimType")); }
			ScriptFunction LeaveABloodSplatterDecal() { return mLeaveABloodSplatterDecal ? mLeaveABloodSplatterDecal : (mLeaveABloodSplatterDecal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.LeaveABloodSplatterDecal")); }
			ScriptFunction PerformEmoteCommand() { return mPerformEmoteCommand ? mPerformEmoteCommand : (mPerformEmoteCommand = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PerformEmoteCommand")); }
			ScriptFunction DoPlayEmote() { return mDoPlayEmote ? mDoPlayEmote : (mDoPlayEmote = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.DoPlayEmote")); }
			ScriptFunction ServerPlayEmote() { return mServerPlayEmote ? mServerPlayEmote : (mServerPlayEmote = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ServerPlayEmote")); }
			ScriptFunction PlayEmote() { return mPlayEmote ? mPlayEmote : (mPlayEmote = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayEmote")); }
			ScriptFunction OnPlayAnim() { return mOnPlayAnim ? mOnPlayAnim : (mOnPlayAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.OnPlayAnim")); }
			ScriptFunction SpawnDefaultController() { return mSpawnDefaultController ? mSpawnDefaultController : (mSpawnDefaultController = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SpawnDefaultController")); }
			ScriptFunction TurnOff() { return mTurnOff ? mTurnOff : (mTurnOff = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.TurnOff")); }
			ScriptFunction EncroachingOn() { return mEncroachingOn ? mEncroachingOn : (mEncroachingOn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.EncroachingOn")); }
			ScriptFunction EncroachedBy() { return mEncroachedBy ? mEncroachedBy : (mEncroachedBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.EncroachedBy")); }
			ScriptFunction gibbedBy() { return mgibbedBy ? mgibbedBy : (mgibbedBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.gibbedBy")); }
			ScriptFunction JumpOffPawn() { return mJumpOffPawn ? mJumpOffPawn : (mJumpOffPawn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.JumpOffPawn")); }
			ScriptFunction StuckOnPawn() { return mStuckOnPawn ? mStuckOnPawn : (mStuckOnPawn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StuckOnPawn")); }
			ScriptFunction Falling() { return mFalling ? mFalling : (mFalling = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.Falling")); }
			ScriptFunction AddVelocity() { return mAddVelocity ? mAddVelocity : (mAddVelocity = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.AddVelocity")); }
			ScriptFunction Died() { return mDied ? mDied : (mDied = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.Died")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StartFire")); }
			ScriptFunction StopFiring() { return mStopFiring ? mStopFiring : (mStopFiring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StopFiring")); }
			ScriptFunction BotFire() { return mBotFire ? mBotFire : (mBotFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.BotFire")); }
			ScriptFunction StopWeaponFiring() { return mStopWeaponFiring ? mStopWeaponFiring : (mStopWeaponFiring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StopWeaponFiring")); }
			ScriptFunction ChooseFireMode() { return mChooseFireMode ? mChooseFireMode : (mChooseFireMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ChooseFireMode")); }
			ScriptFunction RecommendLongRangedAttack() { return mRecommendLongRangedAttack ? mRecommendLongRangedAttack : (mRecommendLongRangedAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.RecommendLongRangedAttack")); }
			ScriptFunction RangedAttackTime() { return mRangedAttackTime ? mRangedAttackTime : (mRangedAttackTime = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.RangedAttackTime")); }
			ScriptFunction PlayVictoryAnimation() { return mPlayVictoryAnimation ? mPlayVictoryAnimation : (mPlayVictoryAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayVictoryAnimation")); }
			ScriptFunction OnModifyHealth() { return mOnModifyHealth ? mOnModifyHealth : (mOnModifyHealth = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.OnModifyHealth")); }
			ScriptFunction GetScreenName() { return mGetScreenName ? mGetScreenName : (mGetScreenName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetScreenName")); }
			ScriptFunction FaceRotation() { return mFaceRotation ? mFaceRotation : (mFaceRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.FaceRotation")); }
			ScriptFunction UpdateEyeHeight() { return mUpdateEyeHeight ? mUpdateEyeHeight : (mUpdateEyeHeight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.UpdateEyeHeight")); }
			ScriptFunction GetPawnViewLocation() { return mGetPawnViewLocation ? mGetPawnViewLocation : (mGetPawnViewLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetPawnViewLocation")); }
			ScriptFunction BecomeViewTarget() { return mBecomeViewTarget ? mBecomeViewTarget : (mBecomeViewTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.BecomeViewTarget")); }
			ScriptFunction EndViewTarget() { return mEndViewTarget ? mEndViewTarget : (mEndViewTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.EndViewTarget")); }
			ScriptFunction SetWeaponVisibility() { return mSetWeaponVisibility ? mSetWeaponVisibility : (mSetWeaponVisibility = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetWeaponVisibility")); }
			ScriptFunction SetWeaponAttachmentVisibility() { return mSetWeaponAttachmentVisibility ? mSetWeaponAttachmentVisibility : (mSetWeaponAttachmentVisibility = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetWeaponAttachmentVisibility")); }
			ScriptFunction SetMeshVisibility() { return mSetMeshVisibility ? mSetMeshVisibility : (mSetMeshVisibility = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetMeshVisibility")); }
			ScriptFunction DeactivateSpawnProtection() { return mDeactivateSpawnProtection ? mDeactivateSpawnProtection : (mDeactivateSpawnProtection = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.DeactivateSpawnProtection")); }
			ScriptFunction PlayTeleportEffect() { return mPlayTeleportEffect ? mPlayTeleportEffect : (mPlayTeleportEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayTeleportEffect")); }
			ScriptFunction SpawnTransEffect() { return mSpawnTransEffect ? mSpawnTransEffect : (mSpawnTransEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SpawnTransEffect")); }
			ScriptFunction StartDriving() { return mStartDriving ? mStartDriving : (mStartDriving = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StartDriving")); }
			ScriptFunction StopDriving() { return mStopDriving ? mStopDriving : (mStopDriving = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StopDriving")); }
			ScriptFunction ClientRestart() { return mClientRestart ? mClientRestart : (mClientRestart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ClientRestart")); }
			ScriptFunction GetShieldStrength() { return mGetShieldStrength ? mGetShieldStrength : (mGetShieldStrength = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetShieldStrength")); }
			ScriptFunction AbsorbDamage() { return mAbsorbDamage ? mAbsorbDamage : (mAbsorbDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.AbsorbDamage")); }
			ScriptFunction ShieldAbsorb() { return mShieldAbsorb ? mShieldAbsorb : (mShieldAbsorb = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ShieldAbsorb")); }
			ScriptFunction AdjustDamage() { return mAdjustDamage ? mAdjustDamage : (mAdjustDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.AdjustDamage")); }
			ScriptFunction DropFlag() { return mDropFlag ? mDropFlag : (mDropFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.DropFlag")); }
			ScriptFunction EnableInventoryPickup() { return mEnableInventoryPickup ? mEnableInventoryPickup : (mEnableInventoryPickup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.EnableInventoryPickup")); }
			ScriptFunction HoldGameObject() { return mHoldGameObject ? mHoldGameObject : (mHoldGameObject = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.HoldGameObject")); }
			ScriptFunction GiveHealth() { return mGiveHealth ? mGiveHealth : (mGiveHealth = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GiveHealth")); }
			ScriptFunction GetDebugName() { return mGetDebugName ? mGetDebugName : (mGetDebugName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetDebugName")); }
			ScriptFunction PlayFootStepSound() { return mPlayFootStepSound ? mPlayFootStepSound : (mPlayFootStepSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayFootStepSound")); }
			ScriptFunction ActuallyPlayFootstepSound() { return mActuallyPlayFootstepSound ? mActuallyPlayFootstepSound : (mActuallyPlayFootstepSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ActuallyPlayFootstepSound")); }
			ScriptFunction GetMaterialBelowFeet() { return mGetMaterialBelowFeet ? mGetMaterialBelowFeet : (mGetMaterialBelowFeet = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetMaterialBelowFeet")); }
			ScriptFunction PlayLandingSound() { return mPlayLandingSound ? mPlayLandingSound : (mPlayLandingSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayLandingSound")); }
			ScriptFunction PlayJumpingSound() { return mPlayJumpingSound ? mPlayJumpingSound : (mPlayJumpingSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayJumpingSound")); }
			ScriptFunction ShouldGib() { return mShouldGib ? mShouldGib : (mShouldGib = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ShouldGib")); }
			ScriptFunction SpawnHeadGib() { return mSpawnHeadGib ? mSpawnHeadGib : (mSpawnHeadGib = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SpawnHeadGib")); }
			ScriptFunction SpawnGib() { return mSpawnGib ? mSpawnGib : (mSpawnGib = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SpawnGib")); }
			ScriptFunction SpawnGibs() { return mSpawnGibs ? mSpawnGibs : (mSpawnGibs = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SpawnGibs")); }
			ScriptFunction TurnOffPawn() { return mTurnOffPawn ? mTurnOffPawn : (mTurnOffPawn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.TurnOffPawn")); }
			ScriptFunction PlayDying() { return mPlayDying ? mPlayDying : (mPlayDying = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayDying")); }
			ScriptFunction DoingDeathAnim() { return mDoingDeathAnim ? mDoingDeathAnim : (mDoingDeathAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.DoingDeathAnim")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.Destroyed")); }
			ScriptFunction AddDefaultInventory() { return mAddDefaultInventory ? mAddDefaultInventory : (mAddDefaultInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.AddDefaultInventory")); }
			ScriptFunction CalcCamera() { return mCalcCamera ? mCalcCamera : (mCalcCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.CalcCamera")); }
			ScriptFunction SetThirdPersonCamera() { return mSetThirdPersonCamera ? mSetThirdPersonCamera : (mSetThirdPersonCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetThirdPersonCamera")); }
			ScriptFunction FindGoodEndView() { return mFindGoodEndView ? mFindGoodEndView : (mFindGoodEndView = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.FindGoodEndView")); }
			ScriptFunction TryNewCamRot() { return mTryNewCamRot ? mTryNewCamRot : (mTryNewCamRot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.TryNewCamRot")); }
			ScriptFunction SetHeroCam() { return mSetHeroCam ? mSetHeroCam : (mSetHeroCam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetHeroCam")); }
			ScriptFunction CalcThirdPersonCam() { return mCalcThirdPersonCam ? mCalcThirdPersonCam : (mCalcThirdPersonCam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.CalcThirdPersonCam")); }
			ScriptFunction GetWeaponStartTraceLocation() { return mGetWeaponStartTraceLocation ? mGetWeaponStartTraceLocation : (mGetWeaponStartTraceLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetWeaponStartTraceLocation")); }
			ScriptFunction Dodge() { return mDodge ? mDodge : (mDodge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.Dodge")); }
			ScriptFunction BotDodge() { return mBotDodge ? mBotDodge : (mBotDodge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.BotDodge")); }
			ScriptFunction PerformDodge() { return mPerformDodge ? mPerformDodge : (mPerformDodge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PerformDodge")); }
			ScriptFunction DoDoubleJump() { return mDoDoubleJump ? mDoDoubleJump : (mDoDoubleJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.DoDoubleJump")); }
			ScriptFunction Gasp() { return mGasp ? mGasp : (mGasp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.Gasp")); }
			ScriptFunction StartFlying() { return mStartFlying ? mStartFlying : (mStartFlying = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StartFlying")); }
			ScriptFunction StopFlying() { return mStopFlying ? mStopFlying : (mStopFlying = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StopFlying")); }
			ScriptFunction DoJump() { return mDoJump ? mDoJump : (mDoJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.DoJump")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.Landed")); }
			ScriptFunction JumpOutOfWater() { return mJumpOutOfWater ? mJumpOutOfWater : (mJumpOutOfWater = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.JumpOutOfWater")); }
			ScriptFunction CanMultiJump() { return mCanMultiJump ? mCanMultiJump : (mCanMultiJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.CanMultiJump")); }
			ScriptFunction PlayDyingSound() { return mPlayDyingSound ? mPlayDyingSound : (mPlayDyingSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayDyingSound")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.DisplayDebug")); }
			ScriptFunction SetPawnAmbientSound() { return mSetPawnAmbientSound ? mSetPawnAmbientSound : (mSetPawnAmbientSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetPawnAmbientSound")); }
			ScriptFunction GetPawnAmbientSound() { return mGetPawnAmbientSound ? mGetPawnAmbientSound : (mGetPawnAmbientSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetPawnAmbientSound")); }
			ScriptFunction SetWeaponAmbientSound() { return mSetWeaponAmbientSound ? mSetWeaponAmbientSound : (mSetWeaponAmbientSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetWeaponAmbientSound")); }
			ScriptFunction GetWeaponAmbientSound() { return mGetWeaponAmbientSound ? mGetWeaponAmbientSound : (mGetWeaponAmbientSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetWeaponAmbientSound")); }
			ScriptFunction SetOverlayMaterial() { return mSetOverlayMaterial ? mSetOverlayMaterial : (mSetOverlayMaterial = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetOverlayMaterial")); }
			ScriptFunction GetShieldMaterialInstance() { return mGetShieldMaterialInstance ? mGetShieldMaterialInstance : (mGetShieldMaterialInstance = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetShieldMaterialInstance")); }
			ScriptFunction GetOverlayMaterial() { return mGetOverlayMaterial ? mGetOverlayMaterial : (mGetOverlayMaterial = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetOverlayMaterial")); }
			ScriptFunction SetWeaponOverlayFlag() { return mSetWeaponOverlayFlag ? mSetWeaponOverlayFlag : (mSetWeaponOverlayFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetWeaponOverlayFlag")); }
			ScriptFunction ClearWeaponOverlayFlag() { return mClearWeaponOverlayFlag ? mClearWeaponOverlayFlag : (mClearWeaponOverlayFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ClearWeaponOverlayFlag")); }
			ScriptFunction ApplyWeaponOverlayFlags() { return mApplyWeaponOverlayFlags ? mApplyWeaponOverlayFlags : (mApplyWeaponOverlayFlags = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ApplyWeaponOverlayFlags")); }
			ScriptFunction StartFeignDeathRecoveryAnim() { return mStartFeignDeathRecoveryAnim ? mStartFeignDeathRecoveryAnim : (mStartFeignDeathRecoveryAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StartFeignDeathRecoveryAnim")); }
			ScriptFunction FeignDeathDelayTimer() { return mFeignDeathDelayTimer ? mFeignDeathDelayTimer : (mFeignDeathDelayTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.FeignDeathDelayTimer")); }
			ScriptFunction PlayFeignDeath() { return mPlayFeignDeath ? mPlayFeignDeath : (mPlayFeignDeath = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayFeignDeath")); }
			ScriptFunction SetFeignEndLocation() { return mSetFeignEndLocation ? mSetFeignEndLocation : (mSetFeignEndLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetFeignEndLocation")); }
			ScriptFunction CheckValidLocation() { return mCheckValidLocation ? mCheckValidLocation : (mCheckValidLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.CheckValidLocation")); }
			ScriptFunction ServerFeignDeath() { return mServerFeignDeath ? mServerFeignDeath : (mServerFeignDeath = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ServerFeignDeath")); }
			ScriptFunction FeignDeath() { return mFeignDeath ? mFeignDeath : (mFeignDeath = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.FeignDeath")); }
			ScriptFunction ForceRagdoll() { return mForceRagdoll ? mForceRagdoll : (mForceRagdoll = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ForceRagdoll")); }
			ScriptFunction FiringModeUpdated() { return mFiringModeUpdated ? mFiringModeUpdated : (mFiringModeUpdated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.FiringModeUpdated")); }
			ScriptFunction SetBigHead() { return mSetBigHead ? mSetBigHead : (mSetBigHead = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetBigHead")); }
			ScriptFunction FireRateChanged() { return mFireRateChanged ? mFireRateChanged : (mFireRateChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.FireRateChanged")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ReplicatedEvent")); }
			ScriptFunction SetHeadScale() { return mSetHeadScale ? mSetHeadScale : (mSetHeadScale = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetHeadScale")); }
			ScriptFunction SetPuttingDownWeapon() { return mSetPuttingDownWeapon ? mSetPuttingDownWeapon : (mSetPuttingDownWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetPuttingDownWeapon")); }
			ScriptFunction GetPuttingDownWeapon() { return mGetPuttingDownWeapon ? mGetPuttingDownWeapon : (mGetPuttingDownWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetPuttingDownWeapon")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.TakeDamage")); }
			ScriptFunction WeaponFired() { return mWeaponFired ? mWeaponFired : (mWeaponFired = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.WeaponFired")); }
			ScriptFunction WeaponStoppedFiring() { return mWeaponStoppedFiring ? mWeaponStoppedFiring : (mWeaponStoppedFiring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.WeaponStoppedFiring")); }
			ScriptFunction WeaponChanged() { return mWeaponChanged ? mWeaponChanged : (mWeaponChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.WeaponChanged")); }
			ScriptFunction WeaponAttachmentChanged() { return mWeaponAttachmentChanged ? mWeaponAttachmentChanged : (mWeaponAttachmentChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.WeaponAttachmentChanged")); }
			ScriptFunction PlayHit() { return mPlayHit ? mPlayHit : (mPlayHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayHit")); }
			ScriptFunction PlayTakeHitEffects() { return mPlayTakeHitEffects ? mPlayTakeHitEffects : (mPlayTakeHitEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PlayTakeHitEffects")); }
			ScriptFunction TakeHitBlendedOut() { return mTakeHitBlendedOut ? mTakeHitBlendedOut : (mTakeHitBlendedOut = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.TakeHitBlendedOut")); }
			ScriptFunction ServerHoverboard() { return mServerHoverboard ? mServerHoverboard : (mServerHoverboard = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ServerHoverboard")); }
			ScriptFunction OnUseHoverboard() { return mOnUseHoverboard ? mOnUseHoverboard : (mOnUseHoverboard = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.OnUseHoverboard")); }
			ScriptFunction SwitchWeapon() { return mSwitchWeapon ? mSwitchWeapon : (mSwitchWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SwitchWeapon")); }
			ScriptFunction TakeDrowningDamage() { return mTakeDrowningDamage ? mTakeDrowningDamage : (mTakeDrowningDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.TakeDrowningDamage")); }
			ScriptFunction IsLocationOnHead() { return mIsLocationOnHead ? mIsLocationOnHead : (mIsLocationOnHead = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.IsLocationOnHead")); }
			ScriptFunction ModifyRotForDebugFreeCam() { return mModifyRotForDebugFreeCam ? mModifyRotForDebugFreeCam : (mModifyRotForDebugFreeCam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.ModifyRotForDebugFreeCam")); }
			ScriptFunction AdjustCameraScale() { return mAdjustCameraScale ? mAdjustCameraScale : (mAdjustCameraScale = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.AdjustCameraScale")); }
			ScriptFunction GetViewRotation() { return mGetViewRotation ? mGetViewRotation : (mGetViewRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetViewRotation")); }
			ScriptFunction TornOff() { return mTornOff ? mTornOff : (mTornOff = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.TornOff")); }
			ScriptFunction SetOverlayVisibility() { return mSetOverlayVisibility ? mSetOverlayVisibility : (mSetOverlayVisibility = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.SetOverlayVisibility")); }
			ScriptFunction TakeFallingDamage() { return mTakeFallingDamage ? mTakeFallingDamage : (mTakeFallingDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.TakeFallingDamage")); }
			ScriptFunction RigidBodyCollision() { return mRigidBodyCollision ? mRigidBodyCollision : (mRigidBodyCollision = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.RigidBodyCollision")); }
			ScriptFunction OnRanOver() { return mOnRanOver ? mOnRanOver : (mOnRanOver = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.OnRanOver")); }
			ScriptFunction StuckFalling() { return mStuckFalling ? mStuckFalling : (mStuckFalling = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.StuckFalling")); }
			ScriptFunction OnExitVehicle() { return mOnExitVehicle ? mOnExitVehicle : (mOnExitVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.OnExitVehicle")); }
			ScriptFunction OnInfiniteAmmo() { return mOnInfiniteAmmo ? mOnInfiniteAmmo : (mOnInfiniteAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.OnInfiniteAmmo")); }
			ScriptFunction PossessedBy() { return mPossessedBy ? mPossessedBy : (mPossessedBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PossessedBy")); }
			ScriptFunction NeedToTurn() { return mNeedToTurn ? mNeedToTurn : (mNeedToTurn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.NeedToTurn")); }
			ScriptFunction GetFamilyInfo() { return mGetFamilyInfo ? mGetFamilyInfo : (mGetFamilyInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.GetFamilyInfo")); }
			ScriptFunction PostTeleport() { return mPostTeleport ? mPostTeleport : (mPostTeleport = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PostTeleport")); }
			ScriptFunction PostBigTeleport() { return mPostBigTeleport ? mPostBigTeleport : (mPostBigTeleport = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawn.PostBigTeleport")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTPawn.GibInfo")); }
		@property final
		{
			auto ref
			{
				ScriptClass GibClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
				ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bHighDetailOnly() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bHighDetailOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			float CurrentCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1700); }
			float CameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1696); }
			Vector WalkBob() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1780); }
			float VestArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1876); }
			float ShieldBeltArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1872); }
			ScriptClass HoverboardClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2072); }
			Vector FixedViewLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1672); }
			Rotator FixedViewRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1684); }
			float LandBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1764); }
			ScriptClass CurrentWeaponAttachmentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1620); }
			float LastPainSound() { return *cast(float*)(cast(size_t)cast(void*)this + 2052); }
			float MapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2032); }
			UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2036); }
			UTWeaponAttachment CurrentWeaponAttachment() { return *cast(UTWeaponAttachment*)(cast(size_t)cast(void*)this + 1884); }
			ScriptClass CurrCharClassInfo() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1812); }
			ScriptArray!(ScriptName) TakeHitPhysicsFixedBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1816); }
			ScriptClass SoundGroupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1808); }
			float DefaultMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2116); }
			ScriptArray!(ScriptName) NoDriveBodies() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1828); }
			AnimNodeBlend FeignDeathBlend() { return *cast(AnimNodeBlend*)(cast(size_t)cast(void*)this + 1632); }
			AnimNodeSlot FullBodyAnimSlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 1636); }
			AnimNodeSlot TopHalfAnimSlot() { return *cast(AnimNodeSlot*)(cast(size_t)cast(void*)this + 1640); }
			UTAnimBlendByDriving DrivingNode() { return *cast(UTAnimBlendByDriving*)(cast(size_t)cast(void*)this + 1860); }
			UTAnimBlendByVehicle VehicleNode() { return *cast(UTAnimBlendByVehicle*)(cast(size_t)cast(void*)this + 1864); }
			UTAnimBlendByHoverboarding HoverboardingNode() { return *cast(UTAnimBlendByHoverboarding*)(cast(size_t)cast(void*)this + 1868); }
			float JumpBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1768); }
			ScriptName TauntNames() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2120); }
			float bobtime() { return *cast(float*)(cast(size_t)cast(void*)this + 1776); }
			float Bob() { return *cast(float*)(cast(size_t)cast(void*)this + 1760); }
			float AppliedBob() { return *cast(float*)(cast(size_t)cast(void*)this + 1772); }
			UObject.LinearColor SpawnProtectionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 2008); }
			SoundCue SpawnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2000); }
			UObject.LinearColor TranslocateColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1952); }
			SoundCue TeleportSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2004); }
			CameraAnim TransCameraAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 1984); }
			ScriptClass TransInEffects() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1944); }
			UTClientSideWeaponPawn ClientSideWeaponPawn() { return *cast(UTClientSideWeaponPawn*)(cast(size_t)cast(void*)this + 2088); }
			float ThighpadArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 1880); }
			SoundCue ArmorHitSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1996); }
			float MaxFootstepDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2064); }
			float MaxJumpSoundDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2068); }
			float DeathTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2200); }
			float DeathHipLinSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
			float DeathHipLinDamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1648); }
			float DeathHipAngSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 1652); }
			float DeathHipAngDamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1656); }
			float StartDeathAnimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1660); }
			float TimeLastTookDeathAnimDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1668); }
			ScriptClass DeathAnimDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1664); }
			float CameraZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1724); }
			int HeroCameraPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1732); }
			float HeroCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
			Vector CamOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2172); }
			float DodgeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
			float DodgeSpeedZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
			int JumpBootCharge() { return *cast(int*)(cast(size_t)cast(void*)this + 2112); }
			Actor.EDoubleClickDir CurrentDir() { return *cast(Actor.EDoubleClickDir*)(cast(size_t)cast(void*)this + 1744); }
			float DoubleJumpEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1748); }
			float DoubleJumpThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1752); }
			float DefaultAirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 1756); }
			MaterialInterface ShieldBeltTeamMaterialInstances() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2096); }
			MaterialInterface ShieldBeltMaterialInstance() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2092); }
			float FeignDeathStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1796); }
			float FeignDeathBodyAtRestSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1792); }
			int UnfeignFailedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1624); }
			float FeignDeathRecoveryStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1800); }
			ScriptName HeadBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1932); }
			UDKPawn.DrivenWeaponPawnInfo LastDrivenWeaponPawn() { return *cast(UDKPawn.DrivenWeaponPawnInfo*)(cast(size_t)cast(void*)this + 2076); }
			ScriptClass m_ClientSideWeaponPawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2204); }
			UTProjectile AttachedProj() { return *cast(UTProjectile*)(cast(size_t)cast(void*)this + 2060); }
			float AccumulationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1848); }
			float AccumulateDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 1844); }
			float LastHoverboardTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1852); }
			float MinHoverboardInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 1856); }
			float HeadHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1928); }
			float HeadRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1924); }
			float CameraScaleMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1704); }
			float CameraScaleMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1708); }
			ForceFeedbackWaveform FallingDamageWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 1840); }
			Vector OldCameraPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1712); }
			float BioBurnAwayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
			ScriptName BioEffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2192); }
			float RagdollLifespan() { return *cast(float*)(cast(size_t)cast(void*)this + 2056); }
			int SuperHealthMax() { return *cast(int*)(cast(size_t)cast(void*)this + 1804); }
			ScriptName WeaponSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1888); }
			ScriptName WeaponSocket2() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1896); }
			ScriptName PawnEffectSockets() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1904); }
			float HeadOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1920); }
			float TeamBeaconPlayerInfoMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
			Texture SpeakingBeaconTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 2028); }
			float DesiredMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
		}
		bool bIsInvulnerable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x40) != 0; }
		bool bIsInvulnerable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x40; } return val; }
		bool bFixedView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x1) != 0; }
		bool bFixedView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x1; } return val; }
		bool bJustLanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x400) != 0; }
		bool bJustLanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x400; } return val; }
		bool bLandRecovery() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x800) != 0; }
		bool bLandRecovery(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x800; } return val; }
		bool bArmsAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x20000) != 0; }
		bool bArmsAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x20000; } return val; }
		bool bStopDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x2000) != 0; }
		bool bStopDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x2000; } return val; }
		bool bReceivedValidTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x200000) != 0; }
		bool bReceivedValidTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x200000; } return val; }
		bool bWeaponBob() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x200) != 0; }
		bool bWeaponBob(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x200; } return val; }
		bool bWeaponAttachmentVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x40000) != 0; }
		bool bWeaponAttachmentVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x40000; } return val; }
		bool bSpawnDone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x2) != 0; }
		bool bSpawnDone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x2; } return val; }
		bool bSpawnIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x4) != 0; }
		bool bSpawnIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x4; } return val; }
		bool bShieldAbsorb() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x8) != 0; }
		bool bShieldAbsorb(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x8; } return val; }
		bool bJustDroppedOrb() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x80) != 0; }
		bool bJustDroppedOrb(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x80; } return val; }
		bool bHeadGibbed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x10000) != 0; }
		bool bHeadGibbed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x10000; } return val; }
		bool bGibbed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x8000) != 0; }
		bool bGibbed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x8000; } return val; }
		bool bForcedFeignDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x100) != 0; }
		bool bForcedFeignDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x100; } return val; }
		bool bHideOnListenServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x80000) != 0; }
		bool bHideOnListenServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x80000; } return val; }
		bool bWinnerCam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x4000) != 0; }
		bool bWinnerCam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x4000; } return val; }
		bool bDodging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x10) != 0; }
		bool bDodging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x10; } return val; }
		bool bStopOnDoubleLanding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x20) != 0; }
		bool bStopOnDoubleLanding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x20; } return val; }
		bool bKillsAffectHead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x400000) != 0; }
		bool bKillsAffectHead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x400000; } return val; }
		bool bHasHoverboard() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x1000) != 0; }
		bool bHasHoverboard(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x1000; } return val; }
		bool bKilledByBio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x800000) != 0; }
		bool bKilledByBio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x800000; } return val; }
		bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1616) & 0x100000) != 0; }
		bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1616) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1616) &= ~0x100000; } return val; }
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
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool bForce)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		*cast(bool*)&params[4] = bForce;
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
	void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
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
	int AbsorbDamage(int* Damage, int CurrentShieldStrength, float AbsorptionRate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = *Damage;
		*cast(int*)&params[4] = CurrentShieldStrength;
		*cast(float*)&params[8] = AbsorptionRate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AbsorbDamage, params.ptr, cast(void*)0);
		*Damage = *cast(int*)params.ptr;
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
	void AdjustDamage(int* InDamage, Vector* Momentum, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = *InDamage;
		*cast(Vector*)&params[4] = *Momentum;
		*cast(Controller*)&params[16] = InstigatedBy;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustDamage, params.ptr, cast(void*)0);
		*InDamage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[4];
	}
	void DropFlag(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
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
	void FindGoodEndView(PlayerController InPC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = InPC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGoodEndView, params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	bool TryNewCamRot(UTPlayerController PC, Rotator ViewRotation, float* CamDist)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = ViewRotation;
		*cast(float*)&params[16] = *CamDist;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryNewCamRot, params.ptr, cast(void*)0);
		*CamDist = *cast(float*)&params[16];
		return *cast(bool*)&params[20];
	}
	void SetHeroCam(Rotator* out_CamRot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHeroCam, params.ptr, cast(void*)0);
		*out_CamRot = *cast(Rotator*)params.ptr;
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
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
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
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
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
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
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
	bool IsLocationOnHead(Actor.ImpactInfo* Impact, float AdditionalScale)
	{
		ubyte params[88];
		params[] = 0;
		*cast(Actor.ImpactInfo*)params.ptr = *Impact;
		*cast(float*)&params[80] = AdditionalScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocationOnHead, params.ptr, cast(void*)0);
		*Impact = *cast(Actor.ImpactInfo*)params.ptr;
		return *cast(bool*)&params[84];
	}
	void ModifyRotForDebugFreeCam(Rotator* out_CamRot)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyRotForDebugFreeCam, params.ptr, cast(void*)0);
		*out_CamRot = *cast(Rotator*)params.ptr;
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
void* OtherComponent, Actor.CollisionImpactData* RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyCollision, params.ptr, cast(void*)0);
		*RigidCollisionData = *cast(Actor.CollisionImpactData*)&params[8];
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
