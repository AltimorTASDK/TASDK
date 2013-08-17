module UnrealScript.TribesGame.TrPawn;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPawn")()); }
	private static __gshared TrPawn mDefaultProperties;
	@property final static TrPawn DefaultProperties() { mixin(MGDPC!(TrPawn, "TrPawn TribesGame.Default__TrPawn")()); }
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
			ScriptFunction GetCurrentPowerPool() { mixin(MGF!("mGetCurrentPowerPool", "Function TribesGame.TrPawn.GetCurrentPowerPool")()); }
			ScriptFunction GetMaxPowerPool() { mixin(MGF!("mGetMaxPowerPool", "Function TribesGame.TrPawn.GetMaxPowerPool")()); }
			ScriptFunction CalculatePawnSpeed() { mixin(MGF!("mCalculatePawnSpeed", "Function TribesGame.TrPawn.CalculatePawnSpeed")()); }
			ScriptFunction GetCurrCharClassInfo() { mixin(MGF!("mGetCurrCharClassInfo", "Function TribesGame.TrPawn.GetCurrCharClassInfo")()); }
			ScriptFunction IsFirstPerson() { mixin(MGF!("mIsFirstPerson", "Function TribesGame.TrPawn.IsFirstPerson")()); }
			ScriptFunction GetHandsMesh() { mixin(MGF!("mGetHandsMesh", "Function TribesGame.TrPawn.GetHandsMesh")()); }
			ScriptFunction GetTribesReplicationInfo() { mixin(MGF!("mGetTribesReplicationInfo", "Function TribesGame.TrPawn.GetTribesReplicationInfo")()); }
			ScriptFunction CheckHeadShot() { mixin(MGF!("mCheckHeadShot", "Function TribesGame.TrPawn.CheckHeadShot")()); }
			ScriptFunction GetPawnViewLocation() { mixin(MGF!("mGetPawnViewLocation", "Function TribesGame.TrPawn.GetPawnViewLocation")()); }
			ScriptFunction GetTrHud() { mixin(MGF!("mGetTrHud", "Function TribesGame.TrPawn.GetTrHud")()); }
			ScriptFunction IsPulseStealthed() { mixin(MGF!("mIsPulseStealthed", "Function TribesGame.TrPawn.IsPulseStealthed")()); }
			ScriptFunction IsJammedByFriendOrSelf() { mixin(MGF!("mIsJammedByFriendOrSelf", "Function TribesGame.TrPawn.IsJammedByFriendOrSelf")()); }
			ScriptFunction CheckGrabSpeed() { mixin(MGF!("mCheckGrabSpeed", "Function TribesGame.TrPawn.CheckGrabSpeed")()); }
			ScriptFunction NativeGetCollisionHeight() { mixin(MGF!("mNativeGetCollisionHeight", "Function TribesGame.TrPawn.NativeGetCollisionHeight")()); }
			ScriptFunction NativeGetCollisionRadius() { mixin(MGF!("mNativeGetCollisionRadius", "Function TribesGame.TrPawn.NativeGetCollisionRadius")()); }
			ScriptFunction SyncClientCurrentPowerPool() { mixin(MGF!("mSyncClientCurrentPowerPool", "Function TribesGame.TrPawn.SyncClientCurrentPowerPool")()); }
			ScriptFunction ConsumePowerPool() { mixin(MGF!("mConsumePowerPool", "Function TribesGame.TrPawn.ConsumePowerPool")()); }
			ScriptFunction RegainPowerPool() { mixin(MGF!("mRegainPowerPool", "Function TribesGame.TrPawn.RegainPowerPool")()); }
			ScriptFunction GetPowerPoolPercent() { mixin(MGF!("mGetPowerPoolPercent", "Function TribesGame.TrPawn.GetPowerPoolPercent")()); }
			ScriptFunction GetCurrentDeviceAccuracyInfo() { mixin(MGF!("mGetCurrentDeviceAccuracyInfo", "Function TribesGame.TrPawn.GetCurrentDeviceAccuracyInfo")()); }
			ScriptFunction SetOverlayMaterial() { mixin(MGF!("mSetOverlayMaterial", "Function TribesGame.TrPawn.SetOverlayMaterial")()); }
			ScriptFunction ServerUpdateLockedTarget() { mixin(MGF!("mServerUpdateLockedTarget", "Function TribesGame.TrPawn.ServerUpdateLockedTarget")()); }
			ScriptFunction NativePostRenderFor() { mixin(MGF!("mNativePostRenderFor", "Function TribesGame.TrPawn.NativePostRenderFor")()); }
			ScriptFunction GetTargetLocation() { mixin(MGF!("mGetTargetLocation", "Function TribesGame.TrPawn.GetTargetLocation")()); }
			ScriptFunction SetFlashNormal() { mixin(MGF!("mSetFlashNormal", "Function TribesGame.TrPawn.SetFlashNormal")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrPawn.PostBeginPlay")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrPawn.PostInitAnimTree")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrPawn.Tick")()); }
			ScriptFunction GetCurrentCredits() { mixin(MGF!("mGetCurrentCredits", "Function TribesGame.TrPawn.GetCurrentCredits")()); }
			ScriptFunction ClientRestart() { mixin(MGF!("mClientRestart", "Function TribesGame.TrPawn.ClientRestart")()); }
			ScriptFunction CurrentDeployedCount() { mixin(MGF!("mCurrentDeployedCount", "Function TribesGame.TrPawn.CurrentDeployedCount")()); }
			ScriptFunction ExitDeployMode() { mixin(MGF!("mExitDeployMode", "Function TribesGame.TrPawn.ExitDeployMode")()); }
			ScriptFunction GetArmorType() { mixin(MGF!("mGetArmorType", "Function TribesGame.TrPawn.GetArmorType")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrPawn.ReplicatedEvent")()); }
			ScriptFunction ReplicateMultiFlashLocation() { mixin(MGF!("mReplicateMultiFlashLocation", "Function TribesGame.TrPawn.ReplicateMultiFlashLocation")()); }
			ScriptFunction EquipBestPossibleDevice() { mixin(MGF!("mEquipBestPossibleDevice", "Function TribesGame.TrPawn.EquipBestPossibleDevice")()); }
			ScriptFunction InitDefaultAnims() { mixin(MGF!("mInitDefaultAnims", "Function TribesGame.TrPawn.InitDefaultAnims")()); }
			ScriptFunction SetCharacterClassFromInfo() { mixin(MGF!("mSetCharacterClassFromInfo", "Function TribesGame.TrPawn.SetCharacterClassFromInfo")()); }
			ScriptFunction ActivatePendingClass() { mixin(MGF!("mActivatePendingClass", "Function TribesGame.TrPawn.ActivatePendingClass")()); }
			ScriptFunction RefreshInventoryTimer() { mixin(MGF!("mRefreshInventoryTimer", "Function TribesGame.TrPawn.RefreshInventoryTimer")()); }
			ScriptFunction SetValuesFromCurrentFamilyInfo() { mixin(MGF!("mSetValuesFromCurrentFamilyInfo", "Function TribesGame.TrPawn.SetValuesFromCurrentFamilyInfo")()); }
			ScriptFunction RefreshInventory() { mixin(MGF!("mRefreshInventory", "Function TribesGame.TrPawn.RefreshInventory")()); }
			ScriptFunction ActivateSelectedDeployable() { mixin(MGF!("mActivateSelectedDeployable", "Function TribesGame.TrPawn.ActivateSelectedDeployable")()); }
			ScriptFunction RemoveEffectByClass() { mixin(MGF!("mRemoveEffectByClass", "Function TribesGame.TrPawn.RemoveEffectByClass")()); }
			ScriptFunction ProcessEffectForm() { mixin(MGF!("mProcessEffectForm", "Function TribesGame.TrPawn.ProcessEffectForm")()); }
			ScriptFunction GetShieldStrength() { mixin(MGF!("mGetShieldStrength", "Function TribesGame.TrPawn.GetShieldStrength")()); }
			ScriptFunction AdjustAmmoPool() { mixin(MGF!("mAdjustAmmoPool", "Function TribesGame.TrPawn.AdjustAmmoPool")()); }
			ScriptFunction AdjustMaxPowerPool() { mixin(MGF!("mAdjustMaxPowerPool", "Function TribesGame.TrPawn.AdjustMaxPowerPool")()); }
			ScriptFunction SetMaxPowerPool() { mixin(MGF!("mSetMaxPowerPool", "Function TribesGame.TrPawn.SetMaxPowerPool")()); }
			ScriptFunction SetMaxHealthPool() { mixin(MGF!("mSetMaxHealthPool", "Function TribesGame.TrPawn.SetMaxHealthPool")()); }
			ScriptFunction ClientUpdateHUDHealth() { mixin(MGF!("mClientUpdateHUDHealth", "Function TribesGame.TrPawn.ClientUpdateHUDHealth")()); }
			ScriptFunction ShouldRechargePowerPool() { mixin(MGF!("mShouldRechargePowerPool", "Function TribesGame.TrPawn.ShouldRechargePowerPool")()); }
			ScriptFunction ForceHealthRegen() { mixin(MGF!("mForceHealthRegen", "Function TribesGame.TrPawn.ForceHealthRegen")()); }
			ScriptFunction RechargeHealthPool() { mixin(MGF!("mRechargeHealthPool", "Function TribesGame.TrPawn.RechargeHealthPool")()); }
			ScriptFunction GetJetpackAirControl() { mixin(MGF!("mGetJetpackAirControl", "Function TribesGame.TrPawn.GetJetpackAirControl")()); }
			ScriptFunction UpdateSkiEffects() { mixin(MGF!("mUpdateSkiEffects", "Function TribesGame.TrPawn.UpdateSkiEffects")()); }
			ScriptFunction PlayJetpackEffects() { mixin(MGF!("mPlayJetpackEffects", "Function TribesGame.TrPawn.PlayJetpackEffects")()); }
			ScriptFunction UpdateJetpackEffects() { mixin(MGF!("mUpdateJetpackEffects", "Function TribesGame.TrPawn.UpdateJetpackEffects")()); }
			ScriptFunction StopJetpackEffects() { mixin(MGF!("mStopJetpackEffects", "Function TribesGame.TrPawn.StopJetpackEffects")()); }
			ScriptFunction PlayLandingSound() { mixin(MGF!("mPlayLandingSound", "Function TribesGame.TrPawn.PlayLandingSound")()); }
			ScriptFunction PlayJumpingSound() { mixin(MGF!("mPlayJumpingSound", "Function TribesGame.TrPawn.PlayJumpingSound")()); }
			ScriptFunction RememberLastDamager() { mixin(MGF!("mRememberLastDamager", "Function TribesGame.TrPawn.RememberLastDamager")()); }
			ScriptFunction GetHealthPct() { mixin(MGF!("mGetHealthPct", "Function TribesGame.TrPawn.GetHealthPct")()); }
			ScriptFunction CreateAssistRecord() { mixin(MGF!("mCreateAssistRecord", "Function TribesGame.TrPawn.CreateAssistRecord")()); }
			ScriptFunction GetLastDamager() { mixin(MGF!("mGetLastDamager", "Function TribesGame.TrPawn.GetLastDamager")()); }
			ScriptFunction ProcessKillAssists() { mixin(MGF!("mProcessKillAssists", "Function TribesGame.TrPawn.ProcessKillAssists")()); }
			ScriptFunction GetUnshieldedDamage() { mixin(MGF!("mGetUnshieldedDamage", "Function TribesGame.TrPawn.GetUnshieldedDamage")()); }
			ScriptFunction GetPawnCausingDamage() { mixin(MGF!("mGetPawnCausingDamage", "Function TribesGame.TrPawn.GetPawnCausingDamage")()); }
			ScriptFunction GetDamageScale() { mixin(MGF!("mGetDamageScale", "Function TribesGame.TrPawn.GetDamageScale")()); }
			ScriptFunction DoRepairs() { mixin(MGF!("mDoRepairs", "Function TribesGame.TrPawn.DoRepairs")()); }
			ScriptFunction CheckTribesTurretInstigator() { mixin(MGF!("mCheckTribesTurretInstigator", "Function TribesGame.TrPawn.CheckTribesTurretInstigator")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function TribesGame.TrPawn.TakeDamage")()); }
			ScriptFunction PlayWhiteoutEffect() { mixin(MGF!("mPlayWhiteoutEffect", "Function TribesGame.TrPawn.PlayWhiteoutEffect")()); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF!("mTakeRadiusDamage", "Function TribesGame.TrPawn.TakeRadiusDamage")()); }
			ScriptFunction RecentlyGrabbedFlag() { mixin(MGF!("mRecentlyGrabbedFlag", "Function TribesGame.TrPawn.RecentlyGrabbedFlag")()); }
			ScriptFunction GetShowDistanceThreshold() { mixin(MGF!("mGetShowDistanceThreshold", "Function TribesGame.TrPawn.GetShowDistanceThreshold")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrPawn.PostRenderFor")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function TribesGame.TrPawn.DisplayDebug")()); }
			ScriptFunction Landed() { mixin(MGF!("mLanded", "Function TribesGame.TrPawn.Landed")()); }
			ScriptFunction TakeFallingDamage() { mixin(MGF!("mTakeFallingDamage", "Function TribesGame.TrPawn.TakeFallingDamage")()); }
			ScriptFunction PlayHardLandingEffect() { mixin(MGF!("mPlayHardLandingEffect", "Function TribesGame.TrPawn.PlayHardLandingEffect")()); }
			ScriptFunction PlaySonicPunchEffect() { mixin(MGF!("mPlaySonicPunchEffect", "Function TribesGame.TrPawn.PlaySonicPunchEffect")()); }
			ScriptFunction TakeFallDamage() { mixin(MGF!("mTakeFallDamage", "Function TribesGame.TrPawn.TakeFallDamage")()); }
			ScriptFunction ProcessCreditEvent() { mixin(MGF!("mProcessCreditEvent", "Function TribesGame.TrPawn.ProcessCreditEvent")()); }
			ScriptFunction FlashLocationUpdated() { mixin(MGF!("mFlashLocationUpdated", "Function TribesGame.TrPawn.FlashLocationUpdated")()); }
			ScriptFunction WeaponFired() { mixin(MGF!("mWeaponFired", "Function TribesGame.TrPawn.WeaponFired")()); }
			ScriptFunction Dodge() { mixin(MGF!("mDodge", "Function TribesGame.TrPawn.Dodge")()); }
			ScriptFunction PerformDodge() { mixin(MGF!("mPerformDodge", "Function TribesGame.TrPawn.PerformDodge")()); }
			ScriptFunction gibbedBy() { mixin(MGF!("mgibbedBy", "Function TribesGame.TrPawn.gibbedBy")()); }
			ScriptFunction EncroachedBy() { mixin(MGF!("mEncroachedBy", "Function TribesGame.TrPawn.EncroachedBy")()); }
			ScriptFunction ShouldGib() { mixin(MGF!("mShouldGib", "Function TribesGame.TrPawn.ShouldGib")()); }
			ScriptFunction SetHandIKEnabled() { mixin(MGF!("mSetHandIKEnabled", "Function TribesGame.TrPawn.SetHandIKEnabled")()); }
			ScriptFunction PlayDamageCameraShake() { mixin(MGF!("mPlayDamageCameraShake", "Function TribesGame.TrPawn.PlayDamageCameraShake")()); }
			ScriptFunction IsLastHitFromNinjaSmoke() { mixin(MGF!("mIsLastHitFromNinjaSmoke", "Function TribesGame.TrPawn.IsLastHitFromNinjaSmoke")()); }
			ScriptFunction PlayTakeHitEffects() { mixin(MGF!("mPlayTakeHitEffects", "Function TribesGame.TrPawn.PlayTakeHitEffects")()); }
			ScriptFunction FellOutOfWorld() { mixin(MGF!("mFellOutOfWorld", "Function TribesGame.TrPawn.FellOutOfWorld")()); }
			ScriptFunction Died() { mixin(MGF!("mDied", "Function TribesGame.TrPawn.Died")()); }
			ScriptFunction StopLocalEffectsAndSounds() { mixin(MGF!("mStopLocalEffectsAndSounds", "Function TribesGame.TrPawn.StopLocalEffectsAndSounds")()); }
			ScriptFunction SetOverlayMeshHidden() { mixin(MGF!("mSetOverlayMeshHidden", "Function TribesGame.TrPawn.SetOverlayMeshHidden")()); }
			ScriptFunction PlayDying() { mixin(MGF!("mPlayDying", "Function TribesGame.TrPawn.PlayDying")()); }
			ScriptFunction NotifyTeamChanged() { mixin(MGF!("mNotifyTeamChanged", "Function TribesGame.TrPawn.NotifyTeamChanged")()); }
			ScriptFunction UpdateTeamBlockerMaterials() { mixin(MGF!("mUpdateTeamBlockerMaterials", "Function TribesGame.TrPawn.UpdateTeamBlockerMaterials")()); }
			ScriptFunction PossessedBy() { mixin(MGF!("mPossessedBy", "Function TribesGame.TrPawn.PossessedBy")()); }
			ScriptFunction ResetSkin() { mixin(MGF!("mResetSkin", "Function TribesGame.TrPawn.ResetSkin")()); }
			ScriptFunction SetSkin() { mixin(MGF!("mSetSkin", "Function TribesGame.TrPawn.SetSkin")()); }
			ScriptFunction InitializeOverlayMaterials() { mixin(MGF!("mInitializeOverlayMaterials", "Function TribesGame.TrPawn.InitializeOverlayMaterials")()); }
			ScriptFunction ClientPlayHealthRegenEffect() { mixin(MGF!("mClientPlayHealthRegenEffect", "Function TribesGame.TrPawn.ClientPlayHealthRegenEffect")()); }
			ScriptFunction SetShieldPackActive() { mixin(MGF!("mSetShieldPackActive", "Function TribesGame.TrPawn.SetShieldPackActive")()); }
			ScriptFunction PlayShieldPackEffect() { mixin(MGF!("mPlayShieldPackEffect", "Function TribesGame.TrPawn.PlayShieldPackEffect")()); }
			ScriptFunction SetStealthPackActive() { mixin(MGF!("mSetStealthPackActive", "Function TribesGame.TrPawn.SetStealthPackActive")()); }
			ScriptFunction PlayStealthPackEffect() { mixin(MGF!("mPlayStealthPackEffect", "Function TribesGame.TrPawn.PlayStealthPackEffect")()); }
			ScriptFunction PulseStealth() { mixin(MGF!("mPulseStealth", "Function TribesGame.TrPawn.PulseStealth")()); }
			ScriptFunction SetRagePerkActive() { mixin(MGF!("mSetRagePerkActive", "Function TribesGame.TrPawn.SetRagePerkActive")()); }
			ScriptFunction ClearRagePerk() { mixin(MGF!("mClearRagePerk", "Function TribesGame.TrPawn.ClearRagePerk")()); }
			ScriptFunction PlayRageEffect() { mixin(MGF!("mPlayRageEffect", "Function TribesGame.TrPawn.PlayRageEffect")()); }
			ScriptFunction PlayInvulnerabilityEffect() { mixin(MGF!("mPlayInvulnerabilityEffect", "Function TribesGame.TrPawn.PlayInvulnerabilityEffect")()); }
			ScriptFunction StartRidingInVehicle() { mixin(MGF!("mStartRidingInVehicle", "Function TribesGame.TrPawn.StartRidingInVehicle")()); }
			ScriptFunction StopRidingInVehicle() { mixin(MGF!("mStopRidingInVehicle", "Function TribesGame.TrPawn.StopRidingInVehicle")()); }
			ScriptFunction StartDriving() { mixin(MGF!("mStartDriving", "Function TribesGame.TrPawn.StartDriving")()); }
			ScriptFunction StopDriving() { mixin(MGF!("mStopDriving", "Function TribesGame.TrPawn.StopDriving")()); }
			ScriptFunction OnRanOver() { mixin(MGF!("mOnRanOver", "Function TribesGame.TrPawn.OnRanOver")()); }
			ScriptFunction EnableJamming() { mixin(MGF!("mEnableJamming", "Function TribesGame.TrPawn.EnableJamming")()); }
			ScriptFunction DisableJamming() { mixin(MGF!("mDisableJamming", "Function TribesGame.TrPawn.DisableJamming")()); }
			ScriptFunction DisableJammingOtherPawns() { mixin(MGF!("mDisableJammingOtherPawns", "Function TribesGame.TrPawn.DisableJammingOtherPawns")()); }
			ScriptFunction EnteredFriendJammingRadius() { mixin(MGF!("mEnteredFriendJammingRadius", "Function TribesGame.TrPawn.EnteredFriendJammingRadius")()); }
			ScriptFunction ExitFriendJammingRadius() { mixin(MGF!("mExitFriendJammingRadius", "Function TribesGame.TrPawn.ExitFriendJammingRadius")()); }
			ScriptFunction EnteredEnemyJammingRadius() { mixin(MGF!("mEnteredEnemyJammingRadius", "Function TribesGame.TrPawn.EnteredEnemyJammingRadius")()); }
			ScriptFunction ExitEnemyJammingRadius() { mixin(MGF!("mExitEnemyJammingRadius", "Function TribesGame.TrPawn.ExitEnemyJammingRadius")()); }
			ScriptFunction IsJammedByEnemy() { mixin(MGF!("mIsJammedByEnemy", "Function TribesGame.TrPawn.IsJammedByEnemy")()); }
			ScriptFunction PlayJammerPackEffect() { mixin(MGF!("mPlayJammerPackEffect", "Function TribesGame.TrPawn.PlayJammerPackEffect")()); }
			ScriptFunction PlayJammingByFriendEffect() { mixin(MGF!("mPlayJammingByFriendEffect", "Function TribesGame.TrPawn.PlayJammingByFriendEffect")()); }
			ScriptFunction PlayEnemyJammerPackEffect() { mixin(MGF!("mPlayEnemyJammerPackEffect", "Function TribesGame.TrPawn.PlayEnemyJammerPackEffect")()); }
			ScriptFunction OnPawnDetectedByCollisionProxy() { mixin(MGF!("mOnPawnDetectedByCollisionProxy", "Function TribesGame.TrPawn.OnPawnDetectedByCollisionProxy")()); }
			ScriptFunction OnPawnExitedCollisionProxy() { mixin(MGF!("mOnPawnExitedCollisionProxy", "Function TribesGame.TrPawn.OnPawnExitedCollisionProxy")()); }
			ScriptFunction OnEnteredDropJammer() { mixin(MGF!("mOnEnteredDropJammer", "Function TribesGame.TrPawn.OnEnteredDropJammer")()); }
			ScriptFunction OnExitedDropJammer() { mixin(MGF!("mOnExitedDropJammer", "Function TribesGame.TrPawn.OnExitedDropJammer")()); }
			ScriptFunction UpdateEnemyDropJammer() { mixin(MGF!("mUpdateEnemyDropJammer", "Function TribesGame.TrPawn.UpdateEnemyDropJammer")()); }
			ScriptFunction UpdateFriendlyDropJammer() { mixin(MGF!("mUpdateFriendlyDropJammer", "Function TribesGame.TrPawn.UpdateFriendlyDropJammer")()); }
			ScriptFunction PlayJammingByEnemyDropJammerEffect() { mixin(MGF!("mPlayJammingByEnemyDropJammerEffect", "Function TribesGame.TrPawn.PlayJammingByEnemyDropJammerEffect")()); }
			ScriptFunction PlayJammingByFriendlyDropJammerEffect() { mixin(MGF!("mPlayJammingByFriendlyDropJammerEffect", "Function TribesGame.TrPawn.PlayJammingByFriendlyDropJammerEffect")()); }
			ScriptFunction OnChangeJammingTeam() { mixin(MGF!("mOnChangeJammingTeam", "Function TribesGame.TrPawn.OnChangeJammingTeam")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrPawn.Destroyed")()); }
			ScriptFunction SetMeshVisibility() { mixin(MGF!("mSetMeshVisibility", "Function TribesGame.TrPawn.SetMeshVisibility")()); }
			ScriptFunction SetFirstPersonBodyVisibility() { mixin(MGF!("mSetFirstPersonBodyVisibility", "Function TribesGame.TrPawn.SetFirstPersonBodyVisibility")()); }
			ScriptFunction WeaponAttachmentChanged() { mixin(MGF!("mWeaponAttachmentChanged", "Function TribesGame.TrPawn.WeaponAttachmentChanged")()); }
			ScriptFunction ForceCrouch() { mixin(MGF!("mForceCrouch", "Function TribesGame.TrPawn.ForceCrouch")()); }
			ScriptFunction FindClosestStickyGrenadeSocketIndex() { mixin(MGF!("mFindClosestStickyGrenadeSocketIndex", "Function TribesGame.TrPawn.FindClosestStickyGrenadeSocketIndex")()); }
			ScriptFunction StickGrenadeToPawn() { mixin(MGF!("mStickGrenadeToPawn", "Function TribesGame.TrPawn.StickGrenadeToPawn")()); }
			ScriptFunction UpdateStickyGrenades() { mixin(MGF!("mUpdateStickyGrenades", "Function TribesGame.TrPawn.UpdateStickyGrenades")()); }
			ScriptFunction SetSkiing() { mixin(MGF!("mSetSkiing", "Function TribesGame.TrPawn.SetSkiing")()); }
			ScriptFunction PlaySkiEffects() { mixin(MGF!("mPlaySkiEffects", "Function TribesGame.TrPawn.PlaySkiEffects")()); }
			ScriptFunction StopSkiEffects() { mixin(MGF!("mStopSkiEffects", "Function TribesGame.TrPawn.StopSkiEffects")()); }
			ScriptFunction PlaySkiEffectsSound() { mixin(MGF!("mPlaySkiEffectsSound", "Function TribesGame.TrPawn.PlaySkiEffectsSound")()); }
			ScriptFunction StopSkiEffectsSound() { mixin(MGF!("mStopSkiEffectsSound", "Function TribesGame.TrPawn.StopSkiEffectsSound")()); }
			ScriptFunction FaceRotation() { mixin(MGF!("mFaceRotation", "Function TribesGame.TrPawn.FaceRotation")()); }
			ScriptFunction PlayDyingSound() { mixin(MGF!("mPlayDyingSound", "Function TribesGame.TrPawn.PlayDyingSound")()); }
			ScriptFunction HoldGameObject() { mixin(MGF!("mHoldGameObject", "Function TribesGame.TrPawn.HoldGameObject")()); }
			ScriptFunction AdjustDamage() { mixin(MGF!("mAdjustDamage", "Function TribesGame.TrPawn.AdjustDamage")()); }
			ScriptFunction GoInvulnerable() { mixin(MGF!("mGoInvulnerable", "Function TribesGame.TrPawn.GoInvulnerable")()); }
			ScriptFunction ClearInvulnerability() { mixin(MGF!("mClearInvulnerability", "Function TribesGame.TrPawn.ClearInvulnerability")()); }
			ScriptFunction SetMovementPhysics() { mixin(MGF!("mSetMovementPhysics", "Function TribesGame.TrPawn.SetMovementPhysics")()); }
			ScriptFunction OnAnimEnd() { mixin(MGF!("mOnAnimEnd", "Function TribesGame.TrPawn.OnAnimEnd")()); }
			ScriptFunction PlayTeleportEffect() { mixin(MGF!("mPlayTeleportEffect", "Function TribesGame.TrPawn.PlayTeleportEffect")()); }
			ScriptFunction TurnOff() { mixin(MGF!("mTurnOff", "Function TribesGame.TrPawn.TurnOff")()); }
			ScriptFunction SetDetectedByEnemyScanner() { mixin(MGF!("mSetDetectedByEnemyScanner", "Function TribesGame.TrPawn.SetDetectedByEnemyScanner")()); }
			ScriptFunction GetDetectedByEnemyScanner() { mixin(MGF!("mGetDetectedByEnemyScanner", "Function TribesGame.TrPawn.GetDetectedByEnemyScanner")()); }
			ScriptFunction SetScannerDetect() { mixin(MGF!("mSetScannerDetect", "Function TribesGame.TrPawn.SetScannerDetect")()); }
			ScriptFunction GetFamilyInfo() { mixin(MGF!("mGetFamilyInfo", "Function TribesGame.TrPawn.GetFamilyInfo")()); }
			ScriptFunction LockedOutFromFlagPickupTimer() { mixin(MGF!("mLockedOutFromFlagPickupTimer", "Function TribesGame.TrPawn.LockedOutFromFlagPickupTimer")()); }
			ScriptFunction LockFromFlagPickup() { mixin(MGF!("mLockFromFlagPickup", "Function TribesGame.TrPawn.LockFromFlagPickup")()); }
			ScriptFunction Blink() { mixin(MGF!("mBlink", "Function TribesGame.TrPawn.Blink")()); }
			ScriptFunction PlayBlinkPackEffect() { mixin(MGF!("mPlayBlinkPackEffect", "Function TribesGame.TrPawn.PlayBlinkPackEffect")()); }
			ScriptFunction DoJump() { mixin(MGF!("mDoJump", "Function TribesGame.TrPawn.DoJump")()); }
			ScriptFunction CheckClotheslineDamage() { mixin(MGF!("mCheckClotheslineDamage", "Function TribesGame.TrPawn.CheckClotheslineDamage")()); }
			ScriptFunction GetSpectatorName() { mixin(MGF!("mGetSpectatorName", "Function TribesGame.TrPawn.GetSpectatorName")()); }
			ScriptFunction CrushedBy() { mixin(MGF!("mCrushedBy", "Function TribesGame.TrPawn.CrushedBy")()); }
			ScriptFunction StuckOnPawn() { mixin(MGF!("mStuckOnPawn", "Function TribesGame.TrPawn.StuckOnPawn")()); }
			ScriptFunction SetPending3PSkin() { mixin(MGF!("mSetPending3PSkin", "Function TribesGame.TrPawn.SetPending3PSkin")()); }
			ScriptFunction CheckApplyPending3PSkin() { mixin(MGF!("mCheckApplyPending3PSkin", "Function TribesGame.TrPawn.CheckApplyPending3PSkin")()); }
			ScriptFunction ThrowActiveWeapon() { mixin(MGF!("mThrowActiveWeapon", "Function TribesGame.TrPawn.ThrowActiveWeapon")()); }
			ScriptFunction ThrowWeaponOnDeath() { mixin(MGF!("mThrowWeaponOnDeath", "Function TribesGame.TrPawn.ThrowWeaponOnDeath")()); }
			ScriptFunction ClearSkiParticleEffects() { mixin(MGF!("mClearSkiParticleEffects", "Function TribesGame.TrPawn.ClearSkiParticleEffects")()); }
			ScriptFunction ClearJetpackParticleEffects() { mixin(MGF!("mClearJetpackParticleEffects", "Function TribesGame.TrPawn.ClearJetpackParticleEffects")()); }
			ScriptFunction AlienFXOverlay() { mixin(MGF!("mAlienFXOverlay", "Function TribesGame.TrPawn.AlienFXOverlay")()); }
		}
	}
	static struct Constants
	{
		enum
		{
			MAX_SCANNER_SEE_FLAG = 2,
			MAX_SCANNER_DISPLAY_FLAG = 3,
			MAX_MULTISHOT_LOCATIONS = 8,
			VELOCITY_HISTORY_SIZE = 3,
		}
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrPawn.AssistInfo")()); }
		@property final auto ref
		{
			float m_fDamagerTime() { mixin(MGPS!(float, 8)()); }
			int m_AccumulatedDamage() { mixin(MGPS!(int, 4)()); }
			TrPlayerController m_Damager() { mixin(MGPS!(TrPlayerController, 0)()); }
		}
	}
	struct FootstepParticleInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrPawn.FootstepParticleInfo")()); }
		@property final auto ref
		{
			ParticleSystem FootParticle() { mixin(MGPS!(ParticleSystem, 8)()); }
			ScriptName MaterialType() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	struct StickyGrenadeSocketInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrPawn.StickyGrenadeSocketInfo")()); }
		@property final auto ref
		{
			Vector ViewOffset() { mixin(MGPS!(Vector, 16)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FirstPersonMesh'!
			// WARNING: Property 'Projectile' has the same name as a defined type!
			ScriptName SocketName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	static struct Dying
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrPawn.Dying")()); }
	}
	@property final
	{
		auto ref
		{
			TrVehicle m_RidingVehicle() { mixin(MGPC!(TrVehicle, 3096)()); }
			float m_fCurrentPowerPool() { mixin(MGPC!(float, 2320)()); }
			float m_fHeadShotDamageMultiple() { mixin(MGPC!(float, 2348)()); }
			float m_fCurrentAccuracy() { mixin(MGPC!(float, 2540)()); }
			float m_fPawnViewForwardAmount() { mixin(MGPC!(float, 2964)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_FirstPersonWeaponShadowMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_FirstPersonBodyMesh'!
			TrAnimNodeBlendByRidingPassenger m_RidingPassengerBlendNode() { mixin(MGPC!(TrAnimNodeBlendByRidingPassenger, 2600)()); }
			TrAnimNodeAimOffset m_AimOffsetNode() { mixin(MGPC!(TrAnimNodeAimOffset, 2588)()); }
			TrAnimNodeAimOffset m_1pBodyAimOffsetNode() { mixin(MGPC!(TrAnimNodeAimOffset, 2592)()); }
			Vector r_FlashNormal() { mixin(MGPC!(Vector, 2228)()); }
			float m_fShowObjectThreshold() { mixin(MGPC!(float, 2616)()); }
			ScriptArray!(TrEffect) m_AppliedEffects() { mixin(MGPC!(ScriptArray!(TrEffect), 2476)()); }
			ScriptArray!(TrEffectForm) m_AppliedEffectForms() { mixin(MGPC!(ScriptArray!(TrEffectForm), 2488)()); }
			ScriptArray!(TrPawn.AssistInfo) m_KillAssisters() { mixin(MGPC!(ScriptArray!(TrPawn.AssistInfo), 2572)()); }
			ScriptArray!(TrObject.EffectFormOverwrite) m_EffectFormOverwrite() { mixin(MGPC!(ScriptArray!(TrObject.EffectFormOverwrite), 2752)()); }
			ScriptArray!(TrPawn) m_JammedFriends() { mixin(MGPC!(ScriptArray!(TrPawn), 2776)()); }
			ScriptArray!(TrPawn) m_JammedEnemies() { mixin(MGPC!(ScriptArray!(TrPawn), 2788)()); }
			ScriptArray!(TrPlayerReplicationInfo) m_FriendJammingList() { mixin(MGPC!(ScriptArray!(TrPlayerReplicationInfo), 2808)()); }
			ScriptArray!(TrDeployable_DropJammer) m_FriendlyDropJammerList() { mixin(MGPC!(ScriptArray!(TrDeployable_DropJammer), 2832)()); }
			ScriptArray!(TrDeployable_DropJammer) m_EnemyDropJammerList() { mixin(MGPC!(ScriptArray!(TrDeployable_DropJammer), 2844)()); }
			ScriptArray!(TrPawn.FootstepParticleInfo) m_SkiParticles() { mixin(MGPC!(ScriptArray!(TrPawn.FootstepParticleInfo), 2944)()); }
			ScriptArray!(TrPawn.StickyGrenadeSocketInfo) m_StickyGrenadeSocketList() { mixin(MGPC!(ScriptArray!(TrPawn.StickyGrenadeSocketInfo), 2968)()); }
			ScriptArray!(Vector) m_aPreviousVelocities() { mixin(MGPC!(ScriptArray!(Vector), 3048)()); }
			ScriptArray!(Vector) m_aPreviousLocations() { mixin(MGPC!(ScriptArray!(Vector), 3060)()); }
			ScriptArray!(float) m_aPreviousTickTimes() { mixin(MGPC!(ScriptArray!(float), 3072)()); }
			float m_TerrainWalkableFloorZ() { mixin(MGPC!(float, 3188)()); }
			float m_fSwapSkinDistSq() { mixin(MGPC!(float, 3184)()); }
			ScriptClass c_Pending1PSkin() { mixin(MGPC!(ScriptClass, 3180)()); }
			ScriptClass c_Pending3PSkin() { mixin(MGPC!(ScriptClass, 3176)()); }
			int m_nNetViewPitchCount() { mixin(MGPC!(int, 3172)()); }
			float m_PitchInterpRate() { mixin(MGPC!(float, 3168)()); }
			int m_nTargetRemoteViewPitch() { mixin(MGPC!(int, 3164)()); }
			int m_nPreviousReceivedRemoteViewPitch() { mixin(MGPC!(int, 3160)()); }
			int m_nSmoothedRemoteViewPitch() { mixin(MGPC!(int, 3156)()); }
			int m_nNetRotationCount() { mixin(MGPC!(int, 3152)()); }
			float m_RotationInterpRate() { mixin(MGPC!(float, 3148)()); }
			Rotator m_TargetNetReceiveRotation() { mixin(MGPC!(Rotator, 3136)()); }
			Rotator m_PreviousNetReceiveRotation() { mixin(MGPC!(Rotator, 3124)()); }
			SkeletalMesh m_GibMesh() { mixin(MGPC!(SkeletalMesh, 3120)()); }
			TrStatsInterface Stats() { mixin(MGPC!(TrStatsInterface, 3116)()); }
			float m_fInventoryStationLockoutTime() { mixin(MGPC!(float, 3112)()); }
			float m_fLastInventoryStationVisitTime() { mixin(MGPC!(float, 3108)()); }
			int m_nDetectedByEnemyScannerCount() { mixin(MGPC!(int, 3104)()); }
			UDKCarriedObject m_GameObjCheckTimer() { mixin(MGPC!(UDKCarriedObject, 3100)()); }
			MaterialInstanceConstant m_MarkerMIC() { mixin(MGPC!(MaterialInstanceConstant, 3092)()); }
			MaterialInstanceConstant m_HealthBarMIC() { mixin(MGPC!(MaterialInstanceConstant, 3088)()); }
			UTWeaponAttachment m_InHandWeaponAttachmentFromAutoFire() { mixin(MGPC!(UTWeaponAttachment, 3084)()); }
			float m_fLastTakeClotheslineDamageTimestamp() { mixin(MGPC!(float, 3044)()); }
			float m_fClotheslineSpeedDifferenceMax() { mixin(MGPC!(float, 3040)()); }
			float m_fClotheslineSpeedDifferenceMin() { mixin(MGPC!(float, 3036)()); }
			float m_fClotheslineDamageMax() { mixin(MGPC!(float, 3032)()); }
			float m_fClotheslineDamageMin() { mixin(MGPC!(float, 3028)()); }
			float m_fSplatSpeedMax() { mixin(MGPC!(float, 3024)()); }
			float m_fSplatSpeedMin() { mixin(MGPC!(float, 3020)()); }
			float m_fSplatDamageFromWallMax() { mixin(MGPC!(float, 3016)()); }
			float m_fSplatDamageFromWallMin() { mixin(MGPC!(float, 3012)()); }
			float m_fSplatDamageFromLandMax() { mixin(MGPC!(float, 3008)()); }
			float m_fSplatDamageFromLandMin() { mixin(MGPC!(float, 3004)()); }
			float m_bJustLandedSpeedSq() { mixin(MGPC!(float, 3000)()); }
			float m_fRemainingSeekingTargetHUDZoomTime() { mixin(MGPC!(float, 2996)()); }
			Rotator m_rPotentialSeekingTargetHUDRotation() { mixin(MGPC!(Rotator, 2984)()); }
			float m_fRemainingPotentialSeekingTargetHUDZoomTime() { mixin(MGPC!(float, 2980)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_GroundSkiPSC'!
			float m_fGroundSkiEffectDist() { mixin(MGPC!(float, 2956)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_FirstPersonFlagShadowMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_FirstPersonBodyShadowMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_FirstPersonBodyOverlayMesh'!
			MaterialInstanceConstant m_InvulnerableOverlayMIC() { mixin(MGPC!(MaterialInstanceConstant, 2920)()); }
			Material m_InvulnerableOverlayMaterial() { mixin(MGPC!(Material, 2916)()); }
			MaterialInstanceConstant m_RageOverlayMIC() { mixin(MGPC!(MaterialInstanceConstant, 2912)()); }
			Material m_RageOverlayMaterial() { mixin(MGPC!(Material, 2908)()); }
			MaterialInstanceConstant m_JammerPackOverlayMIC() { mixin(MGPC!(MaterialInstanceConstant, 2904)()); }
			Material m_JammerPackOverlayMaterial() { mixin(MGPC!(Material, 2900)()); }
			MaterialInstanceConstant m_RegenPackPackOverlayMIC() { mixin(MGPC!(MaterialInstanceConstant, 2896)()); }
			Material m_RegenPackOverlayMaterial() { mixin(MGPC!(Material, 2892)()); }
			MaterialInstanceConstant m_RegenOverlayMIC() { mixin(MGPC!(MaterialInstanceConstant, 2888)()); }
			Material m_RegenOverlayMaterial() { mixin(MGPC!(Material, 2884)()); }
			float m_fShieldPackMaterialHitRampDownSpeed() { mixin(MGPC!(float, 2880)()); }
			float m_fOverlayMaterialDeactivateSpeed() { mixin(MGPC!(float, 2876)()); }
			float m_fOverlayMaterialActivateSpeed() { mixin(MGPC!(float, 2872)()); }
			MaterialInstanceConstant m_ShieldPackOverlayMIC() { mixin(MGPC!(MaterialInstanceConstant, 2868)()); }
			Material m_ShieldPackOverlayMaterial() { mixin(MGPC!(Material, 2864)()); }
			float m_fForwardJettingPct() { mixin(MGPC!(float, 2860)()); }
			float m_fMaxJetpackBoostGroundspeed() { mixin(MGPC!(float, 2856)()); }
			int r_nEnemyDropJammerCount() { mixin(MGPC!(int, 2828)()); }
			int r_nFriendlyDropJammerCount() { mixin(MGPC!(int, 2824)()); }
			int r_nEnemyJamCount() { mixin(MGPC!(int, 2820)()); }
			TrPlayerReplicationInfo r_FriendJammingPRI() { mixin(MGPC!(TrPlayerReplicationInfo, 2804)()); }
			int m_JammingFriendTeam() { mixin(MGPC!(int, 2800)()); }
			float m_fJamEffectRadius() { mixin(MGPC!(float, 2772)()); }
			TrPawnCollisionProxy m_JammingCollisionProxy() { mixin(MGPC!(TrPawnCollisionProxy, 2768)()); }
			Material r_ReplicatedWeaponAttachmentMat() { mixin(MGPC!(Material, 2764)()); }
			float m_OldSpeed() { mixin(MGPC!(float, 2748)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentRageLoop'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentHealthRechargeLoop'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentJetpackLoop'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentSpeedSound'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentJammerPackLoop'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentStealthPackLoop'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentShieldPackLoop'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentSkiLoop'!
			Vector r_avMultiShotLocation() { mixin(MGPC!(Vector, 2620)()); }
			float m_fEnemyShowDistanceThreshold() { mixin(MGPC!(float, 2612)()); }
			float m_fFriendlyShowDistanceThreshold() { mixin(MGPC!(float, 2608)()); }
			MorphNodeWeight m_OverlayMorphNode() { mixin(MGPC!(MorphNodeWeight, 2604)()); }
			TrAnimNodeBlendByVehicle m_VehicleBlendNode() { mixin(MGPC!(TrAnimNodeBlendByVehicle, 2596)()); }
			float m_fFallVelocityTransfer() { mixin(MGPC!(float, 2584)()); }
			float m_fLastDamagerTimeStamp() { mixin(MGPC!(float, 2568)()); }
			float m_fLastVehicleDamagerTimeStamp() { mixin(MGPC!(float, 2564)()); }
			float m_AssistDamagePercentQualifier() { mixin(MGPC!(float, 2560)()); }
			float m_fSkiAccelPct() { mixin(MGPC!(float, 2556)()); }
			float m_fSkiAccelCapSpeedThreshold() { mixin(MGPC!(float, 2552)()); }
			float m_fAirAccelSpeed() { mixin(MGPC!(float, 2548)()); }
			float m_fAirAccelCapSpeedThreshold() { mixin(MGPC!(float, 2544)()); }
			float m_fTerminalSkiSpeed() { mixin(MGPC!(float, 2536)()); }
			float m_fMaxSkiSpeed() { mixin(MGPC!(float, 2532)()); }
			float m_fSkiSlopeGravityBoost() { mixin(MGPC!(float, 2528)()); }
			float m_fMaxSkiControlPct() { mixin(MGPC!(float, 2524)()); }
			float m_fSkiControlSigmaSquare() { mixin(MGPC!(float, 2520)()); }
			float m_fPeakSkiControlSpeed() { mixin(MGPC!(float, 2516)()); }
			TrObject.TrTakeEffectInfo r_LastTakeEffectInfo() { mixin(MGPC!(TrObject.TrTakeEffectInfo, 2500)()); }
			float ShowHeaderUntil() { mixin(MGPC!(float, 2472)()); }
			TrObject.TR_HUD_INFO m_HudInfo() { mixin(MGPC!(TrObject.TR_HUD_INFO, 2404)()); }
			int r_nSensorAlertLevel() { mixin(MGPC!(int, 2400)()); }
			float m_fDecelerationRateWithFlag() { mixin(MGPC!(float, 2396)()); }
			float m_fMaxSpeedWithFlag() { mixin(MGPC!(float, 2392)()); }
			float m_fPreserveVelocityZNormalThreshold() { mixin(MGPC!(float, 2388)()); }
			float m_fPreserveVelocityThresholdMin() { mixin(MGPC!(float, 2384)()); }
			float m_fPreserveVelocityThresholdMax() { mixin(MGPC!(float, 2380)()); }
			float m_fMaxSpeedDecelerationRate() { mixin(MGPC!(float, 2376)()); }
			float m_fTerminalJettingSpeed() { mixin(MGPC!(float, 2372)()); }
			float m_fMaxJettingSpeed() { mixin(MGPC!(float, 2368)()); }
			float m_fAccelRateAtMaxThrustSpeed() { mixin(MGPC!(float, 2364)()); }
			float m_fMaxJetpackThrustSpeed() { mixin(MGPC!(float, 2360)()); }
			float m_fMaxStoppingDistance() { mixin(MGPC!(float, 2356)()); }
			float m_fStoppingDistance() { mixin(MGPC!(float, 2352)()); }
			float m_fHeadShotFudge() { mixin(MGPC!(float, 2344)()); }
			float m_fTickedRegenDecimal() { mixin(MGPC!(float, 2340)()); }
			float m_fSecondsBeforeAutoHeal() { mixin(MGPC!(float, 2336)()); }
			float r_fPowerPoolRechargeRate() { mixin(MGPC!(float, 2332)()); }
			float r_fMaxPowerPool() { mixin(MGPC!(float, 2328)()); }
			float r_fCurrentPowerPool() { mixin(MGPC!(float, 2324)()); }
			float m_fTimeLastUntargetByLocalPlayer() { mixin(MGPC!(float, 2316)()); }
			float m_fTimeLastTargetByLocalPlayer() { mixin(MGPC!(float, 2312)()); }
			float m_fTimeLastUnseenByLocalPlayer() { mixin(MGPC!(float, 2308)()); }
			float m_fTimeLastSeenByLocalPlayer() { mixin(MGPC!(float, 2304)()); }
			float s_fVE() { mixin(MGPC!(float, 2300)()); }
			float m_fShieldMultiple() { mixin(MGPC!(float, 2296)()); }
			float r_fFasterWeaponSwitchMultiplier() { mixin(MGPC!(float, 2292)()); }
			float m_fPulseStealthIgnoreTime() { mixin(MGPC!(float, 2288)()); }
			float m_fPulseStealthIgnoreTimeStamp() { mixin(MGPC!(float, 2284)()); }
			float r_fPulseStealthSpeedThreshold() { mixin(MGPC!(float, 2280)()); }
			float m_fPulseStealthFadeInInterpSpeed() { mixin(MGPC!(float, 2276)()); }
			float m_fPulseStealthVisibleTime() { mixin(MGPC!(float, 2272)()); }
			float m_fPulseStealthVisibleTimestamp() { mixin(MGPC!(float, 2268)()); }
			MaterialInstanceConstant m_StealthMIC() { mixin(MGPC!(MaterialInstanceConstant, 2264)()); }
			Material m_StealthMaterial() { mixin(MGPC!(Material, 2260)()); }
			float m_fMinStealthVisibilityParamValue() { mixin(MGPC!(float, 2256)()); }
			float m_fDisableStealthVisibilityInterpSpeed() { mixin(MGPC!(float, 2252)()); }
			float m_fEnableStealthVisibilityInterpSpeed() { mixin(MGPC!(float, 2248)()); }
			AlienFXManager.FXOverlay LastFXOverlay() { mixin(MGPC!(AlienFXManager.FXOverlay, 2247)()); }
			ubyte r_nWhiteOut() { mixin(MGPC!(ubyte, 2246)()); }
			TrObject.EMissileLock m_MissileLockStatus() { mixin(MGPC!(TrObject.EMissileLock, 2245)()); }
			ubyte r_RemoteViewYaw() { mixin(MGPC!(ubyte, 2244)()); }
			TrPawn.PhysicsType PhysType() { mixin(MGPC!(TrPawn.PhysicsType, 2243)()); }
			int r_nFactionId() { mixin(MGPC!(int, 2208)()); }
			ubyte r_nBlinked() { mixin(MGPC!(ubyte, 2242)()); }
			ubyte r_nPulseStealth() { mixin(MGPC!(ubyte, 2241)()); }
			TrObject.EMissileLock r_MissileLock() { mixin(MGPC!(TrObject.EMissileLock, 2240)()); }
			Actor r_LockedTarget() { mixin(MGPC!(Actor, 2224)()); }
			ScriptName m_nmMakeVisible() { mixin(MGPC!(ScriptName, 2212)()); }
		}
		bool r_bIsStealthed() { mixin(MGBPC!(2220, 0x4)()); }
		bool r_bIsStealthed(bool val) { mixin(MSBPC!(2220, 0x4)()); }
		bool r_bIsInvulnerable() { mixin(MGBPC!(2220, 0x100000)()); }
		bool r_bIsInvulnerable(bool val) { mixin(MSBPC!(2220, 0x100000)()); }
		bool r_bIsSkiing() { mixin(MGBPC!(2220, 0x800)()); }
		bool r_bIsSkiing(bool val) { mixin(MSBPC!(2220, 0x800)()); }
		bool r_bIsJetting() { mixin(MGBPC!(2220, 0x8000)()); }
		bool r_bIsJetting(bool val) { mixin(MSBPC!(2220, 0x8000)()); }
		bool m_bUseSmoothNetReceiveRotation() { mixin(MGBPC!(2220, 0x1000000)()); }
		bool m_bUseSmoothNetReceiveRotation(bool val) { mixin(MSBPC!(2220, 0x1000000)()); }
		bool r_bDetectedByEnemyScanner() { mixin(MGBPC!(2220, 0x800000)()); }
		bool r_bDetectedByEnemyScanner(bool val) { mixin(MSBPC!(2220, 0x800000)()); }
		bool m_bSplattedAgainstWall() { mixin(MGBPC!(2220, 0x400000)()); }
		bool m_bSplattedAgainstWall(bool val) { mixin(MSBPC!(2220, 0x400000)()); }
		bool m_bIsInConduit() { mixin(MGBPC!(2220, 0x200000)()); }
		bool m_bIsInConduit(bool val) { mixin(MSBPC!(2220, 0x200000)()); }
		bool m_bUpdateStickyGrenades() { mixin(MGBPC!(2220, 0x80000)()); }
		bool m_bUpdateStickyGrenades(bool val) { mixin(MSBPC!(2220, 0x80000)()); }
		bool m_bLoadoutReset() { mixin(MGBPC!(2220, 0x40000)()); }
		bool m_bLoadoutReset(bool val) { mixin(MSBPC!(2220, 0x40000)()); }
		bool r_bIsJamming() { mixin(MGBPC!(2220, 0x20000)()); }
		bool r_bIsJamming(bool val) { mixin(MSBPC!(2220, 0x20000)()); }
		bool m_bIsJetEffectsPlaying() { mixin(MGBPC!(2220, 0x10000)()); }
		bool m_bIsJetEffectsPlaying(bool val) { mixin(MSBPC!(2220, 0x10000)()); }
		bool r_bAimingMode() { mixin(MGBPC!(2220, 0x4000)()); }
		bool r_bAimingMode(bool val) { mixin(MSBPC!(2220, 0x4000)()); }
		bool m_bIsPlayingSkiEffectsSounds() { mixin(MGBPC!(2220, 0x2000)()); }
		bool m_bIsPlayingSkiEffectsSounds(bool val) { mixin(MSBPC!(2220, 0x2000)()); }
		bool m_bIsPlayingSkiEffects() { mixin(MGBPC!(2220, 0x1000)()); }
		bool m_bIsPlayingSkiEffects(bool val) { mixin(MSBPC!(2220, 0x1000)()); }
		bool bInDeployModeClient() { mixin(MGBPC!(2220, 0x400)()); }
		bool bInDeployModeClient(bool val) { mixin(MSBPC!(2220, 0x400)()); }
		bool r_bInDeployMode() { mixin(MGBPC!(2220, 0x200)()); }
		bool r_bInDeployMode(bool val) { mixin(MSBPC!(2220, 0x200)()); }
		bool bInFireLockClient() { mixin(MGBPC!(2220, 0x100)()); }
		bool bInFireLockClient(bool val) { mixin(MSBPC!(2220, 0x100)()); }
		bool r_bInFireLock() { mixin(MGBPC!(2220, 0x80)()); }
		bool r_bInFireLock(bool val) { mixin(MSBPC!(2220, 0x80)()); }
		bool r_bIsHealthRecharging() { mixin(MGBPC!(2220, 0x40)()); }
		bool r_bIsHealthRecharging(bool val) { mixin(MSBPC!(2220, 0x40)()); }
		bool r_bIsShielded() { mixin(MGBPC!(2220, 0x20)()); }
		bool r_bIsShielded(bool val) { mixin(MSBPC!(2220, 0x20)()); }
		bool r_bIsRaged() { mixin(MGBPC!(2220, 0x10)()); }
		bool r_bIsRaged(bool val) { mixin(MSBPC!(2220, 0x10)()); }
		bool m_bStealthVisible() { mixin(MGBPC!(2220, 0x8)()); }
		bool m_bStealthVisible(bool val) { mixin(MSBPC!(2220, 0x8)()); }
		bool m_bRefreshInventoryWasRespawn() { mixin(MGBPC!(2220, 0x2)()); }
		bool m_bRefreshInventoryWasRespawn(bool val) { mixin(MSBPC!(2220, 0x2)()); }
		bool m_bInitialized() { mixin(MGBPC!(2220, 0x1)()); }
		bool m_bInitialized(bool val) { mixin(MSBPC!(2220, 0x1)()); }
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
	bool CheckHeadShot(ref const Actor.ImpactInfo Impact)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor.ImpactInfo*)params.ptr = Impact;
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
	void GetCurrentDeviceAccuracyInfo(ref float fAccuracy, ref float fAmountCurrentlyOffOfTargetAccuray)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = fAccuracy;
		*cast(float*)&params[4] = fAmountCurrentlyOffOfTargetAccuray;
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
	Vector GetJetpackAirControl(const Vector InAcceleration, const Vector ZAxis)
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
		*cast(float*)&params[20] = DamageScaleWithoutNewPlayerAssist;
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
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
