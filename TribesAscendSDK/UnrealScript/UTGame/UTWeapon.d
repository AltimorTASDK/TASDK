module UnrealScript.UTGame.UTWeapon;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.Texture2D;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.Canvas;
import UnrealScript.UDKBase.UDKWeapon;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Weapon;

extern(C++) interface UTWeapon : UDKWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTWeapon")); }
	private static __gshared UTWeapon mDefaultProperties;
	@property final static UTWeapon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTWeapon)("UTWeapon UTGame.Default__UTWeapon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetAmmoCount;
			ScriptFunction mCoversScreenSpace;
			ScriptFunction mGetPowerPerc;
			ScriptFunction mDesireAmmo;
			ScriptFunction mServerStartFire;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mAdjustWeaponTimingForConsole;
			ScriptFunction mCreateOverlayMesh;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mCalcInventoryWeight;
			ScriptFunction mShouldSwitchTo;
			ScriptFunction mSetSkin;
			ScriptFunction mActiveRenderOverlays;
			ScriptFunction mDrawWeaponCrosshair;
			ScriptFunction mDrawLockedOn;
			ScriptFunction mDisplayDebug;
			ScriptFunction mGetFireInterval;
			ScriptFunction mPlayArmAnimation;
			ScriptFunction mPlayWeaponAnimation;
			ScriptFunction mPlayFireEffects;
			ScriptFunction mStopFireEffects;
			ScriptFunction mShakeView;
			ScriptFunction mWeaponCalcCamera;
			ScriptFunction mWeaponPlaySound;
			ScriptFunction mPlayFiringSound;
			ScriptFunction mMuzzleFlashTimer;
			ScriptFunction mCauseMuzzleFlashLight;
			ScriptFunction mCauseMuzzleFlash;
			ScriptFunction mStopMuzzleFlash;
			ScriptFunction mTimeWeaponPutDown;
			ScriptFunction mPlayWeaponPutDown;
			ScriptFunction mTimeWeaponEquipping;
			ScriptFunction mGetEquipTime;
			ScriptFunction mPlayWeaponEquip;
			ScriptFunction mAttachWeaponTo;
			ScriptFunction mSetMuzzleFlashParams;
			ScriptFunction mAttachMuzzleFlash;
			ScriptFunction mDetachWeapon;
			ScriptFunction mDetachMuzzleFlash;
			ScriptFunction mChangeVisibility;
			ScriptFunction mPerformWeaponChange;
			ScriptFunction mGetViewAxes;
			ScriptFunction mServerReselectWeapon;
			ScriptFunction mCanThrow;
			ScriptFunction mGetHand;
			ScriptFunction mSetPosition;
			ScriptFunction mShouldLagRot;
			ScriptFunction mLagRot;
			ScriptFunction mAdjustPlayerDamage;
			ScriptFunction mRelativeStrengthVersus;
			ScriptFunction mGetWeaponRating;
			ScriptFunction mCanAttack;
			ScriptFunction mBotDesireability;
			ScriptFunction mAmmoMaxed;
			ScriptFunction mGetDamageRadius;
			ScriptFunction mCanHeal;
			ScriptFunction mGetOptimalRangeFor;
			ScriptFunction mFireOnRelease;
			ScriptFunction mFocusOnLeader;
			ScriptFunction mRecommendRangedAttack;
			ScriptFunction mSuggestAttackStyle;
			ScriptFunction mSuggestDefenseStyle;
			ScriptFunction mRangedAttackTime;
			ScriptFunction mSplashJump;
			ScriptFunction mShouldFireWithoutTarget;
			ScriptFunction mBestMode;
			ScriptFunction mIsFullyCharged;
			ScriptFunction mReadyToFire;
			ScriptFunction mStillFiring;
			ScriptFunction mConsumeAmmo;
			ScriptFunction mAddAmmo;
			ScriptFunction mHasAmmo;
			ScriptFunction mHasAnyAmmo;
			ScriptFunction mNeedAmmo;
			ScriptFunction mLoaded;
			ScriptFunction mDenyPickupQuery;
			ScriptFunction mWeaponEmpty;
			ScriptFunction mbReadyToFire;
			ScriptFunction mInstantFireStartTrace;
			ScriptFunction mInstantFireEndTrace;
			ScriptFunction mInstantFire;
			ScriptFunction mInstantAimHelp;
			ScriptFunction mProjectileFire;
			ScriptFunction mProcessInstantHit;
			ScriptFunction mGetZoomedState;
			ScriptFunction mCheckZoom;
			ScriptFunction mStartZoom;
			ScriptFunction mEndZoom;
			ScriptFunction mClientEndFire;
			ScriptFunction mEndFire;
			ScriptFunction mSendToFiringState;
			ScriptFunction mClientWeaponSet;
			ScriptFunction mFireAmmunition;
			ScriptFunction mPreloadTextures;
			ScriptFunction mAllowSwitchTo;
			ScriptFunction mTryPutDown;
			ScriptFunction mFiringPutDownWeapon;
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mGetEffectLocation;
			ScriptFunction mRefireCheckTimer;
			ScriptFunction mSetupArmsAnim;
			ScriptFunction mGetArmAnimNodeSeq;
			ScriptFunction mDestroyed;
			ScriptFunction mSetWeaponOverlayFlags;
			ScriptFunction mDetourWeight;
			ScriptFunction mRecommendLongRangedAttack;
			ScriptFunction mThrottleLook;
			ScriptFunction mActivate;
			ScriptFunction mDropFrom;
			ScriptFunction mClientWeaponThrown;
			ScriptFunction mCanViewAccelerationWhenFiring;
			ScriptFunction mHolderEnteredVehicle;
			ScriptFunction mHolderExitedVehicle;
			ScriptFunction mDrawKillIcon;
			ScriptFunction mEnableFriendlyWarningCrosshair;
		}
		public @property static final
		{
			ScriptFunction GetAmmoCount() { return mGetAmmoCount ? mGetAmmoCount : (mGetAmmoCount = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetAmmoCount")); }
			ScriptFunction CoversScreenSpace() { return mCoversScreenSpace ? mCoversScreenSpace : (mCoversScreenSpace = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CoversScreenSpace")); }
			ScriptFunction GetPowerPerc() { return mGetPowerPerc ? mGetPowerPerc : (mGetPowerPerc = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetPowerPerc")); }
			ScriptFunction DesireAmmo() { return mDesireAmmo ? mDesireAmmo : (mDesireAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DesireAmmo")); }
			ScriptFunction ServerStartFire() { return mServerStartFire ? mServerStartFire : (mServerStartFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ServerStartFire")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PostBeginPlay")); }
			ScriptFunction AdjustWeaponTimingForConsole() { return mAdjustWeaponTimingForConsole ? mAdjustWeaponTimingForConsole : (mAdjustWeaponTimingForConsole = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.AdjustWeaponTimingForConsole")); }
			ScriptFunction CreateOverlayMesh() { return mCreateOverlayMesh ? mCreateOverlayMesh : (mCreateOverlayMesh = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CreateOverlayMesh")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ReplicatedEvent")); }
			ScriptFunction CalcInventoryWeight() { return mCalcInventoryWeight ? mCalcInventoryWeight : (mCalcInventoryWeight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CalcInventoryWeight")); }
			ScriptFunction ShouldSwitchTo() { return mShouldSwitchTo ? mShouldSwitchTo : (mShouldSwitchTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ShouldSwitchTo")); }
			ScriptFunction SetSkin() { return mSetSkin ? mSetSkin : (mSetSkin = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SetSkin")); }
			ScriptFunction ActiveRenderOverlays() { return mActiveRenderOverlays ? mActiveRenderOverlays : (mActiveRenderOverlays = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ActiveRenderOverlays")); }
			ScriptFunction DrawWeaponCrosshair() { return mDrawWeaponCrosshair ? mDrawWeaponCrosshair : (mDrawWeaponCrosshair = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DrawWeaponCrosshair")); }
			ScriptFunction DrawLockedOn() { return mDrawLockedOn ? mDrawLockedOn : (mDrawLockedOn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DrawLockedOn")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DisplayDebug")); }
			ScriptFunction GetFireInterval() { return mGetFireInterval ? mGetFireInterval : (mGetFireInterval = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetFireInterval")); }
			ScriptFunction PlayArmAnimation() { return mPlayArmAnimation ? mPlayArmAnimation : (mPlayArmAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PlayArmAnimation")); }
			ScriptFunction PlayWeaponAnimation() { return mPlayWeaponAnimation ? mPlayWeaponAnimation : (mPlayWeaponAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PlayWeaponAnimation")); }
			ScriptFunction PlayFireEffects() { return mPlayFireEffects ? mPlayFireEffects : (mPlayFireEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PlayFireEffects")); }
			ScriptFunction StopFireEffects() { return mStopFireEffects ? mStopFireEffects : (mStopFireEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.StopFireEffects")); }
			ScriptFunction ShakeView() { return mShakeView ? mShakeView : (mShakeView = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ShakeView")); }
			ScriptFunction WeaponCalcCamera() { return mWeaponCalcCamera ? mWeaponCalcCamera : (mWeaponCalcCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.WeaponCalcCamera")); }
			ScriptFunction WeaponPlaySound() { return mWeaponPlaySound ? mWeaponPlaySound : (mWeaponPlaySound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.WeaponPlaySound")); }
			ScriptFunction PlayFiringSound() { return mPlayFiringSound ? mPlayFiringSound : (mPlayFiringSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PlayFiringSound")); }
			ScriptFunction MuzzleFlashTimer() { return mMuzzleFlashTimer ? mMuzzleFlashTimer : (mMuzzleFlashTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.MuzzleFlashTimer")); }
			ScriptFunction CauseMuzzleFlashLight() { return mCauseMuzzleFlashLight ? mCauseMuzzleFlashLight : (mCauseMuzzleFlashLight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CauseMuzzleFlashLight")); }
			ScriptFunction CauseMuzzleFlash() { return mCauseMuzzleFlash ? mCauseMuzzleFlash : (mCauseMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CauseMuzzleFlash")); }
			ScriptFunction StopMuzzleFlash() { return mStopMuzzleFlash ? mStopMuzzleFlash : (mStopMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.StopMuzzleFlash")); }
			ScriptFunction TimeWeaponPutDown() { return mTimeWeaponPutDown ? mTimeWeaponPutDown : (mTimeWeaponPutDown = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.TimeWeaponPutDown")); }
			ScriptFunction PlayWeaponPutDown() { return mPlayWeaponPutDown ? mPlayWeaponPutDown : (mPlayWeaponPutDown = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PlayWeaponPutDown")); }
			ScriptFunction TimeWeaponEquipping() { return mTimeWeaponEquipping ? mTimeWeaponEquipping : (mTimeWeaponEquipping = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.TimeWeaponEquipping")); }
			ScriptFunction GetEquipTime() { return mGetEquipTime ? mGetEquipTime : (mGetEquipTime = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetEquipTime")); }
			ScriptFunction PlayWeaponEquip() { return mPlayWeaponEquip ? mPlayWeaponEquip : (mPlayWeaponEquip = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PlayWeaponEquip")); }
			ScriptFunction AttachWeaponTo() { return mAttachWeaponTo ? mAttachWeaponTo : (mAttachWeaponTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.AttachWeaponTo")); }
			ScriptFunction SetMuzzleFlashParams() { return mSetMuzzleFlashParams ? mSetMuzzleFlashParams : (mSetMuzzleFlashParams = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SetMuzzleFlashParams")); }
			ScriptFunction AttachMuzzleFlash() { return mAttachMuzzleFlash ? mAttachMuzzleFlash : (mAttachMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.AttachMuzzleFlash")); }
			ScriptFunction DetachWeapon() { return mDetachWeapon ? mDetachWeapon : (mDetachWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DetachWeapon")); }
			ScriptFunction DetachMuzzleFlash() { return mDetachMuzzleFlash ? mDetachMuzzleFlash : (mDetachMuzzleFlash = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DetachMuzzleFlash")); }
			ScriptFunction ChangeVisibility() { return mChangeVisibility ? mChangeVisibility : (mChangeVisibility = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ChangeVisibility")); }
			ScriptFunction PerformWeaponChange() { return mPerformWeaponChange ? mPerformWeaponChange : (mPerformWeaponChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PerformWeaponChange")); }
			ScriptFunction GetViewAxes() { return mGetViewAxes ? mGetViewAxes : (mGetViewAxes = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetViewAxes")); }
			ScriptFunction ServerReselectWeapon() { return mServerReselectWeapon ? mServerReselectWeapon : (mServerReselectWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ServerReselectWeapon")); }
			ScriptFunction CanThrow() { return mCanThrow ? mCanThrow : (mCanThrow = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CanThrow")); }
			ScriptFunction GetHand() { return mGetHand ? mGetHand : (mGetHand = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetHand")); }
			ScriptFunction SetPosition() { return mSetPosition ? mSetPosition : (mSetPosition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SetPosition")); }
			ScriptFunction ShouldLagRot() { return mShouldLagRot ? mShouldLagRot : (mShouldLagRot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ShouldLagRot")); }
			ScriptFunction LagRot() { return mLagRot ? mLagRot : (mLagRot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.LagRot")); }
			ScriptFunction AdjustPlayerDamage() { return mAdjustPlayerDamage ? mAdjustPlayerDamage : (mAdjustPlayerDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.AdjustPlayerDamage")); }
			ScriptFunction RelativeStrengthVersus() { return mRelativeStrengthVersus ? mRelativeStrengthVersus : (mRelativeStrengthVersus = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.RelativeStrengthVersus")); }
			ScriptFunction GetWeaponRating() { return mGetWeaponRating ? mGetWeaponRating : (mGetWeaponRating = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetWeaponRating")); }
			ScriptFunction CanAttack() { return mCanAttack ? mCanAttack : (mCanAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CanAttack")); }
			ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.BotDesireability")); }
			ScriptFunction AmmoMaxed() { return mAmmoMaxed ? mAmmoMaxed : (mAmmoMaxed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.AmmoMaxed")); }
			ScriptFunction GetDamageRadius() { return mGetDamageRadius ? mGetDamageRadius : (mGetDamageRadius = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetDamageRadius")); }
			ScriptFunction CanHeal() { return mCanHeal ? mCanHeal : (mCanHeal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CanHeal")); }
			ScriptFunction GetOptimalRangeFor() { return mGetOptimalRangeFor ? mGetOptimalRangeFor : (mGetOptimalRangeFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetOptimalRangeFor")); }
			ScriptFunction FireOnRelease() { return mFireOnRelease ? mFireOnRelease : (mFireOnRelease = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.FireOnRelease")); }
			ScriptFunction FocusOnLeader() { return mFocusOnLeader ? mFocusOnLeader : (mFocusOnLeader = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.FocusOnLeader")); }
			ScriptFunction RecommendRangedAttack() { return mRecommendRangedAttack ? mRecommendRangedAttack : (mRecommendRangedAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.RecommendRangedAttack")); }
			ScriptFunction SuggestAttackStyle() { return mSuggestAttackStyle ? mSuggestAttackStyle : (mSuggestAttackStyle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SuggestAttackStyle")); }
			ScriptFunction SuggestDefenseStyle() { return mSuggestDefenseStyle ? mSuggestDefenseStyle : (mSuggestDefenseStyle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SuggestDefenseStyle")); }
			ScriptFunction RangedAttackTime() { return mRangedAttackTime ? mRangedAttackTime : (mRangedAttackTime = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.RangedAttackTime")); }
			ScriptFunction SplashJump() { return mSplashJump ? mSplashJump : (mSplashJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SplashJump")); }
			ScriptFunction ShouldFireWithoutTarget() { return mShouldFireWithoutTarget ? mShouldFireWithoutTarget : (mShouldFireWithoutTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ShouldFireWithoutTarget")); }
			ScriptFunction BestMode() { return mBestMode ? mBestMode : (mBestMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.BestMode")); }
			ScriptFunction IsFullyCharged() { return mIsFullyCharged ? mIsFullyCharged : (mIsFullyCharged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.IsFullyCharged")); }
			ScriptFunction ReadyToFire() { return mReadyToFire ? mReadyToFire : (mReadyToFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ReadyToFire")); }
			ScriptFunction StillFiring() { return mStillFiring ? mStillFiring : (mStillFiring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.StillFiring")); }
			ScriptFunction ConsumeAmmo() { return mConsumeAmmo ? mConsumeAmmo : (mConsumeAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ConsumeAmmo")); }
			ScriptFunction AddAmmo() { return mAddAmmo ? mAddAmmo : (mAddAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.AddAmmo")); }
			ScriptFunction HasAmmo() { return mHasAmmo ? mHasAmmo : (mHasAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.HasAmmo")); }
			ScriptFunction HasAnyAmmo() { return mHasAnyAmmo ? mHasAnyAmmo : (mHasAnyAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.HasAnyAmmo")); }
			ScriptFunction NeedAmmo() { return mNeedAmmo ? mNeedAmmo : (mNeedAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.NeedAmmo")); }
			ScriptFunction Loaded() { return mLoaded ? mLoaded : (mLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.Loaded")); }
			ScriptFunction DenyPickupQuery() { return mDenyPickupQuery ? mDenyPickupQuery : (mDenyPickupQuery = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DenyPickupQuery")); }
			ScriptFunction WeaponEmpty() { return mWeaponEmpty ? mWeaponEmpty : (mWeaponEmpty = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.WeaponEmpty")); }
			ScriptFunction bReadyToFire() { return mbReadyToFire ? mbReadyToFire : (mbReadyToFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.bReadyToFire")); }
			ScriptFunction InstantFireStartTrace() { return mInstantFireStartTrace ? mInstantFireStartTrace : (mInstantFireStartTrace = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.InstantFireStartTrace")); }
			ScriptFunction InstantFireEndTrace() { return mInstantFireEndTrace ? mInstantFireEndTrace : (mInstantFireEndTrace = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.InstantFireEndTrace")); }
			ScriptFunction InstantFire() { return mInstantFire ? mInstantFire : (mInstantFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.InstantFire")); }
			ScriptFunction InstantAimHelp() { return mInstantAimHelp ? mInstantAimHelp : (mInstantAimHelp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.InstantAimHelp")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ProjectileFire")); }
			ScriptFunction ProcessInstantHit() { return mProcessInstantHit ? mProcessInstantHit : (mProcessInstantHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ProcessInstantHit")); }
			ScriptFunction GetZoomedState() { return mGetZoomedState ? mGetZoomedState : (mGetZoomedState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetZoomedState")); }
			ScriptFunction CheckZoom() { return mCheckZoom ? mCheckZoom : (mCheckZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CheckZoom")); }
			ScriptFunction StartZoom() { return mStartZoom ? mStartZoom : (mStartZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.StartZoom")); }
			ScriptFunction EndZoom() { return mEndZoom ? mEndZoom : (mEndZoom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.EndZoom")); }
			ScriptFunction ClientEndFire() { return mClientEndFire ? mClientEndFire : (mClientEndFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ClientEndFire")); }
			ScriptFunction EndFire() { return mEndFire ? mEndFire : (mEndFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.EndFire")); }
			ScriptFunction SendToFiringState() { return mSendToFiringState ? mSendToFiringState : (mSendToFiringState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SendToFiringState")); }
			ScriptFunction ClientWeaponSet() { return mClientWeaponSet ? mClientWeaponSet : (mClientWeaponSet = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ClientWeaponSet")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.FireAmmunition")); }
			ScriptFunction PreloadTextures() { return mPreloadTextures ? mPreloadTextures : (mPreloadTextures = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.PreloadTextures")); }
			ScriptFunction AllowSwitchTo() { return mAllowSwitchTo ? mAllowSwitchTo : (mAllowSwitchTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.AllowSwitchTo")); }
			ScriptFunction TryPutDown() { return mTryPutDown ? mTryPutDown : (mTryPutDown = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.TryPutDown")); }
			ScriptFunction FiringPutDownWeapon() { return mFiringPutDownWeapon ? mFiringPutDownWeapon : (mFiringPutDownWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.FiringPutDownWeapon")); }
			ScriptFunction GetPhysicalFireStartLoc() { return mGetPhysicalFireStartLoc ? mGetPhysicalFireStartLoc : (mGetPhysicalFireStartLoc = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetPhysicalFireStartLoc")); }
			ScriptFunction GetEffectLocation() { return mGetEffectLocation ? mGetEffectLocation : (mGetEffectLocation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetEffectLocation")); }
			ScriptFunction RefireCheckTimer() { return mRefireCheckTimer ? mRefireCheckTimer : (mRefireCheckTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.RefireCheckTimer")); }
			ScriptFunction SetupArmsAnim() { return mSetupArmsAnim ? mSetupArmsAnim : (mSetupArmsAnim = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SetupArmsAnim")); }
			ScriptFunction GetArmAnimNodeSeq() { return mGetArmAnimNodeSeq ? mGetArmAnimNodeSeq : (mGetArmAnimNodeSeq = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.GetArmAnimNodeSeq")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.Destroyed")); }
			ScriptFunction SetWeaponOverlayFlags() { return mSetWeaponOverlayFlags ? mSetWeaponOverlayFlags : (mSetWeaponOverlayFlags = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.SetWeaponOverlayFlags")); }
			ScriptFunction DetourWeight() { return mDetourWeight ? mDetourWeight : (mDetourWeight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DetourWeight")); }
			ScriptFunction RecommendLongRangedAttack() { return mRecommendLongRangedAttack ? mRecommendLongRangedAttack : (mRecommendLongRangedAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.RecommendLongRangedAttack")); }
			ScriptFunction ThrottleLook() { return mThrottleLook ? mThrottleLook : (mThrottleLook = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ThrottleLook")); }
			ScriptFunction Activate() { return mActivate ? mActivate : (mActivate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.Activate")); }
			ScriptFunction DropFrom() { return mDropFrom ? mDropFrom : (mDropFrom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DropFrom")); }
			ScriptFunction ClientWeaponThrown() { return mClientWeaponThrown ? mClientWeaponThrown : (mClientWeaponThrown = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.ClientWeaponThrown")); }
			ScriptFunction CanViewAccelerationWhenFiring() { return mCanViewAccelerationWhenFiring ? mCanViewAccelerationWhenFiring : (mCanViewAccelerationWhenFiring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.CanViewAccelerationWhenFiring")); }
			ScriptFunction HolderEnteredVehicle() { return mHolderEnteredVehicle ? mHolderEnteredVehicle : (mHolderEnteredVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.HolderEnteredVehicle")); }
			ScriptFunction HolderExitedVehicle() { return mHolderExitedVehicle ? mHolderExitedVehicle : (mHolderExitedVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.HolderExitedVehicle")); }
			ScriptFunction DrawKillIcon() { return mDrawKillIcon ? mDrawKillIcon : (mDrawKillIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.DrawKillIcon")); }
			ScriptFunction EnableFriendlyWarningCrosshair() { return mEnableFriendlyWarningCrosshair ? mEnableFriendlyWarningCrosshair : (mEnableFriendlyWarningCrosshair = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeapon.EnableFriendlyWarningCrosshair")); }
		}
	}
	enum EZoomState : ubyte
	{
		ZST_NotZoomed = 0,
		ZST_ZoomingOut = 1,
		ZST_ZoomingIn = 2,
		ZST_Zoomed = 3,
		ZST_MAX = 4,
	}
	enum AmmoWidgetDisplayStyle : ubyte
	{
		EAWDS_Numeric = 0,
		EAWDS_BarGraph = 1,
		EAWDS_Both = 2,
		EAWDS_None = 3,
		EAWDS_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			UTWeapon.AmmoWidgetDisplayStyle AmmoDisplayType() { return *cast(UTWeapon.AmmoWidgetDisplayStyle*)(cast(size_t)cast(void*)this + 970); }
			ubyte InventoryGroup() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 969); }
			ScriptString UseHintString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1460); }
			UIRoot.TextureCoordinates SimpleCrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 868); }
			UIRoot.TextureCoordinates CustomCrosshairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 936); }
			float LastHitEnemyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
			float InventoryWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1012); }
			float GroupWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1008); }
			UIRoot.TextureCoordinates CrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 852); }
			float CrosshairScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
			Texture2D CrosshairImage() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 884); }
			UObject.Color CrosshairColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 928); }
			float LockedStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 920); }
			float CurrentLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
			float StartLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 908); }
			float LockedScaleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
			float FinalLockedScale() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
			UIRoot.TextureCoordinates LockedCrossHairCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 888); }
			float ZoomedRate() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
			float ZoomedTargetFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 972); }
			AnimSet ArmsAnimSet() { return *cast(AnimSet*)(cast(size_t)cast(void*)this + 1040); }
			ScriptArray!(ScriptName) WeaponFireAnim() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1016); }
			ScriptArray!(ScriptName) ArmFireAnim() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1028); }
			ScriptArray!(CameraAnim) FireCameraAnim() { return *cast(ScriptArray!(CameraAnim)*)(cast(size_t)cast(void*)this + 788); }
			ForceFeedbackWaveform WeaponFireWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 800); }
			ScriptArray!(SoundCue) WeaponFireSnd() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 1100); }
			ScriptClass MuzzleFlashLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1224); }
			ScriptName MuzzleFlashSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1196); }
			ParticleSystem MuzzleFlashAltPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1212); }
			ParticleSystem MuzzleFlashPSCTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1208); }
			float MuzzleFlashDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
			ScriptName WeaponPutDownAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1044); }
			ScriptName ArmsPutDownAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1052); }
			SoundCue WeaponPutDownSnd() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1112); }
			ScriptName WeaponEquipAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1060); }
			ScriptName ArmsEquipAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1068); }
			SoundCue WeaponEquipSnd() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1116); }
			ScriptClass AttachmentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 992); }
			UObject.Color MuzzleFlashColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1216); }
			Vector HiddenWeaponsOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1272); }
			Vector PlayerViewOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1232); }
			Vector SmallWeaponsOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1244); }
			float WideScreenOffsetScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1256); }
			float BobDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 1120); }
			float JumpDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 1124); }
			Rotator LastRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1140); }
			float MaxYawLag() { return *cast(float*)(cast(size_t)cast(void*)this + 1132); }
			float MaxPitchLag() { return *cast(float*)(cast(size_t)cast(void*)this + 1128); }
			float LastRotUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 1136); }
			Rotator WidescreenRotationOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1260); }
			int OldRotDiff() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
			float OldLeadMag() { return *cast(float*)(cast(size_t)cast(void*)this + 1152); }
			float OldMaxDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 1168); }
			float RotChgSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1176); }
			float ReturnChgSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1180); }
			float CurrentRating() { return *cast(float*)(cast(size_t)cast(void*)this + 1312); }
			ScriptClass AmmoPickupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 752); }
			int MaxAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 760); }
			ScriptArray!(ubyte) bZoomedFireMode() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 956); }
			ScriptArray!(int) ShotCost() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 764); }
			float AimingHelpRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
			ubyte ZoomedFireModeNum() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 968); }
			SoundCue ZoomInSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 984); }
			SoundCue ZoomOutSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 988); }
			float SwitchAbortTime() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			ScriptArray!(float) MinReloadPct() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 776); }
			float ProjectileSpawnOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1284); }
			ScriptArray!(ScriptName) EffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 804); }
			float WeaponCanvasXPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1188); }
			float WeaponCanvasYPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
			UIRoot.TextureCoordinates IconCoordinates() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 836); }
			int LockerAmmoCount() { return *cast(int*)(cast(size_t)cast(void*)this + 756); }
			int IconX() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
			int IconY() { return *cast(int*)(cast(size_t)cast(void*)this + 820); }
			int IconWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 824); }
			int IconHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 828); }
			float DroppedPickupOffsetZ() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
			float ZoomFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 980); }
			Vector PivotTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 996); }
			ScriptArray!(ScriptName) WeaponIdleAnims() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1076); }
			ScriptArray!(ScriptName) ArmIdleAnims() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1088); }
			UObject.Color WeaponColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1184); }
			Rotator LockerRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1288); }
			Vector LockerOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1300); }
			float aimerror() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
			UDKPlayerController.ObjectiveAnnouncementInfo NeedToPickUpAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 1320); }
			float ZoomedTurnSpeedScalePct() { return *cast(float*)(cast(size_t)cast(void*)this + 1344); }
			float TargetFrictionDistanceMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1348); }
			float TargetFrictionDistancePeak() { return *cast(float*)(cast(size_t)cast(void*)this + 1352); }
			float TargetFrictionDistanceMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1356); }
			UObject.InterpCurveFloat TargetFrictionDistanceCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 1360); }
			UObject.Vector2D TargetFrictionMultiplierRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1376); }
			float TargetFrictionPeakRadiusScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
			float TargetFrictionPeakHeightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
			Vector TargetFrictionOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1392); }
			float TargetFrictionZoomedBoostValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1404); }
			float TargetAdhesionTimeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1408); }
			float TargetAdhesionDistanceMax() { return *cast(float*)(cast(size_t)cast(void*)this + 1412); }
			float TargetAdhesionAimDistY() { return *cast(float*)(cast(size_t)cast(void*)this + 1416); }
			float TargetAdhesionAimDistZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
			UObject.Vector2D TargetAdhesionScaleRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 1424); }
			float TargetAdhesionScaleAmountMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1432); }
			float TargetAdhesionTargetVelocityMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1436); }
			float TargetAdhesionPlayerVelocityMin() { return *cast(float*)(cast(size_t)cast(void*)this + 1440); }
			float TargetAdhesionZoomedBoostValue() { return *cast(float*)(cast(size_t)cast(void*)this + 1444); }
			ScriptArray!(SoundNodeWave) LocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1448); }
		}
		bool bExportMenuData() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x1) != 0; }
		bool bExportMenuData(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x1; } return val; }
		bool bAllowFiringWithoutController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x40000) != 0; }
		bool bAllowFiringWithoutController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x40000; } return val; }
		bool bSmallWeapons() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x8) != 0; }
		bool bSmallWeapons(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x8; } return val; }
		bool bUseCustomCoordinates() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x4) != 0; }
		bool bUseCustomCoordinates(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x4; } return val; }
		bool bWasLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x2) != 0; }
		bool bWasLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x2; } return val; }
		bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x40) != 0; }
		bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x40; } return val; }
		bool bMuzzleFlashPSCLoops() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x400) != 0; }
		bool bMuzzleFlashPSCLoops(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x400; } return val; }
		bool bShowAltMuzzlePSCWhenWeaponHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x200) != 0; }
		bool bShowAltMuzzlePSCWhenWeaponHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x200; } return val; }
		bool bMuzzleFlashAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x800) != 0; }
		bool bMuzzleFlashAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x800; } return val; }
		bool bPendingShow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x100) != 0; }
		bool bPendingShow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x100; } return val; }
		bool bForceHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x200000) != 0; }
		bool bForceHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x200000; } return val; }
		bool bSplashJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x1000) != 0; }
		bool bSplashJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x1000; } return val; }
		bool bUsingAimingHelp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x20000) != 0; }
		bool bUsingAimingHelp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x20000; } return val; }
		bool bSuperWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x10) != 0; }
		bool bSuperWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x10; } return val; }
		bool bNeverForwardPendingFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x20) != 0; }
		bool bNeverForwardPendingFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x20; } return val; }
		bool bUsesOffhand() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x80) != 0; }
		bool bUsesOffhand(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x80; } return val; }
		bool bRecommendSplashDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x2000) != 0; }
		bool bRecommendSplashDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x2000; } return val; }
		bool bSniping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x4000) != 0; }
		bool bSniping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x4000; } return val; }
		bool bFastRepeater() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x8000) != 0; }
		bool bFastRepeater(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x8000; } return val; }
		bool bLockedAimWhileFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x10000) != 0; }
		bool bLockedAimWhileFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x10000; } return val; }
		bool bTargetFrictionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x80000) != 0; }
		bool bTargetFrictionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x80000; } return val; }
		bool bTargetAdhesionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x100000) != 0; }
		bool bTargetAdhesionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x100000; } return val; }
		bool bHasLocationSpeech() { return (*cast(uint*)(cast(size_t)cast(void*)this + 748) & 0x400000) != 0; }
		bool bHasLocationSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 748) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 748) &= ~0x400000; } return val; }
	}
