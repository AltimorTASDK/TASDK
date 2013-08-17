module UnrealScript.UTGame.UTWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTWeapon")()); }
	private static __gshared UTWeapon mDefaultProperties;
	@property final static UTWeapon DefaultProperties() { mixin(MGDPC!(UTWeapon, "UTWeapon UTGame.Default__UTWeapon")()); }
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
			ScriptFunction GetAmmoCount() { mixin(MGF!("mGetAmmoCount", "Function UTGame.UTWeapon.GetAmmoCount")()); }
			ScriptFunction CoversScreenSpace() { mixin(MGF!("mCoversScreenSpace", "Function UTGame.UTWeapon.CoversScreenSpace")()); }
			ScriptFunction GetPowerPerc() { mixin(MGF!("mGetPowerPerc", "Function UTGame.UTWeapon.GetPowerPerc")()); }
			ScriptFunction DesireAmmo() { mixin(MGF!("mDesireAmmo", "Function UTGame.UTWeapon.DesireAmmo")()); }
			ScriptFunction ServerStartFire() { mixin(MGF!("mServerStartFire", "Function UTGame.UTWeapon.ServerStartFire")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTWeapon.PostBeginPlay")()); }
			ScriptFunction AdjustWeaponTimingForConsole() { mixin(MGF!("mAdjustWeaponTimingForConsole", "Function UTGame.UTWeapon.AdjustWeaponTimingForConsole")()); }
			ScriptFunction CreateOverlayMesh() { mixin(MGF!("mCreateOverlayMesh", "Function UTGame.UTWeapon.CreateOverlayMesh")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function UTGame.UTWeapon.ReplicatedEvent")()); }
			ScriptFunction CalcInventoryWeight() { mixin(MGF!("mCalcInventoryWeight", "Function UTGame.UTWeapon.CalcInventoryWeight")()); }
			ScriptFunction ShouldSwitchTo() { mixin(MGF!("mShouldSwitchTo", "Function UTGame.UTWeapon.ShouldSwitchTo")()); }
			ScriptFunction SetSkin() { mixin(MGF!("mSetSkin", "Function UTGame.UTWeapon.SetSkin")()); }
			ScriptFunction ActiveRenderOverlays() { mixin(MGF!("mActiveRenderOverlays", "Function UTGame.UTWeapon.ActiveRenderOverlays")()); }
			ScriptFunction DrawWeaponCrosshair() { mixin(MGF!("mDrawWeaponCrosshair", "Function UTGame.UTWeapon.DrawWeaponCrosshair")()); }
			ScriptFunction DrawLockedOn() { mixin(MGF!("mDrawLockedOn", "Function UTGame.UTWeapon.DrawLockedOn")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function UTGame.UTWeapon.DisplayDebug")()); }
			ScriptFunction GetFireInterval() { mixin(MGF!("mGetFireInterval", "Function UTGame.UTWeapon.GetFireInterval")()); }
			ScriptFunction PlayArmAnimation() { mixin(MGF!("mPlayArmAnimation", "Function UTGame.UTWeapon.PlayArmAnimation")()); }
			ScriptFunction PlayWeaponAnimation() { mixin(MGF!("mPlayWeaponAnimation", "Function UTGame.UTWeapon.PlayWeaponAnimation")()); }
			ScriptFunction PlayFireEffects() { mixin(MGF!("mPlayFireEffects", "Function UTGame.UTWeapon.PlayFireEffects")()); }
			ScriptFunction StopFireEffects() { mixin(MGF!("mStopFireEffects", "Function UTGame.UTWeapon.StopFireEffects")()); }
			ScriptFunction ShakeView() { mixin(MGF!("mShakeView", "Function UTGame.UTWeapon.ShakeView")()); }
			ScriptFunction WeaponCalcCamera() { mixin(MGF!("mWeaponCalcCamera", "Function UTGame.UTWeapon.WeaponCalcCamera")()); }
			ScriptFunction WeaponPlaySound() { mixin(MGF!("mWeaponPlaySound", "Function UTGame.UTWeapon.WeaponPlaySound")()); }
			ScriptFunction PlayFiringSound() { mixin(MGF!("mPlayFiringSound", "Function UTGame.UTWeapon.PlayFiringSound")()); }
			ScriptFunction MuzzleFlashTimer() { mixin(MGF!("mMuzzleFlashTimer", "Function UTGame.UTWeapon.MuzzleFlashTimer")()); }
			ScriptFunction CauseMuzzleFlashLight() { mixin(MGF!("mCauseMuzzleFlashLight", "Function UTGame.UTWeapon.CauseMuzzleFlashLight")()); }
			ScriptFunction CauseMuzzleFlash() { mixin(MGF!("mCauseMuzzleFlash", "Function UTGame.UTWeapon.CauseMuzzleFlash")()); }
			ScriptFunction StopMuzzleFlash() { mixin(MGF!("mStopMuzzleFlash", "Function UTGame.UTWeapon.StopMuzzleFlash")()); }
			ScriptFunction TimeWeaponPutDown() { mixin(MGF!("mTimeWeaponPutDown", "Function UTGame.UTWeapon.TimeWeaponPutDown")()); }
			ScriptFunction PlayWeaponPutDown() { mixin(MGF!("mPlayWeaponPutDown", "Function UTGame.UTWeapon.PlayWeaponPutDown")()); }
			ScriptFunction TimeWeaponEquipping() { mixin(MGF!("mTimeWeaponEquipping", "Function UTGame.UTWeapon.TimeWeaponEquipping")()); }
			ScriptFunction GetEquipTime() { mixin(MGF!("mGetEquipTime", "Function UTGame.UTWeapon.GetEquipTime")()); }
			ScriptFunction PlayWeaponEquip() { mixin(MGF!("mPlayWeaponEquip", "Function UTGame.UTWeapon.PlayWeaponEquip")()); }
			ScriptFunction AttachWeaponTo() { mixin(MGF!("mAttachWeaponTo", "Function UTGame.UTWeapon.AttachWeaponTo")()); }
			ScriptFunction SetMuzzleFlashParams() { mixin(MGF!("mSetMuzzleFlashParams", "Function UTGame.UTWeapon.SetMuzzleFlashParams")()); }
			ScriptFunction AttachMuzzleFlash() { mixin(MGF!("mAttachMuzzleFlash", "Function UTGame.UTWeapon.AttachMuzzleFlash")()); }
			ScriptFunction DetachWeapon() { mixin(MGF!("mDetachWeapon", "Function UTGame.UTWeapon.DetachWeapon")()); }
			ScriptFunction DetachMuzzleFlash() { mixin(MGF!("mDetachMuzzleFlash", "Function UTGame.UTWeapon.DetachMuzzleFlash")()); }
			ScriptFunction ChangeVisibility() { mixin(MGF!("mChangeVisibility", "Function UTGame.UTWeapon.ChangeVisibility")()); }
			ScriptFunction PerformWeaponChange() { mixin(MGF!("mPerformWeaponChange", "Function UTGame.UTWeapon.PerformWeaponChange")()); }
			ScriptFunction GetViewAxes() { mixin(MGF!("mGetViewAxes", "Function UTGame.UTWeapon.GetViewAxes")()); }
			ScriptFunction ServerReselectWeapon() { mixin(MGF!("mServerReselectWeapon", "Function UTGame.UTWeapon.ServerReselectWeapon")()); }
			ScriptFunction CanThrow() { mixin(MGF!("mCanThrow", "Function UTGame.UTWeapon.CanThrow")()); }
			ScriptFunction GetHand() { mixin(MGF!("mGetHand", "Function UTGame.UTWeapon.GetHand")()); }
			ScriptFunction SetPosition() { mixin(MGF!("mSetPosition", "Function UTGame.UTWeapon.SetPosition")()); }
			ScriptFunction ShouldLagRot() { mixin(MGF!("mShouldLagRot", "Function UTGame.UTWeapon.ShouldLagRot")()); }
			ScriptFunction LagRot() { mixin(MGF!("mLagRot", "Function UTGame.UTWeapon.LagRot")()); }
			ScriptFunction AdjustPlayerDamage() { mixin(MGF!("mAdjustPlayerDamage", "Function UTGame.UTWeapon.AdjustPlayerDamage")()); }
			ScriptFunction RelativeStrengthVersus() { mixin(MGF!("mRelativeStrengthVersus", "Function UTGame.UTWeapon.RelativeStrengthVersus")()); }
			ScriptFunction GetWeaponRating() { mixin(MGF!("mGetWeaponRating", "Function UTGame.UTWeapon.GetWeaponRating")()); }
			ScriptFunction CanAttack() { mixin(MGF!("mCanAttack", "Function UTGame.UTWeapon.CanAttack")()); }
			ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function UTGame.UTWeapon.BotDesireability")()); }
			ScriptFunction AmmoMaxed() { mixin(MGF!("mAmmoMaxed", "Function UTGame.UTWeapon.AmmoMaxed")()); }
			ScriptFunction GetDamageRadius() { mixin(MGF!("mGetDamageRadius", "Function UTGame.UTWeapon.GetDamageRadius")()); }
			ScriptFunction CanHeal() { mixin(MGF!("mCanHeal", "Function UTGame.UTWeapon.CanHeal")()); }
			ScriptFunction GetOptimalRangeFor() { mixin(MGF!("mGetOptimalRangeFor", "Function UTGame.UTWeapon.GetOptimalRangeFor")()); }
			ScriptFunction FireOnRelease() { mixin(MGF!("mFireOnRelease", "Function UTGame.UTWeapon.FireOnRelease")()); }
			ScriptFunction FocusOnLeader() { mixin(MGF!("mFocusOnLeader", "Function UTGame.UTWeapon.FocusOnLeader")()); }
			ScriptFunction RecommendRangedAttack() { mixin(MGF!("mRecommendRangedAttack", "Function UTGame.UTWeapon.RecommendRangedAttack")()); }
			ScriptFunction SuggestAttackStyle() { mixin(MGF!("mSuggestAttackStyle", "Function UTGame.UTWeapon.SuggestAttackStyle")()); }
			ScriptFunction SuggestDefenseStyle() { mixin(MGF!("mSuggestDefenseStyle", "Function UTGame.UTWeapon.SuggestDefenseStyle")()); }
			ScriptFunction RangedAttackTime() { mixin(MGF!("mRangedAttackTime", "Function UTGame.UTWeapon.RangedAttackTime")()); }
			ScriptFunction SplashJump() { mixin(MGF!("mSplashJump", "Function UTGame.UTWeapon.SplashJump")()); }
			ScriptFunction ShouldFireWithoutTarget() { mixin(MGF!("mShouldFireWithoutTarget", "Function UTGame.UTWeapon.ShouldFireWithoutTarget")()); }
			ScriptFunction BestMode() { mixin(MGF!("mBestMode", "Function UTGame.UTWeapon.BestMode")()); }
			ScriptFunction IsFullyCharged() { mixin(MGF!("mIsFullyCharged", "Function UTGame.UTWeapon.IsFullyCharged")()); }
			ScriptFunction ReadyToFire() { mixin(MGF!("mReadyToFire", "Function UTGame.UTWeapon.ReadyToFire")()); }
			ScriptFunction StillFiring() { mixin(MGF!("mStillFiring", "Function UTGame.UTWeapon.StillFiring")()); }
			ScriptFunction ConsumeAmmo() { mixin(MGF!("mConsumeAmmo", "Function UTGame.UTWeapon.ConsumeAmmo")()); }
			ScriptFunction AddAmmo() { mixin(MGF!("mAddAmmo", "Function UTGame.UTWeapon.AddAmmo")()); }
			ScriptFunction HasAmmo() { mixin(MGF!("mHasAmmo", "Function UTGame.UTWeapon.HasAmmo")()); }
			ScriptFunction HasAnyAmmo() { mixin(MGF!("mHasAnyAmmo", "Function UTGame.UTWeapon.HasAnyAmmo")()); }
			ScriptFunction NeedAmmo() { mixin(MGF!("mNeedAmmo", "Function UTGame.UTWeapon.NeedAmmo")()); }
			ScriptFunction Loaded() { mixin(MGF!("mLoaded", "Function UTGame.UTWeapon.Loaded")()); }
			ScriptFunction DenyPickupQuery() { mixin(MGF!("mDenyPickupQuery", "Function UTGame.UTWeapon.DenyPickupQuery")()); }
			ScriptFunction WeaponEmpty() { mixin(MGF!("mWeaponEmpty", "Function UTGame.UTWeapon.WeaponEmpty")()); }
			ScriptFunction bReadyToFire() { mixin(MGF!("mbReadyToFire", "Function UTGame.UTWeapon.bReadyToFire")()); }
			ScriptFunction InstantFireStartTrace() { mixin(MGF!("mInstantFireStartTrace", "Function UTGame.UTWeapon.InstantFireStartTrace")()); }
			ScriptFunction InstantFireEndTrace() { mixin(MGF!("mInstantFireEndTrace", "Function UTGame.UTWeapon.InstantFireEndTrace")()); }
			ScriptFunction InstantFire() { mixin(MGF!("mInstantFire", "Function UTGame.UTWeapon.InstantFire")()); }
			ScriptFunction InstantAimHelp() { mixin(MGF!("mInstantAimHelp", "Function UTGame.UTWeapon.InstantAimHelp")()); }
			ScriptFunction ProjectileFire() { mixin(MGF!("mProjectileFire", "Function UTGame.UTWeapon.ProjectileFire")()); }
			ScriptFunction ProcessInstantHit() { mixin(MGF!("mProcessInstantHit", "Function UTGame.UTWeapon.ProcessInstantHit")()); }
			ScriptFunction GetZoomedState() { mixin(MGF!("mGetZoomedState", "Function UTGame.UTWeapon.GetZoomedState")()); }
			ScriptFunction CheckZoom() { mixin(MGF!("mCheckZoom", "Function UTGame.UTWeapon.CheckZoom")()); }
			ScriptFunction StartZoom() { mixin(MGF!("mStartZoom", "Function UTGame.UTWeapon.StartZoom")()); }
			ScriptFunction EndZoom() { mixin(MGF!("mEndZoom", "Function UTGame.UTWeapon.EndZoom")()); }
			ScriptFunction ClientEndFire() { mixin(MGF!("mClientEndFire", "Function UTGame.UTWeapon.ClientEndFire")()); }
			ScriptFunction EndFire() { mixin(MGF!("mEndFire", "Function UTGame.UTWeapon.EndFire")()); }
			ScriptFunction SendToFiringState() { mixin(MGF!("mSendToFiringState", "Function UTGame.UTWeapon.SendToFiringState")()); }
			ScriptFunction ClientWeaponSet() { mixin(MGF!("mClientWeaponSet", "Function UTGame.UTWeapon.ClientWeaponSet")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function UTGame.UTWeapon.FireAmmunition")()); }
			ScriptFunction PreloadTextures() { mixin(MGF!("mPreloadTextures", "Function UTGame.UTWeapon.PreloadTextures")()); }
			ScriptFunction AllowSwitchTo() { mixin(MGF!("mAllowSwitchTo", "Function UTGame.UTWeapon.AllowSwitchTo")()); }
			ScriptFunction TryPutDown() { mixin(MGF!("mTryPutDown", "Function UTGame.UTWeapon.TryPutDown")()); }
			ScriptFunction FiringPutDownWeapon() { mixin(MGF!("mFiringPutDownWeapon", "Function UTGame.UTWeapon.FiringPutDownWeapon")()); }
			ScriptFunction GetPhysicalFireStartLoc() { mixin(MGF!("mGetPhysicalFireStartLoc", "Function UTGame.UTWeapon.GetPhysicalFireStartLoc")()); }
			ScriptFunction GetEffectLocation() { mixin(MGF!("mGetEffectLocation", "Function UTGame.UTWeapon.GetEffectLocation")()); }
			ScriptFunction RefireCheckTimer() { mixin(MGF!("mRefireCheckTimer", "Function UTGame.UTWeapon.RefireCheckTimer")()); }
			ScriptFunction SetupArmsAnim() { mixin(MGF!("mSetupArmsAnim", "Function UTGame.UTWeapon.SetupArmsAnim")()); }
			ScriptFunction GetArmAnimNodeSeq() { mixin(MGF!("mGetArmAnimNodeSeq", "Function UTGame.UTWeapon.GetArmAnimNodeSeq")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTWeapon.Destroyed")()); }
			ScriptFunction SetWeaponOverlayFlags() { mixin(MGF!("mSetWeaponOverlayFlags", "Function UTGame.UTWeapon.SetWeaponOverlayFlags")()); }
			ScriptFunction DetourWeight() { mixin(MGF!("mDetourWeight", "Function UTGame.UTWeapon.DetourWeight")()); }
			ScriptFunction RecommendLongRangedAttack() { mixin(MGF!("mRecommendLongRangedAttack", "Function UTGame.UTWeapon.RecommendLongRangedAttack")()); }
			ScriptFunction ThrottleLook() { mixin(MGF!("mThrottleLook", "Function UTGame.UTWeapon.ThrottleLook")()); }
			ScriptFunction Activate() { mixin(MGF!("mActivate", "Function UTGame.UTWeapon.Activate")()); }
			ScriptFunction DropFrom() { mixin(MGF!("mDropFrom", "Function UTGame.UTWeapon.DropFrom")()); }
			ScriptFunction ClientWeaponThrown() { mixin(MGF!("mClientWeaponThrown", "Function UTGame.UTWeapon.ClientWeaponThrown")()); }
			ScriptFunction CanViewAccelerationWhenFiring() { mixin(MGF!("mCanViewAccelerationWhenFiring", "Function UTGame.UTWeapon.CanViewAccelerationWhenFiring")()); }
			ScriptFunction HolderEnteredVehicle() { mixin(MGF!("mHolderEnteredVehicle", "Function UTGame.UTWeapon.HolderEnteredVehicle")()); }
			ScriptFunction HolderExitedVehicle() { mixin(MGF!("mHolderExitedVehicle", "Function UTGame.UTWeapon.HolderExitedVehicle")()); }
			ScriptFunction DrawKillIcon() { mixin(MGF!("mDrawKillIcon", "Function UTGame.UTWeapon.DrawKillIcon")()); }
			ScriptFunction EnableFriendlyWarningCrosshair() { mixin(MGF!("mEnableFriendlyWarningCrosshair", "Function UTGame.UTWeapon.EnableFriendlyWarningCrosshair")()); }
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
	static struct Inactive
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTWeapon.Inactive")()); }
	}
	static struct WeaponFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTWeapon.WeaponFiring")()); }
	}
	static struct WeaponEquipping
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTWeapon.WeaponEquipping")()); }
	}
	static struct WeaponAbortEquip
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTWeapon.WeaponAbortEquip")()); }
	}
	static struct WeaponPuttingDown
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTWeapon.WeaponPuttingDown")()); }
	}
	static struct Active
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTWeapon.Active")()); }
	}
	@property final
	{
		auto ref
		{
			UTWeapon.AmmoWidgetDisplayStyle AmmoDisplayType() { mixin(MGPC!("UTWeapon.AmmoWidgetDisplayStyle", 970)()); }
			ubyte InventoryGroup() { mixin(MGPC!("ubyte", 969)()); }
			ScriptString UseHintString() { mixin(MGPC!("ScriptString", 1460)()); }
			UIRoot.TextureCoordinates SimpleCrossHairCoordinates() { mixin(MGPC!("UIRoot.TextureCoordinates", 868)()); }
			UIRoot.TextureCoordinates CustomCrosshairCoordinates() { mixin(MGPC!("UIRoot.TextureCoordinates", 936)()); }
			float LastHitEnemyTime() { mixin(MGPC!("float", 924)()); }
			float InventoryWeight() { mixin(MGPC!("float", 1012)()); }
			float GroupWeight() { mixin(MGPC!("float", 1008)()); }
			UIRoot.TextureCoordinates CrossHairCoordinates() { mixin(MGPC!("UIRoot.TextureCoordinates", 852)()); }
			float CrosshairScaling() { mixin(MGPC!("float", 932)()); }
			Texture2D CrosshairImage() { mixin(MGPC!("Texture2D", 884)()); }
			UObject.Color CrosshairColor() { mixin(MGPC!("UObject.Color", 928)()); }
			float LockedStartTime() { mixin(MGPC!("float", 920)()); }
			float CurrentLockedScale() { mixin(MGPC!("float", 904)()); }
			float StartLockedScale() { mixin(MGPC!("float", 908)()); }
			float LockedScaleTime() { mixin(MGPC!("float", 916)()); }
			float FinalLockedScale() { mixin(MGPC!("float", 912)()); }
			UIRoot.TextureCoordinates LockedCrossHairCoordinates() { mixin(MGPC!("UIRoot.TextureCoordinates", 888)()); }
			float ZoomedRate() { mixin(MGPC!("float", 976)()); }
			float ZoomedTargetFOV() { mixin(MGPC!("float", 972)()); }
			AnimSet ArmsAnimSet() { mixin(MGPC!("AnimSet", 1040)()); }
			ScriptArray!(ScriptName) WeaponFireAnim() { mixin(MGPC!("ScriptArray!(ScriptName)", 1016)()); }
			ScriptArray!(ScriptName) ArmFireAnim() { mixin(MGPC!("ScriptArray!(ScriptName)", 1028)()); }
			ScriptArray!(CameraAnim) FireCameraAnim() { mixin(MGPC!("ScriptArray!(CameraAnim)", 788)()); }
			ForceFeedbackWaveform WeaponFireWaveForm() { mixin(MGPC!("ForceFeedbackWaveform", 800)()); }
			ScriptArray!(SoundCue) WeaponFireSnd() { mixin(MGPC!("ScriptArray!(SoundCue)", 1100)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MuzzleFlashPSC'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MuzzleFlashLight'!
			ScriptClass MuzzleFlashLightClass() { mixin(MGPC!("ScriptClass", 1224)()); }
			ScriptName MuzzleFlashSocket() { mixin(MGPC!("ScriptName", 1196)()); }
			ParticleSystem MuzzleFlashAltPSCTemplate() { mixin(MGPC!("ParticleSystem", 1212)()); }
			ParticleSystem MuzzleFlashPSCTemplate() { mixin(MGPC!("ParticleSystem", 1208)()); }
			float MuzzleFlashDuration() { mixin(MGPC!("float", 1228)()); }
			ScriptName WeaponPutDownAnim() { mixin(MGPC!("ScriptName", 1044)()); }
			ScriptName ArmsPutDownAnim() { mixin(MGPC!("ScriptName", 1052)()); }
			SoundCue WeaponPutDownSnd() { mixin(MGPC!("SoundCue", 1112)()); }
			ScriptName WeaponEquipAnim() { mixin(MGPC!("ScriptName", 1060)()); }
			ScriptName ArmsEquipAnim() { mixin(MGPC!("ScriptName", 1068)()); }
			SoundCue WeaponEquipSnd() { mixin(MGPC!("SoundCue", 1116)()); }
			ScriptClass AttachmentClass() { mixin(MGPC!("ScriptClass", 992)()); }
			UObject.Color MuzzleFlashColor() { mixin(MGPC!("UObject.Color", 1216)()); }
			Vector HiddenWeaponsOffset() { mixin(MGPC!("Vector", 1272)()); }
			Vector PlayerViewOffset() { mixin(MGPC!("Vector", 1232)()); }
			Vector SmallWeaponsOffset() { mixin(MGPC!("Vector", 1244)()); }
			float WideScreenOffsetScaling() { mixin(MGPC!("float", 1256)()); }
			float BobDamping() { mixin(MGPC!("float", 1120)()); }
			float JumpDamping() { mixin(MGPC!("float", 1124)()); }
			Rotator LastRotation() { mixin(MGPC!("Rotator", 1140)()); }
			float MaxYawLag() { mixin(MGPC!("float", 1132)()); }
			float MaxPitchLag() { mixin(MGPC!("float", 1128)()); }
			float LastRotUpdate() { mixin(MGPC!("float", 1136)()); }
			Rotator WidescreenRotationOffset() { mixin(MGPC!("Rotator", 1260)()); }
			int OldRotDiff() { mixin(MGPC!("int", 1160)()); }
			float OldLeadMag() { mixin(MGPC!("float", 1152)()); }
			float OldMaxDiff() { mixin(MGPC!("float", 1168)()); }
			float RotChgSpeed() { mixin(MGPC!("float", 1176)()); }
			float ReturnChgSpeed() { mixin(MGPC!("float", 1180)()); }
			float CurrentRating() { mixin(MGPC!("float", 1312)()); }
			ScriptClass AmmoPickupClass() { mixin(MGPC!("ScriptClass", 752)()); }
			int MaxAmmoCount() { mixin(MGPC!("int", 760)()); }
			ScriptArray!(ubyte) bZoomedFireMode() { mixin(MGPC!("ScriptArray!(ubyte)", 956)()); }
			ScriptArray!(int) ShotCost() { mixin(MGPC!("ScriptArray!(int)", 764)()); }
			float AimingHelpRadius() { mixin(MGPC!("float", 1336)()); }
			ubyte ZoomedFireModeNum() { mixin(MGPC!("ubyte", 968)()); }
			SoundCue ZoomInSound() { mixin(MGPC!("SoundCue", 984)()); }
			SoundCue ZoomOutSound() { mixin(MGPC!("SoundCue", 988)()); }
			float SwitchAbortTime() { mixin(MGPC!("float", 832)()); }
			ScriptArray!(float) MinReloadPct() { mixin(MGPC!("ScriptArray!(float)", 776)()); }
			float ProjectileSpawnOffset() { mixin(MGPC!("float", 1284)()); }
			ScriptArray!(ScriptName) EffectSockets() { mixin(MGPC!("ScriptArray!(ScriptName)", 804)()); }
			float WeaponCanvasXPct() { mixin(MGPC!("float", 1188)()); }
			float WeaponCanvasYPct() { mixin(MGPC!("float", 1192)()); }
			UIRoot.TextureCoordinates IconCoordinates() { mixin(MGPC!("UIRoot.TextureCoordinates", 836)()); }
			int LockerAmmoCount() { mixin(MGPC!("int", 756)()); }
			int IconX() { mixin(MGPC!("int", 816)()); }
			int IconY() { mixin(MGPC!("int", 820)()); }
			int IconWidth() { mixin(MGPC!("int", 824)()); }
			int IconHeight() { mixin(MGPC!("int", 828)()); }
			float DroppedPickupOffsetZ() { mixin(MGPC!("float", 952)()); }
			float ZoomFadeTime() { mixin(MGPC!("float", 980)()); }
			Vector PivotTranslation() { mixin(MGPC!("Vector", 996)()); }
			ScriptArray!(ScriptName) WeaponIdleAnims() { mixin(MGPC!("ScriptArray!(ScriptName)", 1076)()); }
			ScriptArray!(ScriptName) ArmIdleAnims() { mixin(MGPC!("ScriptArray!(ScriptName)", 1088)()); }
			UObject.Color WeaponColor() { mixin(MGPC!("UObject.Color", 1184)()); }
			Rotator LockerRotation() { mixin(MGPC!("Rotator", 1288)()); }
			Vector LockerOffset() { mixin(MGPC!("Vector", 1300)()); }
			float aimerror() { mixin(MGPC!("float", 1316)()); }
			UDKPlayerController.ObjectiveAnnouncementInfo NeedToPickUpAnnouncement() { mixin(MGPC!("UDKPlayerController.ObjectiveAnnouncementInfo", 1320)()); }
			float ZoomedTurnSpeedScalePct() { mixin(MGPC!("float", 1344)()); }
			float TargetFrictionDistanceMin() { mixin(MGPC!("float", 1348)()); }
			float TargetFrictionDistancePeak() { mixin(MGPC!("float", 1352)()); }
			float TargetFrictionDistanceMax() { mixin(MGPC!("float", 1356)()); }
			UObject.InterpCurveFloat TargetFrictionDistanceCurve() { mixin(MGPC!("UObject.InterpCurveFloat", 1360)()); }
			UObject.Vector2D TargetFrictionMultiplierRange() { mixin(MGPC!("UObject.Vector2D", 1376)()); }
			float TargetFrictionPeakRadiusScale() { mixin(MGPC!("float", 1384)()); }
			float TargetFrictionPeakHeightScale() { mixin(MGPC!("float", 1388)()); }
			Vector TargetFrictionOffset() { mixin(MGPC!("Vector", 1392)()); }
			float TargetFrictionZoomedBoostValue() { mixin(MGPC!("float", 1404)()); }
			float TargetAdhesionTimeMax() { mixin(MGPC!("float", 1408)()); }
			float TargetAdhesionDistanceMax() { mixin(MGPC!("float", 1412)()); }
			float TargetAdhesionAimDistY() { mixin(MGPC!("float", 1416)()); }
			float TargetAdhesionAimDistZ() { mixin(MGPC!("float", 1420)()); }
			UObject.Vector2D TargetAdhesionScaleRange() { mixin(MGPC!("UObject.Vector2D", 1424)()); }
			float TargetAdhesionScaleAmountMin() { mixin(MGPC!("float", 1432)()); }
			float TargetAdhesionTargetVelocityMin() { mixin(MGPC!("float", 1436)()); }
			float TargetAdhesionPlayerVelocityMin() { mixin(MGPC!("float", 1440)()); }
			float TargetAdhesionZoomedBoostValue() { mixin(MGPC!("float", 1444)()); }
			ScriptArray!(SoundNodeWave) LocationSpeech() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 1448)()); }
		}
		bool bExportMenuData() { mixin(MGBPC!(748, 0x1)()); }
		bool bExportMenuData(bool val) { mixin(MSBPC!(748, 0x1)()); }
		bool bAllowFiringWithoutController() { mixin(MGBPC!(748, 0x40000)()); }
		bool bAllowFiringWithoutController(bool val) { mixin(MSBPC!(748, 0x40000)()); }
		bool bSmallWeapons() { mixin(MGBPC!(748, 0x8)()); }
		bool bSmallWeapons(bool val) { mixin(MSBPC!(748, 0x8)()); }
		bool bUseCustomCoordinates() { mixin(MGBPC!(748, 0x4)()); }
		bool bUseCustomCoordinates(bool val) { mixin(MSBPC!(748, 0x4)()); }
		bool bWasLocked() { mixin(MGBPC!(748, 0x2)()); }
		bool bWasLocked(bool val) { mixin(MSBPC!(748, 0x2)()); }
		bool bSuppressSounds() { mixin(MGBPC!(748, 0x40)()); }
		bool bSuppressSounds(bool val) { mixin(MSBPC!(748, 0x40)()); }
		bool bMuzzleFlashPSCLoops() { mixin(MGBPC!(748, 0x400)()); }
		bool bMuzzleFlashPSCLoops(bool val) { mixin(MSBPC!(748, 0x400)()); }
		bool bShowAltMuzzlePSCWhenWeaponHidden() { mixin(MGBPC!(748, 0x200)()); }
		bool bShowAltMuzzlePSCWhenWeaponHidden(bool val) { mixin(MSBPC!(748, 0x200)()); }
		bool bMuzzleFlashAttached() { mixin(MGBPC!(748, 0x800)()); }
		bool bMuzzleFlashAttached(bool val) { mixin(MSBPC!(748, 0x800)()); }
		bool bPendingShow() { mixin(MGBPC!(748, 0x100)()); }
		bool bPendingShow(bool val) { mixin(MSBPC!(748, 0x100)()); }
		bool bForceHidden() { mixin(MGBPC!(748, 0x200000)()); }
		bool bForceHidden(bool val) { mixin(MSBPC!(748, 0x200000)()); }
		bool bSplashJump() { mixin(MGBPC!(748, 0x1000)()); }
		bool bSplashJump(bool val) { mixin(MSBPC!(748, 0x1000)()); }
		bool bUsingAimingHelp() { mixin(MGBPC!(748, 0x20000)()); }
		bool bUsingAimingHelp(bool val) { mixin(MSBPC!(748, 0x20000)()); }
		bool bSuperWeapon() { mixin(MGBPC!(748, 0x10)()); }
		bool bSuperWeapon(bool val) { mixin(MSBPC!(748, 0x10)()); }
		bool bNeverForwardPendingFire() { mixin(MGBPC!(748, 0x20)()); }
		bool bNeverForwardPendingFire(bool val) { mixin(MSBPC!(748, 0x20)()); }
		bool bUsesOffhand() { mixin(MGBPC!(748, 0x80)()); }
		bool bUsesOffhand(bool val) { mixin(MSBPC!(748, 0x80)()); }
		bool bRecommendSplashDamage() { mixin(MGBPC!(748, 0x2000)()); }
		bool bRecommendSplashDamage(bool val) { mixin(MSBPC!(748, 0x2000)()); }
		bool bSniping() { mixin(MGBPC!(748, 0x4000)()); }
		bool bSniping(bool val) { mixin(MSBPC!(748, 0x4000)()); }
		bool bFastRepeater() { mixin(MGBPC!(748, 0x8000)()); }
		bool bFastRepeater(bool val) { mixin(MSBPC!(748, 0x8000)()); }
		bool bLockedAimWhileFiring() { mixin(MGBPC!(748, 0x10000)()); }
		bool bLockedAimWhileFiring(bool val) { mixin(MSBPC!(748, 0x10000)()); }
		bool bTargetFrictionEnabled() { mixin(MGBPC!(748, 0x80000)()); }
		bool bTargetFrictionEnabled(bool val) { mixin(MSBPC!(748, 0x80000)()); }
		bool bTargetAdhesionEnabled() { mixin(MGBPC!(748, 0x100000)()); }
		bool bTargetAdhesionEnabled(bool val) { mixin(MSBPC!(748, 0x100000)()); }
		bool bHasLocationSpeech() { mixin(MGBPC!(748, 0x400000)()); }
		bool bHasLocationSpeech(bool val) { mixin(MSBPC!(748, 0x400000)()); }
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
	float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireInterval, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void PlayArmAnimation(ScriptName pSequence, float fDesiredDuration, bool* OffHand = null, bool* bLoop = null, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** SkelMesh = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		if (OffHand !is null)
			*cast(bool*)&params[12] = *OffHand;
		if (bLoop !is null)
			*cast(bool*)&params[16] = *bLoop;
		if (SkelMesh !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20] = *SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayArmAnimation, params.ptr, cast(void*)0);
	}
	void PlayWeaponAnimation(ScriptName pSequence, float fDesiredDuration, bool* bLoop = null, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** SkelMesh = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = fDesiredDuration;
		if (bLoop !is null)
			*cast(bool*)&params[12] = *bLoop;
		if (SkelMesh !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = *SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponAnimation, params.ptr, cast(void*)0);
	}
	void PlayFireEffects(ubyte FireModeNum, Vector* HitLocation = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		if (HitLocation !is null)
			*cast(Vector*)&params[4] = *HitLocation;
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
	void WeaponCalcCamera(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponCalcCamera, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
	}
	void WeaponPlaySound(SoundCue Sound, float* NoiseLoudness = null, bool* bStopWhenOwnerDestroyed = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Sound;
		if (NoiseLoudness !is null)
			*cast(float*)&params[4] = *NoiseLoudness;
		if (bStopWhenOwnerDestroyed !is null)
			*cast(bool*)&params[8] = *bStopWhenOwnerDestroyed;
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
void* MeshCpnt, ScriptName* SocketName = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = MeshCpnt;
		if (SocketName !is null)
			*cast(ScriptName*)&params[4] = *SocketName;
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
	void GetViewAxes(ref Vector XAxis, ref Vector YAxis, ref Vector ZAxis)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = XAxis;
		*cast(Vector*)&params[12] = YAxis;
		*cast(Vector*)&params[24] = ZAxis;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewAxes, params.ptr, cast(void*)0);
		XAxis = *cast(Vector*)params.ptr;
		YAxis = *cast(Vector*)&params[12];
		ZAxis = *cast(Vector*)&params[24];
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
	void AdjustPlayerDamage(ref int Damage, Controller InstigatedBy, Vector HitLocation, ref Vector Momentum, ScriptClass pDamageType)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustPlayerDamage, params.ptr, cast(void*)0);
		Damage = *cast(int*)params.ptr;
		Momentum = *cast(Vector*)&params[20];
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
	bool HasAmmo(ubyte FireModeNum, int* Amount = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		if (Amount !is null)
			*cast(int*)&params[4] = *Amount;
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
	void Loaded(bool* bUseWeaponMax = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bUseWeaponMax !is null)
			*cast(bool*)params.ptr = *bUseWeaponMax;
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
	void ProcessInstantHit(ubyte FiringMode, Actor.ImpactInfo Impact, int* NumHits = null)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		if (NumHits !is null)
			*cast(int*)&params[84] = *NumHits;
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
	void EndZoom(UTPlayerController PC, bool* bReturningTo3P = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		if (bReturningTo3P !is null)
			*cast(bool*)&params[4] = *bReturningTo3P;
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
	void ClientWeaponSet(bool bOptionalSet, bool* bDoNotActivate = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOptionalSet;
		if (bDoNotActivate !is null)
			*cast(bool*)&params[4] = *bDoNotActivate;
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
	Vector GetPhysicalFireStartLoc(Vector* AimDir = null)
	{
		ubyte params[24];
		params[] = 0;
		if (AimDir !is null)
			*cast(Vector*)params.ptr = *AimDir;
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
	void ThrottleLook(ref float aTurn, ref float aLookUp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = aTurn;
		*cast(float*)&params[4] = aLookUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrottleLook, params.ptr, cast(void*)0);
		aTurn = *cast(float*)params.ptr;
		aLookUp = *cast(float*)&params[4];
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
