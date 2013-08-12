module UnrealScript.TribesGame.TrDevice;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrAnimNodeBlendByDeviceAnim;
import UnrealScript.TribesGame.TrProj_Tracer;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrDeviceContentData;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTWeapon;

extern(C++) interface TrDevice : UTWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice")); }
	private static __gshared TrDevice mDefaultProperties;
	@property final static TrDevice DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice)("TrDevice TribesGame.Default__TrDevice")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCalcHUDAimChargePercent;
			ScriptFunction mGetAccuracy;
			ScriptFunction mGetFireModeNum;
			ScriptFunction mIsValidTarget;
			ScriptFunction mIsEnemy;
			ScriptFunction mIsInsideCone;
			ScriptFunction mShouldAddToImpactList;
			ScriptFunction mTickInHandWeapon;
			ScriptFunction mResetLock;
			ScriptFunction mGetLockedTarget;
			ScriptFunction mSpawnPet;
			ScriptFunction mGetTargetAccuracy;
			ScriptFunction mRestoreAccuracy;
			ScriptFunction mRestoreKickback;
			ScriptFunction mIsInLOS;
			ScriptFunction mAttachHandsMesh;
			ScriptFunction mLoadMeshData;
			ScriptFunction mValidateClientReportedHit;
			ScriptFunction mValidateClientReportedHitInternal;
			ScriptFunction mGetObjectReferencerName;
			ScriptFunction mGetObjectReferencerPackageName;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mAddAmmo;
			ScriptFunction mReplicateAmmoOnWeaponFire;
			ScriptFunction mConsumeAmmo_Internal;
			ScriptFunction mConsumeAmmo;
			ScriptFunction mGetTraceOwner;
			ScriptFunction mAttachWeaponTo;
			ScriptFunction mCreateFirstPersonHandsMesh;
			ScriptFunction mChangeVisibility;
			ScriptFunction mCentralUpdateHandsMesh;
			ScriptFunction mUpdateHandsMesh;
			ScriptFunction mCreateOverlayMesh;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mPlayWeaponEquip;
			ScriptFunction mOnPlayRetrieveAnim;
			ScriptFunction mPlayWeaponPutDown;
			ScriptFunction mWeaponEmpty;
			ScriptFunction mOnSwitchToWeapon;
			ScriptFunction mOnSwitchAwayFromWeapon;
			ScriptFunction mClientWeaponSet;
			ScriptFunction mPlayFireEffects;
			ScriptFunction mPlayFireAnimation;
			ScriptFunction mShakeView;
			ScriptFunction mShouldFireTracer;
			ScriptFunction mShouldFireTracerBeam;
			ScriptFunction mSpawnTracerBeam;
			ScriptFunction mSpawnTracerEffect;
			ScriptFunction mGetTracer;
			ScriptFunction mGetNumRoundsCurrentlyInClip;
			ScriptFunction mHasAmmo;
			ScriptFunction mHasAnyAmmo;
			ScriptFunction mAllowSwitchTo;
			ScriptFunction mCalculateRangeDamageFalloff;
			ScriptFunction mInstantFire;
			ScriptFunction mProcessInstantHit;
			ScriptFunction mServerNotifyHit;
			ScriptFunction mProcessInstantHit_Internal;
			ScriptFunction mModifyInstantHitDamage;
			ScriptFunction mProcessEffect;
			ScriptFunction mUsesPower;
			ScriptFunction mIsDeviceCoolingDown;
			ScriptFunction mEnterDeployMode;
			ScriptFunction mExitDeployMode;
			ScriptFunction mToggleActivate;
			ScriptFunction mPayAccuracyForJump;
			ScriptFunction mPayAccuracyForWeaponSwitch;
			ScriptFunction mPayAccuracyForShot;
			ScriptFunction mAddSpreadWithAccuracy;
			ScriptFunction mApplyKickbackToAim;
			ScriptFunction mGetCurrentKickbackAmount;
			ScriptFunction mAddKickback;
			ScriptFunction mGetAdjustedAim;
			ScriptFunction mShowWeaponRedLowAmmoIndicator;
			ScriptFunction mNeedToVisitInventoryStation;
			ScriptFunction mGetAmmoCount;
			ScriptFunction mUpdateLowAmmoWarning;
			ScriptFunction mGetProjectileClass;
			ScriptFunction mGetClientSideProjectileFireStartLoc;
			ScriptFunction mProjectileFire;
			ScriptFunction mDestroyOldestProjectileOverLimit;
			ScriptFunction mFireAmmunition;
			ScriptFunction mMaxRange;
			ScriptFunction mGetWeaponRange;
			ScriptFunction mGetAimForCamera;
			ScriptFunction mCanClientRequestReloadNow;
			ScriptFunction mHolderEnteredVehicle;
			ScriptFunction mGetReloadTime;
			ScriptFunction mClearMeshAnimSeqNodes;
			ScriptFunction mCacheMeshAnimSeqNodes;
			ScriptFunction mSuppressAnimNotifies;
			ScriptFunction mIsReloading;
			ScriptFunction mRequestReload;
			ScriptFunction mOnClientReloaded;
			ScriptFunction mPerformInactiveReload;
			ScriptFunction mCalcAmountToLoad;
			ScriptFunction mClientFinishedReload;
			ScriptFunction mResumeZoomOnReloadEnd;
			ScriptFunction mPlayReloadAnim;
			ScriptFunction mEnableWeaponReadyToFire;
			ScriptFunction mOnReloadComplete;
			ScriptFunction mBeginAReload;
			ScriptFunction mAddCarriedAmmo;
			ScriptFunction mUpdateReplicatedCarriedAmmo;
			ScriptFunction mGoInactiveDueToOffhand;
			ScriptFunction mStopFire;
			ScriptFunction mBeginFire;
			ScriptFunction mGetEquipTime;
			ScriptFunction mTimeWeaponPutDown;
			ScriptFunction mGetPutDownTime;
			ScriptFunction mCanFireOffhandNow;
			ScriptFunction mServerOnClientDeniedFire;
			ScriptFunction mApplyEquipEffect;
			ScriptFunction mRemoveEquipEffect;
			ScriptFunction mSetPosition;
			ScriptFunction mLagRot;
			ScriptFunction mShouldRefire;
			ScriptFunction mStartFire;
			ScriptFunction mActivate;
			ScriptFunction mAnnounceInvalidPickup;
			ScriptFunction mDenyPickupQuery;
			ScriptFunction mPutDownFast;
			ScriptFunction mForceEndFire;
			ScriptFunction mCanAutoDeviceFireNow;
			ScriptFunction mCustomFire;
			ScriptFunction mAttachMuzzleFlash;
			ScriptFunction mWeaponPlaySoundLocal;
			ScriptFunction mClientWeaponThrown;
			ScriptFunction mUpdateShotsFired;
			ScriptFunction mStartZoom;
			ScriptFunction mEndZoom;
			ScriptFunction mCanViewZoom;
			ScriptFunction mSetAltReticule;
			ScriptFunction mResetAltReticule;
			ScriptFunction mCalcWeaponFire;
			ScriptFunction mPlayDryFireZoom;
			ScriptFunction mBuffMaxCarriedAmmo;
			ScriptFunction mGetMaxAmmoCount;
			ScriptFunction mGetBasePickupAmmoAmount;
			ScriptFunction mServerStartFire;
			ScriptFunction mUpdateWeaponMICs;
		}
		public @property static final
		{
			ScriptFunction CalcHUDAimChargePercent() { return mCalcHUDAimChargePercent ? mCalcHUDAimChargePercent : (mCalcHUDAimChargePercent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CalcHUDAimChargePercent")); }
			ScriptFunction GetAccuracy() { return mGetAccuracy ? mGetAccuracy : (mGetAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetAccuracy")); }
			ScriptFunction GetFireModeNum() { return mGetFireModeNum ? mGetFireModeNum : (mGetFireModeNum = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetFireModeNum")); }
			ScriptFunction IsValidTarget() { return mIsValidTarget ? mIsValidTarget : (mIsValidTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.IsValidTarget")); }
			ScriptFunction IsEnemy() { return mIsEnemy ? mIsEnemy : (mIsEnemy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.IsEnemy")); }
			ScriptFunction IsInsideCone() { return mIsInsideCone ? mIsInsideCone : (mIsInsideCone = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.IsInsideCone")); }
			ScriptFunction ShouldAddToImpactList() { return mShouldAddToImpactList ? mShouldAddToImpactList : (mShouldAddToImpactList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ShouldAddToImpactList")); }
			ScriptFunction TickInHandWeapon() { return mTickInHandWeapon ? mTickInHandWeapon : (mTickInHandWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.TickInHandWeapon")); }
			ScriptFunction ResetLock() { return mResetLock ? mResetLock : (mResetLock = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ResetLock")); }
			ScriptFunction GetLockedTarget() { return mGetLockedTarget ? mGetLockedTarget : (mGetLockedTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetLockedTarget")); }
			ScriptFunction SpawnPet() { return mSpawnPet ? mSpawnPet : (mSpawnPet = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.SpawnPet")); }
			ScriptFunction GetTargetAccuracy() { return mGetTargetAccuracy ? mGetTargetAccuracy : (mGetTargetAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetTargetAccuracy")); }
			ScriptFunction RestoreAccuracy() { return mRestoreAccuracy ? mRestoreAccuracy : (mRestoreAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.RestoreAccuracy")); }
			ScriptFunction RestoreKickback() { return mRestoreKickback ? mRestoreKickback : (mRestoreKickback = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.RestoreKickback")); }
			ScriptFunction IsInLOS() { return mIsInLOS ? mIsInLOS : (mIsInLOS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.IsInLOS")); }
			ScriptFunction AttachHandsMesh() { return mAttachHandsMesh ? mAttachHandsMesh : (mAttachHandsMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AttachHandsMesh")); }
			ScriptFunction LoadMeshData() { return mLoadMeshData ? mLoadMeshData : (mLoadMeshData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.LoadMeshData")); }
			ScriptFunction ValidateClientReportedHit() { return mValidateClientReportedHit ? mValidateClientReportedHit : (mValidateClientReportedHit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ValidateClientReportedHit")); }
			ScriptFunction ValidateClientReportedHitInternal() { return mValidateClientReportedHitInternal ? mValidateClientReportedHitInternal : (mValidateClientReportedHitInternal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ValidateClientReportedHitInternal")); }
			ScriptFunction GetObjectReferencerName() { return mGetObjectReferencerName ? mGetObjectReferencerName : (mGetObjectReferencerName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetObjectReferencerName")); }
			ScriptFunction GetObjectReferencerPackageName() { return mGetObjectReferencerPackageName ? mGetObjectReferencerPackageName : (mGetObjectReferencerPackageName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetObjectReferencerPackageName")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PostBeginPlay")); }
			ScriptFunction AddAmmo() { return mAddAmmo ? mAddAmmo : (mAddAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AddAmmo")); }
			ScriptFunction ReplicateAmmoOnWeaponFire() { return mReplicateAmmoOnWeaponFire ? mReplicateAmmoOnWeaponFire : (mReplicateAmmoOnWeaponFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ReplicateAmmoOnWeaponFire")); }
			ScriptFunction ConsumeAmmo_Internal() { return mConsumeAmmo_Internal ? mConsumeAmmo_Internal : (mConsumeAmmo_Internal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ConsumeAmmo_Internal")); }
			ScriptFunction ConsumeAmmo() { return mConsumeAmmo ? mConsumeAmmo : (mConsumeAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ConsumeAmmo")); }
			ScriptFunction GetTraceOwner() { return mGetTraceOwner ? mGetTraceOwner : (mGetTraceOwner = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetTraceOwner")); }
			ScriptFunction AttachWeaponTo() { return mAttachWeaponTo ? mAttachWeaponTo : (mAttachWeaponTo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AttachWeaponTo")); }
			ScriptFunction CreateFirstPersonHandsMesh() { return mCreateFirstPersonHandsMesh ? mCreateFirstPersonHandsMesh : (mCreateFirstPersonHandsMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CreateFirstPersonHandsMesh")); }
			ScriptFunction ChangeVisibility() { return mChangeVisibility ? mChangeVisibility : (mChangeVisibility = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ChangeVisibility")); }
			ScriptFunction CentralUpdateHandsMesh() { return mCentralUpdateHandsMesh ? mCentralUpdateHandsMesh : (mCentralUpdateHandsMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CentralUpdateHandsMesh")); }
			ScriptFunction UpdateHandsMesh() { return mUpdateHandsMesh ? mUpdateHandsMesh : (mUpdateHandsMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.UpdateHandsMesh")); }
			ScriptFunction CreateOverlayMesh() { return mCreateOverlayMesh ? mCreateOverlayMesh : (mCreateOverlayMesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CreateOverlayMesh")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PostInitAnimTree")); }
			ScriptFunction PlayWeaponEquip() { return mPlayWeaponEquip ? mPlayWeaponEquip : (mPlayWeaponEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PlayWeaponEquip")); }
			ScriptFunction OnPlayRetrieveAnim() { return mOnPlayRetrieveAnim ? mOnPlayRetrieveAnim : (mOnPlayRetrieveAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.OnPlayRetrieveAnim")); }
			ScriptFunction PlayWeaponPutDown() { return mPlayWeaponPutDown ? mPlayWeaponPutDown : (mPlayWeaponPutDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PlayWeaponPutDown")); }
			ScriptFunction WeaponEmpty() { return mWeaponEmpty ? mWeaponEmpty : (mWeaponEmpty = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.WeaponEmpty")); }
			ScriptFunction OnSwitchToWeapon() { return mOnSwitchToWeapon ? mOnSwitchToWeapon : (mOnSwitchToWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.OnSwitchToWeapon")); }
			ScriptFunction OnSwitchAwayFromWeapon() { return mOnSwitchAwayFromWeapon ? mOnSwitchAwayFromWeapon : (mOnSwitchAwayFromWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.OnSwitchAwayFromWeapon")); }
			ScriptFunction ClientWeaponSet() { return mClientWeaponSet ? mClientWeaponSet : (mClientWeaponSet = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ClientWeaponSet")); }
			ScriptFunction PlayFireEffects() { return mPlayFireEffects ? mPlayFireEffects : (mPlayFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PlayFireEffects")); }
			ScriptFunction PlayFireAnimation() { return mPlayFireAnimation ? mPlayFireAnimation : (mPlayFireAnimation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PlayFireAnimation")); }
			ScriptFunction ShakeView() { return mShakeView ? mShakeView : (mShakeView = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ShakeView")); }
			ScriptFunction ShouldFireTracer() { return mShouldFireTracer ? mShouldFireTracer : (mShouldFireTracer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ShouldFireTracer")); }
			ScriptFunction ShouldFireTracerBeam() { return mShouldFireTracerBeam ? mShouldFireTracerBeam : (mShouldFireTracerBeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ShouldFireTracerBeam")); }
			ScriptFunction SpawnTracerBeam() { return mSpawnTracerBeam ? mSpawnTracerBeam : (mSpawnTracerBeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.SpawnTracerBeam")); }
			ScriptFunction SpawnTracerEffect() { return mSpawnTracerEffect ? mSpawnTracerEffect : (mSpawnTracerEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.SpawnTracerEffect")); }
			ScriptFunction GetTracer() { return mGetTracer ? mGetTracer : (mGetTracer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetTracer")); }
			ScriptFunction GetNumRoundsCurrentlyInClip() { return mGetNumRoundsCurrentlyInClip ? mGetNumRoundsCurrentlyInClip : (mGetNumRoundsCurrentlyInClip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetNumRoundsCurrentlyInClip")); }
			ScriptFunction HasAmmo() { return mHasAmmo ? mHasAmmo : (mHasAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.HasAmmo")); }
			ScriptFunction HasAnyAmmo() { return mHasAnyAmmo ? mHasAnyAmmo : (mHasAnyAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.HasAnyAmmo")); }
			ScriptFunction AllowSwitchTo() { return mAllowSwitchTo ? mAllowSwitchTo : (mAllowSwitchTo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AllowSwitchTo")); }
			ScriptFunction CalculateRangeDamageFalloff() { return mCalculateRangeDamageFalloff ? mCalculateRangeDamageFalloff : (mCalculateRangeDamageFalloff = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CalculateRangeDamageFalloff")); }
			ScriptFunction InstantFire() { return mInstantFire ? mInstantFire : (mInstantFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.InstantFire")); }
			ScriptFunction ProcessInstantHit() { return mProcessInstantHit ? mProcessInstantHit : (mProcessInstantHit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ProcessInstantHit")); }
			ScriptFunction ServerNotifyHit() { return mServerNotifyHit ? mServerNotifyHit : (mServerNotifyHit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ServerNotifyHit")); }
			ScriptFunction ProcessInstantHit_Internal() { return mProcessInstantHit_Internal ? mProcessInstantHit_Internal : (mProcessInstantHit_Internal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ProcessInstantHit_Internal")); }
			ScriptFunction ModifyInstantHitDamage() { return mModifyInstantHitDamage ? mModifyInstantHitDamage : (mModifyInstantHitDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ModifyInstantHitDamage")); }
			ScriptFunction ProcessEffect() { return mProcessEffect ? mProcessEffect : (mProcessEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ProcessEffect")); }
			ScriptFunction UsesPower() { return mUsesPower ? mUsesPower : (mUsesPower = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.UsesPower")); }
			ScriptFunction IsDeviceCoolingDown() { return mIsDeviceCoolingDown ? mIsDeviceCoolingDown : (mIsDeviceCoolingDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.IsDeviceCoolingDown")); }
			ScriptFunction EnterDeployMode() { return mEnterDeployMode ? mEnterDeployMode : (mEnterDeployMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.EnterDeployMode")); }
			ScriptFunction ExitDeployMode() { return mExitDeployMode ? mExitDeployMode : (mExitDeployMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ExitDeployMode")); }
			ScriptFunction ToggleActivate() { return mToggleActivate ? mToggleActivate : (mToggleActivate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ToggleActivate")); }
			ScriptFunction PayAccuracyForJump() { return mPayAccuracyForJump ? mPayAccuracyForJump : (mPayAccuracyForJump = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PayAccuracyForJump")); }
			ScriptFunction PayAccuracyForWeaponSwitch() { return mPayAccuracyForWeaponSwitch ? mPayAccuracyForWeaponSwitch : (mPayAccuracyForWeaponSwitch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PayAccuracyForWeaponSwitch")); }
			ScriptFunction PayAccuracyForShot() { return mPayAccuracyForShot ? mPayAccuracyForShot : (mPayAccuracyForShot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PayAccuracyForShot")); }
			ScriptFunction AddSpreadWithAccuracy() { return mAddSpreadWithAccuracy ? mAddSpreadWithAccuracy : (mAddSpreadWithAccuracy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AddSpreadWithAccuracy")); }
			ScriptFunction ApplyKickbackToAim() { return mApplyKickbackToAim ? mApplyKickbackToAim : (mApplyKickbackToAim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ApplyKickbackToAim")); }
			ScriptFunction GetCurrentKickbackAmount() { return mGetCurrentKickbackAmount ? mGetCurrentKickbackAmount : (mGetCurrentKickbackAmount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetCurrentKickbackAmount")); }
			ScriptFunction AddKickback() { return mAddKickback ? mAddKickback : (mAddKickback = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AddKickback")); }
			ScriptFunction GetAdjustedAim() { return mGetAdjustedAim ? mGetAdjustedAim : (mGetAdjustedAim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetAdjustedAim")); }
			ScriptFunction ShowWeaponRedLowAmmoIndicator() { return mShowWeaponRedLowAmmoIndicator ? mShowWeaponRedLowAmmoIndicator : (mShowWeaponRedLowAmmoIndicator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ShowWeaponRedLowAmmoIndicator")); }
			ScriptFunction NeedToVisitInventoryStation() { return mNeedToVisitInventoryStation ? mNeedToVisitInventoryStation : (mNeedToVisitInventoryStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.NeedToVisitInventoryStation")); }
			ScriptFunction GetAmmoCount() { return mGetAmmoCount ? mGetAmmoCount : (mGetAmmoCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetAmmoCount")); }
			ScriptFunction UpdateLowAmmoWarning() { return mUpdateLowAmmoWarning ? mUpdateLowAmmoWarning : (mUpdateLowAmmoWarning = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.UpdateLowAmmoWarning")); }
			ScriptFunction GetProjectileClass() { return mGetProjectileClass ? mGetProjectileClass : (mGetProjectileClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetProjectileClass")); }
			ScriptFunction GetClientSideProjectileFireStartLoc() { return mGetClientSideProjectileFireStartLoc ? mGetClientSideProjectileFireStartLoc : (mGetClientSideProjectileFireStartLoc = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetClientSideProjectileFireStartLoc")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ProjectileFire")); }
			ScriptFunction DestroyOldestProjectileOverLimit() { return mDestroyOldestProjectileOverLimit ? mDestroyOldestProjectileOverLimit : (mDestroyOldestProjectileOverLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.DestroyOldestProjectileOverLimit")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.FireAmmunition")); }
			ScriptFunction MaxRange() { return mMaxRange ? mMaxRange : (mMaxRange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.MaxRange")); }
			ScriptFunction GetWeaponRange() { return mGetWeaponRange ? mGetWeaponRange : (mGetWeaponRange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetWeaponRange")); }
			ScriptFunction GetAimForCamera() { return mGetAimForCamera ? mGetAimForCamera : (mGetAimForCamera = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetAimForCamera")); }
			ScriptFunction CanClientRequestReloadNow() { return mCanClientRequestReloadNow ? mCanClientRequestReloadNow : (mCanClientRequestReloadNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CanClientRequestReloadNow")); }
			ScriptFunction HolderEnteredVehicle() { return mHolderEnteredVehicle ? mHolderEnteredVehicle : (mHolderEnteredVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.HolderEnteredVehicle")); }
			ScriptFunction GetReloadTime() { return mGetReloadTime ? mGetReloadTime : (mGetReloadTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetReloadTime")); }
			ScriptFunction ClearMeshAnimSeqNodes() { return mClearMeshAnimSeqNodes ? mClearMeshAnimSeqNodes : (mClearMeshAnimSeqNodes = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ClearMeshAnimSeqNodes")); }
			ScriptFunction CacheMeshAnimSeqNodes() { return mCacheMeshAnimSeqNodes ? mCacheMeshAnimSeqNodes : (mCacheMeshAnimSeqNodes = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CacheMeshAnimSeqNodes")); }
			ScriptFunction SuppressAnimNotifies() { return mSuppressAnimNotifies ? mSuppressAnimNotifies : (mSuppressAnimNotifies = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.SuppressAnimNotifies")); }
			ScriptFunction IsReloading() { return mIsReloading ? mIsReloading : (mIsReloading = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.IsReloading")); }
			ScriptFunction RequestReload() { return mRequestReload ? mRequestReload : (mRequestReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.RequestReload")); }
			ScriptFunction OnClientReloaded() { return mOnClientReloaded ? mOnClientReloaded : (mOnClientReloaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.OnClientReloaded")); }
			ScriptFunction PerformInactiveReload() { return mPerformInactiveReload ? mPerformInactiveReload : (mPerformInactiveReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PerformInactiveReload")); }
			ScriptFunction CalcAmountToLoad() { return mCalcAmountToLoad ? mCalcAmountToLoad : (mCalcAmountToLoad = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CalcAmountToLoad")); }
			ScriptFunction ClientFinishedReload() { return mClientFinishedReload ? mClientFinishedReload : (mClientFinishedReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ClientFinishedReload")); }
			ScriptFunction ResumeZoomOnReloadEnd() { return mResumeZoomOnReloadEnd ? mResumeZoomOnReloadEnd : (mResumeZoomOnReloadEnd = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ResumeZoomOnReloadEnd")); }
			ScriptFunction PlayReloadAnim() { return mPlayReloadAnim ? mPlayReloadAnim : (mPlayReloadAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PlayReloadAnim")); }
			ScriptFunction EnableWeaponReadyToFire() { return mEnableWeaponReadyToFire ? mEnableWeaponReadyToFire : (mEnableWeaponReadyToFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.EnableWeaponReadyToFire")); }
			ScriptFunction OnReloadComplete() { return mOnReloadComplete ? mOnReloadComplete : (mOnReloadComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.OnReloadComplete")); }
			ScriptFunction BeginAReload() { return mBeginAReload ? mBeginAReload : (mBeginAReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.BeginAReload")); }
			ScriptFunction AddCarriedAmmo() { return mAddCarriedAmmo ? mAddCarriedAmmo : (mAddCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AddCarriedAmmo")); }
			ScriptFunction UpdateReplicatedCarriedAmmo() { return mUpdateReplicatedCarriedAmmo ? mUpdateReplicatedCarriedAmmo : (mUpdateReplicatedCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.UpdateReplicatedCarriedAmmo")); }
			ScriptFunction GoInactiveDueToOffhand() { return mGoInactiveDueToOffhand ? mGoInactiveDueToOffhand : (mGoInactiveDueToOffhand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GoInactiveDueToOffhand")); }
			ScriptFunction StopFire() { return mStopFire ? mStopFire : (mStopFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.StopFire")); }
			ScriptFunction BeginFire() { return mBeginFire ? mBeginFire : (mBeginFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.BeginFire")); }
			ScriptFunction GetEquipTime() { return mGetEquipTime ? mGetEquipTime : (mGetEquipTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetEquipTime")); }
			ScriptFunction TimeWeaponPutDown() { return mTimeWeaponPutDown ? mTimeWeaponPutDown : (mTimeWeaponPutDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.TimeWeaponPutDown")); }
			ScriptFunction GetPutDownTime() { return mGetPutDownTime ? mGetPutDownTime : (mGetPutDownTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetPutDownTime")); }
			ScriptFunction CanFireOffhandNow() { return mCanFireOffhandNow ? mCanFireOffhandNow : (mCanFireOffhandNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CanFireOffhandNow")); }
			ScriptFunction ServerOnClientDeniedFire() { return mServerOnClientDeniedFire ? mServerOnClientDeniedFire : (mServerOnClientDeniedFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ServerOnClientDeniedFire")); }
			ScriptFunction ApplyEquipEffect() { return mApplyEquipEffect ? mApplyEquipEffect : (mApplyEquipEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ApplyEquipEffect")); }
			ScriptFunction RemoveEquipEffect() { return mRemoveEquipEffect ? mRemoveEquipEffect : (mRemoveEquipEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.RemoveEquipEffect")); }
			ScriptFunction SetPosition() { return mSetPosition ? mSetPosition : (mSetPosition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.SetPosition")); }
			ScriptFunction LagRot() { return mLagRot ? mLagRot : (mLagRot = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.LagRot")); }
			ScriptFunction ShouldRefire() { return mShouldRefire ? mShouldRefire : (mShouldRefire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ShouldRefire")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.StartFire")); }
			ScriptFunction Activate() { return mActivate ? mActivate : (mActivate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.Activate")); }
			ScriptFunction AnnounceInvalidPickup() { return mAnnounceInvalidPickup ? mAnnounceInvalidPickup : (mAnnounceInvalidPickup = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AnnounceInvalidPickup")); }
			ScriptFunction DenyPickupQuery() { return mDenyPickupQuery ? mDenyPickupQuery : (mDenyPickupQuery = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.DenyPickupQuery")); }
			ScriptFunction PutDownFast() { return mPutDownFast ? mPutDownFast : (mPutDownFast = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PutDownFast")); }
			ScriptFunction ForceEndFire() { return mForceEndFire ? mForceEndFire : (mForceEndFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ForceEndFire")); }
			ScriptFunction CanAutoDeviceFireNow() { return mCanAutoDeviceFireNow ? mCanAutoDeviceFireNow : (mCanAutoDeviceFireNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CanAutoDeviceFireNow")); }
			ScriptFunction CustomFire() { return mCustomFire ? mCustomFire : (mCustomFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CustomFire")); }
			ScriptFunction AttachMuzzleFlash() { return mAttachMuzzleFlash ? mAttachMuzzleFlash : (mAttachMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.AttachMuzzleFlash")); }
			ScriptFunction WeaponPlaySoundLocal() { return mWeaponPlaySoundLocal ? mWeaponPlaySoundLocal : (mWeaponPlaySoundLocal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.WeaponPlaySoundLocal")); }
			ScriptFunction ClientWeaponThrown() { return mClientWeaponThrown ? mClientWeaponThrown : (mClientWeaponThrown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ClientWeaponThrown")); }
			ScriptFunction UpdateShotsFired() { return mUpdateShotsFired ? mUpdateShotsFired : (mUpdateShotsFired = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.UpdateShotsFired")); }
			ScriptFunction StartZoom() { return mStartZoom ? mStartZoom : (mStartZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.StartZoom")); }
			ScriptFunction EndZoom() { return mEndZoom ? mEndZoom : (mEndZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.EndZoom")); }
			ScriptFunction CanViewZoom() { return mCanViewZoom ? mCanViewZoom : (mCanViewZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CanViewZoom")); }
			ScriptFunction SetAltReticule() { return mSetAltReticule ? mSetAltReticule : (mSetAltReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.SetAltReticule")); }
			ScriptFunction ResetAltReticule() { return mResetAltReticule ? mResetAltReticule : (mResetAltReticule = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ResetAltReticule")); }
			ScriptFunction CalcWeaponFire() { return mCalcWeaponFire ? mCalcWeaponFire : (mCalcWeaponFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.CalcWeaponFire")); }
			ScriptFunction PlayDryFireZoom() { return mPlayDryFireZoom ? mPlayDryFireZoom : (mPlayDryFireZoom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.PlayDryFireZoom")); }
			ScriptFunction BuffMaxCarriedAmmo() { return mBuffMaxCarriedAmmo ? mBuffMaxCarriedAmmo : (mBuffMaxCarriedAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.BuffMaxCarriedAmmo")); }
			ScriptFunction GetMaxAmmoCount() { return mGetMaxAmmoCount ? mGetMaxAmmoCount : (mGetMaxAmmoCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetMaxAmmoCount")); }
			ScriptFunction GetBasePickupAmmoAmount() { return mGetBasePickupAmmoAmount ? mGetBasePickupAmmoAmount : (mGetBasePickupAmmoAmount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.GetBasePickupAmmoAmount")); }
			ScriptFunction ServerStartFire() { return mServerStartFire ? mServerStartFire : (mServerStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.ServerStartFire")); }
			ScriptFunction UpdateWeaponMICs() { return mUpdateWeaponMICs ? mUpdateWeaponMICs : (mUpdateWeaponMICs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice.UpdateWeaponMICs")); }
		}
	}
	static struct Constants
	{
		enum
		{
			THR_SPINFUSOR = 1,
			THR_SMG = 2,
			THR_RIFLE = 3,
			THR_LOCKED_ON = 4,
			THR_CROSSBOW = 5,
			THR_FLAME_THROWER = 6,
			THR_CHAIN_GUN = 7,
			THR_MISSILE = 8,
			THR_NANITE = 9,
			THR_SHOTGUN = 10,
			THR_UNKNOWN = 11,
			THR_LASER = 12,
			THR_CH_V13 = 13,
			THR_SCOPE = 14,
			THR_STANDARD = 15,
			THR_GRENADE_LAUNCHER = 16,
			THR_MELEE = 17,
			THR_SHRIKE = 18,
			THR_FREE_SPECTATOR = 19,
			THR_RED_DOT = 20,
			THR_BXT1 = 21,
			THR_PHASERIFLE = 22,
			THR_SAP20 = 23,
			THR_PLASMAGUN = 24,
			HAE_KILL_STREAK_LEVEL_1 = 1,
			HAE_KILL_STREAK_LEVEL_2 = 2,
			HAE_KILL_STREAK_LEVEL_3 = 3,
			HAE_KILL_STREAK_LEVEL_4 = 4,
			HAE_KILL_STREAK_LEVEL_5 = 5,
			TRHUD_PACK_STEALTH = 1,
			TRHUD_PACK_DAMAGE = 2,
			TRHUD_PACK_OMNI = 3,
			TRHUD_PACK_ERECHARGE = 4,
			TRHUD_PACK_AIRTURRET = 5,
			TRHUD_PACK_BLINK = 6,
			TRHUD_PACK_ENERGY = 7,
			TRHUD_PACK_SHIELD = 8,
			TRHUD_PACK_JAMMER = 9,
			TRHUD_PACK_LIGHTTURRET = 10,
			TRHUD_PACK_FORCEFIELD = 11,
			TRHUD_PACK_WALLTURRET = 12,
			TRHUD_PACK_REGEN = 13,
			TRHUD_PACK_DROPJAMMER = 14,
			TRHUD_TBD1 = 15,
			TRHUD_TBD2 = 16,
			TRHUD_TBD3 = 17,
			TRHUD_BELT_STICKYGREN = 18,
			TRHUD_BELT_FRAG = 19,
			TRHUD_BELT_CLAYMORE = 20,
			TRHUD_BELT_NITRON = 21,
			TRHUD_BELT_MOTIONALARM = 22,
			TRHUD_BELT_SPIKEGREN = 23,
			TRHUD_BELT_WHITEOUT = 24,
			TRHUD_BELT_APGREN = 25,
			TRHUD_BELT_STGREN = 26,
			TRHUD_BELT_PRISMMINES = 27,
			TRHUD_BELT_FLARE = 28,
			TRHUD_BELT_EMPGREN = 29,
			TRHUD_BELT_MINES = 30,
			TRHUD_BELT_DISKTOSS = 31,
			TRHUD_TBD4 = 32,
			TRHUD_TBD5 = 33,
			TRHUD_MEDAL_ASSIST = 34,
			TRHUD_CLAYMOREMINE = 35,
			TRHUD_PRISMMINE = 36,
			TRHUD_LIGHTTURRET = 37,
			TRHUD_AATURRET = 38,
			TRHUD_MOTIONSENSOR = 39,
			TRHUD_MINES = 40,
			TRHUD_FORCESHIELD = 41,
			TRHUD_DROPJAMMER = 42,
			TRHUD_GENERATOR = 43,
			TRHUD_SKIING = 44,
			TRHUD_MEDAL_KILLINGSPREE = 45,
			TRHUD_MEDAL_KILLINGRAMPAGE = 46,
			TRHUD_MEDAL_UNSTOPPABLE = 47,
			TRHUD_MEDAL_RELENTLESS = 48,
			TRHUD_MEDAL_THESLAYER = 49,
			TRHUD_MEDAL_SNIPINGSPREE = 50,
			TRHUD_MEDAL_MARKSMAN = 51,
			TRHUD_MEDAL_SHARPSHOOTER = 52,
			TRHUD_MEDAL_AIRMAIL = 53,
			TRHUD_MEDAL_DEMOLITIONSEXPERT = 54,
			TRHUD_MEDAL_HURTLOCKER = 55,
			TRHUD_MEDAL_CLASSICSPREE = 56,
			TRHUD_MEDAL_DISKJOCKEY = 57,
			TRHUD_MEDAL_TRIBALFANATIC = 58,
			TRHUD_MEDAL_DOUBLEKILL = 59,
			TRHUD_MEDAL_TRIPLEKILL = 60,
			TRHUD_MEDAL_QUATRAKILL = 61,
			TRHUD_MEDAL_ULTRAKILL = 62,
			TRHUD_MEDAL_TEAMKILL = 63,
			TRHUD_MEDAL_NOJOY = 64,
			TRHUD_MEDAL_REVENGE = 65,
			TRHUD_MEDAL_AFTERMATH = 66,
			TRHUD_MEDAL_FIRSTBLOOD = 67,
			TRHUD_MEDAL_BLUEPLATE = 68,
			TRHUD_MEDAL_STICKYKILL = 69,
			TRHUD_MEDAL_HEADSHOT = 70,
			TRHUD_MEDAL_ARTILLERYSHOT = 71,
			TRHUD_MEDAL_MARTIALART = 72,
			TRHUD_MEDAL_SQUISH = 73,
			TRHUD_MEDAL_FLAGGOLD = 74,
			TRHUD_MEDAL_FLAGSILVER = 75,
			TRHUD_MEDAL_FLAGBRONZE = 75,
			TRHUD_MEDAL_FLAGLLAMA = 75,
			TRHUD_MEDAL_GENERHATER = 76,
			TRHUD_MEDAL_RABBITHUNTER = 77,
			TRHUD_MEDAL_CAERBANNOG = 78,
			TRHUD_MEDAL_FINALBLOW = 79,
			TRHUD_MEDAL_GENDEFENSE = 76,
			TRHUD_MEDAL_FLAGDEFENSE = 75,
			TRHUD_MEDAL_VDESTROY = 73,
			TRHUD_MEDAL_HOTAIR = 284,
			TRICON_RANK_1 = 80,
			TRICON_RANK_2 = 81,
			TRICON_RANK_3 = 82,
			TRICON_RANK_4 = 83,
			TRICON_RANK_5 = 84,
			TRICON_RANK_6 = 85,
			TRICON_RANK_7 = 86,
			TRICON_RANK_8 = 87,
			TRICON_RANK_9 = 88,
			TRICON_RANK_10 = 89,
			TRICON_RANK_11 = 90,
			TRICON_RANK_12 = 91,
			TRICON_RANK_13 = 92,
			TRICON_RANK_14 = 93,
			TRICON_RANK_15 = 94,
			TRICON_RANK_16 = 95,
			TRICON_RANK_17 = 96,
			TRICON_RANK_18 = 97,
			TRICON_RANK_19 = 98,
			TRICON_RANK_20 = 99,
			TRICON_RANK_21 = 100,
			TRICON_RANK_22 = 101,
			TRICON_RANK_23 = 102,
			TRICON_RANK_24 = 103,
			TRICON_RANK_25 = 104,
			TRICON_RANK_26 = 105,
			TRICON_RANK_27 = 106,
			TRICON_RANK_28 = 107,
			TRICON_RANK_29 = 108,
			TRICON_RANK_30 = 109,
			TRICON_RANK_31 = 110,
			TRICON_RANK_32 = 111,
			TRICON_RANK_33 = 112,
			TRICON_RANK_34 = 113,
			TRICON_RANK_35 = 114,
			TRICON_RANK_36 = 115,
			TRICON_RANK_37 = 116,
			TRICON_RANK_38 = 117,
			TRICON_RANK_39 = 118,
			TRICON_RANK_40 = 119,
			TRICON_RANK_41 = 120,
			TRICON_RANK_42 = 121,
			TRICON_RANK_43 = 122,
			TRICON_RANK_44 = 123,
			TRICON_RANK_45 = 124,
			TRICON_RANK_46 = 125,
			TRICON_RANK_47 = 126,
			TRICON_RANK_48 = 127,
			TRICON_RANK_49 = 128,
			TRICON_RANK_50 = 129,
			TRICON_KILLTYPE_EXPLOSIVE = 130,
			TRICON_KILLTYPE_STICKY = 131,
			TRICON_KILLTYPE_SQUISH = 132,
			TRICON_KILLTYPE_MELEE = 133,
			TRICON_KILLTYPE_FALLING = 134,
			TRICON_KILLTYPE_VEHICLE = 135,
			TRICON_KILLTYPE_BULLET = 136,
			TRICON_KILLTYPE_SNIPER = 137,
			TRICON_KILLTYPE_BASE_TURRET = 138,
			TRICON_KILLTYPE_HEADSHOT = 139,
			TRICON_KILLTYPE_GENERIC = 140,
			TRICON_KILLTYPE_SPINFUSOR = 141,
			TRICON_KILLTYPE_TURRET = 142,
			TRICON_ACCOLADE_BASE_DESTROY = 143,
			TRICON_ACCOLADE_BASE_REPAIR = 144,
			TRICON_ACCOLADE_MIRACLE = 145,
			TRICON_ACCOLADE_ULTRAKILLNORED = 146,
			TRICON_ACCOLADE_NOTAMONGEQUALS = 147,
			TRICON_ACCOLADE_EXPLOSIVESPREE = 148,
			TRICON_ACCOLADE_ULTRAFASTGRAB = 149,
			TRICON_ACCOLADE_ONEMANARMY = 150,
			TRICON_ACCOLADE_GAMEWINNER = 151,
			TRICON_ACCOLADE_UNITEDWESTAND = 152,
			TRICON_ACCOLADE_DOUBLEDOWN = 153,
			TRICON_ACCOLADE_FASTFLAGGRAB = 154,
			TRICON_ACCOLADE_SHRIKEDOWN = 155,
			TRICON_ACCOLADE_GRAVCYCLEDOWN = 156,
			TRICON_ACCOLADE_BEOWULFDOWN = 157,
			TRICON_ACCOLADE_FINALBLOW = 158,
			TRICON_ACCOLADE_BENCHEM = 159,
			TRICON_ACCOLADE_LASTMANSTANDING = 160,
			TRICON_ACCOLADE_TRIBALHONOR = 161,
			TRICON_ACCOLADE_FLAGKILLER = 162,
			TRICON_ACCOLADE_GAMECOMPLETE = 163,
			TRICON_ACCOLADE_FLAGDEFENSE = 164,
			TRICON_ACCOLADE_GENERATORDEFENSE = 165,
			TRICON_ACCOLADE_LLAMAGRAB = 166,
			TRICON_ACCOLADE_EGRAB = 167,
			TRICON_ACCOLADE_TURRETDESTROYED = 168,
			TRICON_ACCOLADE_ALTFLAGCARRY = 169,
			TRICON_ACCOLADE_HOLDTHELINE = 281,
			TRICON_ACCOLADE_CAPTUREANDHOLD = 282,
			TRICON_BADGE_FLAGDEFENSE_4 = 170,
			TRICON_BADGE_FLAGDEFENSE_3 = 171,
			TRICON_BADGE_FLAGDEFENSE_2 = 172,
			TRICON_BADGE_FLAGDEFENSE_1 = 173,
			TRICON_BADGE_OPERATOR_4 = 174,
			TRICON_BADGE_OPERATOR_3 = 175,
			TRICON_BADGE_OPERATOR_2 = 176,
			TRICON_BADGE_OPERATOR_1 = 177,
			TRICON_BADGE_CALLINKILLS_4 = 178,
			TRICON_BADGE_CALLINKILLS_3 = 179,
			TRICON_BADGE_CALLINKILLS_2 = 180,
			TRICON_BADGE_CALLINKILLS_1 = 181,
			TRICON_BADGE_MELEEKILLS_4 = 182,
			TRICON_BADGE_MELEEKILLS_3 = 183,
			TRICON_BADGE_MELEEKILLS_2 = 184,
			TRICON_BADGE_MELEEKILLS_1 = 185,
			TRICON_BADGE_ONEMANARMY_4 = 186,
			TRICON_BADGE_ONEMANARMY_3 = 187,
			TRICON_BADGE_ONEMANARMY_2 = 188,
			TRICON_BADGE_ONEMANARMY_1 = 189,
			TRICON_BADGE_FLAGCAPPER_4 = 190,
			TRICON_BADGE_FLAGCAPPER_3 = 191,
			TRICON_BADGE_FLAGCAPPER_2 = 192,
			TRICON_BADGE_FLAGCAPPER_1 = 193,
			TRICON_BADGE_TOUROFDUTY_4 = 194,
			TRICON_BADGE_TOUROFDUTY_3 = 195,
			TRICON_BADGE_TOUROFDUTY_2 = 196,
			TRICON_BADGE_TOUROFDUTY_1 = 197,
			TRICON_BADGE_MULTIKILL_4 = 198,
			TRICON_BADGE_MULTIKILL_3 = 199,
			TRICON_BADGE_MULTIKILL_2 = 200,
			TRICON_BADGE_MULTIKILL_1 = 201,
			TRICON_BADGE_COMBATSTAR_4 = 202,
			TRICON_BADGE_COMBATSTAR_3 = 203,
			TRICON_BADGE_COMBATSTAR_2 = 204,
			TRICON_BADGE_COMBATSTAR_1 = 205,
			TRICON_BADGE_CROSSCOUNTRY_4 = 206,
			TRICON_BADGE_CROSSCOUNTRY_3 = 207,
			TRICON_BADGE_CROSSCOUNTRY_2 = 208,
			TRICON_BADGE_CROSSCOUNTRY_1 = 209,
			TRICON_BADGE_POWERPLAYER_4 = 210,
			TRICON_BADGE_POWERPLAYER_3 = 211,
			TRICON_BADGE_POWERPLAYER_2 = 212,
			TRICON_BADGE_POWERPLAYER_1 = 213,
			TRICON_BADGE_DEMOMAN_4 = 214,
			TRICON_BADGE_DEMOMAN_3 = 215,
			TRICON_BADGE_DEMOMAN_2 = 216,
			TRICON_BADGE_DEMOMAN_1 = 217,
			TRICON_BADGE_SPEEDRUNNER_4 = 218,
			TRICON_BADGE_SPEEDRUNNER_3 = 219,
			TRICON_BADGE_SPEEDRUNNER_2 = 220,
			TRICON_BADGE_SPEEDRUNNER_1 = 221,
			TRICON_BADGE_GOODDRIVER_4 = 222,
			TRICON_BADGE_GOODDRIVER_3 = 223,
			TRICON_BADGE_GOODDRIVER_2 = 224,
			TRICON_BADGE_GOODDRIVER_1 = 225,
			TRICON_BADGE_PURPLEHEART_4 = 226,
			TRICON_BADGE_PURPLEHEART_3 = 227,
			TRICON_BADGE_PURPLEHEART_2 = 228,
			TRICON_BADGE_PURPLEHEART_1 = 229,
			TRICON_BADGE_HAPPENSTOUSALL = 230,
			TRICON_BADGE_INVSTATION = 231,
			TRICON_BADGE_ANTIVEHICLE_4 = 232,
			TRICON_BADGE_ANTIVEHICLE_3 = 233,
			TRICON_BADGE_ANTIVEHICLE_2 = 234,
			TRICON_BADGE_ANTIVEHICLE_1 = 235,
			TRICON_BADGE_UTILITYBELT_4 = 236,
			TRICON_BADGE_UTILITYBELT_3 = 237,
			TRICON_BADGE_UTILITYBELT_2 = 238,
			TRICON_BADGE_UTILITYBELT_1 = 239,
			TRICON_BADGE_ONCALL_4 = 240,
			TRICON_BADGE_ONCALL_3 = 241,
			TRICON_BADGE_ONCALL_2 = 242,
			TRICON_BADGE_ONCALL_1 = 243,
			TRICON_BADGE_SUPPORT_4 = 244,
			TRICON_BADGE_SUPPORT_3 = 245,
			TRICON_BADGE_SUPPORT_2 = 246,
			TRICON_BADGE_SUPPORT_1 = 247,
			TRICON_BADGE_MARKSMAN_4 = 248,
			TRICON_BADGE_MARKSMAN_3 = 249,
			TRICON_BADGE_MARKSMAN_2 = 250,
			TRICON_BADGE_MARKSMAN_1 = 251,
			TRICON_BADGE_ASSISTOR_4 = 252,
			TRICON_BADGE_ASSISTOR_3 = 253,
			TRICON_BADGE_ASSISTOR_2 = 254,
			TRICON_BADGE_ASSISTOR_1 = 255,
			TRICON_BADGE_BUILDER_4 = 256,
			TRICON_BADGE_BUILDER_3 = 257,
			TRICON_BADGE_BUILDER_2 = 258,
			TRICON_BADGE_BUILDER_1 = 259,
			TRICON_BADGE_GOINGFAST_4 = 260,
			TRICON_BADGE_GOINGFAST_3 = 261,
			TRICON_BADGE_GOINGFAST_2 = 262,
			TRICON_BADGE_GOINGFAST_1 = 263,
			RANK_XP_1 = 0,
			RANK_XP_2 = 1350,
			RANK_XP_3 = 2781,
			RANK_XP_4 = 4298,
			RANK_XP_5 = 5906,
			RANK_XP_6 = 11212,
			RANK_XP_7 = 16836,
			RANK_XP_8 = 22798,
			RANK_XP_9 = 31741,
			RANK_XP_10 = 41130,
			RANK_XP_11 = 50990,
			RANK_XP_12 = 61342,
			RANK_XP_13 = 76870,
			RANK_XP_14 = 93020,
			RANK_XP_15 = 109815,
			RANK_XP_16 = 127283,
			RANK_XP_17 = 145449,
			RANK_XP_18 = 172698,
			RANK_XP_19 = 200765,
			RANK_XP_20 = 229673,
			RANK_XP_21 = 259449,
			RANK_XP_22 = 290118,
			RANK_XP_23 = 321707,
			RANK_XP_24 = 369091,
			RANK_XP_25 = 417896,
			RANK_XP_26 = 468166,
			RANK_XP_27 = 519943,
			RANK_XP_28 = 573274,
			RANK_XP_29 = 628205,
			RANK_XP_30 = 684783,
			RANK_XP_31 = 743059,
			RANK_XP_32 = 803084,
			RANK_XP_33 = 864909,
			RANK_XP_34 = 928589,
			RANK_XP_35 = 994179,
			RANK_XP_36 = 1061737,
			RANK_XP_37 = 1131321,
			RANK_XP_38 = 1202994,
			RANK_XP_39 = 1276816,
			RANK_XP_40 = 1352853,
			RANK_XP_41 = 1431171,
			RANK_XP_42 = 1511839,
			RANK_XP_43 = 1594926,
			RANK_XP_44 = 1680507,
			RANK_XP_45 = 1768654,
			RANK_XP_46 = 1859447,
			RANK_XP_47 = 1952963,
			RANK_XP_48 = 2049284,
			RANK_XP_49 = 2148495,
			RANK_XP_50 = 2250682,
			ACCOLADE_TYPE_MISC = 0,
			ACCOLADE_TYPE_MULTIKILL = 1,
			ACCOLADE_TYPE_KILLSTREAK = 2,
			TRICON_PERK_ICON_WIP = 1,
			TRICON_PERK_BONUS_KILL_CREDITS = 1,
			TRICON_PERK_STICKY_HANDS = 2,
			TRICON_PERK_REDUCED_VEHICLE_COST = 3,
			TRICON_PERK_REDUCED_SELF_DAMAGE = 4,
			TRICON_PERK_REDUCED_RUN_OVER = 5,
			TRICON_PERK_REDUCED_BASE_UPGRADE_COST = 6,
			TRICON_PERK_REDUCED_FALL_DMG = 7,
			TRICON_PERK_REDUCED_AIR_VEHICLE_COST = 8,
			TRICON_PERK_TRAP_DETECTION = 9,
			TRICON_PERK_PICKUP_ENERGY_HEALTH = 10,
			TRICON_PERK_MELEE_FLAG_DROP = 11,
			TRICON_PERK_EXTRA_MINES = 12,
			TRICON_PERK_EXTRA_ENERGY = 13,
			TRICON_PERK_EXTRA_GRENADE_PICKUP = 14,
			TRICON_PERK_EXTRA_AMMO = 15,
			TRICON_PERK_EXTRA_GRENADE = 16,
			TRICON_PERK_BEOWULF_HEALTH_INCREASE = 17,
			TRICON_PERK_EJECTION_SEAT = 18,
			TRICON_PERK_ORBITAL_STRIKE = 19,
			TRICON_PERK_REDUCED_MELEE_DAMAGE = 20,
			TRICON_PERK_MELEE_BACKSTAB = 21,
			TRICON_PERK_DEMOLITIONS = 22,
			TRICON_PERK_SQUIRRELLY = 23,
			TRICON_PERK_STEALTHY = 24,
			TRICON_PERK_ULTRA_CAPACITOR = 25,
			TRICON_PERK_DETERMINATION = 26,
			TRICON_SKILL_SPEED = 1,
			TRICON_SKILL_ENERGY = 2,
			TRICON_SKILL_PING = 3,
			TRICON_SKILL_AMMO = 4,
			TRICON_SKILL_ANTI_ARMOR = 5,
			TRICON_SKILL_GRENADE = 6,
			TRICON_SKILL_RADIUS = 7,
			TRICON_SKILL_HEALTH = 8,
			TRICON_SKILL_BOOT = 9,
			TRICON_SKILL_TIMER = 10,
			TRICON_CLASS_SENTINEL = 1,
			TRICON_CLASS_PATHFINDER = 2,
			TRICON_CLASS_JUMPER = 3,
			TRICON_CLASS_INFILTRATOR = 4,
			TRICON_CLASS_WARDER = 30,
			TRICON_CLASS_TECHNICIAN = 31,
			TRICON_CLASS_SOLDIER = 32,
			TRICON_CLASS_SCRAMBLER = 33,
			TRICON_CLASS_RANGER = 34,
			TRICON_CLASS_RAIDER = 35,
			TRICON_CLASS_ENGINEER = 36,
			TRICON_CLASS_ROOK = 60,
			TRICON_CLASS_MARAUDER = 61,
			TRICON_CLASS_JUGGERNAUT = 62,
			TRICON_CLASS_DOOMBRINGER = 63,
			TRICON_CLASS_BRUTE = 64,
			TRICON_CLASS_WIP = 88,
			ICON_UPGRADE_NONE = 0,
			MOD_TYPE_NONE = 1,
			MOD_TYPE_HEALTH = 2,
			MOD_TYPE_MASSPCT = 3,
			MOD_TYPE_RADARLINK = 4,
			MOD_TYPE_FLAGREACH = 5,
			MOD_TYPE_BUILDUPPCT = 6,
			MOD_TYPE_CLOTHESLINE = 7,
			MOD_TYPE_STICKYHANDS = 8,
			MOD_TYPE_MAXSKISPEED = 9,
			MOD_TYPE_EXTRAENERGY = 10,
			MOD_TYPE_EJECTIONSEAT = 11,
			MOD_TYPE_SELFDAMAGEPCT = 12,
			MOD_TYPE_REPAIRRATEPCT = 13,
			MOD_TYPE_EXTRAMINESOUT = 14,
			MOD_TYPE_VEHICLEEXTRAHEALTH = 15,
			MOD_TYPE_GROUNDSPEEDPCT = 16,
			MOD_TYPE_ENERGYDRAINPCT = 17,
			MOD_TYPE_UPGRADECOSTPCT = 18,
			MOD_TYPE_CANDETECTTRAPS = 19,
			MOD_TYPE_SPLATDAMAGEPCT = 20,
			MOD_TYPE_WEAPONSWITCHPCT = 21,
			MOD_TYPE_POTENTIALENERGY = 22,
			MOD_TYPE_MAXJETTINGSPEED = 23,
			MOD_TYPE_CREDITSFROMKILLS = 24,
			MOD_TYPE_TERMINALSKISPEED = 25,
			MOD_TYPE_MAXSKICONTROLPCT = 26,
			MOD_TYPE_HASDETERMINATION = 27,
			MOD_TYPE_DEPLOYABLEHEALTH = 28,
			MOD_TYPE_EXTRAOFFHANDAMMO = 29,
			MOD_TYPE_EXTRAPRIMARYAMMO = 30,
			MOD_TYPE_PRIMARYRELOADPCT = 31,
			MOD_TYPE_SENSORDISTANCEPCT = 32,
			MOD_TYPE_PACKENERGYCOSTPCT = 33,
			MOD_TYPE_AMMOFROMPICKUPPCT = 34,
			MOD_TYPE_TIMETOREGENENERGY = 35,
			MOD_TYPE_SECONDARYRELOADPCT = 36,
			MOD_TYPE_EXTRASECONDARYAMMO = 37,
			MOD_TYPE_ENERGYREGENRATEPCT = 38,
			MOD_TYPE_HEALTHREGENRATEPCT = 39,
			MOD_TYPE_DEPLOYABLERANGEPCT = 40,
			MOD_TYPE_JAMMERPACKRADIUSPCT = 41,
			MOD_TYPE_BLINKPACKPOTENCYPCT = 42,
			MOD_TYPE_PEAKSKICONTROLSPEED = 43,
			MOD_TYPE_CANCALLINSUPPLYDROP = 44,
			MOD_TYPE_EXTRADEPLOYABLESOUT = 45,
			MOD_TYPE_HEALTHFROMPICKUPPCT = 46,
			MOD_TYPE_ENERGYFROMPICKUPPCT = 47,
			MOD_TYPE_TERMINALJETTINGSPEED = 48,
			MOD_TYPE_TIMETOREGENHEALTHPCT = 49,
			MOD_TYPE_VEHICLECOSTPCT = 50,
			MOD_TYPE_SKICONTROLSIGMASQUARE = 51,
			MOD_TYPE_RECEIVEMELEEDAMAGEPCT = 52,
			MOD_TYPE_VICTIMDROPFLAGONMELEE = 53,
			MOD_TYPE_PRIMARYWEAPONRANGEPCT = 54,
			MOD_TYPE_OFFHANDDAMAGERADIUSPCT = 55,
			MOD_TYPE_TURRETACQUIRETARGETPCT = 56,
			MOD_TYPE_WHITEOUTINTERPSPEEDPCT = 57,
			MOD_TYPE_BACKSTABMELEEDAMAGEPCT = 58,
			MOD_TYPE_MAXSTOPPINGDISTANCEPCT = 59,
			MOD_TYPE_SECONDARYWEAPONRANGEPCT = 60,
			MOD_TYPE_EXTRAGRENADESFROMPICKUP = 61,
			MOD_TYPE_SHIELDPACKEFFECTIVENESS = 62,
			MOD_TYPE_STEALTHPACKPULSETIMEPCT = 63,
			MOD_TYPE_PRIMARYINCREASEDCLIPSIZE = 64,
			MOD_TYPE_EXTRACREDITSFROMBELTKILLS = 65,
			MOD_TYPE_TURRETARMORPENETRATIONPCT = 66,
			MOD_TYPE_SECONDARYINCREASEDCLIPSIZE = 67,
			MOD_TYPE_OFFHANDARMORPENETRATIONPCT = 68,
			MOD_TYPE_PRIMARYARMORPENETRATIONPCT = 69,
			MOD_TYPE_RUNOVERDAMAGEPROTECTIONPCT = 70,
			MOD_TYPE_PRIMARYWEAPONENERGYCOSTPCT = 71,
			MOD_TYPE_ACQUIRETIMEBYENEMYTURRETPCT = 72,
			MOD_TYPE_SECONDARYARMORPENETRATIONPCT = 73,
			MOD_TYPE_VEHICLEEXTRAENERGY = 74,
			MOD_TYPE_AMMOPICKUPREACH = 75,
			MOD_TYPE_VEHICLEPASSENGERDMGPROTPCT = 76,
			MOD_TYPE_DAMAGEREPAIRENEMYOBJECTIVES = 77,
			MOD_TYPE_POTENTIALENERGYFALLDAMAGE = 78,
			MOD_TYPE_FASTERTHROWBELTBUFFPCT = 79,
			MOD_TYPE_IGNOREGRENADESECONDARYONSELF = 80,
			MOD_TYPE_POTENTIALENERGYDMGTRANSFERPCT = 81,
			MOD_TYPE_FLAGREACHTIER = 82,
			MOD_TYPE_SONICPUNCH = 83,
			MOD_TYPE_SONICPUNCHDIST = 84,
			MOD_TYPE_SONICPUNCHKNOCKBACK = 85,
			MOD_TYPE_RAGE = 86,
			MOD_TYPE_RAGEENERGYREGEN = 87,
			MOD_TYPE_RAGETIMELENGTH = 88,
			MOD_TYPE_RAGEHEALTHRESTOREPCT = 89,
			MOD_TYPE_IGNOREPULSESTEALTHTIME = 90,
			MOD_TYPE_RAGEMASSREDUCTION = 91,
			MOD_TYPE_REPAIRDEPLOYABLERATEPCT = 92,
			VALIDATE_HIT_DEFER = -1,
			VALIDATE_HIT_REJECT = 0,
			VALIDATE_HIT_APPROVE = 1,
		}
	}
	struct DeviceUpgrade
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrDevice.DeviceUpgrade")); }
		@property final auto ref
		{
			int DatabaseItemId() { return *cast(int*)(cast(size_t)&this + 4); }
			int IconId() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptArray!(TrDevice.DeviceModification) Modifications() { return *cast(ScriptArray!(TrDevice.DeviceModification)*)(cast(size_t)&this + 8); }
		}
	}
	struct EffectInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrDevice.EffectInfo")); }
		@property final auto ref
		{
			float interval() { return *cast(float*)(cast(size_t)&this + 20); }
			float Value() { return *cast(float*)(cast(size_t)&this + 16); }
			float Lifetime() { return *cast(float*)(cast(size_t)&this + 12); }
			TrObject.EffectType Type() { return *cast(TrObject.EffectType*)(cast(size_t)&this + 8); }
			ScriptClass effectClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
			ubyte FireModeNum() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		}
	}
	struct ReplicatedAmmoCount
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrDevice.ReplicatedAmmoCount")); }
		@property final auto ref
		{
			int ClipAmmoCount() { return *cast(int*)(cast(size_t)&this + 4); }
			int CarriedAmmoCount() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct DeviceModification
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrDevice.DeviceModification")); }
		@property final auto ref
		{
			float Value() { return *cast(float*)(cast(size_t)&this + 4); }
			int ModType() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			int m_nCarriedAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 1596); }
			int m_nIconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1688); }
			ScriptArray!(TrDevice.DeviceUpgrade) Upgrades() { return *cast(ScriptArray!(TrDevice.DeviceUpgrade)*)(cast(size_t)cast(void*)this + 2088); }
			ScriptString UpgradeDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2028); }
			int DBXPActivityId() { return *cast(int*)(cast(size_t)cast(void*)this + 1484); }
			ScriptString InfoPanelDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2000); }
			int InfoPanelDamage() { return *cast(int*)(cast(size_t)cast(void*)this + 2012); }
			int InfoPanelRadius() { return *cast(int*)(cast(size_t)cast(void*)this + 2016); }
			int InfoPanelFireRate() { return *cast(int*)(cast(size_t)cast(void*)this + 2020); }
			int InfoPanelClipSize() { return *cast(int*)(cast(size_t)cast(void*)this + 2024); }
			int DBWeaponId() { return *cast(int*)(cast(size_t)cast(void*)this + 1472); }
			int m_nReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1584); }
			ScriptArray!(TrDevice.EffectInfo) m_EffectInfo() { return *cast(ScriptArray!(TrDevice.EffectInfo)*)(cast(size_t)cast(void*)this + 1492); }
			ScriptArray!(TrObject.DeviceTargeterType) m_eTargetType() { return *cast(ScriptArray!(TrObject.DeviceTargeterType)*)(cast(size_t)cast(void*)this + 1504); }
			ScriptArray!(TrObject.DeviceAttackType) m_eAttackType() { return *cast(ScriptArray!(TrObject.DeviceAttackType)*)(cast(size_t)cast(void*)this + 1516); }
			ScriptArray!(int) m_PowerPoolCost() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 1528); }
			ScriptArray!(ScriptClass) m_WeaponDeployables() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 1656); }
			ScriptArray!(TrObject.EffectFormOverwrite) m_EffectFormOverwrite() { return *cast(ScriptArray!(TrObject.EffectFormOverwrite)*)(cast(size_t)cast(void*)this + 1768); }
			ScriptArray!(AnimNodeSequence) m_MeshAnimSequenceNodes() { return *cast(ScriptArray!(AnimNodeSequence)*)(cast(size_t)cast(void*)this + 1840); }
			Vector m_vClientSideFireOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2136); }
			TrDeviceContentData m_ContentData() { return *cast(TrDeviceContentData*)(cast(size_t)cast(void*)this + 2132); }
			ScriptString m_sContentDataClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2120); }
			TrDevice.DeviceUpgrade BaseMod() { return *cast(TrDevice.DeviceUpgrade*)(cast(size_t)cast(void*)this + 2100); }
			TrObject.PaperDollInfo m_InGamePaperDollInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 1944); }
			TrObject.PaperDollInfo m_MainMenuPaperDollInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 1888); }
			Vector m_TinyWeaponsOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1876); }
			float m_fTimeBeforeInactiveReload() { return *cast(float*)(cast(size_t)cast(void*)this + 1872); }
			float m_fLastActiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1868); }
			int m_nTetherCounter() { return *cast(int*)(cast(size_t)cast(void*)this + 1864); }
			AnimSet m_NoAmmoAnimSet() { return *cast(AnimSet*)(cast(size_t)cast(void*)this + 1860); }
			float m_fFireIntervalForLastShotInClip() { return *cast(float*)(cast(size_t)cast(void*)this + 1856); }
			float m_fClientSideHitLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 1852); }
			MaterialInstanceConstant m_ZoomOverlayMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1836); }
			ScriptName m_nmZoomMaterialEffectName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1828); }
			Vector m_vZoomMeshOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1816); }
			float m_fZoomRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1812); }
			float m_fDesiredZoomFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 1808); }
			int m_ShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 1804); }
			Vector m_vPositionPivotOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1792); }
			CameraShake m_FireCameraShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 1788); }
			Material r_ReplicatedMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1764); }
			UObject.Vector2D m_v2WeaponLagSmoothingFactor() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1756); }
			UObject.Vector2D m_v2WeaponLagInterpSpeed() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1748); }
			int m_nMaxWeaponLagPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1744); }
			int m_nMaxWeaponLagYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 1740); }
			UObject.Vector2D m_v2WeaponLagAimOffset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1732); }
			float m_fMaxKickbackDistanceY() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
			float m_fMaxKickbackDistanceX() { return *cast(float*)(cast(size_t)cast(void*)this + 1724); }
			float m_fKickbackBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1720); }
			float m_fLastKickbackTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1716); }
			UObject.Vector2D m_v2KickbackAmount() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1708); }
			UObject.Vector2D m_v2MinMaxKickbackY() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1700); }
			UObject.Vector2D m_v2MinMaxKickbackX() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1692); }
			int m_nCreditCost() { return *cast(int*)(cast(size_t)cast(void*)this + 1684); }
			ParticleSystem m_TracerBeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1680); }
			float m_fShowTracerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1676); }
			int m_nTracerInterval() { return *cast(int*)(cast(size_t)cast(void*)this + 1672); }
			TrAnimNodeBlendByDeviceAnim m_DeviceAnimNode() { return *cast(TrAnimNodeBlendByDeviceAnim*)(cast(size_t)cast(void*)this + 1668); }
			float m_fLockTargetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1652); }
			Actor c_LockedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1648); }
			float c_fLockTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1644); }
			TrDevice.ReplicatedAmmoCount r_AmmoCount() { return *cast(TrDevice.ReplicatedAmmoCount*)(cast(size_t)cast(void*)this + 1636); }
			int s_iCheatCountAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 1632); }
			SoundCue m_ZoomOutSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1628); }
			SoundCue m_ZoomInSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1624); }
			SoundCue m_DryFireSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1620); }
			SoundCue m_ReloadAmmoSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1616); }
			float m_fPctTimeBeforeReload() { return *cast(float*)(cast(size_t)cast(void*)this + 1612); }
			float m_fReloadTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1608); }
			int m_RemainingAmmoInClip() { return *cast(int*)(cast(size_t)cast(void*)this + 1604); }
			int m_nMaxCarriedAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 1600); }
			int m_nLowAmmoWarning() { return *cast(int*)(cast(size_t)cast(void*)this + 1592); }
			int m_nAltReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1588); }
			float m_fQuickRetrieveEquipTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1580); }
			float m_fAccuracyCorrectionRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
			float m_fAimingModeAccuracyBonus() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
			float m_fAccuracyLossMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
			float m_fAccuracyLossOnShot() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
			float m_fAccuracyLossOnWeaponSwitch() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
			float m_fAccuracyLossOnJump() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
			float m_fDefaultAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 1552); }
			float m_fConeAttackAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
			float m_fDamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
			TrObject.EWeaponTracerType m_TracerType() { return *cast(TrObject.EWeaponTracerType*)(cast(size_t)cast(void*)this + 1489); }
			TrObject.TR_EQUIP_POINT r_eEquipAt() { return *cast(TrObject.TR_EQUIP_POINT*)(cast(size_t)cast(void*)this + 1488); }
			int DBWeaponTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 1480); }
			int DBWeaponBaseId() { return *cast(int*)(cast(size_t)cast(void*)this + 1476); }
		}
		bool m_bAllowFireWhileZoomed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100000) != 0; }
		bool m_bAllowFireWhileZoomed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100000; } return val; }
		bool m_bTinyWeaponsEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4000000) != 0; }
		bool m_bTinyWeaponsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4000000; } return val; }
		bool r_bIsReloading() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2000000) != 0; }
		bool r_bIsReloading(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2000000; } return val; }
		bool m_bResumeZoomOnReloadEnd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1000000) != 0; }
		bool m_bResumeZoomOnReloadEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1000000; } return val; }
		bool m_bEndZoomOnReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800000) != 0; }
		bool m_bEndZoomOnReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800000; } return val; }
		bool m_bUseMeshZoomOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400000) != 0; }
		bool m_bUseMeshZoomOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400000; } return val; }
		bool m_bCanZoom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200000) != 0; }
		bool m_bCanZoom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200000; } return val; }
		bool m_bAllowHoldDownFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80000) != 0; }
		bool m_bAllowHoldDownFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80000; } return val; }
		bool m_bWantsToFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40000) != 0; }
		bool m_bWantsToFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40000; } return val; }
		bool m_bIsPassive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20000) != 0; }
		bool m_bIsPassive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20000; } return val; }
		bool m_bIsKickbackAdditive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10000) != 0; }
		bool m_bIsKickbackAdditive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10000; } return val; }
		bool m_bSpawnTracerBeams() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8000) != 0; }
		bool m_bSpawnTracerBeams(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8000; } return val; }
		bool m_bSpawnTracers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4000) != 0; }
		bool m_bSpawnTracers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4000; } return val; }
		bool m_bUsesDeployMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2000) != 0; }
		bool m_bUsesDeployMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2000; } return val; }
		bool c_bLocking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1000) != 0; }
		bool c_bLocking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1000; } return val; }
		bool m_bForceReplicateAmmoOnFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x800) != 0; }
		bool m_bForceReplicateAmmoOnFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x800; } return val; }
		bool r_bReadyToFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x400) != 0; }
		bool r_bReadyToFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x400; } return val; }
		bool m_bCanEarlyAbortReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x200) != 0; }
		bool m_bCanEarlyAbortReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x200; } return val; }
		bool m_bReloadBulletInChamber() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x100) != 0; }
		bool m_bReloadBulletInChamber(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x100; } return val; }
		bool m_bPendingReload() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x80) != 0; }
		bool m_bPendingReload(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x80; } return val; }
		bool m_bReloadSingles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x40) != 0; }
		bool m_bReloadSingles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x40; } return val; }
		bool m_bAllowReloads() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x20) != 0; }
		bool m_bAllowReloads(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x20; } return val; }
		bool m_bLowAmmoOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x10) != 0; }
		bool m_bLowAmmoOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x10; } return val; }
		bool m_bRequireAimMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x8) != 0; }
		bool m_bRequireAimMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x8; } return val; }
		bool m_bHighlightEnemies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x4) != 0; }
		bool m_bHighlightEnemies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x4; } return val; }
		bool m_bEquipEffectsApplied() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x2) != 0; }
		bool m_bEquipEffectsApplied(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x2; } return val; }
		bool m_bAllowMultipleTargets() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1548) & 0x1) != 0; }
		bool m_bAllowMultipleTargets(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1548) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1548) &= ~0x1; } return val; }
	}
final:
	float CalcHUDAimChargePercent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcHUDAimChargePercent, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetAccuracy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAccuracy, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	ubyte GetFireModeNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireModeNum, params.ptr, cast(void*)0);
		return params[0];
	}
	bool IsValidTarget(Actor Target, int nFireMode)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(int*)&params[4] = nFireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsEnemy(Actor Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsInsideCone(Vector SourceLookDir, Actor TargetActor, Vector StartCone, float MinCosine)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = SourceLookDir;
		*cast(Actor*)&params[12] = TargetActor;
		*cast(Vector*)&params[16] = StartCone;
		*cast(float*)&params[28] = MinCosine;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInsideCone, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	bool ShouldAddToImpactList(Actor HitActor, ScriptArray!(Actor.ImpactInfo) ImpactList)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[4] = ImpactList;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldAddToImpactList, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void TickInHandWeapon(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickInHandWeapon, params.ptr, cast(void*)0);
	}
	void ResetLock()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetLock, cast(void*)0, cast(void*)0);
	}
	Actor GetLockedTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLockedTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	TrDeployable SpawnPet(bool bPet)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bPet;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnPet, params.ptr, cast(void*)0);
		return *cast(TrDeployable*)&params[4];
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
	void RestoreKickback(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestoreKickback, params.ptr, cast(void*)0);
	}
	bool IsInLOS(Actor TouchedActor, Vector ExpectedLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = TouchedActor;
		*cast(Vector*)&params[4] = ExpectedLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInLOS, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AttachHandsMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachHandsMesh, cast(void*)0, cast(void*)0);
	}
	TrDeviceContentData LoadMeshData()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadMeshData, params.ptr, cast(void*)0);
		return *cast(TrDeviceContentData*)params.ptr;
	}
	int ValidateClientReportedHit(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot, bool bDeviceIsFiring)
	{
		ubyte params[96];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		*cast(bool*)&params[88] = bDeviceIsFiring;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidateClientReportedHit, params.ptr, cast(void*)0);
		return *cast(int*)&params[92];
	}
	int ValidateClientReportedHitInternal(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot, bool bDeviceIsFiring)
	{
		ubyte params[96];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		*cast(bool*)&params[88] = bDeviceIsFiring;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidateClientReportedHitInternal, params.ptr, cast(void*)0);
		return *cast(int*)&params[92];
	}
	static ScriptString GetObjectReferencerName()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjectReferencerName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	static ScriptString GetObjectReferencerPackageName()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjectReferencerPackageName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool ReplicateAmmoOnWeaponFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicateAmmoOnWeaponFire, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ConsumeAmmo_Internal(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo_Internal, params.ptr, cast(void*)0);
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo, params.ptr, cast(void*)0);
	}
	Actor GetTraceOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTraceOwner, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	void AttachWeaponTo(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* MeshCpnt, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachWeaponTo, params.ptr, cast(void*)0);
	}
	void CreateFirstPersonHandsMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateFirstPersonHandsMesh, cast(void*)0, cast(void*)0);
	}
	void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeVisibility, params.ptr, cast(void*)0);
	}
	void CentralUpdateHandsMesh(ScriptClass FamilyInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.CentralUpdateHandsMesh, params.ptr, cast(void*)0);
	}
	void UpdateHandsMesh(ScriptClass FamilyInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHandsMesh, params.ptr, cast(void*)0);
	}
	void CreateOverlayMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateOverlayMesh, cast(void*)0, cast(void*)0);
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
	void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponEquip, cast(void*)0, cast(void*)0);
	}
	void OnPlayRetrieveAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayRetrieveAnim, cast(void*)0, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void WeaponEmpty()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponEmpty, cast(void*)0, cast(void*)0);
	}
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchToWeapon, cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchAwayFromWeapon, cast(void*)0, cast(void*)0);
	}
	void ClientWeaponSet(bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWeaponSet, params.ptr, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireEffects, params.ptr, cast(void*)0);
	}
	void PlayFireAnimation(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireAnimation, params.ptr, cast(void*)0);
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
	TrProj_Tracer GetTracer(Vector SpawnLocation, Rotator SpawnRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTracer, params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[24];
	}
	int GetNumRoundsCurrentlyInClip()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumRoundsCurrentlyInClip, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool HasAnyAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAnyAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool AllowSwitchTo(Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowSwitchTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float CalculateRangeDamageFalloff(float Dist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Dist;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateRangeDamageFalloff, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
	void ProcessInstantHit(ubyte FiringMode, Actor.ImpactInfo Impact, int NumHits)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(int*)&params[84] = NumHits;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessInstantHit, params.ptr, cast(void*)0);
	}
	void ServerNotifyHit(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerNotifyHit, params.ptr, cast(void*)0);
	}
	void ProcessInstantHit_Internal(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessInstantHit_Internal, params.ptr, cast(void*)0);
	}
	float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyInstantHitDamage, params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
	void ProcessEffect(Actor Target, ubyte FiringMode, TrObject.EffectType efType, bool bRemove)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		params[4] = FiringMode;
		*cast(TrObject.EffectType*)&params[5] = efType;
		*cast(bool*)&params[8] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessEffect, params.ptr, cast(void*)0);
	}
	bool UsesPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.UsesPower, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsDeviceCoolingDown(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDeviceCoolingDown, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void EnterDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnterDeployMode, cast(void*)0, cast(void*)0);
	}
	void ExitDeployMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitDeployMode, cast(void*)0, cast(void*)0);
	}
	void ToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleActivate, cast(void*)0, cast(void*)0);
	}
	void PayAccuracyForJump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PayAccuracyForJump, cast(void*)0, cast(void*)0);
	}
	void PayAccuracyForWeaponSwitch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PayAccuracyForWeaponSwitch, cast(void*)0, cast(void*)0);
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
	Rotator ApplyKickbackToAim(Rotator Aim)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Rotator*)params.ptr = Aim;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyKickbackToAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	UObject.Vector2D GetCurrentKickbackAmount()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentKickbackAmount, params.ptr, cast(void*)0);
		return *cast(UObject.Vector2D*)params.ptr;
	}
	bool AddKickback()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddKickback, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetAdjustedAim(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	bool ShowWeaponRedLowAmmoIndicator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowWeaponRedLowAmmoIndicator, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool NeedToVisitInventoryStation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedToVisitInventoryStation, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAmmoCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void UpdateLowAmmoWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLowAmmoWarning, cast(void*)0, cast(void*)0);
	}
	ScriptClass GetProjectileClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProjectileClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	Vector GetClientSideProjectileFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClientSideProjectileFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	void DestroyOldestProjectileOverLimit(Projectile newProjectile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = newProjectile;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyOldestProjectileOverLimit, params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	float MaxRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MaxRange, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetWeaponRange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponRange, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Rotator GetAimForCamera(Vector StartFireLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAimForCamera, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[12];
	}
	bool CanClientRequestReloadNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanClientRequestReloadNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HolderEnteredVehicle, cast(void*)0, cast(void*)0);
	}
	static float GetReloadTime(PlayerReplicationInfo PRI, TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(TrObject.TR_EQUIP_POINT*)&params[4] = EquipPoint;
		StaticClass.ProcessEvent(Functions.GetReloadTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
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
	bool IsReloading()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsReloading, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RequestReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestReload, cast(void*)0, cast(void*)0);
	}
	void OnClientReloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClientReloaded, cast(void*)0, cast(void*)0);
	}
	void PerformInactiveReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformInactiveReload, cast(void*)0, cast(void*)0);
	}
	int CalcAmountToLoad()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcAmountToLoad, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ClientFinishedReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientFinishedReload, cast(void*)0, cast(void*)0);
	}
	void ResumeZoomOnReloadEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResumeZoomOnReloadEnd, cast(void*)0, cast(void*)0);
	}
	void PlayReloadAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReloadAnim, cast(void*)0, cast(void*)0);
	}
	void EnableWeaponReadyToFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableWeaponReadyToFire, cast(void*)0, cast(void*)0);
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
	void GoInactiveDueToOffhand()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GoInactiveDueToOffhand, cast(void*)0, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFire, params.ptr, cast(void*)0);
	}
	void BeginFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginFire, params.ptr, cast(void*)0);
	}
	float GetEquipTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void TimeWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	float GetPutDownTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPutDownTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool CanFireOffhandNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanFireOffhandNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ServerOnClientDeniedFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerOnClientDeniedFire, cast(void*)0, cast(void*)0);
	}
	void ApplyEquipEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyEquipEffect, cast(void*)0, cast(void*)0);
	}
	void RemoveEquipEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveEquipEffect, cast(void*)0, cast(void*)0);
	}
	void SetPosition(UDKPawn Holder, float DeltaSeconds)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKPawn*)params.ptr = Holder;
		*cast(float*)&params[4] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPosition, params.ptr, cast(void*)0);
	}
	int LagRot(int NewValue, int LastValue, float MaxDiff, int Index, float DeltaSeconds)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = NewValue;
		*cast(int*)&params[4] = LastValue;
		*cast(float*)&params[8] = MaxDiff;
		*cast(int*)&params[12] = Index;
		*cast(float*)&params[16] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.LagRot, params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	bool ShouldRefire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRefire, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activate, cast(void*)0, cast(void*)0);
	}
	void AnnounceInvalidPickup(TrPawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnnounceInvalidPickup, params.ptr, cast(void*)0);
	}
	bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.DenyPickupQuery, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PutDownFast()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PutDownFast, cast(void*)0, cast(void*)0);
	}
	void ForceEndFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceEndFire, cast(void*)0, cast(void*)0);
	}
	bool CanAutoDeviceFireNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAutoDeviceFireNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomFire, cast(void*)0, cast(void*)0);
	}
	void AttachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void WeaponPlaySoundLocal(SoundCue Sound, float NoiseLoudness)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponPlaySoundLocal, params.ptr, cast(void*)0);
	}
	void ClientWeaponThrown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWeaponThrown, cast(void*)0, cast(void*)0);
	}
	void UpdateShotsFired(bool Reset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = Reset;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateShotsFired, params.ptr, cast(void*)0);
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
	bool CanViewZoom()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanViewZoom, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAltReticule, cast(void*)0, cast(void*)0);
	}
	void ResetAltReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetAltReticule, cast(void*)0, cast(void*)0);
	}
	Actor.ImpactInfo CalcWeaponFire(Vector StartTrace, Vector EndTrace, ScriptArray!(Actor.ImpactInfo)* ImpactList, Vector Extent)
	{
		ubyte params[128];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[24] = *ImpactList;
		*cast(Vector*)&params[36] = Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcWeaponFire, params.ptr, cast(void*)0);
		*ImpactList = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[24];
		return *cast(Actor.ImpactInfo*)&params[48];
	}
	void PlayDryFireZoom()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDryFireZoom, cast(void*)0, cast(void*)0);
	}
	void BuffMaxCarriedAmmo(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.BuffMaxCarriedAmmo, params.ptr, cast(void*)0);
	}
	float GetMaxAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxAmmoCount, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetBasePickupAmmoAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBasePickupAmmoAmount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ServerStartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerStartFire, params.ptr, cast(void*)0);
	}
	void UpdateWeaponMICs()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateWeaponMICs, cast(void*)0, cast(void*)0);
	}
}