final:
	int GetAmmoCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAmmoCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool CoversScreenSpace(Vector ScreenLoc, Canvas pCanvas)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = ScreenLoc;
		*cast(Canvas*)&params[12] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.CoversScreenSpace, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	float GetPowerPerc()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPowerPerc, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float DesireAmmo(bool bDetour)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDetour;
		(cast(ScriptObject)this).ProcessEvent(Functions.DesireAmmo, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void ServerStartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerStartFire, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void AdjustWeaponTimingForConsole()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustWeaponTimingForConsole, cast(void*)0, cast(void*)0);
	}
	void CreateOverlayMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateOverlayMesh, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void CalcInventoryWeight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcInventoryWeight, cast(void*)0, cast(void*)0);
	}
	bool ShouldSwitchTo(UTWeapon InWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldSwitchTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetSkin(Material NewMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Material*)params.ptr = NewMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkin, params.ptr, cast(void*)0);
	}
	void ActiveRenderOverlays(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActiveRenderOverlays, params.ptr, cast(void*)0);
	}
	void DrawWeaponCrosshair(HUD pHUD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawWeaponCrosshair, params.ptr, cast(void*)0);
	}
	void DrawLockedOn(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawLockedOn, params.ptr, cast(void*)0);
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
	float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireInterval, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void PlayArmAnimation(ScriptName pSequence, float fDesiredDuration, bool OffHand, bool bLoop, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		*cast(bool*)&params[12] = OffHand;
		*cast(bool*)&params[16] = bLoop;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayArmAnimation, params.ptr, cast(void*)0);
	}
	void PlayWeaponAnimation(ScriptName pSequence, float fDesiredDuration, bool bLoop, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		*cast(bool*)&params[12] = bLoop;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponAnimation, params.ptr, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireEffects, params.ptr, cast(void*)0);
	}
	void StopFireEffects(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFireEffects, params.ptr, cast(void*)0);
	}
	void ShakeView()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShakeView, cast(void*)0, cast(void*)0);
	}
	void WeaponCalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponCalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
	}
	void WeaponPlaySound(SoundCue Sound, float NoiseLoudness, bool bStopWhenOwnerDestroyed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		*cast(float*)&params[4] = NoiseLoudness;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponPlaySound, params.ptr, cast(void*)0);
	}
	void PlayFiringSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFiringSound, cast(void*)0, cast(void*)0);
	}
	void MuzzleFlashTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MuzzleFlashTimer, cast(void*)0, cast(void*)0);
	}
	void CauseMuzzleFlashLight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CauseMuzzleFlashLight, cast(void*)0, cast(void*)0);
	}
	void CauseMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CauseMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void StopMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void TimeWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void TimeWeaponEquipping()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeWeaponEquipping, cast(void*)0, cast(void*)0);
	}
	float GetEquipTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponEquip, cast(void*)0, cast(void*)0);
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
	void SetMuzzleFlashParams(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMuzzleFlashParams, params.ptr, cast(void*)0);
	}
	void AttachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void DetachWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachWeapon, cast(void*)0, cast(void*)0);
	}
	void DetachMuzzleFlash()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachMuzzleFlash, cast(void*)0, cast(void*)0);
	}
	void ChangeVisibility(bool bIsVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeVisibility, params.ptr, cast(void*)0);
	}
	void PerformWeaponChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformWeaponChange, cast(void*)0, cast(void*)0);
	}
	void GetViewAxes(Vector* XAxis, Vector* YAxis, Vector* ZAxis)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = *XAxis;
		*cast(Vector*)&params[12] = *YAxis;
		*cast(Vector*)&params[24] = *ZAxis;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewAxes, params.ptr, cast(void*)0);
		*XAxis = *cast(Vector*)params.ptr;
		*YAxis = *cast(Vector*)&params[12];
		*ZAxis = *cast(Vector*)&params[24];
	}
	void ServerReselectWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerReselectWeapon, cast(void*)0, cast(void*)0);
	}
	bool CanThrow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanThrow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	UTPlayerController.EWeaponHand GetHand()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHand, params.ptr, cast(void*)0);
		return *cast(UTPlayerController.EWeaponHand*)params.ptr;
	}
	void SetPosition(UDKPawn Holder, float DeltaSeconds)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKPawn*)params.ptr = Holder;
		*cast(float*)&params[4] = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPosition, params.ptr, cast(void*)0);
	}
	bool ShouldLagRot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldLagRot, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	void AdjustPlayerDamage(int* Damage, Controller InstigatedBy, Vector HitLocation, Vector* Momentum, ScriptClass pDamageType)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = *Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = *Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustPlayerDamage, params.ptr, cast(void*)0);
		*Damage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[20];
	}
	float RelativeStrengthVersus(Pawn P, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(Functions.RelativeStrengthVersus, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	float GetWeaponRating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponRating, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	static float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		StaticClass.ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	bool AmmoMaxed(int Mode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(Functions.AmmoMaxed, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetDamageRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamageRadius, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool CanHeal(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanHeal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetOptimalRangeFor(Actor Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOptimalRangeFor, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool FireOnRelease()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireOnRelease, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool FocusOnLeader(bool bLeaderFiring)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bLeaderFiring;
		(cast(ScriptObject)this).ProcessEvent(Functions.FocusOnLeader, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool RecommendRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecommendRangedAttack, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float SuggestAttackStyle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestAttackStyle, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float SuggestDefenseStyle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestDefenseStyle, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RangedAttackTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool SplashJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SplashJump, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldFireWithoutTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldFireWithoutTarget, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ubyte BestMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.BestMode, params.ptr, cast(void*)0);
		return params[0];
	}
	bool IsFullyCharged()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFullyCharged, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ReadyToFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadyToFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StillFiring(ubyte FireMode)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.StillFiring, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo, params.ptr, cast(void*)0);
	}
	int AddAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
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
	bool NeedAmmo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Loaded(bool bUseWeaponMax)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUseWeaponMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.Loaded, params.ptr, cast(void*)0);
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
	void WeaponEmpty()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponEmpty, cast(void*)0, cast(void*)0);
	}
	bool bReadyToFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.bReadyToFire, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector InstantFireStartTrace()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFireStartTrace, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector InstantFireEndTrace(Vector StartTrace)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFireEndTrace, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
	Actor.ImpactInfo InstantAimHelp(Vector StartTrace, Vector EndTrace, Actor.ImpactInfo RealImpact)
	{
		ubyte params[184];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(Actor.ImpactInfo*)&params[24] = RealImpact;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantAimHelp, params.ptr, cast(void*)0);
		return *cast(Actor.ImpactInfo*)&params[104];
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
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
	UTWeapon.EZoomState GetZoomedState()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetZoomedState, params.ptr, cast(void*)0);
		return *cast(UTWeapon.EZoomState*)params.ptr;
	}
	bool CheckZoom(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckZoom, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	void ClientEndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientEndFire, params.ptr, cast(void*)0);
	}
	void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndFire, params.ptr, cast(void*)0);
	}
	void SendToFiringState(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendToFiringState, params.ptr, cast(void*)0);
	}
	void ClientWeaponSet(bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWeaponSet, params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	void PreloadTextures(bool bForcePreload)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForcePreload;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreloadTextures, params.ptr, cast(void*)0);
	}
	bool AllowSwitchTo(Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowSwitchTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TryPutDown()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryPutDown, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void FiringPutDownWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FiringPutDownWeapon, cast(void*)0, cast(void*)0);
	}
	Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	Vector GetEffectLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEffectLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void RefireCheckTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefireCheckTimer, cast(void*)0, cast(void*)0);
	}
	void SetupArmsAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupArmsAnim, cast(void*)0, cast(void*)0);
	}
	AnimNodeSequence GetArmAnimNodeSeq()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetArmAnimNodeSeq, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void SetWeaponOverlayFlags(UTPawn OwnerPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponOverlayFlags, params.ptr, cast(void*)0);
	}
	static float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		StaticClass.ProcessEvent(Functions.DetourWeight, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecommendLongRangedAttack, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ThrottleLook(float* aTurn, float* aLookUp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *aTurn;
		*cast(float*)&params[4] = *aLookUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrottleLook, params.ptr, cast(void*)0);
		*aTurn = *cast(float*)params.ptr;
		*aLookUp = *cast(float*)&params[4];
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activate, cast(void*)0, cast(void*)0);
	}
	void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(Functions.DropFrom, params.ptr, cast(void*)0);
	}
	void ClientWeaponThrown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWeaponThrown, cast(void*)0, cast(void*)0);
	}
	bool CanViewAccelerationWhenFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanViewAccelerationWhenFiring, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void HolderEnteredVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HolderEnteredVehicle, cast(void*)0, cast(void*)0);
	}
	void HolderExitedVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HolderExitedVehicle, cast(void*)0, cast(void*)0);
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
	bool EnableFriendlyWarningCrosshair()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableFriendlyWarningCrosshair, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
