module UnrealScript.UTGame.UTVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.UTGame.UTHUD;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTGib;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.UTGame.UTVehicleDeathPiece;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.Texture2D;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.UTGame.UTBot;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.UTGame.UTVehicleWeapon;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UTGame.UTSeqAct_ExitVehicle;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.UTGame.UTProjectile;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Emitter;
import UnrealScript.UTGame.UTVehicleFactory;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Weapon;

extern(C++) interface UTVehicle : UDKVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVehicle")()); }
	private static __gshared UTVehicle mDefaultProperties;
	@property final static UTVehicle DefaultProperties() { mixin(MGDPC!(UTVehicle, "UTVehicle UTGame.Default__UTVehicle")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTryToDrive;
			ScriptFunction mInCustomEntryRadius;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mUpdateShadowSettings;
			ScriptFunction mReattachMesh;
			ScriptFunction mCreateDamageMaterialInstance;
			ScriptFunction mUpdateLookSteerStatus;
			ScriptFunction mSetInputs;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mGetChargePower;
			ScriptFunction mPlaySpawnEffect;
			ScriptFunction mStopSpawnEffect;
			ScriptFunction mEjectSeat;
			ScriptFunction mGetRanOverDamageType;
			ScriptFunction mDisplayWeaponBar;
			ScriptFunction mDrawKillIcon;
			ScriptFunction mRenderMapIcon;
			ScriptFunction mAdjustedStrength;
			ScriptFunction mContinueOnFoot;
			ScriptFunction mIsDriverSeat;
			ScriptFunction mRecommendCharge;
			ScriptFunction mCriticalChargeAttack;
			ScriptFunction mCreateVehicleEffect;
			ScriptFunction mInitializeEffects;
			ScriptFunction mSetVehicleEffectParms;
			ScriptFunction mTriggerVehicleEffect;
			ScriptFunction mPlayVehicleSound;
			ScriptFunction mPlayVehicleAnimation;
			ScriptFunction mVehicleEvent;
			ScriptFunction mEntryAnnouncement;
			ScriptFunction mExitRotation;
			ScriptFunction mFindAutoExit;
			ScriptFunction mRanInto;
			ScriptFunction mPancakeOther;
			ScriptFunction mTakeWaterDamage;
			ScriptFunction mDriverRadiusDamage;
			ScriptFunction mDestroyed;
			ScriptFunction mSetTexturesToBeResident;
			ScriptFunction mDisableVehicle;
			ScriptFunction mEnableVehicle;
			ScriptFunction mTakeFireDamage;
			ScriptFunction mGetSeatIndexFromPrefix;
			ScriptFunction mServerSetConsoleTurning;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mGetClampedViewRotation;
			ScriptFunction mShouldClamp;
			ScriptFunction mGetViewRotation;
			ScriptFunction mWeaponRotationChanged;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mSetKeyVehicle;
			ScriptFunction mDrivingStatusChanged;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mSeatAvailable;
			ScriptFunction mAnySeatAvailable;
			ScriptFunction mGetSeatIndexForController;
			ScriptFunction mGetControllerForSeatIndex;
			ScriptFunction mServerAdjacentSeat;
			ScriptFunction mServerChangeSeat;
			ScriptFunction mHasPriority;
			ScriptFunction mChangeSeat;
			ScriptFunction mTornOff;
			ScriptFunction mGetCollisionDamageInstigator;
			ScriptFunction mDied;
			ScriptFunction mBlowupVehicle;
			ScriptFunction mGetSeatPRI;
			ScriptFunction mCanEnterVehicle;
			ScriptFunction mKickOutBot;
			ScriptFunction mVehicleLocked;
			ScriptFunction mShouldShowUseable;
			ScriptFunction mPostRenderFor;
			ScriptFunction mGetDisplayedHealth;
			ScriptFunction mRenderPassengerBeacons;
			ScriptFunction mPostRenderPassengerBeacon;
			ScriptFunction mSetTeamNum;
			ScriptFunction mTeamChanged;
			ScriptFunction mTeamChanged_VehicleEffects;
			ScriptFunction mDodge;
			ScriptFunction mIncomingMissile;
			ScriptFunction mShootMissile;
			ScriptFunction mSendLockOnMessage;
			ScriptFunction mLockOnWarning;
			ScriptFunction mTooCloseToAttack;
			ScriptFunction mCheckTurretPitchLimit;
			ScriptFunction mPlayHorn;
			ScriptFunction mDriverLeave;
			ScriptFunction mUpdateControllerOnPossess;
			ScriptFunction mNumPassengers;
			ScriptFunction mGetMoveTargetFor;
			ScriptFunction mHandleEnteringFlag;
			ScriptFunction mDriverEnter;
			ScriptFunction mHoldGameObject;
			ScriptFunction mAttachFlag;
			ScriptFunction mDriverLeft;
			ScriptFunction mGetFirstAvailableSeat;
			ScriptFunction mPassengerEnter;
			ScriptFunction mPassengerLeave;
			ScriptFunction mCheckReset;
			ScriptFunction mOccupied;
			ScriptFunction mOpenPositionFor;
			ScriptFunction mBotDesireability;
			ScriptFunction mReservationCostMultiplier;
			ScriptFunction mSpokenFor;
			ScriptFunction mStopsProjectile;
			ScriptFunction mSetReservation;
			ScriptFunction mTeamLink;
			ScriptFunction mAllowLinkThroughOwnedActor;
			ScriptFunction mHealDamage;
			ScriptFunction mIncrementLinkedToCount;
			ScriptFunction mDecrementLinkedToCount;
			ScriptFunction mStartLinkedEffect;
			ScriptFunction mStopLinkedEffect;
			ScriptFunction mPlayHit;
			ScriptFunction mPlayTakeHitEffects;
			ScriptFunction mNotifyTakeHit;
			ScriptFunction mTakeDamage;
			ScriptFunction mGetHomingTarget;
			ScriptFunction mImportantVehicle;
			ScriptFunction mInitializeSeats;
			ScriptFunction mPreCacheSeatNames;
			ScriptFunction mInitializeTurrets;
			ScriptFunction mPossessedBy;
			ScriptFunction mSetFiringMode;
			ScriptFunction mClearFlashCount;
			ScriptFunction mIncrementFlashCount;
			ScriptFunction mSetFlashLocation;
			ScriptFunction mClearFlashLocation;
			ScriptFunction mGetBarrelLocationAndRotation;
			ScriptFunction mGetEffectLocation;
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mGetWeaponAim;
			ScriptFunction mOverrideBeginFire;
			ScriptFunction mOverrideEndFire;
			ScriptFunction mGetWeaponViewAxes;
			ScriptFunction mCauseMuzzleFlashLight;
			ScriptFunction mWeaponFired;
			ScriptFunction mVehicleWeaponFired;
			ScriptFunction mWeaponStoppedFiring;
			ScriptFunction mVehicleWeaponStoppedFiring;
			ScriptFunction mVehicleWeaponFireEffects;
			ScriptFunction mFindWeaponHitNormal;
			ScriptFunction mVehicleWeaponImpactEffects;
			ScriptFunction mSpawnImpactEmitter;
			ScriptFunction mVehicleAdjustFlashCount;
			ScriptFunction mVehicleAdjustFlashLocation;
			ScriptFunction mFindGoodEndView;
			ScriptFunction mCalcCamera;
			ScriptFunction mGetCameraFocus;
			ScriptFunction mGetCameraStart;
			ScriptFunction mLimitCameraZ;
			ScriptFunction mVehicleCalcCamera;
			ScriptFunction mAdjustCameraScale;
			ScriptFunction mStartBurnOut;
			ScriptFunction mTurnOffShadows;
			ScriptFunction mDisableDamageSmoke;
			ScriptFunction mDisableCollision;
			ScriptFunction mSetBurnOut;
			ScriptFunction mShouldSpawnExplosionLight;
			ScriptFunction mRBPenetrationDestroy;
			ScriptFunction mRigidBodyCollision;
			ScriptFunction mTurretExplosion;
			ScriptFunction mStopVehicleSounds;
			ScriptFunction mCheckDamageSmoke;
			ScriptFunction mAttachDriver;
			ScriptFunction mSitDriver;
			ScriptFunction mOnDriverPhysicsAssetChanged;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mOnPropertyChange;
			ScriptFunction mGetHealth;
			ScriptFunction mGetCollisionDamageModifier;
			ScriptFunction mInitializeMorphs;
			ScriptFunction mReceivedHealthChange;
			ScriptFunction mApplyMorphHeal;
			ScriptFunction mApplyRandomMorphDamage;
			ScriptFunction mSpawnGibVehicle;
			ScriptFunction mGetSVehicleDebug;
			ScriptFunction mOnExitVehicle;
			ScriptFunction mSetShieldActive;
			ScriptFunction mSetSeatStoragePawn;
			ScriptFunction mSetMovementEffect;
			ScriptFunction mDetachDriver;
			ScriptFunction mCanAttack;
			ScriptFunction mGetVehicleKillStatName;
			ScriptFunction mDisplayHud;
			ScriptFunction mDrawBarGraph;
			ScriptFunction mDisplayExtraHud;
			ScriptFunction mDisplaySeats;
			ScriptFunction mGetSeatColor;
			ScriptFunction mApplyWeaponEffects;
			ScriptFunction mShouldLeaveForCombat;
		}
		public @property static final
		{
			ScriptFunction TryToDrive() { mixin(MGF!("mTryToDrive", "Function UTGame.UTVehicle.TryToDrive")()); }
			ScriptFunction InCustomEntryRadius() { mixin(MGF!("mInCustomEntryRadius", "Function UTGame.UTVehicle.InCustomEntryRadius")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTVehicle.PostBeginPlay")()); }
			ScriptFunction UpdateShadowSettings() { mixin(MGF!("mUpdateShadowSettings", "Function UTGame.UTVehicle.UpdateShadowSettings")()); }
			ScriptFunction ReattachMesh() { mixin(MGF!("mReattachMesh", "Function UTGame.UTVehicle.ReattachMesh")()); }
			ScriptFunction CreateDamageMaterialInstance() { mixin(MGF!("mCreateDamageMaterialInstance", "Function UTGame.UTVehicle.CreateDamageMaterialInstance")()); }
			ScriptFunction UpdateLookSteerStatus() { mixin(MGF!("mUpdateLookSteerStatus", "Function UTGame.UTVehicle.UpdateLookSteerStatus")()); }
			ScriptFunction SetInputs() { mixin(MGF!("mSetInputs", "Function UTGame.UTVehicle.SetInputs")()); }
			ScriptFunction FellOutOfWorld() { mixin(MGF!("mFellOutOfWorld", "Function UTGame.UTVehicle.FellOutOfWorld")()); }
			ScriptFunction GetChargePower() { mixin(MGF!("mGetChargePower", "Function UTGame.UTVehicle.GetChargePower")()); }
			ScriptFunction PlaySpawnEffect() { mixin(MGF!("mPlaySpawnEffect", "Function UTGame.UTVehicle.PlaySpawnEffect")()); }
			ScriptFunction StopSpawnEffect() { mixin(MGF!("mStopSpawnEffect", "Function UTGame.UTVehicle.StopSpawnEffect")()); }
			ScriptFunction EjectSeat() { mixin(MGF!("mEjectSeat", "Function UTGame.UTVehicle.EjectSeat")()); }
			ScriptFunction GetRanOverDamageType() { mixin(MGF!("mGetRanOverDamageType", "Function UTGame.UTVehicle.GetRanOverDamageType")()); }
			ScriptFunction DisplayWeaponBar() { mixin(MGF!("mDisplayWeaponBar", "Function UTGame.UTVehicle.DisplayWeaponBar")()); }
			ScriptFunction DrawKillIcon() { mixin(MGF!("mDrawKillIcon", "Function UTGame.UTVehicle.DrawKillIcon")()); }
			ScriptFunction RenderMapIcon() { mixin(MGF!("mRenderMapIcon", "Function UTGame.UTVehicle.RenderMapIcon")()); }
			ScriptFunction AdjustedStrength() { mixin(MGF!("mAdjustedStrength", "Function UTGame.UTVehicle.AdjustedStrength")()); }
			ScriptFunction ContinueOnFoot() { mixin(MGF!("mContinueOnFoot", "Function UTGame.UTVehicle.ContinueOnFoot")()); }
			ScriptFunction IsDriverSeat() { mixin(MGF!("mIsDriverSeat", "Function UTGame.UTVehicle.IsDriverSeat")()); }
			ScriptFunction RecommendCharge() { mixin(MGF!("mRecommendCharge", "Function UTGame.UTVehicle.RecommendCharge")()); }
			ScriptFunction CriticalChargeAttack() { mixin(MGF!("mCriticalChargeAttack", "Function UTGame.UTVehicle.CriticalChargeAttack")()); }
			ScriptFunction CreateVehicleEffect() { mixin(MGF!("mCreateVehicleEffect", "Function UTGame.UTVehicle.CreateVehicleEffect")()); }
			ScriptFunction InitializeEffects() { mixin(MGF!("mInitializeEffects", "Function UTGame.UTVehicle.InitializeEffects")()); }
			ScriptFunction SetVehicleEffectParms() { mixin(MGF!("mSetVehicleEffectParms", "Function UTGame.UTVehicle.SetVehicleEffectParms")()); }
			ScriptFunction TriggerVehicleEffect() { mixin(MGF!("mTriggerVehicleEffect", "Function UTGame.UTVehicle.TriggerVehicleEffect")()); }
			ScriptFunction PlayVehicleSound() { mixin(MGF!("mPlayVehicleSound", "Function UTGame.UTVehicle.PlayVehicleSound")()); }
			ScriptFunction PlayVehicleAnimation() { mixin(MGF!("mPlayVehicleAnimation", "Function UTGame.UTVehicle.PlayVehicleAnimation")()); }
			ScriptFunction VehicleEvent() { mixin(MGF!("mVehicleEvent", "Function UTGame.UTVehicle.VehicleEvent")()); }
			ScriptFunction EntryAnnouncement() { mixin(MGF!("mEntryAnnouncement", "Function UTGame.UTVehicle.EntryAnnouncement")()); }
			ScriptFunction ExitRotation() { mixin(MGF!("mExitRotation", "Function UTGame.UTVehicle.ExitRotation")()); }
			ScriptFunction FindAutoExit() { mixin(MGF!("mFindAutoExit", "Function UTGame.UTVehicle.FindAutoExit")()); }
			ScriptFunction RanInto() { mixin(MGF!("mRanInto", "Function UTGame.UTVehicle.RanInto")()); }
			ScriptFunction PancakeOther() { mixin(MGF!("mPancakeOther", "Function UTGame.UTVehicle.PancakeOther")()); }
			ScriptFunction TakeWaterDamage() { mixin(MGF!("mTakeWaterDamage", "Function UTGame.UTVehicle.TakeWaterDamage")()); }
			ScriptFunction DriverRadiusDamage() { mixin(MGF!("mDriverRadiusDamage", "Function UTGame.UTVehicle.DriverRadiusDamage")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTVehicle.Destroyed")()); }
			ScriptFunction SetTexturesToBeResident() { mixin(MGF!("mSetTexturesToBeResident", "Function UTGame.UTVehicle.SetTexturesToBeResident")()); }
			ScriptFunction DisableVehicle() { mixin(MGF!("mDisableVehicle", "Function UTGame.UTVehicle.DisableVehicle")()); }
			ScriptFunction EnableVehicle() { mixin(MGF!("mEnableVehicle", "Function UTGame.UTVehicle.EnableVehicle")()); }
			ScriptFunction TakeFireDamage() { mixin(MGF!("mTakeFireDamage", "Function UTGame.UTVehicle.TakeFireDamage")()); }
			ScriptFunction GetSeatIndexFromPrefix() { mixin(MGF!("mGetSeatIndexFromPrefix", "Function UTGame.UTVehicle.GetSeatIndexFromPrefix")()); }
			ScriptFunction ServerSetConsoleTurning() { mixin(MGF!("mServerSetConsoleTurning", "Function UTGame.UTVehicle.ServerSetConsoleTurning")()); }
			ScriptFunction ProcessViewRotation() { mixin(MGF!("mProcessViewRotation", "Function UTGame.UTVehicle.ProcessViewRotation")()); }
			ScriptFunction GetClampedViewRotation() { mixin(MGF!("mGetClampedViewRotation", "Function UTGame.UTVehicle.GetClampedViewRotation")()); }
			ScriptFunction ShouldClamp() { mixin(MGF!("mShouldClamp", "Function UTGame.UTVehicle.ShouldClamp")()); }
			ScriptFunction GetViewRotation() { mixin(MGF!("mGetViewRotation", "Function UTGame.UTVehicle.GetViewRotation")()); }
			ScriptFunction WeaponRotationChanged() { mixin(MGF!("mWeaponRotationChanged", "Function UTGame.UTVehicle.WeaponRotationChanged")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function UTGame.UTVehicle.ReplicatedEvent")()); }
			ScriptFunction SetKeyVehicle() { mixin(MGF!("mSetKeyVehicle", "Function UTGame.UTVehicle.SetKeyVehicle")()); }
			ScriptFunction DrivingStatusChanged() { mixin(MGF!("mDrivingStatusChanged", "Function UTGame.UTVehicle.DrivingStatusChanged")()); }
			ScriptFunction OnAnimEnd() { mixin(MGF!("mOnAnimEnd", "Function UTGame.UTVehicle.OnAnimEnd")()); }
			ScriptFunction SeatAvailable() { mixin(MGF!("mSeatAvailable", "Function UTGame.UTVehicle.SeatAvailable")()); }
			ScriptFunction AnySeatAvailable() { mixin(MGF!("mAnySeatAvailable", "Function UTGame.UTVehicle.AnySeatAvailable")()); }
			ScriptFunction GetSeatIndexForController() { mixin(MGF!("mGetSeatIndexForController", "Function UTGame.UTVehicle.GetSeatIndexForController")()); }
			ScriptFunction GetControllerForSeatIndex() { mixin(MGF!("mGetControllerForSeatIndex", "Function UTGame.UTVehicle.GetControllerForSeatIndex")()); }
			ScriptFunction ServerAdjacentSeat() { mixin(MGF!("mServerAdjacentSeat", "Function UTGame.UTVehicle.ServerAdjacentSeat")()); }
			ScriptFunction ServerChangeSeat() { mixin(MGF!("mServerChangeSeat", "Function UTGame.UTVehicle.ServerChangeSeat")()); }
			ScriptFunction HasPriority() { mixin(MGF!("mHasPriority", "Function UTGame.UTVehicle.HasPriority")()); }
			ScriptFunction ChangeSeat() { mixin(MGF!("mChangeSeat", "Function UTGame.UTVehicle.ChangeSeat")()); }
			ScriptFunction TornOff() { mixin(MGF!("mTornOff", "Function UTGame.UTVehicle.TornOff")()); }
			ScriptFunction GetCollisionDamageInstigator() { mixin(MGF!("mGetCollisionDamageInstigator", "Function UTGame.UTVehicle.GetCollisionDamageInstigator")()); }
			ScriptFunction Died() { mixin(MGF!("mDied", "Function UTGame.UTVehicle.Died")()); }
			ScriptFunction BlowupVehicle() { mixin(MGF!("mBlowupVehicle", "Function UTGame.UTVehicle.BlowupVehicle")()); }
			ScriptFunction GetSeatPRI() { mixin(MGF!("mGetSeatPRI", "Function UTGame.UTVehicle.GetSeatPRI")()); }
			ScriptFunction CanEnterVehicle() { mixin(MGF!("mCanEnterVehicle", "Function UTGame.UTVehicle.CanEnterVehicle")()); }
			ScriptFunction KickOutBot() { mixin(MGF!("mKickOutBot", "Function UTGame.UTVehicle.KickOutBot")()); }
			ScriptFunction VehicleLocked() { mixin(MGF!("mVehicleLocked", "Function UTGame.UTVehicle.VehicleLocked")()); }
			ScriptFunction ShouldShowUseable() { mixin(MGF!("mShouldShowUseable", "Function UTGame.UTVehicle.ShouldShowUseable")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function UTGame.UTVehicle.PostRenderFor")()); }
			ScriptFunction GetDisplayedHealth() { mixin(MGF!("mGetDisplayedHealth", "Function UTGame.UTVehicle.GetDisplayedHealth")()); }
			ScriptFunction RenderPassengerBeacons() { mixin(MGF!("mRenderPassengerBeacons", "Function UTGame.UTVehicle.RenderPassengerBeacons")()); }
			ScriptFunction PostRenderPassengerBeacon() { mixin(MGF!("mPostRenderPassengerBeacon", "Function UTGame.UTVehicle.PostRenderPassengerBeacon")()); }
			ScriptFunction SetTeamNum() { mixin(MGF!("mSetTeamNum", "Function UTGame.UTVehicle.SetTeamNum")()); }
			ScriptFunction TeamChanged() { mixin(MGF!("mTeamChanged", "Function UTGame.UTVehicle.TeamChanged")()); }
			ScriptFunction TeamChanged_VehicleEffects() { mixin(MGF!("mTeamChanged_VehicleEffects", "Function UTGame.UTVehicle.TeamChanged_VehicleEffects")()); }
			ScriptFunction Dodge() { mixin(MGF!("mDodge", "Function UTGame.UTVehicle.Dodge")()); }
			ScriptFunction IncomingMissile() { mixin(MGF!("mIncomingMissile", "Function UTGame.UTVehicle.IncomingMissile")()); }
			ScriptFunction ShootMissile() { mixin(MGF!("mShootMissile", "Function UTGame.UTVehicle.ShootMissile")()); }
			ScriptFunction SendLockOnMessage() { mixin(MGF!("mSendLockOnMessage", "Function UTGame.UTVehicle.SendLockOnMessage")()); }
			ScriptFunction LockOnWarning() { mixin(MGF!("mLockOnWarning", "Function UTGame.UTVehicle.LockOnWarning")()); }
			ScriptFunction TooCloseToAttack() { mixin(MGF!("mTooCloseToAttack", "Function UTGame.UTVehicle.TooCloseToAttack")()); }
			ScriptFunction CheckTurretPitchLimit() { mixin(MGF!("mCheckTurretPitchLimit", "Function UTGame.UTVehicle.CheckTurretPitchLimit")()); }
			ScriptFunction PlayHorn() { mixin(MGF!("mPlayHorn", "Function UTGame.UTVehicle.PlayHorn")()); }
			ScriptFunction DriverLeave() { mixin(MGF!("mDriverLeave", "Function UTGame.UTVehicle.DriverLeave")()); }
			ScriptFunction UpdateControllerOnPossess() { mixin(MGF!("mUpdateControllerOnPossess", "Function UTGame.UTVehicle.UpdateControllerOnPossess")()); }
			ScriptFunction NumPassengers() { mixin(MGF!("mNumPassengers", "Function UTGame.UTVehicle.NumPassengers")()); }
			ScriptFunction GetMoveTargetFor() { mixin(MGF!("mGetMoveTargetFor", "Function UTGame.UTVehicle.GetMoveTargetFor")()); }
			ScriptFunction HandleEnteringFlag() { mixin(MGF!("mHandleEnteringFlag", "Function UTGame.UTVehicle.HandleEnteringFlag")()); }
			ScriptFunction DriverEnter() { mixin(MGF!("mDriverEnter", "Function UTGame.UTVehicle.DriverEnter")()); }
			ScriptFunction HoldGameObject() { mixin(MGF!("mHoldGameObject", "Function UTGame.UTVehicle.HoldGameObject")()); }
			ScriptFunction AttachFlag() { mixin(MGF!("mAttachFlag", "Function UTGame.UTVehicle.AttachFlag")()); }
			ScriptFunction DriverLeft() { mixin(MGF!("mDriverLeft", "Function UTGame.UTVehicle.DriverLeft")()); }
			ScriptFunction GetFirstAvailableSeat() { mixin(MGF!("mGetFirstAvailableSeat", "Function UTGame.UTVehicle.GetFirstAvailableSeat")()); }
			ScriptFunction PassengerEnter() { mixin(MGF!("mPassengerEnter", "Function UTGame.UTVehicle.PassengerEnter")()); }
			ScriptFunction PassengerLeave() { mixin(MGF!("mPassengerLeave", "Function UTGame.UTVehicle.PassengerLeave")()); }
			ScriptFunction CheckReset() { mixin(MGF!("mCheckReset", "Function UTGame.UTVehicle.CheckReset")()); }
			ScriptFunction Occupied() { mixin(MGF!("mOccupied", "Function UTGame.UTVehicle.Occupied")()); }
			ScriptFunction OpenPositionFor() { mixin(MGF!("mOpenPositionFor", "Function UTGame.UTVehicle.OpenPositionFor")()); }
			ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function UTGame.UTVehicle.BotDesireability")()); }
			ScriptFunction ReservationCostMultiplier() { mixin(MGF!("mReservationCostMultiplier", "Function UTGame.UTVehicle.ReservationCostMultiplier")()); }
			ScriptFunction SpokenFor() { mixin(MGF!("mSpokenFor", "Function UTGame.UTVehicle.SpokenFor")()); }
			ScriptFunction StopsProjectile() { mixin(MGF!("mStopsProjectile", "Function UTGame.UTVehicle.StopsProjectile")()); }
			ScriptFunction SetReservation() { mixin(MGF!("mSetReservation", "Function UTGame.UTVehicle.SetReservation")()); }
			ScriptFunction TeamLink() { mixin(MGF!("mTeamLink", "Function UTGame.UTVehicle.TeamLink")()); }
			ScriptFunction AllowLinkThroughOwnedActor() { mixin(MGF!("mAllowLinkThroughOwnedActor", "Function UTGame.UTVehicle.AllowLinkThroughOwnedActor")()); }
			ScriptFunction HealDamage() { mixin(MGF!("mHealDamage", "Function UTGame.UTVehicle.HealDamage")()); }
			ScriptFunction IncrementLinkedToCount() { mixin(MGF!("mIncrementLinkedToCount", "Function UTGame.UTVehicle.IncrementLinkedToCount")()); }
			ScriptFunction DecrementLinkedToCount() { mixin(MGF!("mDecrementLinkedToCount", "Function UTGame.UTVehicle.DecrementLinkedToCount")()); }
			ScriptFunction StartLinkedEffect() { mixin(MGF!("mStartLinkedEffect", "Function UTGame.UTVehicle.StartLinkedEffect")()); }
			ScriptFunction StopLinkedEffect() { mixin(MGF!("mStopLinkedEffect", "Function UTGame.UTVehicle.StopLinkedEffect")()); }
			ScriptFunction PlayHit() { mixin(MGF!("mPlayHit", "Function UTGame.UTVehicle.PlayHit")()); }
			ScriptFunction PlayTakeHitEffects() { mixin(MGF!("mPlayTakeHitEffects", "Function UTGame.UTVehicle.PlayTakeHitEffects")()); }
			ScriptFunction NotifyTakeHit() { mixin(MGF!("mNotifyTakeHit", "Function UTGame.UTVehicle.NotifyTakeHit")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function UTGame.UTVehicle.TakeDamage")()); }
			ScriptFunction GetHomingTarget() { mixin(MGF!("mGetHomingTarget", "Function UTGame.UTVehicle.GetHomingTarget")()); }
			ScriptFunction ImportantVehicle() { mixin(MGF!("mImportantVehicle", "Function UTGame.UTVehicle.ImportantVehicle")()); }
			ScriptFunction InitializeSeats() { mixin(MGF!("mInitializeSeats", "Function UTGame.UTVehicle.InitializeSeats")()); }
			ScriptFunction PreCacheSeatNames() { mixin(MGF!("mPreCacheSeatNames", "Function UTGame.UTVehicle.PreCacheSeatNames")()); }
			ScriptFunction InitializeTurrets() { mixin(MGF!("mInitializeTurrets", "Function UTGame.UTVehicle.InitializeTurrets")()); }
			ScriptFunction PossessedBy() { mixin(MGF!("mPossessedBy", "Function UTGame.UTVehicle.PossessedBy")()); }
			ScriptFunction SetFiringMode() { mixin(MGF!("mSetFiringMode", "Function UTGame.UTVehicle.SetFiringMode")()); }
			ScriptFunction ClearFlashCount() { mixin(MGF!("mClearFlashCount", "Function UTGame.UTVehicle.ClearFlashCount")()); }
			ScriptFunction IncrementFlashCount() { mixin(MGF!("mIncrementFlashCount", "Function UTGame.UTVehicle.IncrementFlashCount")()); }
			ScriptFunction SetFlashLocation() { mixin(MGF!("mSetFlashLocation", "Function UTGame.UTVehicle.SetFlashLocation")()); }
			ScriptFunction ClearFlashLocation() { mixin(MGF!("mClearFlashLocation", "Function UTGame.UTVehicle.ClearFlashLocation")()); }
			ScriptFunction GetBarrelLocationAndRotation() { mixin(MGF!("mGetBarrelLocationAndRotation", "Function UTGame.UTVehicle.GetBarrelLocationAndRotation")()); }
			ScriptFunction GetEffectLocation() { mixin(MGF!("mGetEffectLocation", "Function UTGame.UTVehicle.GetEffectLocation")()); }
			ScriptFunction GetPhysicalFireStartLoc() { mixin(MGF!("mGetPhysicalFireStartLoc", "Function UTGame.UTVehicle.GetPhysicalFireStartLoc")()); }
			ScriptFunction GetWeaponAim() { mixin(MGF!("mGetWeaponAim", "Function UTGame.UTVehicle.GetWeaponAim")()); }
			ScriptFunction OverrideBeginFire() { mixin(MGF!("mOverrideBeginFire", "Function UTGame.UTVehicle.OverrideBeginFire")()); }
			ScriptFunction OverrideEndFire() { mixin(MGF!("mOverrideEndFire", "Function UTGame.UTVehicle.OverrideEndFire")()); }
			ScriptFunction GetWeaponViewAxes() { mixin(MGF!("mGetWeaponViewAxes", "Function UTGame.UTVehicle.GetWeaponViewAxes")()); }
			ScriptFunction CauseMuzzleFlashLight() { mixin(MGF!("mCauseMuzzleFlashLight", "Function UTGame.UTVehicle.CauseMuzzleFlashLight")()); }
			ScriptFunction WeaponFired() { mixin(MGF!("mWeaponFired", "Function UTGame.UTVehicle.WeaponFired")()); }
			ScriptFunction VehicleWeaponFired() { mixin(MGF!("mVehicleWeaponFired", "Function UTGame.UTVehicle.VehicleWeaponFired")()); }
			ScriptFunction WeaponStoppedFiring() { mixin(MGF!("mWeaponStoppedFiring", "Function UTGame.UTVehicle.WeaponStoppedFiring")()); }
			ScriptFunction VehicleWeaponStoppedFiring() { mixin(MGF!("mVehicleWeaponStoppedFiring", "Function UTGame.UTVehicle.VehicleWeaponStoppedFiring")()); }
			ScriptFunction VehicleWeaponFireEffects() { mixin(MGF!("mVehicleWeaponFireEffects", "Function UTGame.UTVehicle.VehicleWeaponFireEffects")()); }
			ScriptFunction FindWeaponHitNormal() { mixin(MGF!("mFindWeaponHitNormal", "Function UTGame.UTVehicle.FindWeaponHitNormal")()); }
			ScriptFunction VehicleWeaponImpactEffects() { mixin(MGF!("mVehicleWeaponImpactEffects", "Function UTGame.UTVehicle.VehicleWeaponImpactEffects")()); }
			ScriptFunction SpawnImpactEmitter() { mixin(MGF!("mSpawnImpactEmitter", "Function UTGame.UTVehicle.SpawnImpactEmitter")()); }
			ScriptFunction VehicleAdjustFlashCount() { mixin(MGF!("mVehicleAdjustFlashCount", "Function UTGame.UTVehicle.VehicleAdjustFlashCount")()); }
			ScriptFunction VehicleAdjustFlashLocation() { mixin(MGF!("mVehicleAdjustFlashLocation", "Function UTGame.UTVehicle.VehicleAdjustFlashLocation")()); }
			ScriptFunction FindGoodEndView() { mixin(MGF!("mFindGoodEndView", "Function UTGame.UTVehicle.FindGoodEndView")()); }
			ScriptFunction CalcCamera() { mixin(MGF!("mCalcCamera", "Function UTGame.UTVehicle.CalcCamera")()); }
			ScriptFunction GetCameraFocus() { mixin(MGF!("mGetCameraFocus", "Function UTGame.UTVehicle.GetCameraFocus")()); }
			ScriptFunction GetCameraStart() { mixin(MGF!("mGetCameraStart", "Function UTGame.UTVehicle.GetCameraStart")()); }
			ScriptFunction LimitCameraZ() { mixin(MGF!("mLimitCameraZ", "Function UTGame.UTVehicle.LimitCameraZ")()); }
			ScriptFunction VehicleCalcCamera() { mixin(MGF!("mVehicleCalcCamera", "Function UTGame.UTVehicle.VehicleCalcCamera")()); }
			ScriptFunction AdjustCameraScale() { mixin(MGF!("mAdjustCameraScale", "Function UTGame.UTVehicle.AdjustCameraScale")()); }
			ScriptFunction StartBurnOut() { mixin(MGF!("mStartBurnOut", "Function UTGame.UTVehicle.StartBurnOut")()); }
			ScriptFunction TurnOffShadows() { mixin(MGF!("mTurnOffShadows", "Function UTGame.UTVehicle.TurnOffShadows")()); }
			ScriptFunction DisableDamageSmoke() { mixin(MGF!("mDisableDamageSmoke", "Function UTGame.UTVehicle.DisableDamageSmoke")()); }
			ScriptFunction DisableCollision() { mixin(MGF!("mDisableCollision", "Function UTGame.UTVehicle.DisableCollision")()); }
			ScriptFunction SetBurnOut() { mixin(MGF!("mSetBurnOut", "Function UTGame.UTVehicle.SetBurnOut")()); }
			ScriptFunction ShouldSpawnExplosionLight() { mixin(MGF!("mShouldSpawnExplosionLight", "Function UTGame.UTVehicle.ShouldSpawnExplosionLight")()); }
			ScriptFunction RBPenetrationDestroy() { mixin(MGF!("mRBPenetrationDestroy", "Function UTGame.UTVehicle.RBPenetrationDestroy")()); }
			ScriptFunction RigidBodyCollision() { mixin(MGF!("mRigidBodyCollision", "Function UTGame.UTVehicle.RigidBodyCollision")()); }
			ScriptFunction TurretExplosion() { mixin(MGF!("mTurretExplosion", "Function UTGame.UTVehicle.TurretExplosion")()); }
			ScriptFunction StopVehicleSounds() { mixin(MGF!("mStopVehicleSounds", "Function UTGame.UTVehicle.StopVehicleSounds")()); }
			ScriptFunction CheckDamageSmoke() { mixin(MGF!("mCheckDamageSmoke", "Function UTGame.UTVehicle.CheckDamageSmoke")()); }
			ScriptFunction AttachDriver() { mixin(MGF!("mAttachDriver", "Function UTGame.UTVehicle.AttachDriver")()); }
			ScriptFunction SitDriver() { mixin(MGF!("mSitDriver", "Function UTGame.UTVehicle.SitDriver")()); }
			ScriptFunction OnDriverPhysicsAssetChanged() { mixin(MGF!("mOnDriverPhysicsAssetChanged", "Function UTGame.UTVehicle.OnDriverPhysicsAssetChanged")()); }
			ScriptFunction GetHumanReadableName() { mixin(MGF!("mGetHumanReadableName", "Function UTGame.UTVehicle.GetHumanReadableName")()); }
			ScriptFunction OnPropertyChange() { mixin(MGF!("mOnPropertyChange", "Function UTGame.UTVehicle.OnPropertyChange")()); }
			ScriptFunction GetHealth() { mixin(MGF!("mGetHealth", "Function UTGame.UTVehicle.GetHealth")()); }
			ScriptFunction GetCollisionDamageModifier() { mixin(MGF!("mGetCollisionDamageModifier", "Function UTGame.UTVehicle.GetCollisionDamageModifier")()); }
			ScriptFunction InitializeMorphs() { mixin(MGF!("mInitializeMorphs", "Function UTGame.UTVehicle.InitializeMorphs")()); }
			ScriptFunction ReceivedHealthChange() { mixin(MGF!("mReceivedHealthChange", "Function UTGame.UTVehicle.ReceivedHealthChange")()); }
			ScriptFunction ApplyMorphHeal() { mixin(MGF!("mApplyMorphHeal", "Function UTGame.UTVehicle.ApplyMorphHeal")()); }
			ScriptFunction ApplyRandomMorphDamage() { mixin(MGF!("mApplyRandomMorphDamage", "Function UTGame.UTVehicle.ApplyRandomMorphDamage")()); }
			ScriptFunction SpawnGibVehicle() { mixin(MGF!("mSpawnGibVehicle", "Function UTGame.UTVehicle.SpawnGibVehicle")()); }
			ScriptFunction GetSVehicleDebug() { mixin(MGF!("mGetSVehicleDebug", "Function UTGame.UTVehicle.GetSVehicleDebug")()); }
			ScriptFunction OnExitVehicle() { mixin(MGF!("mOnExitVehicle", "Function UTGame.UTVehicle.OnExitVehicle")()); }
			ScriptFunction SetShieldActive() { mixin(MGF!("mSetShieldActive", "Function UTGame.UTVehicle.SetShieldActive")()); }
			ScriptFunction SetSeatStoragePawn() { mixin(MGF!("mSetSeatStoragePawn", "Function UTGame.UTVehicle.SetSeatStoragePawn")()); }
			ScriptFunction SetMovementEffect() { mixin(MGF!("mSetMovementEffect", "Function UTGame.UTVehicle.SetMovementEffect")()); }
			ScriptFunction DetachDriver() { mixin(MGF!("mDetachDriver", "Function UTGame.UTVehicle.DetachDriver")()); }
			ScriptFunction CanAttack() { mixin(MGF!("mCanAttack", "Function UTGame.UTVehicle.CanAttack")()); }
			ScriptFunction GetVehicleKillStatName() { mixin(MGF!("mGetVehicleKillStatName", "Function UTGame.UTVehicle.GetVehicleKillStatName")()); }
			ScriptFunction DisplayHud() { mixin(MGF!("mDisplayHud", "Function UTGame.UTVehicle.DisplayHud")()); }
			ScriptFunction DrawBarGraph() { mixin(MGF!("mDrawBarGraph", "Function UTGame.UTVehicle.DrawBarGraph")()); }
			ScriptFunction DisplayExtraHud() { mixin(MGF!("mDisplayExtraHud", "Function UTGame.UTVehicle.DisplayExtraHud")()); }
			ScriptFunction DisplaySeats() { mixin(MGF!("mDisplaySeats", "Function UTGame.UTVehicle.DisplaySeats")()); }
			ScriptFunction GetSeatColor() { mixin(MGF!("mGetSeatColor", "Function UTGame.UTVehicle.GetSeatColor")()); }
			ScriptFunction ApplyWeaponEffects() { mixin(MGF!("mApplyWeaponEffects", "Function UTGame.UTVehicle.ApplyWeaponEffects")()); }
			ScriptFunction ShouldLeaveForCombat() { mixin(MGF!("mShouldLeaveForCombat", "Function UTGame.UTVehicle.ShouldLeaveForCombat")()); }
		}
	}
	static struct Constants
	{
		enum UTVEHICLE_UNSET_TEAM = 255;
	}
	enum EAIVehiclePurpose : ubyte
	{
		AIP_Offensive = 0,
		AIP_Defensive = 1,
		AIP_Any = 2,
		AIP_MAX = 3,
	}
	struct MaterialList
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTVehicle.MaterialList")()); }
		@property final auto ref ScriptArray!(MaterialInterface) Materials() { mixin(MGPS!(ScriptArray!(MaterialInterface), 0)()); }
	}
	struct TimePosition
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTVehicle.TimePosition")()); }
		@property final auto ref
		{
			float Time() { mixin(MGPS!(float, 12)()); }
			Vector Position() { mixin(MGPS!(Vector, 0)()); }
		}
	}
	static struct DyingVehicle
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTVehicle.DyingVehicle")()); }
	}
	@property final
	{
		auto ref
		{
			UTVehicle NextVehicle() { mixin(MGPC!(UTVehicle, 2112)()); }
			float DefaultFOV() { mixin(MGPC!(float, 2652)()); }
			ScriptArray!(SoundCue) HornSounds() { mixin(MGPC!(ScriptArray!(SoundCue), 2048)()); }
			ScriptArray!(MaterialInterface) TeamMaterials() { mixin(MGPC!(ScriptArray!(MaterialInterface), 2196)()); }
			ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) BigExplosionTemplates() { mixin(MGPC!(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate), 2232)()); }
			ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) DistanceTurretExplosionTemplates() { mixin(MGPC!(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate), 2312)()); }
			ScriptArray!(ParticleSystem) SpawnInTemplates() { mixin(MGPC!(ScriptArray!(ParticleSystem), 2560)()); }
			ScriptArray!(UTVehicle.MaterialList) SpawnMaterialLists() { mixin(MGPC!(ScriptArray!(UTVehicle.MaterialList), 2572)()); }
			ScriptArray!(MaterialInterface) OriginalMaterials() { mixin(MGPC!(ScriptArray!(MaterialInterface), 2608)()); }
			ScriptArray!(UTVehicle.TimePosition) OldPositions() { mixin(MGPC!(ScriptArray!(UTVehicle.TimePosition), 2656)()); }
			ScriptArray!(SoundNodeWave) EnemyVehicleSound() { mixin(MGPC!(ScriptArray!(SoundNodeWave), 2732)()); }
			ScriptArray!(SoundNodeWave) VehicleDestroyedSound() { mixin(MGPC!(ScriptArray!(SoundNodeWave), 2744)()); }
			float LastEnemyWarningTime() { mixin(MGPC!(float, 2728)()); }
			StaticMesh ReferenceMovementMesh() { mixin(MGPC!(StaticMesh, 2724)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DisabledEffectComponent'!
			ParticleSystem DisabledTemplate() { mixin(MGPC!(ParticleSystem, 2716)()); }
			float TimeLastDisabled() { mixin(MGPC!(float, 2712)()); }
			float DisabledTime() { mixin(MGPC!(float, 2708)()); }
			Vector OldCameraPosition() { mixin(MGPC!(Vector, 2696)()); }
			UTGib DeathCameraGib() { mixin(MGPC!(UTGib, 2692)()); }
			float MinCameraDistSq() { mixin(MGPC!(float, 2688)()); }
			float LookForwardDist() { mixin(MGPC!(float, 2684)()); }
			Vector CameraOffset() { mixin(MGPC!(Vector, 2672)()); }
			float CameraLag() { mixin(MGPC!(float, 2668)()); }
			float CameraSmoothingFactor() { mixin(MGPC!(float, 2648)()); }
			float OldCamPosZ() { mixin(MGPC!(float, 2644)()); }
			float SeatCameraScale() { mixin(MGPC!(float, 2640)()); }
			float LastCollisionDamageTime() { mixin(MGPC!(float, 2636)()); }
			float CollisionDamageMult() { mixin(MGPC!(float, 2632)()); }
			MaterialInterface BurnOutMaterial() { mixin(MGPC!(MaterialInterface, 2624)()); }
			float SpawnInTime() { mixin(MGPC!(float, 2620)()); }
			UObject.InterpCurveFloat SpawnMaterialParameterCurve() { mixin(MGPC!(UObject.InterpCurveFloat, 2592)()); }
			ScriptName SpawnMaterialParameterName() { mixin(MGPC!(ScriptName, 2584)()); }
			UIRoot.TextureCoordinates HudCoords() { mixin(MGPC!(UIRoot.TextureCoordinates, 2544)()); }
			Texture2D HudIcons() { mixin(MGPC!(Texture2D, 2540)()); }
			Vector PassengerTeamBeaconOffset() { mixin(MGPC!(Vector, 2528)()); }
			PlayerReplicationInfo PassengerPRI() { mixin(MGPC!(PlayerReplicationInfo, 2512)()); }
			Vector TeamBeaconOffset() { mixin(MGPC!(Vector, 2500)()); }
			float HealthPulseTime() { mixin(MGPC!(float, 2496)()); }
			int LastHealth() { mixin(MGPC!(int, 2492)()); }
			UIRoot.TextureCoordinates DropOrbIconCoords() { mixin(MGPC!(UIRoot.TextureCoordinates, 2476)()); }
			UIRoot.TextureCoordinates DropFlagIconCoords() { mixin(MGPC!(UIRoot.TextureCoordinates, 2460)()); }
			UIRoot.TextureCoordinates EnterToolTipIconCoords() { mixin(MGPC!(UIRoot.TextureCoordinates, 2444)()); }
			UIRoot.TextureCoordinates FlipToolTipIconCoords() { mixin(MGPC!(UIRoot.TextureCoordinates, 2428)()); }
			UIRoot.TextureCoordinates IconCoords() { mixin(MGPC!(UIRoot.TextureCoordinates, 2412)()); }
			float MapSize() { mixin(MGPC!(float, 2408)()); }
			ScriptName FlagBone() { mixin(MGPC!(ScriptName, 2400)()); }
			Rotator FlagRotation() { mixin(MGPC!(Rotator, 2388)()); }
			Vector FlagOffset() { mixin(MGPC!(Vector, 2376)()); }
			SoundCue BoostPadSound() { mixin(MGPC!(SoundCue, 2372)()); }
			SoundCue SpawnOutSound() { mixin(MGPC!(SoundCue, 2368)()); }
			SoundCue SpawnInSound() { mixin(MGPC!(SoundCue, 2364)()); }
			float SpawnRadius() { mixin(MGPC!(float, 2360)()); }
			ScriptName BurnTimeParameterName() { mixin(MGPC!(ScriptName, 2352)()); }
			SoundCue ExplosionSound() { mixin(MGPC!(SoundCue, 2348)()); }
			float TurretExplosiveForce() { mixin(MGPC!(float, 2344)()); }
			StaticMesh DestroyedTurretTemplate() { mixin(MGPC!(StaticMesh, 2340)()); }
			UTVehicleDeathPiece DestroyedTurret() { mixin(MGPC!(UTVehicleDeathPiece, 2336)()); }
			Vector TurretOffset() { mixin(MGPC!(Vector, 2324)()); }
			ScriptName TurretSocketName() { mixin(MGPC!(ScriptName, 2304)()); }
			ScriptName TurretScaleControlName() { mixin(MGPC!(ScriptName, 2296)()); }
			float OuterExplosionShakeRadius() { mixin(MGPC!(float, 2292)()); }
			float InnerExplosionShakeRadius() { mixin(MGPC!(float, 2288)()); }
			CameraAnim DeathExplosionShake() { mixin(MGPC!(CameraAnim, 2284)()); }
			float ExplosionInAirAngVel() { mixin(MGPC!(float, 2280)()); }
			float ExplosionMomentum() { mixin(MGPC!(float, 2276)()); }
			float ExplosionRadius() { mixin(MGPC!(float, 2272)()); }
			float ExplosionDamage() { mixin(MGPC!(float, 2268)()); }
			int DelayedBurnoutCount() { mixin(MGPC!(int, 2264)()); }
			float DeadVehicleLifeSpan() { mixin(MGPC!(float, 2260)()); }
			float BurnOutTime() { mixin(MGPC!(float, 2256)()); }
			ScriptName BigExplosionSocket() { mixin(MGPC!(ScriptName, 2248)()); }
			ParticleSystem SecondaryExplosion() { mixin(MGPC!(ParticleSystem, 2244)()); }
			ParticleSystem ExplosionTemplate() { mixin(MGPC!(ParticleSystem, 2228)()); }
			float MaxFireEffectDistance() { mixin(MGPC!(float, 2224)()); }
			float MaxImpactEffectDistance() { mixin(MGPC!(float, 2220)()); }
			ScriptClass ExplosionDamageType() { mixin(MGPC!(ScriptClass, 2216)()); }
			float DamageSmokeThreshold() { mixin(MGPC!(float, 2212)()); }
			ScriptClass VehiclePieceClass() { mixin(MGPC!(ScriptClass, 2208)()); }
			int ClientHealth() { mixin(MGPC!(int, 2192)()); }
			float TimeTilSecondaryVehicleExplosion() { mixin(MGPC!(float, 2188)()); }
			Emitter DeathExplosion() { mixin(MGPC!(Emitter, 2184)()); }
			float MaxExplosionLightDistance() { mixin(MGPC!(float, 2180)()); }
			ScriptClass ExplosionLightClass() { mixin(MGPC!(ScriptClass, 2176)()); }
			ScriptClass VehicleDrowningDamType() { mixin(MGPC!(ScriptClass, 2172)()); }
			float HUDExtent() { mixin(MGPC!(float, 2168)()); }
			float TeamBeaconPlayerInfoMaxDist() { mixin(MGPC!(float, 2164)()); }
			UDKPlayerController.ObjectiveAnnouncementInfo NeedToPickUpAnnouncement() { mixin(MGPC!(UDKPlayerController.ObjectiveAnnouncementInfo, 2148)()); }
			ScriptString VehicleNameString() { mixin(MGPC!(ScriptString, 2136)()); }
			ScriptString VehiclePositionString() { mixin(MGPC!(ScriptString, 2124)()); }
			UTBot Reservation() { mixin(MGPC!(UTBot, 2120)()); }
			UTVehicleFactory ParentFactory() { mixin(MGPC!(UTVehicleFactory, 2116)()); }
			SoundCue StolenSound() { mixin(MGPC!(SoundCue, 2108)()); }
			int StolenAnnouncementIndex() { mixin(MGPC!(int, 2104)()); }
			SoundCue RanOverSound() { mixin(MGPC!(SoundCue, 2100)()); }
			ScriptClass RanOverDamageType() { mixin(MGPC!(ScriptClass, 2096)()); }
			SoundCue LockedOnSound() { mixin(MGPC!(SoundCue, 2092)()); }
			float ConsoleSteerScale() { mixin(MGPC!(float, 2088)()); }
			float LookSteerDeadZone() { mixin(MGPC!(float, 2084)()); }
			float LookSteerDamping() { mixin(MGPC!(float, 2080)()); }
			float LookSteerSensitivity() { mixin(MGPC!(float, 2076)()); }
			float LeftStickDirDeadZone() { mixin(MGPC!(float, 2072)()); }
			int HornIndex() { mixin(MGPC!(int, 2068)()); }
			float LastHornTime() { mixin(MGPC!(float, 2064)()); }
			float HornAIRadius() { mixin(MGPC!(float, 2060)()); }
			float MaxDesireability() { mixin(MGPC!(float, 2044)()); }
			SoundCue LinkedEndSound() { mixin(MGPC!(SoundCue, 2040)()); }
			SoundCue LinkedToCue() { mixin(MGPC!(SoundCue, 2036)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LinkedToAudio'!
			float LinkHealMult() { mixin(MGPC!(float, 2028)()); }
			float InitialSpawnDelay() { mixin(MGPC!(float, 2024)()); }
			float RespawnTime() { mixin(MGPC!(float, 2020)()); }
			float PlayerStartTime() { mixin(MGPC!(float, 2016)()); }
			float VehicleLostTime() { mixin(MGPC!(float, 2012)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			PhysicalMaterial DefaultPhysicalMaterial() { mixin(MGPC!(PhysicalMaterial, 2004)()); }
			PhysicalMaterial DrivingPhysicalMaterial() { mixin(MGPC!(PhysicalMaterial, 2000)()); }
			float DeflectionReverseThresh() { mixin(MGPC!(float, 1996)()); }
			Actor NoPassengerObjective() { mixin(MGPC!(Actor, 1992)()); }
			ubyte LinkedToCount() { mixin(MGPC!(ubyte, 1989)()); }
			UTVehicle.EAIVehiclePurpose AIPurpose() { mixin(MGPC!(UTVehicle.EAIVehiclePurpose, 1988)()); }
			SoundCue VehicleLockedSound() { mixin(MGPC!(SoundCue, 1984)()); }
		}
		bool bCanCarryFlag() { mixin(MGBPC!(1976, 0x2)()); }
		bool bCanCarryFlag(bool val) { mixin(MSBPC!(1976, 0x2)()); }
		bool bRequestedEntryWithFlag() { mixin(MGBPC!(1976, 0x200000)()); }
		bool bRequestedEntryWithFlag(bool val) { mixin(MSBPC!(1976, 0x200000)()); }
		bool bHasCustomEntryRadius() { mixin(MGBPC!(1976, 0x10)()); }
		bool bHasCustomEntryRadius(bool val) { mixin(MSBPC!(1976, 0x10)()); }
		bool bDropDetailWhenDriving() { mixin(MGBPC!(1976, 0x10000)()); }
		bool bDropDetailWhenDriving(bool val) { mixin(MSBPC!(1976, 0x10000)()); }
		bool bSpectatedView() { mixin(MGBPC!(1980, 0x200)()); }
		bool bSpectatedView(bool val) { mixin(MSBPC!(1980, 0x200)()); }
		bool bDriverHoldsFlag() { mixin(MGBPC!(1976, 0x1)()); }
		bool bDriverHoldsFlag(bool val) { mixin(MSBPC!(1976, 0x1)()); }
		bool bIsNecrisVehicle() { mixin(MGBPC!(1980, 0x100)()); }
		bool bIsNecrisVehicle(bool val) { mixin(MSBPC!(1980, 0x100)()); }
		bool bHasEnemyVehicleSound() { mixin(MGBPC!(1980, 0x80)()); }
		bool bHasEnemyVehicleSound(bool val) { mixin(MSBPC!(1980, 0x80)()); }
		bool bStealthVehicle() { mixin(MGBPC!(1980, 0x40)()); }
		bool bStealthVehicle(bool val) { mixin(MSBPC!(1980, 0x40)()); }
		bool bShowDamageDebug() { mixin(MGBPC!(1980, 0x20)()); }
		bool bShowDamageDebug(bool val) { mixin(MSBPC!(1980, 0x20)()); }
		bool bAcceptTurretJump() { mixin(MGBPC!(1980, 0x10)()); }
		bool bAcceptTurretJump(bool val) { mixin(MSBPC!(1980, 0x10)()); }
		bool bIsConsoleTurning() { mixin(MGBPC!(1980, 0x8)()); }
		bool bIsConsoleTurning(bool val) { mixin(MSBPC!(1980, 0x8)()); }
		bool bStopDeathCamera() { mixin(MGBPC!(1980, 0x4)()); }
		bool bStopDeathCamera(bool val) { mixin(MSBPC!(1980, 0x4)()); }
		bool bCameraNeverHidesVehicle() { mixin(MGBPC!(1980, 0x2)()); }
		bool bCameraNeverHidesVehicle(bool val) { mixin(MSBPC!(1980, 0x2)()); }
		bool bFixedCamZ() { mixin(MGBPC!(1980, 0x1)()); }
		bool bFixedCamZ(bool val) { mixin(MSBPC!(1980, 0x1)()); }
		bool bNoFollowJumpZ() { mixin(MGBPC!(1976, 0x80000000)()); }
		bool bNoFollowJumpZ(bool val) { mixin(MSBPC!(1976, 0x80000000)()); }
		bool bLimitCameraZLookingUp() { mixin(MGBPC!(1976, 0x40000000)()); }
		bool bLimitCameraZLookingUp(bool val) { mixin(MSBPC!(1976, 0x40000000)()); }
		bool bNoZSmoothing() { mixin(MGBPC!(1976, 0x20000000)()); }
		bool bNoZSmoothing(bool val) { mixin(MSBPC!(1976, 0x20000000)()); }
		bool bRotateCameraUnderVehicle() { mixin(MGBPC!(1976, 0x10000000)()); }
		bool bRotateCameraUnderVehicle(bool val) { mixin(MSBPC!(1976, 0x10000000)()); }
		bool bReducedFallingCollisionDamage() { mixin(MGBPC!(1976, 0x8000000)()); }
		bool bReducedFallingCollisionDamage(bool val) { mixin(MSBPC!(1976, 0x8000000)()); }
		bool bPlayingSpawnEffect() { mixin(MGBPC!(1976, 0x4000000)()); }
		bool bPlayingSpawnEffect(bool val) { mixin(MSBPC!(1976, 0x4000000)()); }
		bool bPostRenderTraceSucceeded() { mixin(MGBPC!(1976, 0x2000000)()); }
		bool bPostRenderTraceSucceeded(bool val) { mixin(MSBPC!(1976, 0x2000000)()); }
		bool bHasTurretExplosion() { mixin(MGBPC!(1976, 0x1000000)()); }
		bool bHasTurretExplosion(bool val) { mixin(MSBPC!(1976, 0x1000000)()); }
		bool bRagdollDriverOnDarkwalkerHorn() { mixin(MGBPC!(1976, 0x800000)()); }
		bool bRagdollDriverOnDarkwalkerHorn(bool val) { mixin(MSBPC!(1976, 0x800000)()); }
		bool bInitializedVehicleEffects() { mixin(MGBPC!(1976, 0x400000)()); }
		bool bInitializedVehicleEffects(bool val) { mixin(MSBPC!(1976, 0x400000)()); }
		bool bFindGroundExit() { mixin(MGBPC!(1976, 0x100000)()); }
		bool bFindGroundExit(bool val) { mixin(MSBPC!(1976, 0x100000)()); }
		bool bUsingLookSteer() { mixin(MGBPC!(1976, 0x80000)()); }
		bool bUsingLookSteer(bool val) { mixin(MSBPC!(1976, 0x80000)()); }
		bool bLookSteerOnSimpleControls() { mixin(MGBPC!(1976, 0x40000)()); }
		bool bLookSteerOnSimpleControls(bool val) { mixin(MSBPC!(1976, 0x40000)()); }
		bool bLookSteerOnNormalControls() { mixin(MGBPC!(1976, 0x20000)()); }
		bool bLookSteerOnNormalControls(bool val) { mixin(MSBPC!(1976, 0x20000)()); }
		bool bHasBeenDriven() { mixin(MGBPC!(1976, 0x8000)()); }
		bool bHasBeenDriven(bool val) { mixin(MSBPC!(1976, 0x8000)()); }
		bool bDriverCastsShadow() { mixin(MGBPC!(1976, 0x4000)()); }
		bool bDriverCastsShadow(bool val) { mixin(MSBPC!(1976, 0x4000)()); }
		bool bDrawHealthOnHUD() { mixin(MGBPC!(1976, 0x2000)()); }
		bool bDrawHealthOnHUD(bool val) { mixin(MSBPC!(1976, 0x2000)()); }
		bool bShouldLeaveForCombat() { mixin(MGBPC!(1976, 0x1000)()); }
		bool bShouldLeaveForCombat(bool val) { mixin(MSBPC!(1976, 0x1000)()); }
		bool bNeverReset() { mixin(MGBPC!(1976, 0x800)()); }
		bool bNeverReset(bool val) { mixin(MSBPC!(1976, 0x800)()); }
		bool bHasWeaponBar() { mixin(MGBPC!(1976, 0x400)()); }
		bool bHasWeaponBar(bool val) { mixin(MSBPC!(1976, 0x400)()); }
		bool bShouldAutoCenterViewPitch() { mixin(MGBPC!(1976, 0x200)()); }
		bool bShouldAutoCenterViewPitch(bool val) { mixin(MSBPC!(1976, 0x200)()); }
		bool bStickDeflectionThrottle() { mixin(MGBPC!(1976, 0x100)()); }
		bool bStickDeflectionThrottle(bool val) { mixin(MSBPC!(1976, 0x100)()); }
		bool bOverrideAVRiLLocks() { mixin(MGBPC!(1976, 0x80)()); }
		bool bOverrideAVRiLLocks(bool val) { mixin(MSBPC!(1976, 0x80)()); }
		bool bMustBeUpright() { mixin(MGBPC!(1976, 0x40)()); }
		bool bMustBeUpright(bool val) { mixin(MSBPC!(1976, 0x40)()); }
		bool bKeyVehicle() { mixin(MGBPC!(1976, 0x20)()); }
		bool bKeyVehicle(bool val) { mixin(MSBPC!(1976, 0x20)()); }
		bool bEnteringUnlocks() { mixin(MGBPC!(1976, 0x8)()); }
		bool bEnteringUnlocks(bool val) { mixin(MSBPC!(1976, 0x8)()); }
		bool bValidLinkTarget() { mixin(MGBPC!(1976, 0x4)()); }
		bool bValidLinkTarget(bool val) { mixin(MSBPC!(1976, 0x4)()); }
	}
final:
	bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryToDrive, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool InCustomEntryRadius(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.InCustomEntryRadius, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	void CreateDamageMaterialInstance()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateDamageMaterialInstance, cast(void*)0, cast(void*)0);
	}
	void UpdateLookSteerStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLookSteerStatus, cast(void*)0, cast(void*)0);
	}
	void SetInputs(float InForward, float InStrafe, float InUp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInputs, params.ptr, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	float GetChargePower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetChargePower, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlaySpawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySpawnEffect, cast(void*)0, cast(void*)0);
	}
	void StopSpawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopSpawnEffect, cast(void*)0, cast(void*)0);
	}
	void EjectSeat(int SeatIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.EjectSeat, params.ptr, cast(void*)0);
	}
	ScriptClass GetRanOverDamageType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRanOverDamageType, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void DisplayWeaponBar(Canvas pCanvas, UTHUD pHUD)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTHUD*)&params[4] = pHUD;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayWeaponBar, params.ptr, cast(void*)0);
	}
	static void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(float*)&params[12] = HUDScaleX;
		*cast(float*)&params[16] = HUDScaleY;
		StaticClass.ProcessEvent(Functions.DrawKillIcon, params.ptr, cast(void*)0);
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
	float AdjustedStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustedStrength, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool ContinueOnFoot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ContinueOnFoot, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsDriverSeat(Vehicle TestSeatPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = TestSeatPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDriverSeat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool RecommendCharge(UTBot B, Pawn Enemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = Enemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecommendCharge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CriticalChargeAttack(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.CriticalChargeAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CreateVehicleEffect(int EffectIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EffectIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateVehicleEffect, params.ptr, cast(void*)0);
	}
	void InitializeEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeEffects, cast(void*)0, cast(void*)0);
	}
	void SetVehicleEffectParms(ScriptName TriggerName, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TriggerName;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8] = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVehicleEffectParms, params.ptr, cast(void*)0);
	}
	void TriggerVehicleEffect(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerVehicleEffect, params.ptr, cast(void*)0);
	}
	void PlayVehicleSound(ScriptName SoundTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehicleSound, params.ptr, cast(void*)0);
	}
	void PlayVehicleAnimation(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehicleAnimation, params.ptr, cast(void*)0);
	}
	void VehicleEvent(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleEvent, params.ptr, cast(void*)0);
	}
	void EntryAnnouncement(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.EntryAnnouncement, params.ptr, cast(void*)0);
	}
	Rotator ExitRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool FindAutoExit(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindAutoExit, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RanInto, params.ptr, cast(void*)0);
	}
	void PancakeOther(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PancakeOther, params.ptr, cast(void*)0);
	}
	void TakeWaterDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeWaterDamage, cast(void*)0, cast(void*)0);
	}
	void DriverRadiusDamage(float DamageAmount, float DamageRadius, Controller EventInstigator, ScriptClass pDamageType, float Momentum, Vector HitLocation, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = DamageRadius;
		*cast(Controller*)&params[8] = EventInstigator;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(Actor*)&params[32] = DamageCauser;
		*cast(float*)&params[36] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverRadiusDamage, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void SetTexturesToBeResident(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTexturesToBeResident, params.ptr, cast(void*)0);
	}
	bool DisableVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void EnableVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableVehicle, cast(void*)0, cast(void*)0);
	}
	void TakeFireDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFireDamage, cast(void*)0, cast(void*)0);
	}
	int GetSeatIndexFromPrefix(ScriptString Prefix)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Prefix;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatIndexFromPrefix, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void ServerSetConsoleTurning(bool bNewConsoleTurning)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewConsoleTurning;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetConsoleTurning, params.ptr, cast(void*)0);
	}
	void ProcessViewRotation(float DeltaTime, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = out_ViewRotation;
		*cast(Rotator*)&params[16] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	Rotator GetClampedViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClampedViewRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool ShouldClamp()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldClamp, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	void WeaponRotationChanged(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponRotationChanged, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void SetKeyVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetKeyVehicle, cast(void*)0, cast(void*)0);
	}
	void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrivingStatusChanged, cast(void*)0, cast(void*)0);
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
	bool SeatAvailable(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeatAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AnySeatAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnySeatAvailable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetSeatIndexForController(Controller ControllerToMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatIndexForController, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	Controller GetControllerForSeatIndex(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetControllerForSeatIndex, params.ptr, cast(void*)0);
		return *cast(Controller*)&params[4];
	}
	void ServerAdjacentSeat(int Direction, Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Direction;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAdjacentSeat, params.ptr, cast(void*)0);
	}
	void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeSeat, params.ptr, cast(void*)0);
	}
	bool HasPriority(Controller first, Controller Second)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = first;
		*cast(Controller*)&params[4] = Second;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasPriority, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool ChangeSeat(Controller ControllerToMove, int RequestedSeat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		*cast(int*)&params[4] = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeSeat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TornOff, cast(void*)0, cast(void*)0);
	}
	Controller GetCollisionDamageInstigator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionDamageInstigator, params.ptr, cast(void*)0);
		return *cast(Controller*)params.ptr;
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
	void BlowupVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BlowupVehicle, cast(void*)0, cast(void*)0);
	}
	PlayerReplicationInfo GetSeatPRI(int SeatNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatPRI, params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)&params[4];
	}
	bool CanEnterVehicle(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanEnterVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool KickOutBot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickOutBot, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void VehicleLocked(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleLocked, params.ptr, cast(void*)0);
	}
	bool ShouldShowUseable(PlayerController PC, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowUseable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	float GetDisplayedHealth()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDisplayedHealth, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void RenderPassengerBeacons(PlayerController PC, Canvas pCanvas, UObject.LinearColor TeamColor, UObject.Color TextColor, UTWeapon Weap)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.LinearColor*)&params[8] = TeamColor;
		*cast(UObject.Color*)&params[24] = TextColor;
		*cast(UTWeapon*)&params[28] = Weap;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderPassengerBeacons, params.ptr, cast(void*)0);
	}
	void PostRenderPassengerBeacon(PlayerController PC, Canvas pCanvas, UObject.LinearColor TeamColor, UObject.Color TextColor, UTWeapon Weap, PlayerReplicationInfo InPassengerPRI, Vector InPassengerTeamBeaconOffset)
	{
		ubyte params[48];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.LinearColor*)&params[8] = TeamColor;
		*cast(UObject.Color*)&params[24] = TextColor;
		*cast(UTWeapon*)&params[28] = Weap;
		*cast(PlayerReplicationInfo*)&params[32] = InPassengerPRI;
		*cast(Vector*)&params[36] = InPassengerTeamBeaconOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderPassengerBeacon, params.ptr, cast(void*)0);
	}
	void SetTeamNum(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeamNum, params.ptr, cast(void*)0);
	}
	void TeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamChanged, cast(void*)0, cast(void*)0);
	}
	void TeamChanged_VehicleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamChanged_VehicleEffects, cast(void*)0, cast(void*)0);
	}
	bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.Dodge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void IncomingMissile(Projectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncomingMissile, params.ptr, cast(void*)0);
	}
	void ShootMissile(Projectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShootMissile, params.ptr, cast(void*)0);
	}
	void SendLockOnMessage(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendLockOnMessage, params.ptr, cast(void*)0);
	}
	void LockOnWarning(UDKProjectile IncomingMissile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKProjectile*)params.ptr = IncomingMissile;
		(cast(ScriptObject)this).ProcessEvent(Functions.LockOnWarning, params.ptr, cast(void*)0);
	}
	bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.TooCloseToAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckTurretPitchLimit(int NeededPitch, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = NeededPitch;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckTurretPitchLimit, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PlayHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayHorn, cast(void*)0, cast(void*)0);
	}
	bool DriverLeave(bool bForceLeave)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeave, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void UpdateControllerOnPossess(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateControllerOnPossess, params.ptr, cast(void*)0);
	}
	int NumPassengers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NumPassengers, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	UTVehicle GetMoveTargetFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMoveTargetFor, params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	void HandleEnteringFlag(UTPlayerReplicationInfo EnteringPRI, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = EnteringPRI;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleEnteringFlag, params.ptr, cast(void*)0);
	}
	bool DriverEnter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverEnter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldGameObject, params.ptr, cast(void*)0);
	}
	void AttachFlag(UTCarriedObject FlagActor, Pawn NewDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = FlagActor;
		*cast(Pawn*)&params[4] = NewDriver;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachFlag, params.ptr, cast(void*)0);
	}
	void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeft, cast(void*)0, cast(void*)0);
	}
	int GetFirstAvailableSeat(bool bSeatMustAllowFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSeatMustAllowFlag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFirstAvailableSeat, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool PassengerEnter(Pawn P, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PassengerEnter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PassengerLeave(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PassengerLeave, params.ptr, cast(void*)0);
	}
	void CheckReset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckReset, cast(void*)0, cast(void*)0);
	}
	bool Occupied()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Occupied, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool OpenPositionFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenPositionFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float BotDesireability(UTSquadAI S, int TeamIndex, Actor Objective)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = S;
		*cast(int*)&params[4] = TeamIndex;
		*cast(Actor*)&params[8] = Objective;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float ReservationCostMultiplier(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReservationCostMultiplier, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool SpokenFor(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpokenFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetReservation(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetReservation, params.ptr, cast(void*)0);
	}
	bool TeamLink(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamLink, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowLinkThroughOwnedActor(Actor OwnedActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = OwnedActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowLinkThroughOwnedActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HealDamage(int Amount, Controller Healer, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		*cast(Controller*)&params[4] = Healer;
		*cast(ScriptClass*)&params[8] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.HealDamage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void IncrementLinkedToCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementLinkedToCount, cast(void*)0, cast(void*)0);
	}
	void DecrementLinkedToCount()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DecrementLinkedToCount, cast(void*)0, cast(void*)0);
	}
	void StartLinkedEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartLinkedEffect, cast(void*)0, cast(void*)0);
	}
	void StopLinkedEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopLinkedEffect, cast(void*)0, cast(void*)0);
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
	void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass pDamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTakeHit, params.ptr, cast(void*)0);
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
	Actor GetHomingTarget(UTProjectile Seeker, Controller InstigatedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTProjectile*)params.ptr = Seeker;
		*cast(Controller*)&params[4] = InstigatedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHomingTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[8];
	}
	bool ImportantVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ImportantVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InitializeSeats()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeSeats, cast(void*)0, cast(void*)0);
	}
	void PreCacheSeatNames()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreCacheSeatNames, cast(void*)0, cast(void*)0);
	}
	void InitializeTurrets()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeTurrets, cast(void*)0, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.PossessedBy, params.ptr, cast(void*)0);
	}
	void SetFiringMode(Weapon Weap, ubyte FiringModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Weap;
		params[4] = FiringModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFiringMode, params.ptr, cast(void*)0);
	}
	void ClearFlashCount(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashCount, params.ptr, cast(void*)0);
	}
	void IncrementFlashCount(Weapon Who, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFlashCount, params.ptr, cast(void*)0);
	}
	void SetFlashLocation(Weapon Who, ubyte FireModeNum, Vector NewLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlashLocation, params.ptr, cast(void*)0);
	}
	void ClearFlashLocation(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashLocation, params.ptr, cast(void*)0);
	}
	void GetBarrelLocationAndRotation(int SeatIndex, ref Vector SocketLocation, Rotator* SocketRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Vector*)&params[4] = SocketLocation;
		*cast(Rotator*)&params[16] = SocketRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBarrelLocationAndRotation, params.ptr, cast(void*)0);
		*SocketLocation = *cast(Vector*)&params[4];
		*SocketRotation = *cast(Rotator*)&params[16];
	}
	Vector GetEffectLocation(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEffectLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetPhysicalFireStartLoc(UTWeapon ForWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = ForWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Rotator GetWeaponAim(UTVehicleWeapon VWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTVehicleWeapon*)params.ptr = VWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	bool OverrideBeginFire(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideBeginFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool OverrideEndFire(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideEndFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetWeaponViewAxes(UTWeapon WhichWeapon, ref Vector XAxis, ref Vector YAxis, ref Vector ZAxis)
	{
		ubyte params[40];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = WhichWeapon;
		*cast(Vector*)&params[4] = XAxis;
		*cast(Vector*)&params[16] = YAxis;
		*cast(Vector*)&params[28] = ZAxis;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponViewAxes, params.ptr, cast(void*)0);
		*XAxis = *cast(Vector*)&params[4];
		*YAxis = *cast(Vector*)&params[16];
		*ZAxis = *cast(Vector*)&params[28];
	}
	void CauseMuzzleFlashLight(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CauseMuzzleFlashLight, params.ptr, cast(void*)0);
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
	void VehicleWeaponFired(bool bViaReplication, Vector HitLocation, int SeatIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponFired, params.ptr, cast(void*)0);
	}
	void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponStoppedFiring, params.ptr, cast(void*)0);
	}
	void VehicleWeaponStoppedFiring(bool bViaReplication, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponStoppedFiring, params.ptr, cast(void*)0);
	}
	void VehicleWeaponFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponFireEffects, params.ptr, cast(void*)0);
	}
	Actor FindWeaponHitNormal(ref Vector HitLocation, ref Vector HitNormal, Vector End, Vector Start, ref Actor.TraceHitInfo HitInfo)
	{
		ubyte params[80];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(Vector*)&params[24] = End;
		*cast(Vector*)&params[36] = Start;
		*cast(Actor.TraceHitInfo*)&params[48] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindWeaponHitNormal, params.ptr, cast(void*)0);
		*HitLocation = *cast(Vector*)params.ptr;
		*HitNormal = *cast(Vector*)&params[12];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[48];
		return *cast(Actor*)&params[76];
	}
	void VehicleWeaponImpactEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponImpactEffects, params.ptr, cast(void*)0);
	}
	void SpawnImpactEmitter(Vector HitLocation, Vector HitNormal, ref const UDKPawn.MaterialImpactEffect ImpactEffect, int SeatIndex)
	{
		ubyte params[76];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(UDKPawn.MaterialImpactEffect*)&params[24] = ImpactEffect;
		*cast(int*)&params[72] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnImpactEmitter, params.ptr, cast(void*)0);
		*ImpactEffect = *cast(UDKPawn.MaterialImpactEffect*)&params[24];
	}
	void VehicleAdjustFlashCount(int SeatIndex, ubyte FireModeNum, bool bClear)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = FireModeNum;
		*cast(bool*)&params[8] = bClear;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleAdjustFlashCount, params.ptr, cast(void*)0);
	}
	void VehicleAdjustFlashLocation(int SeatIndex, ubyte FireModeNum, Vector NewLocation, bool bClear)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLocation;
		*cast(bool*)&params[20] = bClear;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleAdjustFlashLocation, params.ptr, cast(void*)0);
	}
	void FindGoodEndView(PlayerController PC, ref Rotator GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGoodEndView, params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	bool CalcCamera(float DeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	Vector GetCameraFocus(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraFocus, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetCameraStart(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraStart, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	float LimitCameraZ(float CurrentCamZ, float OriginalCamZ, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = CurrentCamZ;
		*cast(float*)&params[4] = OriginalCamZ;
		*cast(int*)&params[8] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.LimitCameraZ, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void VehicleCalcCamera(float DeltaTime, int SeatIndex, ref Vector out_CamLoc, ref Rotator out_CamRot, ref Vector CamStart, bool bPivotOnly)
	{
		ubyte params[48];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(int*)&params[4] = SeatIndex;
		*cast(Vector*)&params[8] = out_CamLoc;
		*cast(Rotator*)&params[20] = out_CamRot;
		*cast(Vector*)&params[32] = CamStart;
		*cast(bool*)&params[44] = bPivotOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleCalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[8];
		*out_CamRot = *cast(Rotator*)&params[20];
		*CamStart = *cast(Vector*)&params[32];
	}
	void AdjustCameraScale(bool bMoveCameraIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveCameraIn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustCameraScale, params.ptr, cast(void*)0);
	}
	void StartBurnOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartBurnOut, cast(void*)0, cast(void*)0);
	}
	void TurnOffShadows()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurnOffShadows, cast(void*)0, cast(void*)0);
	}
	void DisableDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableDamageSmoke, cast(void*)0, cast(void*)0);
	}
	void DisableCollision()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableCollision, cast(void*)0, cast(void*)0);
	}
	void SetBurnOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBurnOut, cast(void*)0, cast(void*)0);
	}
	bool ShouldSpawnExplosionLight(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSpawnExplosionLight, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void RBPenetrationDestroy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RBPenetrationDestroy, cast(void*)0, cast(void*)0);
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, ref const Actor.CollisionImpactData Collision, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = Collision;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyCollision, params.ptr, cast(void*)0);
		*Collision = *cast(Actor.CollisionImpactData*)&params[8];
	}
	void TurretExplosion()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurretExplosion, cast(void*)0, cast(void*)0);
	}
	void StopVehicleSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopVehicleSounds, cast(void*)0, cast(void*)0);
	}
	void CheckDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDamageSmoke, cast(void*)0, cast(void*)0);
	}
	void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachDriver, params.ptr, cast(void*)0);
	}
	void SitDriver(UTPawn UTP, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SitDriver, params.ptr, cast(void*)0);
	}
	void OnDriverPhysicsAssetChanged(UTPawn UTP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDriverPhysicsAssetChanged, params.ptr, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnPropertyChange(ScriptName PropName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPropertyChange, params.ptr, cast(void*)0);
	}
	int GetHealth(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHealth, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	float GetCollisionDamageModifier(ref const ScriptArray!(Actor.RigidBodyContactInfo) ContactInfos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Actor.RigidBodyContactInfo)*)params.ptr = ContactInfos;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionDamageModifier, params.ptr, cast(void*)0);
		*ContactInfos = *cast(ScriptArray!(Actor.RigidBodyContactInfo)*)params.ptr;
		return *cast(float*)&params[12];
	}
	void InitializeMorphs()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeMorphs, cast(void*)0, cast(void*)0);
	}
	void ReceivedHealthChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedHealthChange, cast(void*)0, cast(void*)0);
	}
	void ApplyMorphHeal(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyMorphHeal, params.ptr, cast(void*)0);
	}
	void ApplyRandomMorphDamage(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyRandomMorphDamage, params.ptr, cast(void*)0);
	}
	UTGib SpawnGibVehicle(Vector SpawnLocation, Rotator SpawnRotation, StaticMesh TheMesh, Vector HitLocation, bool bSpinGib, Vector ImpulseDirection, ParticleSystem PS_OnBreak, ParticleSystem PS_Trail)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		*cast(StaticMesh*)&params[24] = TheMesh;
		*cast(Vector*)&params[28] = HitLocation;
		*cast(bool*)&params[40] = bSpinGib;
		*cast(Vector*)&params[44] = ImpulseDirection;
		*cast(ParticleSystem*)&params[56] = PS_OnBreak;
		*cast(ParticleSystem*)&params[60] = PS_Trail;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnGibVehicle, params.ptr, cast(void*)0);
		return *cast(UTGib*)&params[64];
	}
	void GetSVehicleDebug(ref ScriptArray!(ScriptString) DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSVehicleDebug, params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void OnExitVehicle(UTSeqAct_ExitVehicle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_ExitVehicle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnExitVehicle, params.ptr, cast(void*)0);
	}
	void SetShieldActive(int SeatIndex, bool bActive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShieldActive, params.ptr, cast(void*)0);
	}
	void SetSeatStoragePawn(int SeatIndex, Pawn PawnToSit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Pawn*)&params[4] = PawnToSit;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSeatStoragePawn, params.ptr, cast(void*)0);
	}
	void SetMovementEffect(int SeatIndex, bool bSetActive, UTPawn UTP)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bSetActive;
		*cast(UTPawn*)&params[8] = UTP;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovementEffect, params.ptr, cast(void*)0);
	}
	void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachDriver, params.ptr, cast(void*)0);
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptName GetVehicleKillStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVehicleKillStatName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void DisplayHud(UTHUD pHUD, Canvas pCanvas, UObject.Vector2D HudPOS, int SeatIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = HudPOS;
		*cast(int*)&params[16] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayHud, params.ptr, cast(void*)0);
	}
	void DrawBarGraph(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = MaxWidth;
		*cast(float*)&params[16] = Height;
		*cast(Canvas*)&params[20] = DrawCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawBarGraph, params.ptr, cast(void*)0);
	}
	void DisplayExtraHud(UTHUD pHUD, Canvas pCanvas, UObject.Vector2D pos, float Width, float Height, int SIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = pos;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(int*)&params[24] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayExtraHud, params.ptr, cast(void*)0);
	}
	void DisplaySeats(UTHUD pHUD, Canvas pCanvas, float PosX, float PosY, float Width, float Height, int SIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(float*)&params[8] = PosX;
		*cast(float*)&params[12] = PosY;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(int*)&params[24] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplaySeats, params.ptr, cast(void*)0);
	}
	UObject.LinearColor GetSeatColor(int SeatIndex, bool bIsPlayersSeat)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bIsPlayersSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatColor, params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[8];
	}
	void ApplyWeaponEffects(int OverlayFlags, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OverlayFlags;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyWeaponEffects, params.ptr, cast(void*)0);
	}
	bool ShouldLeaveForCombat(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldLeaveForCombat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
