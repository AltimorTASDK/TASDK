module UnrealScript.TribesGame.TrPawn;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeBlendByRidingPassenger;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrAnimNodeBlendByVehicle;
import UnrealScript.Engine.SVehicle;
import UnrealScript.TribesGame.TrEffectForm;
import UnrealScript.TribesGame.TrAnimNodeAimOffset;
import UnrealScript.TribesGame.TrEffect;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Material;
import UnrealScript.TribesGame.TrDeployable_DropJammer;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.TribesGame.TrPawnCollisionProxy;
import UnrealScript.Engine.MorphNodeWeight;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.TribesGame.TrHUD;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Vehicle;
import UnrealScript.TribesGame.TrValueModifier;
import UnrealScript.TribesGame.TrVehicle;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.TribesGame.AlienFXManager;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTWeaponAttachment;
import UnrealScript.Engine.Weapon;

extern(C++) interface TrPawn : UTPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCurrentPowerPool;
			ScriptFunction mGetMaxPowerPool;
			ScriptFunction mCalculatePawnSpeed;
			ScriptFunction mGetCurrCharClassInfo;
			ScriptFunction mIsFirstPerson;
			ScriptFunction mGetHandsMesh;
			ScriptFunction mGetTribesReplicationInfo;
			ScriptFunction mCheckHeadShot;
			ScriptFunction mGetPawnViewLocation;
			ScriptFunction mGetTrHud;
			ScriptFunction mIsPulseStealthed;
			ScriptFunction mIsJammedByFriendOrSelf;
			ScriptFunction mCheckGrabSpeed;
			ScriptFunction mNativeGetCollisionHeight;
			ScriptFunction mNativeGetCollisionRadius;
			ScriptFunction mSyncClientCurrentPowerPool;
			ScriptFunction mConsumePowerPool;
			ScriptFunction mRegainPowerPool;
			ScriptFunction mGetPowerPoolPercent;
			ScriptFunction mGetCurrentDeviceAccuracyInfo;
			ScriptFunction mSetOverlayMaterial;
			ScriptFunction mServerUpdateLockedTarget;
			ScriptFunction mNativePostRenderFor;
			ScriptFunction mGetTargetLocation;
			ScriptFunction mSetFlashNormal;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mTick;
			ScriptFunction mGetCurrentCredits;
			ScriptFunction mClientRestart;
			ScriptFunction mCurrentDeployedCount;
			ScriptFunction mExitDeployMode;
			ScriptFunction mGetArmorType;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mReplicateMultiFlashLocation;
			ScriptFunction mEquipBestPossibleDevice;
			ScriptFunction mInitDefaultAnims;
			ScriptFunction mSetCharacterClassFromInfo;
			ScriptFunction mActivatePendingClass;
			ScriptFunction mRefreshInventoryTimer;
			ScriptFunction mSetValuesFromCurrentFamilyInfo;
			ScriptFunction mRefreshInventory;
			ScriptFunction mActivateSelectedDeployable;
			ScriptFunction mRemoveEffectByClass;
			ScriptFunction mProcessEffectForm;
			ScriptFunction mGetShieldStrength;
			ScriptFunction mAdjustAmmoPool;
			ScriptFunction mAdjustMaxPowerPool;
			ScriptFunction mSetMaxPowerPool;
			ScriptFunction mSetMaxHealthPool;
			ScriptFunction mClientUpdateHUDHealth;
			ScriptFunction mShouldRechargePowerPool;
			ScriptFunction mForceHealthRegen;
			ScriptFunction mRechargeHealthPool;
			ScriptFunction mGetJetpackAirControl;
			ScriptFunction mUpdateSkiEffects;
			ScriptFunction mPlayJetpackEffects;
			ScriptFunction mUpdateJetpackEffects;
			ScriptFunction mStopJetpackEffects;
			ScriptFunction mPlayLandingSound;
			ScriptFunction mPlayJumpingSound;
			ScriptFunction mRememberLastDamager;
			ScriptFunction mGetHealthPct;
			ScriptFunction mCreateAssistRecord;
			ScriptFunction mGetLastDamager;
			ScriptFunction mProcessKillAssists;
			ScriptFunction mGetUnshieldedDamage;
			ScriptFunction mGetPawnCausingDamage;
			ScriptFunction mGetDamageScale;
			ScriptFunction mDoRepairs;
			ScriptFunction mCheckTribesTurretInstigator;
			ScriptFunction mTakeDamage;
			ScriptFunction mPlayWhiteoutEffect;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mRecentlyGrabbedFlag;
			ScriptFunction mGetShowDistanceThreshold;
			ScriptFunction mPostRenderFor;
			ScriptFunction mDisplayDebug;
			ScriptFunction mLanded;
			ScriptFunction mTakeFallingDamage;
			ScriptFunction mPlayHardLandingEffect;
			ScriptFunction mPlaySonicPunchEffect;
			ScriptFunction mTakeFallDamage;
			ScriptFunction mProcessCreditEvent;
			ScriptFunction mFlashLocationUpdated;
			ScriptFunction mWeaponFired;
			ScriptFunction mDodge;
			ScriptFunction mPerformDodge;
			ScriptFunction mgibbedBy;
			ScriptFunction mEncroachedBy;
			ScriptFunction mShouldGib;
			ScriptFunction mSetHandIKEnabled;
			ScriptFunction mPlayDamageCameraShake;
			ScriptFunction mIsLastHitFromNinjaSmoke;
			ScriptFunction mPlayTakeHitEffects;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mDied;
			ScriptFunction mStopLocalEffectsAndSounds;
			ScriptFunction mSetOverlayMeshHidden;
			ScriptFunction mPlayDying;
			ScriptFunction mNotifyTeamChanged;
			ScriptFunction mUpdateTeamBlockerMaterials;
			ScriptFunction mPossessedBy;
			ScriptFunction mResetSkin;
			ScriptFunction mSetSkin;
			ScriptFunction mInitializeOverlayMaterials;
			ScriptFunction mClientPlayHealthRegenEffect;
			ScriptFunction mSetShieldPackActive;
			ScriptFunction mPlayShieldPackEffect;
			ScriptFunction mSetStealthPackActive;
			ScriptFunction mPlayStealthPackEffect;
			ScriptFunction mPulseStealth;
			ScriptFunction mSetRagePerkActive;
			ScriptFunction mClearRagePerk;
			ScriptFunction mPlayRageEffect;
			ScriptFunction mPlayInvulnerabilityEffect;
			ScriptFunction mStartRidingInVehicle;
			ScriptFunction mStopRidingInVehicle;
			ScriptFunction mStartDriving;
			ScriptFunction mStopDriving;
			ScriptFunction mOnRanOver;
			ScriptFunction mEnableJamming;
			ScriptFunction mDisableJamming;
			ScriptFunction mDisableJammingOtherPawns;
			ScriptFunction mEnteredFriendJammingRadius;
			ScriptFunction mExitFriendJammingRadius;
			ScriptFunction mEnteredEnemyJammingRadius;
			ScriptFunction mExitEnemyJammingRadius;
			ScriptFunction mIsJammedByEnemy;
			ScriptFunction mPlayJammerPackEffect;
			ScriptFunction mPlayJammingByFriendEffect;
			ScriptFunction mPlayEnemyJammerPackEffect;
			ScriptFunction mOnPawnDetectedByCollisionProxy;
			ScriptFunction mOnPawnExitedCollisionProxy;
			ScriptFunction mOnEnteredDropJammer;
			ScriptFunction mOnExitedDropJammer;
			ScriptFunction mUpdateEnemyDropJammer;
			ScriptFunction mUpdateFriendlyDropJammer;
			ScriptFunction mPlayJammingByEnemyDropJammerEffect;
			ScriptFunction mPlayJammingByFriendlyDropJammerEffect;
			ScriptFunction mOnChangeJammingTeam;
			ScriptFunction mDestroyed;
			ScriptFunction mSetMeshVisibility;
			ScriptFunction mSetFirstPersonBodyVisibility;
			ScriptFunction mWeaponAttachmentChanged;
			ScriptFunction mForceCrouch;
			ScriptFunction mFindClosestStickyGrenadeSocketIndex;
			ScriptFunction mStickGrenadeToPawn;
			ScriptFunction mUpdateStickyGrenades;
			ScriptFunction mSetSkiing;
			ScriptFunction mPlaySkiEffects;
			ScriptFunction mStopSkiEffects;
			ScriptFunction mPlaySkiEffectsSound;
			ScriptFunction mStopSkiEffectsSound;
			ScriptFunction mFaceRotation;
			ScriptFunction mPlayDyingSound;
			ScriptFunction mHoldGameObject;
			ScriptFunction mAdjustDamage;
			ScriptFunction mGoInvulnerable;
			ScriptFunction mClearInvulnerability;
			ScriptFunction mSetMovementPhysics;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mPlayTeleportEffect;
			ScriptFunction mTurnOff;
			ScriptFunction mSetDetectedByEnemyScanner;
			ScriptFunction mGetDetectedByEnemyScanner;
			ScriptFunction mSetScannerDetect;
			ScriptFunction mGetFamilyInfo;
			ScriptFunction mLockedOutFromFlagPickupTimer;
			ScriptFunction mLockFromFlagPickup;
			ScriptFunction mBlink;
			ScriptFunction mPlayBlinkPackEffect;
			ScriptFunction mDoJump;
			ScriptFunction mCheckClotheslineDamage;
			ScriptFunction mGetSpectatorName;
			ScriptFunction mCrushedBy;
			ScriptFunction mStuckOnPawn;
			ScriptFunction mSetPending3PSkin;
			ScriptFunction mCheckApplyPending3PSkin;
			ScriptFunction mThrowActiveWeapon;
			ScriptFunction mThrowWeaponOnDeath;
			ScriptFunction mClearSkiParticleEffects;
			ScriptFunction mClearJetpackParticleEffects;
			ScriptFunction mAlienFXOverlay;
		}
		public @property static final
		{
			ScriptFunction GetCurrentPowerPool() { return mGetCurrentPowerPool ? mGetCurrentPowerPool : (mGetCurrentPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetCurrentPowerPool")); }
			ScriptFunction GetMaxPowerPool() { return mGetMaxPowerPool ? mGetMaxPowerPool : (mGetMaxPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetMaxPowerPool")); }
			ScriptFunction CalculatePawnSpeed() { return mCalculatePawnSpeed ? mCalculatePawnSpeed : (mCalculatePawnSpeed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CalculatePawnSpeed")); }
			ScriptFunction GetCurrCharClassInfo() { return mGetCurrCharClassInfo ? mGetCurrCharClassInfo : (mGetCurrCharClassInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetCurrCharClassInfo")); }
			ScriptFunction IsFirstPerson() { return mIsFirstPerson ? mIsFirstPerson : (mIsFirstPerson = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.IsFirstPerson")); }
			ScriptFunction GetHandsMesh() { return mGetHandsMesh ? mGetHandsMesh : (mGetHandsMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetHandsMesh")); }
			ScriptFunction GetTribesReplicationInfo() { return mGetTribesReplicationInfo ? mGetTribesReplicationInfo : (mGetTribesReplicationInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetTribesReplicationInfo")); }
			ScriptFunction CheckHeadShot() { return mCheckHeadShot ? mCheckHeadShot : (mCheckHeadShot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CheckHeadShot")); }
			ScriptFunction GetPawnViewLocation() { return mGetPawnViewLocation ? mGetPawnViewLocation : (mGetPawnViewLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetPawnViewLocation")); }
			ScriptFunction GetTrHud() { return mGetTrHud ? mGetTrHud : (mGetTrHud = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetTrHud")); }
			ScriptFunction IsPulseStealthed() { return mIsPulseStealthed ? mIsPulseStealthed : (mIsPulseStealthed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.IsPulseStealthed")); }
			ScriptFunction IsJammedByFriendOrSelf() { return mIsJammedByFriendOrSelf ? mIsJammedByFriendOrSelf : (mIsJammedByFriendOrSelf = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.IsJammedByFriendOrSelf")); }
			ScriptFunction CheckGrabSpeed() { return mCheckGrabSpeed ? mCheckGrabSpeed : (mCheckGrabSpeed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CheckGrabSpeed")); }
			ScriptFunction NativeGetCollisionHeight() { return mNativeGetCollisionHeight ? mNativeGetCollisionHeight : (mNativeGetCollisionHeight = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.NativeGetCollisionHeight")); }
			ScriptFunction NativeGetCollisionRadius() { return mNativeGetCollisionRadius ? mNativeGetCollisionRadius : (mNativeGetCollisionRadius = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.NativeGetCollisionRadius")); }
			ScriptFunction SyncClientCurrentPowerPool() { return mSyncClientCurrentPowerPool ? mSyncClientCurrentPowerPool : (mSyncClientCurrentPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SyncClientCurrentPowerPool")); }
			ScriptFunction ConsumePowerPool() { return mConsumePowerPool ? mConsumePowerPool : (mConsumePowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ConsumePowerPool")); }
			ScriptFunction RegainPowerPool() { return mRegainPowerPool ? mRegainPowerPool : (mRegainPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.RegainPowerPool")); }
			ScriptFunction GetPowerPoolPercent() { return mGetPowerPoolPercent ? mGetPowerPoolPercent : (mGetPowerPoolPercent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetPowerPoolPercent")); }
			ScriptFunction GetCurrentDeviceAccuracyInfo() { return mGetCurrentDeviceAccuracyInfo ? mGetCurrentDeviceAccuracyInfo : (mGetCurrentDeviceAccuracyInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetCurrentDeviceAccuracyInfo")); }
			ScriptFunction SetOverlayMaterial() { return mSetOverlayMaterial ? mSetOverlayMaterial : (mSetOverlayMaterial = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetOverlayMaterial")); }
			ScriptFunction ServerUpdateLockedTarget() { return mServerUpdateLockedTarget ? mServerUpdateLockedTarget : (mServerUpdateLockedTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ServerUpdateLockedTarget")); }
			ScriptFunction NativePostRenderFor() { return mNativePostRenderFor ? mNativePostRenderFor : (mNativePostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.NativePostRenderFor")); }
			ScriptFunction GetTargetLocation() { return mGetTargetLocation ? mGetTargetLocation : (mGetTargetLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetTargetLocation")); }
			ScriptFunction SetFlashNormal() { return mSetFlashNormal ? mSetFlashNormal : (mSetFlashNormal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetFlashNormal")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PostInitAnimTree")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.Tick")); }
			ScriptFunction GetCurrentCredits() { return mGetCurrentCredits ? mGetCurrentCredits : (mGetCurrentCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetCurrentCredits")); }
			ScriptFunction ClientRestart() { return mClientRestart ? mClientRestart : (mClientRestart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ClientRestart")); }
			ScriptFunction CurrentDeployedCount() { return mCurrentDeployedCount ? mCurrentDeployedCount : (mCurrentDeployedCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CurrentDeployedCount")); }
			ScriptFunction ExitDeployMode() { return mExitDeployMode ? mExitDeployMode : (mExitDeployMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ExitDeployMode")); }
			ScriptFunction GetArmorType() { return mGetArmorType ? mGetArmorType : (mGetArmorType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetArmorType")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ReplicatedEvent")); }
			ScriptFunction ReplicateMultiFlashLocation() { return mReplicateMultiFlashLocation ? mReplicateMultiFlashLocation : (mReplicateMultiFlashLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ReplicateMultiFlashLocation")); }
			ScriptFunction EquipBestPossibleDevice() { return mEquipBestPossibleDevice ? mEquipBestPossibleDevice : (mEquipBestPossibleDevice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.EquipBestPossibleDevice")); }
			ScriptFunction InitDefaultAnims() { return mInitDefaultAnims ? mInitDefaultAnims : (mInitDefaultAnims = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.InitDefaultAnims")); }
			ScriptFunction SetCharacterClassFromInfo() { return mSetCharacterClassFromInfo ? mSetCharacterClassFromInfo : (mSetCharacterClassFromInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetCharacterClassFromInfo")); }
			ScriptFunction ActivatePendingClass() { return mActivatePendingClass ? mActivatePendingClass : (mActivatePendingClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ActivatePendingClass")); }
			ScriptFunction RefreshInventoryTimer() { return mRefreshInventoryTimer ? mRefreshInventoryTimer : (mRefreshInventoryTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.RefreshInventoryTimer")); }
			ScriptFunction SetValuesFromCurrentFamilyInfo() { return mSetValuesFromCurrentFamilyInfo ? mSetValuesFromCurrentFamilyInfo : (mSetValuesFromCurrentFamilyInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetValuesFromCurrentFamilyInfo")); }
			ScriptFunction RefreshInventory() { return mRefreshInventory ? mRefreshInventory : (mRefreshInventory = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.RefreshInventory")); }
			ScriptFunction ActivateSelectedDeployable() { return mActivateSelectedDeployable ? mActivateSelectedDeployable : (mActivateSelectedDeployable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ActivateSelectedDeployable")); }
			ScriptFunction RemoveEffectByClass() { return mRemoveEffectByClass ? mRemoveEffectByClass : (mRemoveEffectByClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.RemoveEffectByClass")); }
			ScriptFunction ProcessEffectForm() { return mProcessEffectForm ? mProcessEffectForm : (mProcessEffectForm = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ProcessEffectForm")); }
			ScriptFunction GetShieldStrength() { return mGetShieldStrength ? mGetShieldStrength : (mGetShieldStrength = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetShieldStrength")); }
			ScriptFunction AdjustAmmoPool() { return mAdjustAmmoPool ? mAdjustAmmoPool : (mAdjustAmmoPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.AdjustAmmoPool")); }
			ScriptFunction AdjustMaxPowerPool() { return mAdjustMaxPowerPool ? mAdjustMaxPowerPool : (mAdjustMaxPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.AdjustMaxPowerPool")); }
			ScriptFunction SetMaxPowerPool() { return mSetMaxPowerPool ? mSetMaxPowerPool : (mSetMaxPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetMaxPowerPool")); }
			ScriptFunction SetMaxHealthPool() { return mSetMaxHealthPool ? mSetMaxHealthPool : (mSetMaxHealthPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetMaxHealthPool")); }
			ScriptFunction ClientUpdateHUDHealth() { return mClientUpdateHUDHealth ? mClientUpdateHUDHealth : (mClientUpdateHUDHealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ClientUpdateHUDHealth")); }
			ScriptFunction ShouldRechargePowerPool() { return mShouldRechargePowerPool ? mShouldRechargePowerPool : (mShouldRechargePowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ShouldRechargePowerPool")); }
			ScriptFunction ForceHealthRegen() { return mForceHealthRegen ? mForceHealthRegen : (mForceHealthRegen = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ForceHealthRegen")); }
			ScriptFunction RechargeHealthPool() { return mRechargeHealthPool ? mRechargeHealthPool : (mRechargeHealthPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.RechargeHealthPool")); }
			ScriptFunction GetJetpackAirControl() { return mGetJetpackAirControl ? mGetJetpackAirControl : (mGetJetpackAirControl = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetJetpackAirControl")); }
			ScriptFunction UpdateSkiEffects() { return mUpdateSkiEffects ? mUpdateSkiEffects : (mUpdateSkiEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.UpdateSkiEffects")); }
			ScriptFunction PlayJetpackEffects() { return mPlayJetpackEffects ? mPlayJetpackEffects : (mPlayJetpackEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayJetpackEffects")); }
			ScriptFunction UpdateJetpackEffects() { return mUpdateJetpackEffects ? mUpdateJetpackEffects : (mUpdateJetpackEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.UpdateJetpackEffects")); }
			ScriptFunction StopJetpackEffects() { return mStopJetpackEffects ? mStopJetpackEffects : (mStopJetpackEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StopJetpackEffects")); }
			ScriptFunction PlayLandingSound() { return mPlayLandingSound ? mPlayLandingSound : (mPlayLandingSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayLandingSound")); }
			ScriptFunction PlayJumpingSound() { return mPlayJumpingSound ? mPlayJumpingSound : (mPlayJumpingSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayJumpingSound")); }
			ScriptFunction RememberLastDamager() { return mRememberLastDamager ? mRememberLastDamager : (mRememberLastDamager = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.RememberLastDamager")); }
			ScriptFunction GetHealthPct() { return mGetHealthPct ? mGetHealthPct : (mGetHealthPct = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetHealthPct")); }
			ScriptFunction CreateAssistRecord() { return mCreateAssistRecord ? mCreateAssistRecord : (mCreateAssistRecord = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CreateAssistRecord")); }
			ScriptFunction GetLastDamager() { return mGetLastDamager ? mGetLastDamager : (mGetLastDamager = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetLastDamager")); }
			ScriptFunction ProcessKillAssists() { return mProcessKillAssists ? mProcessKillAssists : (mProcessKillAssists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ProcessKillAssists")); }
			ScriptFunction GetUnshieldedDamage() { return mGetUnshieldedDamage ? mGetUnshieldedDamage : (mGetUnshieldedDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetUnshieldedDamage")); }
			ScriptFunction GetPawnCausingDamage() { return mGetPawnCausingDamage ? mGetPawnCausingDamage : (mGetPawnCausingDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetPawnCausingDamage")); }
			ScriptFunction GetDamageScale() { return mGetDamageScale ? mGetDamageScale : (mGetDamageScale = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetDamageScale")); }
			ScriptFunction DoRepairs() { return mDoRepairs ? mDoRepairs : (mDoRepairs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.DoRepairs")); }
			ScriptFunction CheckTribesTurretInstigator() { return mCheckTribesTurretInstigator ? mCheckTribesTurretInstigator : (mCheckTribesTurretInstigator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CheckTribesTurretInstigator")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.TakeDamage")); }
			ScriptFunction PlayWhiteoutEffect() { return mPlayWhiteoutEffect ? mPlayWhiteoutEffect : (mPlayWhiteoutEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayWhiteoutEffect")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.TakeRadiusDamage")); }
			ScriptFunction RecentlyGrabbedFlag() { return mRecentlyGrabbedFlag ? mRecentlyGrabbedFlag : (mRecentlyGrabbedFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.RecentlyGrabbedFlag")); }
			ScriptFunction GetShowDistanceThreshold() { return mGetShowDistanceThreshold ? mGetShowDistanceThreshold : (mGetShowDistanceThreshold = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetShowDistanceThreshold")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PostRenderFor")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.DisplayDebug")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.Landed")); }
			ScriptFunction TakeFallingDamage() { return mTakeFallingDamage ? mTakeFallingDamage : (mTakeFallingDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.TakeFallingDamage")); }
			ScriptFunction PlayHardLandingEffect() { return mPlayHardLandingEffect ? mPlayHardLandingEffect : (mPlayHardLandingEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayHardLandingEffect")); }
			ScriptFunction PlaySonicPunchEffect() { return mPlaySonicPunchEffect ? mPlaySonicPunchEffect : (mPlaySonicPunchEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlaySonicPunchEffect")); }
			ScriptFunction TakeFallDamage() { return mTakeFallDamage ? mTakeFallDamage : (mTakeFallDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.TakeFallDamage")); }
			ScriptFunction ProcessCreditEvent() { return mProcessCreditEvent ? mProcessCreditEvent : (mProcessCreditEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ProcessCreditEvent")); }
			ScriptFunction FlashLocationUpdated() { return mFlashLocationUpdated ? mFlashLocationUpdated : (mFlashLocationUpdated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.FlashLocationUpdated")); }
			ScriptFunction WeaponFired() { return mWeaponFired ? mWeaponFired : (mWeaponFired = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.WeaponFired")); }
			ScriptFunction Dodge() { return mDodge ? mDodge : (mDodge = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.Dodge")); }
			ScriptFunction PerformDodge() { return mPerformDodge ? mPerformDodge : (mPerformDodge = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PerformDodge")); }
			ScriptFunction gibbedBy() { return mgibbedBy ? mgibbedBy : (mgibbedBy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.gibbedBy")); }
			ScriptFunction EncroachedBy() { return mEncroachedBy ? mEncroachedBy : (mEncroachedBy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.EncroachedBy")); }
			ScriptFunction ShouldGib() { return mShouldGib ? mShouldGib : (mShouldGib = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ShouldGib")); }
			ScriptFunction SetHandIKEnabled() { return mSetHandIKEnabled ? mSetHandIKEnabled : (mSetHandIKEnabled = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetHandIKEnabled")); }
			ScriptFunction PlayDamageCameraShake() { return mPlayDamageCameraShake ? mPlayDamageCameraShake : (mPlayDamageCameraShake = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayDamageCameraShake")); }
			ScriptFunction IsLastHitFromNinjaSmoke() { return mIsLastHitFromNinjaSmoke ? mIsLastHitFromNinjaSmoke : (mIsLastHitFromNinjaSmoke = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.IsLastHitFromNinjaSmoke")); }
			ScriptFunction PlayTakeHitEffects() { return mPlayTakeHitEffects ? mPlayTakeHitEffects : (mPlayTakeHitEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayTakeHitEffects")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.FellOutOfWorld")); }
			ScriptFunction Died() { return mDied ? mDied : (mDied = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.Died")); }
			ScriptFunction StopLocalEffectsAndSounds() { return mStopLocalEffectsAndSounds ? mStopLocalEffectsAndSounds : (mStopLocalEffectsAndSounds = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StopLocalEffectsAndSounds")); }
			ScriptFunction SetOverlayMeshHidden() { return mSetOverlayMeshHidden ? mSetOverlayMeshHidden : (mSetOverlayMeshHidden = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetOverlayMeshHidden")); }
			ScriptFunction PlayDying() { return mPlayDying ? mPlayDying : (mPlayDying = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayDying")); }
			ScriptFunction NotifyTeamChanged() { return mNotifyTeamChanged ? mNotifyTeamChanged : (mNotifyTeamChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.NotifyTeamChanged")); }
			ScriptFunction UpdateTeamBlockerMaterials() { return mUpdateTeamBlockerMaterials ? mUpdateTeamBlockerMaterials : (mUpdateTeamBlockerMaterials = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.UpdateTeamBlockerMaterials")); }
			ScriptFunction PossessedBy() { return mPossessedBy ? mPossessedBy : (mPossessedBy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PossessedBy")); }
			ScriptFunction ResetSkin() { return mResetSkin ? mResetSkin : (mResetSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ResetSkin")); }
			ScriptFunction SetSkin() { return mSetSkin ? mSetSkin : (mSetSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetSkin")); }
			ScriptFunction InitializeOverlayMaterials() { return mInitializeOverlayMaterials ? mInitializeOverlayMaterials : (mInitializeOverlayMaterials = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.InitializeOverlayMaterials")); }
			ScriptFunction ClientPlayHealthRegenEffect() { return mClientPlayHealthRegenEffect ? mClientPlayHealthRegenEffect : (mClientPlayHealthRegenEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ClientPlayHealthRegenEffect")); }
			ScriptFunction SetShieldPackActive() { return mSetShieldPackActive ? mSetShieldPackActive : (mSetShieldPackActive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetShieldPackActive")); }
			ScriptFunction PlayShieldPackEffect() { return mPlayShieldPackEffect ? mPlayShieldPackEffect : (mPlayShieldPackEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayShieldPackEffect")); }
			ScriptFunction SetStealthPackActive() { return mSetStealthPackActive ? mSetStealthPackActive : (mSetStealthPackActive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetStealthPackActive")); }
			ScriptFunction PlayStealthPackEffect() { return mPlayStealthPackEffect ? mPlayStealthPackEffect : (mPlayStealthPackEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayStealthPackEffect")); }
			ScriptFunction PulseStealth() { return mPulseStealth ? mPulseStealth : (mPulseStealth = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PulseStealth")); }
			ScriptFunction SetRagePerkActive() { return mSetRagePerkActive ? mSetRagePerkActive : (mSetRagePerkActive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetRagePerkActive")); }
			ScriptFunction ClearRagePerk() { return mClearRagePerk ? mClearRagePerk : (mClearRagePerk = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ClearRagePerk")); }
			ScriptFunction PlayRageEffect() { return mPlayRageEffect ? mPlayRageEffect : (mPlayRageEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayRageEffect")); }
			ScriptFunction PlayInvulnerabilityEffect() { return mPlayInvulnerabilityEffect ? mPlayInvulnerabilityEffect : (mPlayInvulnerabilityEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayInvulnerabilityEffect")); }
			ScriptFunction StartRidingInVehicle() { return mStartRidingInVehicle ? mStartRidingInVehicle : (mStartRidingInVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StartRidingInVehicle")); }
			ScriptFunction StopRidingInVehicle() { return mStopRidingInVehicle ? mStopRidingInVehicle : (mStopRidingInVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StopRidingInVehicle")); }
			ScriptFunction StartDriving() { return mStartDriving ? mStartDriving : (mStartDriving = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StartDriving")); }
			ScriptFunction StopDriving() { return mStopDriving ? mStopDriving : (mStopDriving = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StopDriving")); }
			ScriptFunction OnRanOver() { return mOnRanOver ? mOnRanOver : (mOnRanOver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.OnRanOver")); }
			ScriptFunction EnableJamming() { return mEnableJamming ? mEnableJamming : (mEnableJamming = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.EnableJamming")); }
			ScriptFunction DisableJamming() { return mDisableJamming ? mDisableJamming : (mDisableJamming = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.DisableJamming")); }
			ScriptFunction DisableJammingOtherPawns() { return mDisableJammingOtherPawns ? mDisableJammingOtherPawns : (mDisableJammingOtherPawns = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.DisableJammingOtherPawns")); }
			ScriptFunction EnteredFriendJammingRadius() { return mEnteredFriendJammingRadius ? mEnteredFriendJammingRadius : (mEnteredFriendJammingRadius = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.EnteredFriendJammingRadius")); }
			ScriptFunction ExitFriendJammingRadius() { return mExitFriendJammingRadius ? mExitFriendJammingRadius : (mExitFriendJammingRadius = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ExitFriendJammingRadius")); }
			ScriptFunction EnteredEnemyJammingRadius() { return mEnteredEnemyJammingRadius ? mEnteredEnemyJammingRadius : (mEnteredEnemyJammingRadius = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.EnteredEnemyJammingRadius")); }
			ScriptFunction ExitEnemyJammingRadius() { return mExitEnemyJammingRadius ? mExitEnemyJammingRadius : (mExitEnemyJammingRadius = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ExitEnemyJammingRadius")); }
			ScriptFunction IsJammedByEnemy() { return mIsJammedByEnemy ? mIsJammedByEnemy : (mIsJammedByEnemy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.IsJammedByEnemy")); }
			ScriptFunction PlayJammerPackEffect() { return mPlayJammerPackEffect ? mPlayJammerPackEffect : (mPlayJammerPackEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayJammerPackEffect")); }
			ScriptFunction PlayJammingByFriendEffect() { return mPlayJammingByFriendEffect ? mPlayJammingByFriendEffect : (mPlayJammingByFriendEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayJammingByFriendEffect")); }
			ScriptFunction PlayEnemyJammerPackEffect() { return mPlayEnemyJammerPackEffect ? mPlayEnemyJammerPackEffect : (mPlayEnemyJammerPackEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayEnemyJammerPackEffect")); }
			ScriptFunction OnPawnDetectedByCollisionProxy() { return mOnPawnDetectedByCollisionProxy ? mOnPawnDetectedByCollisionProxy : (mOnPawnDetectedByCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.OnPawnDetectedByCollisionProxy")); }
			ScriptFunction OnPawnExitedCollisionProxy() { return mOnPawnExitedCollisionProxy ? mOnPawnExitedCollisionProxy : (mOnPawnExitedCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.OnPawnExitedCollisionProxy")); }
			ScriptFunction OnEnteredDropJammer() { return mOnEnteredDropJammer ? mOnEnteredDropJammer : (mOnEnteredDropJammer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.OnEnteredDropJammer")); }
			ScriptFunction OnExitedDropJammer() { return mOnExitedDropJammer ? mOnExitedDropJammer : (mOnExitedDropJammer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.OnExitedDropJammer")); }
			ScriptFunction UpdateEnemyDropJammer() { return mUpdateEnemyDropJammer ? mUpdateEnemyDropJammer : (mUpdateEnemyDropJammer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.UpdateEnemyDropJammer")); }
			ScriptFunction UpdateFriendlyDropJammer() { return mUpdateFriendlyDropJammer ? mUpdateFriendlyDropJammer : (mUpdateFriendlyDropJammer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.UpdateFriendlyDropJammer")); }
			ScriptFunction PlayJammingByEnemyDropJammerEffect() { return mPlayJammingByEnemyDropJammerEffect ? mPlayJammingByEnemyDropJammerEffect : (mPlayJammingByEnemyDropJammerEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayJammingByEnemyDropJammerEffect")); }
			ScriptFunction PlayJammingByFriendlyDropJammerEffect() { return mPlayJammingByFriendlyDropJammerEffect ? mPlayJammingByFriendlyDropJammerEffect : (mPlayJammingByFriendlyDropJammerEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayJammingByFriendlyDropJammerEffect")); }
			ScriptFunction OnChangeJammingTeam() { return mOnChangeJammingTeam ? mOnChangeJammingTeam : (mOnChangeJammingTeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.OnChangeJammingTeam")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.Destroyed")); }
			ScriptFunction SetMeshVisibility() { return mSetMeshVisibility ? mSetMeshVisibility : (mSetMeshVisibility = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetMeshVisibility")); }
			ScriptFunction SetFirstPersonBodyVisibility() { return mSetFirstPersonBodyVisibility ? mSetFirstPersonBodyVisibility : (mSetFirstPersonBodyVisibility = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetFirstPersonBodyVisibility")); }
			ScriptFunction WeaponAttachmentChanged() { return mWeaponAttachmentChanged ? mWeaponAttachmentChanged : (mWeaponAttachmentChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.WeaponAttachmentChanged")); }
			ScriptFunction ForceCrouch() { return mForceCrouch ? mForceCrouch : (mForceCrouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ForceCrouch")); }
			ScriptFunction FindClosestStickyGrenadeSocketIndex() { return mFindClosestStickyGrenadeSocketIndex ? mFindClosestStickyGrenadeSocketIndex : (mFindClosestStickyGrenadeSocketIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.FindClosestStickyGrenadeSocketIndex")); }
			ScriptFunction StickGrenadeToPawn() { return mStickGrenadeToPawn ? mStickGrenadeToPawn : (mStickGrenadeToPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StickGrenadeToPawn")); }
			ScriptFunction UpdateStickyGrenades() { return mUpdateStickyGrenades ? mUpdateStickyGrenades : (mUpdateStickyGrenades = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.UpdateStickyGrenades")); }
			ScriptFunction SetSkiing() { return mSetSkiing ? mSetSkiing : (mSetSkiing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetSkiing")); }
			ScriptFunction PlaySkiEffects() { return mPlaySkiEffects ? mPlaySkiEffects : (mPlaySkiEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlaySkiEffects")); }
			ScriptFunction StopSkiEffects() { return mStopSkiEffects ? mStopSkiEffects : (mStopSkiEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StopSkiEffects")); }
			ScriptFunction PlaySkiEffectsSound() { return mPlaySkiEffectsSound ? mPlaySkiEffectsSound : (mPlaySkiEffectsSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlaySkiEffectsSound")); }
			ScriptFunction StopSkiEffectsSound() { return mStopSkiEffectsSound ? mStopSkiEffectsSound : (mStopSkiEffectsSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StopSkiEffectsSound")); }
			ScriptFunction FaceRotation() { return mFaceRotation ? mFaceRotation : (mFaceRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.FaceRotation")); }
			ScriptFunction PlayDyingSound() { return mPlayDyingSound ? mPlayDyingSound : (mPlayDyingSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayDyingSound")); }
			ScriptFunction HoldGameObject() { return mHoldGameObject ? mHoldGameObject : (mHoldGameObject = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.HoldGameObject")); }
			ScriptFunction AdjustDamage() { return mAdjustDamage ? mAdjustDamage : (mAdjustDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.AdjustDamage")); }
			ScriptFunction GoInvulnerable() { return mGoInvulnerable ? mGoInvulnerable : (mGoInvulnerable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GoInvulnerable")); }
			ScriptFunction ClearInvulnerability() { return mClearInvulnerability ? mClearInvulnerability : (mClearInvulnerability = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ClearInvulnerability")); }
			ScriptFunction SetMovementPhysics() { return mSetMovementPhysics ? mSetMovementPhysics : (mSetMovementPhysics = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetMovementPhysics")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.OnAnimEnd")); }
			ScriptFunction PlayTeleportEffect() { return mPlayTeleportEffect ? mPlayTeleportEffect : (mPlayTeleportEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayTeleportEffect")); }
			ScriptFunction TurnOff() { return mTurnOff ? mTurnOff : (mTurnOff = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.TurnOff")); }
			ScriptFunction SetDetectedByEnemyScanner() { return mSetDetectedByEnemyScanner ? mSetDetectedByEnemyScanner : (mSetDetectedByEnemyScanner = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetDetectedByEnemyScanner")); }
			ScriptFunction GetDetectedByEnemyScanner() { return mGetDetectedByEnemyScanner ? mGetDetectedByEnemyScanner : (mGetDetectedByEnemyScanner = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetDetectedByEnemyScanner")); }
			ScriptFunction SetScannerDetect() { return mSetScannerDetect ? mSetScannerDetect : (mSetScannerDetect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetScannerDetect")); }
			ScriptFunction GetFamilyInfo() { return mGetFamilyInfo ? mGetFamilyInfo : (mGetFamilyInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetFamilyInfo")); }
			ScriptFunction LockedOutFromFlagPickupTimer() { return mLockedOutFromFlagPickupTimer ? mLockedOutFromFlagPickupTimer : (mLockedOutFromFlagPickupTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.LockedOutFromFlagPickupTimer")); }
			ScriptFunction LockFromFlagPickup() { return mLockFromFlagPickup ? mLockFromFlagPickup : (mLockFromFlagPickup = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.LockFromFlagPickup")); }
			ScriptFunction Blink() { return mBlink ? mBlink : (mBlink = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.Blink")); }
			ScriptFunction PlayBlinkPackEffect() { return mPlayBlinkPackEffect ? mPlayBlinkPackEffect : (mPlayBlinkPackEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.PlayBlinkPackEffect")); }
			ScriptFunction DoJump() { return mDoJump ? mDoJump : (mDoJump = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.DoJump")); }
			ScriptFunction CheckClotheslineDamage() { return mCheckClotheslineDamage ? mCheckClotheslineDamage : (mCheckClotheslineDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CheckClotheslineDamage")); }
			ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.GetSpectatorName")); }
			ScriptFunction CrushedBy() { return mCrushedBy ? mCrushedBy : (mCrushedBy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CrushedBy")); }
			ScriptFunction StuckOnPawn() { return mStuckOnPawn ? mStuckOnPawn : (mStuckOnPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.StuckOnPawn")); }
			ScriptFunction SetPending3PSkin() { return mSetPending3PSkin ? mSetPending3PSkin : (mSetPending3PSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.SetPending3PSkin")); }
			ScriptFunction CheckApplyPending3PSkin() { return mCheckApplyPending3PSkin ? mCheckApplyPending3PSkin : (mCheckApplyPending3PSkin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.CheckApplyPending3PSkin")); }
			ScriptFunction ThrowActiveWeapon() { return mThrowActiveWeapon ? mThrowActiveWeapon : (mThrowActiveWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ThrowActiveWeapon")); }
			ScriptFunction ThrowWeaponOnDeath() { return mThrowWeaponOnDeath ? mThrowWeaponOnDeath : (mThrowWeaponOnDeath = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ThrowWeaponOnDeath")); }
			ScriptFunction ClearSkiParticleEffects() { return mClearSkiParticleEffects ? mClearSkiParticleEffects : (mClearSkiParticleEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ClearSkiParticleEffects")); }
			ScriptFunction ClearJetpackParticleEffects() { return mClearJetpackParticleEffects ? mClearJetpackParticleEffects : (mClearJetpackParticleEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.ClearJetpackParticleEffects")); }
			ScriptFunction AlienFXOverlay() { return mAlienFXOverlay ? mAlienFXOverlay : (mAlienFXOverlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawn.AlienFXOverlay")); }
		}
	}
	enum
	{
		MAX_SCANNER_SEE_FLAG = 2,
		MAX_SCANNER_DISPLAY_FLAG = 3,
		MAX_MULTISHOT_LOCATIONS = 8,
		VELOCITY_HISTORY_SIZE = 3,
	}
	enum PhysicsType : ubyte
	{
		PhysType_SpeedCap = 0,
		PhysType_AccelCap = 1,
		PhysType_NoCap = 2,
		PhysType_MAX = 3,
	}
	enum WalkingDeceleration : ubyte
	{
		WalkingDeceleration_None = 0,
		WalkingDeceleration_A = 1,
		WalkingDeceleration_B = 2,
		WalkingDeceleration_C = 3,
		WalkingDeceleration_D = 4,
		WalkingDeceleration_E = 5,
		WalkingDeceleration_MAX = 6,
	}
	struct AssistInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPawn.AssistInfo")); }
		@property final auto ref
		{
			float m_fDamagerTime() { return *cast(float*)(cast(size_t)&this + 8); }
			int m_AccumulatedDamage() { return *cast(int*)(cast(size_t)&this + 4); }
			TrPlayerController m_Damager() { return *cast(TrPlayerController*)(cast(size_t)&this + 0); }
		}
	}
	struct FootstepParticleInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPawn.FootstepParticleInfo")); }
		@property final auto ref
		{
			ParticleSystem FootParticle() { return *cast(ParticleSystem*)(cast(size_t)&this + 8); }
			ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct StickyGrenadeSocketInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrPawn.StickyGrenadeSocketInfo")); }
		@property final auto ref
		{
			Vector ViewOffset() { return *cast(Vector*)(cast(size_t)&this + 16); }
			// WARNING: Property 'Projectile' has the same name as a defined type!
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			TrVehicle m_RidingVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 3096); }
			float m_fCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2320); }
			float m_fHeadShotDamageMultiple() { return *cast(float*)(cast(size_t)cast(void*)this + 2348); }
			float m_fCurrentAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 2540); }
			float m_fPawnViewForwardAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 2964); }
			TrAnimNodeBlendByRidingPassenger m_RidingPassengerBlendNode() { return *cast(TrAnimNodeBlendByRidingPassenger*)(cast(size_t)cast(void*)this + 2600); }
			TrAnimNodeAimOffset m_AimOffsetNode() { return *cast(TrAnimNodeAimOffset*)(cast(size_t)cast(void*)this + 2588); }
			TrAnimNodeAimOffset m_1pBodyAimOffsetNode() { return *cast(TrAnimNodeAimOffset*)(cast(size_t)cast(void*)this + 2592); }
			Vector r_FlashNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2228); }
			float m_fShowObjectThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2616); }
			ScriptArray!(TrEffect) m_AppliedEffects() { return *cast(ScriptArray!(TrEffect)*)(cast(size_t)cast(void*)this + 2476); }
			ScriptArray!(TrEffectForm) m_AppliedEffectForms() { return *cast(ScriptArray!(TrEffectForm)*)(cast(size_t)cast(void*)this + 2488); }
			ScriptArray!(TrPawn.AssistInfo) m_KillAssisters() { return *cast(ScriptArray!(TrPawn.AssistInfo)*)(cast(size_t)cast(void*)this + 2572); }
			ScriptArray!(TrObject.EffectFormOverwrite) m_EffectFormOverwrite() { return *cast(ScriptArray!(TrObject.EffectFormOverwrite)*)(cast(size_t)cast(void*)this + 2752); }
			ScriptArray!(TrPawn) m_JammedFriends() { return *cast(ScriptArray!(TrPawn)*)(cast(size_t)cast(void*)this + 2776); }
			ScriptArray!(TrPawn) m_JammedEnemies() { return *cast(ScriptArray!(TrPawn)*)(cast(size_t)cast(void*)this + 2788); }
			ScriptArray!(TrPlayerReplicationInfo) m_FriendJammingList() { return *cast(ScriptArray!(TrPlayerReplicationInfo)*)(cast(size_t)cast(void*)this + 2808); }
			ScriptArray!(TrDeployable_DropJammer) m_FriendlyDropJammerList() { return *cast(ScriptArray!(TrDeployable_DropJammer)*)(cast(size_t)cast(void*)this + 2832); }
			ScriptArray!(TrDeployable_DropJammer) m_EnemyDropJammerList() { return *cast(ScriptArray!(TrDeployable_DropJammer)*)(cast(size_t)cast(void*)this + 2844); }
			ScriptArray!(TrPawn.FootstepParticleInfo) m_SkiParticles() { return *cast(ScriptArray!(TrPawn.FootstepParticleInfo)*)(cast(size_t)cast(void*)this + 2944); }
			ScriptArray!(TrPawn.StickyGrenadeSocketInfo) m_StickyGrenadeSocketList() { return *cast(ScriptArray!(TrPawn.StickyGrenadeSocketInfo)*)(cast(size_t)cast(void*)this + 2968); }
			ScriptArray!(Vector) m_aPreviousVelocities() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 3048); }
			ScriptArray!(Vector) m_aPreviousLocations() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 3060); }
			ScriptArray!(float) m_aPreviousTickTimes() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 3072); }
			float m_TerrainWalkableFloorZ() { return *cast(float*)(cast(size_t)cast(void*)this + 3188); }
			float m_fSwapSkinDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 3184); }
			ScriptClass c_Pending1PSkin() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 3180); }
			ScriptClass c_Pending3PSkin() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 3176); }
			int m_nNetViewPitchCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3172); }
			float m_PitchInterpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 3168); }
			int m_nTargetRemoteViewPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 3164); }
			int m_nPreviousReceivedRemoteViewPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 3160); }
			int m_nSmoothedRemoteViewPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 3156); }
			int m_nNetRotationCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3152); }
			float m_RotationInterpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 3148); }
			Rotator m_TargetNetReceiveRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3136); }
			Rotator m_PreviousNetReceiveRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3124); }
			SkeletalMesh m_GibMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 3120); }
			TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 3116); }
			float m_fInventoryStationLockoutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3112); }
			float m_fLastInventoryStationVisitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3108); }
			int m_nDetectedByEnemyScannerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3104); }
			UDKCarriedObject m_GameObjCheckTimer() { return *cast(UDKCarriedObject*)(cast(size_t)cast(void*)this + 3100); }
			MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3092); }
			MaterialInstanceConstant m_HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3088); }
			UTWeaponAttachment m_InHandWeaponAttachmentFromAutoFire() { return *cast(UTWeaponAttachment*)(cast(size_t)cast(void*)this + 3084); }
			float m_fLastTakeClotheslineDamageTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 3044); }
			float m_fClotheslineSpeedDifferenceMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3040); }
			float m_fClotheslineSpeedDifferenceMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3036); }
			float m_fClotheslineDamageMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3032); }
			float m_fClotheslineDamageMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3028); }
			float m_fSplatSpeedMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3024); }
			float m_fSplatSpeedMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3020); }
			float m_fSplatDamageFromWallMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3016); }
			float m_fSplatDamageFromWallMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3012); }
			float m_fSplatDamageFromLandMax() { return *cast(float*)(cast(size_t)cast(void*)this + 3008); }
			float m_fSplatDamageFromLandMin() { return *cast(float*)(cast(size_t)cast(void*)this + 3004); }
			float m_bJustLandedSpeedSq() { return *cast(float*)(cast(size_t)cast(void*)this + 3000); }
			float m_fRemainingSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2996); }
			Rotator m_rPotentialSeekingTargetHUDRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2984); }
			float m_fRemainingPotentialSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2980); }
			float m_fGroundSkiEffectDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2956); }
			MaterialInstanceConstant m_InvulnerableOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2920); }
			Material m_InvulnerableOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2916); }
			MaterialInstanceConstant m_RageOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2912); }
			Material m_RageOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2908); }
			MaterialInstanceConstant m_JammerPackOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2904); }
			Material m_JammerPackOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2900); }
			MaterialInstanceConstant m_RegenPackPackOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2896); }
			Material m_RegenPackOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2892); }
			MaterialInstanceConstant m_RegenOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2888); }
			Material m_RegenOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2884); }
			float m_fShieldPackMaterialHitRampDownSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2880); }
			float m_fOverlayMaterialDeactivateSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2876); }
			float m_fOverlayMaterialActivateSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2872); }
			MaterialInstanceConstant m_ShieldPackOverlayMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2868); }
			Material m_ShieldPackOverlayMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2864); }
			float m_fForwardJettingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 2860); }
			float m_fMaxJetpackBoostGroundspeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2856); }
			int r_nEnemyDropJammerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2828); }
			int r_nFriendlyDropJammerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2824); }
			int r_nEnemyJamCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2820); }
			TrPlayerReplicationInfo r_FriendJammingPRI() { return *cast(TrPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 2804); }
			int m_JammingFriendTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 2800); }
			float m_fJamEffectRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2772); }
			TrPawnCollisionProxy m_JammingCollisionProxy() { return *cast(TrPawnCollisionProxy*)(cast(size_t)cast(void*)this + 2768); }
			Material r_ReplicatedWeaponAttachmentMat() { return *cast(Material*)(cast(size_t)cast(void*)this + 2764); }
			float m_OldSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2748); }
			Vector r_avMultiShotLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2620); }
			float m_fEnemyShowDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2612); }
			float m_fFriendlyShowDistanceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2608); }
			MorphNodeWeight m_OverlayMorphNode() { return *cast(MorphNodeWeight*)(cast(size_t)cast(void*)this + 2604); }
			TrAnimNodeBlendByVehicle m_VehicleBlendNode() { return *cast(TrAnimNodeBlendByVehicle*)(cast(size_t)cast(void*)this + 2596); }
			float m_fFallVelocityTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 2584); }
			float m_fLastDamagerTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2568); }
			float m_fLastVehicleDamagerTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2564); }
			float m_AssistDamagePercentQualifier() { return *cast(float*)(cast(size_t)cast(void*)this + 2560); }
			float m_fSkiAccelPct() { return *cast(float*)(cast(size_t)cast(void*)this + 2556); }
			float m_fSkiAccelCapSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2552); }
			float m_fAirAccelSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2548); }
			float m_fAirAccelCapSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2544); }
			float m_fTerminalSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2536); }
			float m_fMaxSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2532); }
			float m_fSkiSlopeGravityBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 2528); }
			float m_fMaxSkiControlPct() { return *cast(float*)(cast(size_t)cast(void*)this + 2524); }
			float m_fSkiControlSigmaSquare() { return *cast(float*)(cast(size_t)cast(void*)this + 2520); }
			float m_fPeakSkiControlSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2516); }
			TrObject.TrTakeEffectInfo r_LastTakeEffectInfo() { return *cast(TrObject.TrTakeEffectInfo*)(cast(size_t)cast(void*)this + 2500); }
			float ShowHeaderUntil() { return *cast(float*)(cast(size_t)cast(void*)this + 2472); }
			TrObject.TR_HUD_INFO m_HudInfo() { return *cast(TrObject.TR_HUD_INFO*)(cast(size_t)cast(void*)this + 2404); }
			int r_nSensorAlertLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 2400); }
			float m_fDecelerationRateWithFlag() { return *cast(float*)(cast(size_t)cast(void*)this + 2396); }
			float m_fMaxSpeedWithFlag() { return *cast(float*)(cast(size_t)cast(void*)this + 2392); }
			float m_fPreserveVelocityZNormalThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2388); }
			float m_fPreserveVelocityThresholdMin() { return *cast(float*)(cast(size_t)cast(void*)this + 2384); }
			float m_fPreserveVelocityThresholdMax() { return *cast(float*)(cast(size_t)cast(void*)this + 2380); }
			float m_fMaxSpeedDecelerationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2376); }
			float m_fTerminalJettingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2372); }
			float m_fMaxJettingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2368); }
			float m_fAccelRateAtMaxThrustSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2364); }
			float m_fMaxJetpackThrustSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2360); }
			float m_fMaxStoppingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2356); }
			float m_fStoppingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2352); }
			float m_fHeadShotFudge() { return *cast(float*)(cast(size_t)cast(void*)this + 2344); }
			float m_fTickedRegenDecimal() { return *cast(float*)(cast(size_t)cast(void*)this + 2340); }
			float m_fSecondsBeforeAutoHeal() { return *cast(float*)(cast(size_t)cast(void*)this + 2336); }
			float r_fPowerPoolRechargeRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2332); }
			float r_fMaxPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2328); }
			float r_fCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2324); }
			float m_fTimeLastUntargetByLocalPlayer() { return *cast(float*)(cast(size_t)cast(void*)this + 2316); }
			float m_fTimeLastTargetByLocalPlayer() { return *cast(float*)(cast(size_t)cast(void*)this + 2312); }
			float m_fTimeLastUnseenByLocalPlayer() { return *cast(float*)(cast(size_t)cast(void*)this + 2308); }
			float m_fTimeLastSeenByLocalPlayer() { return *cast(float*)(cast(size_t)cast(void*)this + 2304); }
			float s_fVE() { return *cast(float*)(cast(size_t)cast(void*)this + 2300); }
			float m_fShieldMultiple() { return *cast(float*)(cast(size_t)cast(void*)this + 2296); }
			float r_fFasterWeaponSwitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 2292); }
			float m_fPulseStealthIgnoreTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2288); }
			float m_fPulseStealthIgnoreTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2284); }
			float r_fPulseStealthSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2280); }
			float m_fPulseStealthFadeInInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2276); }
			float m_fPulseStealthVisibleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2272); }
			float m_fPulseStealthVisibleTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2268); }
			MaterialInstanceConstant m_StealthMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 2264); }
			Material m_StealthMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 2260); }
			float m_fMinStealthVisibilityParamValue() { return *cast(float*)(cast(size_t)cast(void*)this + 2256); }
			float m_fDisableStealthVisibilityInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2252); }
			float m_fEnableStealthVisibilityInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2248); }
			AlienFXManager.FXOverlay LastFXOverlay() { return *cast(AlienFXManager.FXOverlay*)(cast(size_t)cast(void*)this + 2247); }
			ubyte r_nWhiteOut() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2246); }
			TrObject.EMissileLock m_MissileLockStatus() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 2245); }
			ubyte r_RemoteViewYaw() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2244); }
			TrPawn.PhysicsType PhysType() { return *cast(TrPawn.PhysicsType*)(cast(size_t)cast(void*)this + 2243); }
			int r_nFactionId() { return *cast(int*)(cast(size_t)cast(void*)this + 2208); }
			ubyte r_nBlinked() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2242); }
			ubyte r_nPulseStealth() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 2241); }
			TrObject.EMissileLock r_MissileLock() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 2240); }
			Actor r_LockedTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 2224); }
			ScriptName m_nmMakeVisible() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2212); }
		}
		bool r_bIsStealthed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x4) != 0; }
		bool r_bIsStealthed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x4; } return val; }
		bool r_bIsInvulnerable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x100000) != 0; }
		bool r_bIsInvulnerable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x100000; } return val; }
		bool r_bIsSkiing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x800) != 0; }
		bool r_bIsSkiing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x800; } return val; }
		bool r_bIsJetting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x8000) != 0; }
		bool r_bIsJetting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x8000; } return val; }
		bool m_bUseSmoothNetReceiveRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x1000000) != 0; }
		bool m_bUseSmoothNetReceiveRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x1000000; } return val; }
		bool r_bDetectedByEnemyScanner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x800000) != 0; }
		bool r_bDetectedByEnemyScanner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x800000; } return val; }
		bool m_bSplattedAgainstWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x400000) != 0; }
		bool m_bSplattedAgainstWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x400000; } return val; }
		bool m_bIsInConduit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x200000) != 0; }
		bool m_bIsInConduit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x200000; } return val; }
		bool m_bUpdateStickyGrenades() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x80000) != 0; }
		bool m_bUpdateStickyGrenades(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x80000; } return val; }
		bool m_bLoadoutReset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x40000) != 0; }
		bool m_bLoadoutReset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x40000; } return val; }
		bool r_bIsJamming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x20000) != 0; }
		bool r_bIsJamming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x20000; } return val; }
		bool m_bIsJetEffectsPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x10000) != 0; }
		bool m_bIsJetEffectsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x10000; } return val; }
		bool r_bAimingMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x4000) != 0; }
		bool r_bAimingMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x4000; } return val; }
		bool m_bIsPlayingSkiEffectsSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x2000) != 0; }
		bool m_bIsPlayingSkiEffectsSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x2000; } return val; }
		bool m_bIsPlayingSkiEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x1000) != 0; }
		bool m_bIsPlayingSkiEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x1000; } return val; }
		bool bInDeployModeClient() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x400) != 0; }
		bool bInDeployModeClient(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x400; } return val; }
		bool r_bInDeployMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x200) != 0; }
		bool r_bInDeployMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x200; } return val; }
		bool bInFireLockClient() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x100) != 0; }
		bool bInFireLockClient(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x100; } return val; }
		bool r_bInFireLock() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x80) != 0; }
		bool r_bInFireLock(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x80; } return val; }
		bool r_bIsHealthRecharging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x40) != 0; }
		bool r_bIsHealthRecharging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x40; } return val; }
		bool r_bIsShielded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x20) != 0; }
		bool r_bIsShielded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x20; } return val; }
		bool r_bIsRaged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x10) != 0; }
		bool r_bIsRaged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x10; } return val; }
		bool m_bStealthVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x8) != 0; }
		bool m_bStealthVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x8; } return val; }
		bool m_bRefreshInventoryWasRespawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x2) != 0; }
		bool m_bRefreshInventoryWasRespawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x2; } return val; }
		bool m_bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2220) & 0x1) != 0; }
		bool m_bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2220) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2220) &= ~0x1; } return val; }
	}
final:
	float GetCurrentPowerPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentPowerPool, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetMaxPowerPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxPowerPool, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int CalculatePawnSpeed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculatePawnSpeed, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptClass GetCurrCharClassInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrCharClassInfo, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFirstPerson, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	SkeletalMesh GetHandsMesh(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHandsMesh, params.ptr, cast(void*)0);
		return *cast(SkeletalMesh*)&params[4];
	}
	TrPlayerReplicationInfo GetTribesReplicationInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTribesReplicationInfo, params.ptr, cast(void*)0);
		return *cast(TrPlayerReplicationInfo*)params.ptr;
	}
	bool CheckHeadShot(Actor.ImpactInfo* Impact)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor.ImpactInfo*)params.ptr = *Impact;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckHeadShot, params.ptr, cast(void*)0);
		*Impact = *cast(Actor.ImpactInfo*)params.ptr;
		return *cast(bool*)&params[80];
	}
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnViewLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	TrHUD GetTrHud()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTrHud, params.ptr, cast(void*)0);
		return *cast(TrHUD*)params.ptr;
	}
	bool IsPulseStealthed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPulseStealthed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsJammedByFriendOrSelf()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsJammedByFriendOrSelf, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CheckGrabSpeed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckGrabSpeed, cast(void*)0, cast(void*)0);
	}
	float NativeGetCollisionHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NativeGetCollisionHeight, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float NativeGetCollisionRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NativeGetCollisionRadius, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SyncClientCurrentPowerPool()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SyncClientCurrentPowerPool, cast(void*)0, cast(void*)0);
	}
	void ConsumePowerPool(float fAmount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumePowerPool, params.ptr, cast(void*)0);
	}
	void RegainPowerPool(float fDeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegainPowerPool, params.ptr, cast(void*)0);
	}
	float GetPowerPoolPercent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPowerPoolPercent, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void GetCurrentDeviceAccuracyInfo(float* fAccuracy, float* fAmountCurrentlyOffOfTargetAccuray)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *fAccuracy;
		*cast(float*)&params[4] = *fAmountCurrentlyOffOfTargetAccuray;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentDeviceAccuracyInfo, params.ptr, cast(void*)0);
		*fAccuracy = *cast(float*)params.ptr;
		*fAmountCurrentlyOffOfTargetAccuray = *cast(float*)&params[4];
	}
	void SetOverlayMaterial(MaterialInterface NewOverlay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewOverlay;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOverlayMaterial, params.ptr, cast(void*)0);
	}
	bool ServerUpdateLockedTarget(Actor Locked)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Locked;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerUpdateLockedTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NativePostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.NativePostRenderFor, params.ptr, cast(void*)0);
	}
	Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	void SetFlashNormal(Vector FlashNormal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = FlashNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlashNormal, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
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
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	int GetCurrentCredits()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentCredits, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ClientRestart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRestart, cast(void*)0, cast(void*)0);
	}
	int CurrentDeployedCount(ScriptClass DeviceClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CurrentDeployedCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ExitDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitDeployMode, cast(void*)0, cast(void*)0);
	}
	TrObject.EArmorType GetArmorType()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetArmorType, params.ptr, cast(void*)0);
		return *cast(TrObject.EArmorType*)params.ptr;
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void ReplicateMultiFlashLocation(int shotNumber, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = shotNumber;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicateMultiFlashLocation, params.ptr, cast(void*)0);
	}
	void EquipBestPossibleDevice(TrObject.TR_EQUIP_POINT eqpPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = eqpPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.EquipBestPossibleDevice, params.ptr, cast(void*)0);
	}
	void InitDefaultAnims(ScriptClass pInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitDefaultAnims, params.ptr, cast(void*)0);
	}
	void SetCharacterClassFromInfo(ScriptClass pInfo, bool bForce)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pInfo;
		*cast(bool*)&params[4] = bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCharacterClassFromInfo, params.ptr, cast(void*)0);
	}
	void ActivatePendingClass(bool bIsRespawn, bool bCallin)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIsRespawn;
		*cast(bool*)&params[4] = bCallin;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivatePendingClass, params.ptr, cast(void*)0);
	}
	void RefreshInventoryTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshInventoryTimer, cast(void*)0, cast(void*)0);
	}
	void SetValuesFromCurrentFamilyInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetValuesFromCurrentFamilyInfo, cast(void*)0, cast(void*)0);
	}
	void RefreshInventory(bool bIsRespawn, bool bCallin)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIsRespawn;
		*cast(bool*)&params[4] = bCallin;
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshInventory, params.ptr, cast(void*)0);
	}
	void ActivateSelectedDeployable()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateSelectedDeployable, cast(void*)0, cast(void*)0);
	}
	void RemoveEffectByClass(ScriptClass efClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = efClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveEffectByClass, params.ptr, cast(void*)0);
	}
	void ProcessEffectForm(ScriptClass efClass, bool bRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = efClass;
		*cast(bool*)&params[4] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessEffectForm, params.ptr, cast(void*)0);
	}
	int GetShieldStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetShieldStrength, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void AdjustAmmoPool(float Change)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Change;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustAmmoPool, params.ptr, cast(void*)0);
	}
	void AdjustMaxPowerPool(float Change)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Change;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustMaxPowerPool, params.ptr, cast(void*)0);
	}
	void SetMaxPowerPool(int Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaxPowerPool, params.ptr, cast(void*)0);
	}
	void SetMaxHealthPool(int Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaxHealthPool, params.ptr, cast(void*)0);
	}
	void ClientUpdateHUDHealth(int NewHealth, int NewHealthMax)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = NewHealth;
		*cast(int*)&params[4] = NewHealthMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientUpdateHUDHealth, params.ptr, cast(void*)0);
	}
	bool ShouldRechargePowerPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRechargePowerPool, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ForceHealthRegen()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceHealthRegen, cast(void*)0, cast(void*)0);
	}
	void RechargeHealthPool(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.RechargeHealthPool, params.ptr, cast(void*)0);
	}
	Vector GetJetpackAirControl(Vector InAcceleration, Vector ZAxis)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = InAcceleration;
		*cast(Vector*)&params[12] = ZAxis;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetJetpackAirControl, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[24];
	}
	void UpdateSkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSkiEffects, cast(void*)0, cast(void*)0);
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
	void PlayLandingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayLandingSound, cast(void*)0, cast(void*)0);
	}
	void PlayJumpingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayJumpingSound, cast(void*)0, cast(void*)0);
	}
	void RememberLastDamager(Controller Damager, int DamageAmount, Actor DamagingActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = Damager;
		*cast(int*)&params[4] = DamageAmount;
		*cast(Actor*)&params[8] = DamagingActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.RememberLastDamager, params.ptr, cast(void*)0);
	}
	float GetHealthPct()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHealthPct, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	TrPawn.AssistInfo CreateAssistRecord(Controller Damager, int DamageAmount)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Damager;
		*cast(int*)&params[4] = DamageAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateAssistRecord, params.ptr, cast(void*)0);
		return *cast(TrPawn.AssistInfo*)&params[8];
	}
	TrPlayerController GetLastDamager()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLastDamager, params.ptr, cast(void*)0);
		return *cast(TrPlayerController*)params.ptr;
	}
	void ProcessKillAssists(Controller Killer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessKillAssists, params.ptr, cast(void*)0);
	}
	float GetUnshieldedDamage(float inputDamage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = inputDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUnshieldedDamage, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	TrPawn GetPawnCausingDamage(Controller EventInstigator, Actor DamageCauser)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(Actor*)&params[4] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnCausingDamage, params.ptr, cast(void*)0);
		return *cast(TrPawn*)&params[8];
	}
	float GetDamageScale(Actor DamageCauser, float Dist, ScriptClass dmgType, Controller EventInstigator, TrValueModifier VM, float* DamageScaleWithoutNewPlayerAssist)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = DamageCauser;
		*cast(float*)&params[4] = Dist;
		*cast(ScriptClass*)&params[8] = dmgType;
		*cast(Controller*)&params[12] = EventInstigator;
		*cast(TrValueModifier*)&params[16] = VM;
		*cast(float*)&params[20] = *DamageScaleWithoutNewPlayerAssist;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamageScale, params.ptr, cast(void*)0);
		*DamageScaleWithoutNewPlayerAssist = *cast(float*)&params[20];
		return *cast(float*)&params[24];
	}
	void DoRepairs(int HealAmount, Controller EventInstigator, Actor DamageCauser, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Actor*)&params[8] = DamageCauser;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoRepairs, params.ptr, cast(void*)0);
	}
	Controller CheckTribesTurretInstigator(Controller EventInstigator, Actor DamageCauser)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(Actor*)&params[4] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckTribesTurretInstigator, params.ptr, cast(void*)0);
		return *cast(Controller*)&params[8];
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void PlayWhiteoutEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWhiteoutEffect, cast(void*)0, cast(void*)0);
	}
	void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
	bool RecentlyGrabbedFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecentlyGrabbedFlag, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetShowDistanceThreshold(bool bIsEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetShowDistanceThreshold, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
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
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	void TakeFallingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFallingDamage, cast(void*)0, cast(void*)0);
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
	void TakeFallDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFallDamage, params.ptr, cast(void*)0);
	}
	void ProcessCreditEvent(TrObject.TrCreditEventType EventType, bool bProxyEvent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TrCreditEventType*)params.ptr = EventType;
		*cast(bool*)&params[4] = bProxyEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessCreditEvent, params.ptr, cast(void*)0);
	}
	void FlashLocationUpdated(Weapon InWeapon, Vector InFlashLocation, bool bViaReplication)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = InFlashLocation;
		*cast(bool*)&params[16] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlashLocationUpdated, params.ptr, cast(void*)0);
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
	bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.Dodge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	void gibbedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.gibbedBy, params.ptr, cast(void*)0);
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachedBy, params.ptr, cast(void*)0);
	}
	bool ShouldGib(ScriptClass pUTDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pUTDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldGib, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetHandIKEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHandIKEnabled, params.ptr, cast(void*)0);
	}
	void PlayDamageCameraShake()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDamageCameraShake, cast(void*)0, cast(void*)0);
	}
	bool IsLastHitFromNinjaSmoke()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLastHitFromNinjaSmoke, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayTakeHitEffects, cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
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
	void StopLocalEffectsAndSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopLocalEffectsAndSounds, cast(void*)0, cast(void*)0);
	}
	void SetOverlayMeshHidden(bool bNewHidden)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewHidden;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOverlayMeshHidden, params.ptr, cast(void*)0);
	}
	void PlayDying(ScriptClass pDamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDying, params.ptr, cast(void*)0);
	}
	void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTeamChanged, cast(void*)0, cast(void*)0);
	}
	void UpdateTeamBlockerMaterials()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTeamBlockerMaterials, cast(void*)0, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.PossessedBy, params.ptr, cast(void*)0);
	}
	void ResetSkin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetSkin, cast(void*)0, cast(void*)0);
	}
	void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkin, params.ptr, cast(void*)0);
	}
	void InitializeOverlayMaterials()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeOverlayMaterials, cast(void*)0, cast(void*)0);
	}
	void ClientPlayHealthRegenEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayHealthRegenEffect, cast(void*)0, cast(void*)0);
	}
	void SetShieldPackActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShieldPackActive, params.ptr, cast(void*)0);
	}
	void PlayShieldPackEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayShieldPackEffect, cast(void*)0, cast(void*)0);
	}
	void SetStealthPackActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStealthPackActive, params.ptr, cast(void*)0);
	}
	void PlayStealthPackEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStealthPackEffect, cast(void*)0, cast(void*)0);
	}
	void PulseStealth(bool bOverrideIgnore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOverrideIgnore;
		(cast(ScriptObject)this).ProcessEvent(Functions.PulseStealth, params.ptr, cast(void*)0);
	}
	void SetRagePerkActive()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRagePerkActive, cast(void*)0, cast(void*)0);
	}
	void ClearRagePerk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearRagePerk, cast(void*)0, cast(void*)0);
	}
	void PlayRageEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRageEffect, cast(void*)0, cast(void*)0);
	}
	void PlayInvulnerabilityEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayInvulnerabilityEffect, cast(void*)0, cast(void*)0);
	}
	void StartRidingInVehicle(TrVehicle V, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = V;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartRidingInVehicle, params.ptr, cast(void*)0);
	}
	void StopRidingInVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopRidingInVehicle, cast(void*)0, cast(void*)0);
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
	void EnableJamming()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableJamming, cast(void*)0, cast(void*)0);
	}
	void DisableJamming()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableJamming, cast(void*)0, cast(void*)0);
	}
	void DisableJammingOtherPawns()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableJammingOtherPawns, cast(void*)0, cast(void*)0);
	}
	void EnteredFriendJammingRadius(TrPawn JammingFriend)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = JammingFriend;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnteredFriendJammingRadius, params.ptr, cast(void*)0);
	}
	void ExitFriendJammingRadius(TrPawn JammingFriend)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = JammingFriend;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitFriendJammingRadius, params.ptr, cast(void*)0);
	}
	void EnteredEnemyJammingRadius()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnteredEnemyJammingRadius, cast(void*)0, cast(void*)0);
	}
	void ExitEnemyJammingRadius()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitEnemyJammingRadius, cast(void*)0, cast(void*)0);
	}
	bool IsJammedByEnemy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsJammedByEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayJammerPackEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayJammerPackEffect, cast(void*)0, cast(void*)0);
	}
	void PlayJammingByFriendEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayJammingByFriendEffect, cast(void*)0, cast(void*)0);
	}
	void PlayEnemyJammerPackEffect(bool enteredJammingRadius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = enteredJammingRadius;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayEnemyJammerPackEffect, params.ptr, cast(void*)0);
	}
	void OnPawnDetectedByCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnDetectedByCollisionProxy, params.ptr, cast(void*)0);
	}
	void OnPawnExitedCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnExitedCollisionProxy, params.ptr, cast(void*)0);
	}
	void OnEnteredDropJammer(TrDeployable_DropJammer DropJammer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable_DropJammer*)params.ptr = DropJammer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEnteredDropJammer, params.ptr, cast(void*)0);
	}
	void OnExitedDropJammer(TrDeployable_DropJammer DropJammer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable_DropJammer*)params.ptr = DropJammer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExitedDropJammer, params.ptr, cast(void*)0);
	}
	void UpdateEnemyDropJammer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateEnemyDropJammer, cast(void*)0, cast(void*)0);
	}
	void UpdateFriendlyDropJammer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFriendlyDropJammer, cast(void*)0, cast(void*)0);
	}
	void PlayJammingByEnemyDropJammerEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayJammingByEnemyDropJammerEffect, cast(void*)0, cast(void*)0);
	}
	void PlayJammingByFriendlyDropJammerEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayJammingByFriendlyDropJammerEffect, cast(void*)0, cast(void*)0);
	}
	void OnChangeJammingTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnChangeJammingTeam, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void SetMeshVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMeshVisibility, params.ptr, cast(void*)0);
	}
	void SetFirstPersonBodyVisibility(bool bHide)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHide;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFirstPersonBodyVisibility, params.ptr, cast(void*)0);
	}
	void WeaponAttachmentChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponAttachmentChanged, cast(void*)0, cast(void*)0);
	}
	void ForceCrouch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceCrouch, cast(void*)0, cast(void*)0);
	}
	int FindClosestStickyGrenadeSocketIndex(Vector ProjectileLocation, bool bOnlyFindAvailableSlots)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = ProjectileLocation;
		*cast(bool*)&params[12] = bOnlyFindAvailableSlots;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindClosestStickyGrenadeSocketIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	void StickGrenadeToPawn(TrProjectile pProjectile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProjectile*)params.ptr = pProjectile;
		(cast(ScriptObject)this).ProcessEvent(Functions.StickGrenadeToPawn, params.ptr, cast(void*)0);
	}
	void UpdateStickyGrenades(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateStickyGrenades, params.ptr, cast(void*)0);
	}
	void SetSkiing(bool bEnabled, bool bJump)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		*cast(bool*)&params[4] = bJump;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkiing, params.ptr, cast(void*)0);
	}
	void PlaySkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySkiEffects, cast(void*)0, cast(void*)0);
	}
	void StopSkiEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopSkiEffects, cast(void*)0, cast(void*)0);
	}
	void PlaySkiEffectsSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySkiEffectsSound, cast(void*)0, cast(void*)0);
	}
	void StopSkiEffectsSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopSkiEffectsSound, cast(void*)0, cast(void*)0);
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceRotation, params.ptr, cast(void*)0);
	}
	void PlayDyingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDyingSound, cast(void*)0, cast(void*)0);
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldGameObject, params.ptr, cast(void*)0);
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
	void GoInvulnerable(float InvulnerableTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InvulnerableTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.GoInvulnerable, params.ptr, cast(void*)0);
	}
	void ClearInvulnerability()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearInvulnerability, cast(void*)0, cast(void*)0);
	}
	void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovementPhysics, cast(void*)0, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayTeleportEffect, params.ptr, cast(void*)0);
	}
	void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurnOff, cast(void*)0, cast(void*)0);
	}
	void SetDetectedByEnemyScanner(bool detected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = detected;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDetectedByEnemyScanner, params.ptr, cast(void*)0);
	}
	bool GetDetectedByEnemyScanner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDetectedByEnemyScanner, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetScannerDetect(bool detected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = detected;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScannerDetect, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptClass GetFamilyInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFamilyInfo, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void LockedOutFromFlagPickupTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LockedOutFromFlagPickupTimer, cast(void*)0, cast(void*)0);
	}
	void LockFromFlagPickup(float TimeToLock)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeToLock;
		(cast(ScriptObject)this).ProcessEvent(Functions.LockFromFlagPickup, params.ptr, cast(void*)0);
	}
	void Blink(Vector Impulse, float MinZ, float PctEffectiveness)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Impulse;
		*cast(float*)&params[12] = MinZ;
		*cast(float*)&params[16] = PctEffectiveness;
		(cast(ScriptObject)this).ProcessEvent(Functions.Blink, params.ptr, cast(void*)0);
	}
	void PlayBlinkPackEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayBlinkPackEffect, cast(void*)0, cast(void*)0);
	}
	bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoJump, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckClotheslineDamage(Pawn PawnHittingMe)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = PawnHittingMe;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckClotheslineDamage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void CrushedBy(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.CrushedBy, params.ptr, cast(void*)0);
	}
	void StuckOnPawn(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.StuckOnPawn, params.ptr, cast(void*)0);
	}
	void SetPending3PSkin(ScriptClass NewPendingSkin)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewPendingSkin;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPending3PSkin, params.ptr, cast(void*)0);
	}
	void CheckApplyPending3PSkin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckApplyPending3PSkin, cast(void*)0, cast(void*)0);
	}
	void ThrowActiveWeapon(bool bDestroyWeap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyWeap;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrowActiveWeapon, params.ptr, cast(void*)0);
	}
	void ThrowWeaponOnDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrowWeaponOnDeath, cast(void*)0, cast(void*)0);
	}
	void ClearSkiParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSkiParticleEffects, cast(void*)0, cast(void*)0);
	}
	void ClearJetpackParticleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearJetpackParticleEffects, cast(void*)0, cast(void*)0);
	}
	void AlienFXOverlay(AlienFXManager.FXOverlay Type)
	{
		ubyte params[1];
		params[] = 0;
		*cast(AlienFXManager.FXOverlay*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.AlienFXOverlay, params.ptr, cast(void*)0);
	}
}
