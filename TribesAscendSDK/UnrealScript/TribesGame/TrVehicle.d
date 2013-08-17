module UnrealScript.TribesGame.TrVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrProj_Tracer;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrVehicleStation;
import UnrealScript.TribesGame.TrHUD;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.UTGame.UTVehicleWeapon;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.UTGame.UTPlayerReplicationInfo;

extern(C++) interface TrVehicle : UTVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehicle")()); }
	private static __gshared TrVehicle mDefaultProperties;
	@property final static TrVehicle DefaultProperties() { mixin(MGDPC!(TrVehicle, "TrVehicle TribesGame.Default__TrVehicle")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsEmpty;
			ScriptFunction mRidingPawnLeave;
			ScriptFunction mGetSeatIndexForController;
			ScriptFunction mCalcOtherWatchingCam;
			ScriptFunction mSetScannerDetect;
			ScriptFunction mStopsProjectile;
			ScriptFunction mNativePostRenderFor;
			ScriptFunction mConsumePowerPool;
			ScriptFunction mGetPowerPoolPercent;
			ScriptFunction mRegainPowerPool;
			ScriptFunction mSyncClientCurrentPowerPool;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mSetDetectedByEnemyScanner;
			ScriptFunction mGetDetectedByEnemyScanner;
			ScriptFunction mPancakeOther;
			ScriptFunction mGetCollisionDamageInstigator;
			ScriptFunction mGetDamageAmountForCollision;
			ScriptFunction mRigidBodyCollision;
			ScriptFunction mRanInto;
			ScriptFunction mSitDriver;
			ScriptFunction mDetachDriver;
			ScriptFunction mSetPawnToTeleport;
			ScriptFunction mSetPostSpawnLocked;
			ScriptFunction mSendLockOnMessage;
			ScriptFunction mDied;
			ScriptFunction mKillControllerForTeamChange;
			ScriptFunction mTeleportDriverToSeat;
			ScriptFunction mCanArmorDriveVehicle;
			ScriptFunction mCanArmorEnterVehicle;
			ScriptFunction mGetFirstAvailableSeat;
			ScriptFunction mTryToDrive;
			ScriptFunction mDriverLeft;
			ScriptFunction mPassengerLeave;
			ScriptFunction mCheckReset;
			ScriptFunction mResetResetTime;
			ScriptFunction mHandleMomentum;
			ScriptFunction mToggleBoosters;
			ScriptFunction mConsumeBoostPowerPool;
			ScriptFunction mCanActivateBoosters;
			ScriptFunction mShouldRechargePowerPool;
			ScriptFunction mServerToggleLevelFlight;
			ScriptFunction mBoostSoundFinished;
			ScriptFunction mPlayBoosterEffects;
			ScriptFunction mPlayMissileLockSounds;
			ScriptFunction mTick;
			ScriptFunction mOccupied;
			ScriptFunction mPostRenderFor;
			ScriptFunction mRenderDriverPassengerMarker;
			ScriptFunction mSetSeatStoragePawn;
			ScriptFunction mGetSVehicleDebug;
			ScriptFunction mInitializeSeats;
			ScriptFunction mPassengerEnter;
			ScriptFunction mAttachDriver;
			ScriptFunction mAttachRidingPawn;
			ScriptFunction mDetachRidingPawn;
			ScriptFunction mUpdateSeatAnimations;
			ScriptFunction mHoldGameObject;
			ScriptFunction mHandleEnteringFlag;
			ScriptFunction mDriverEnter;
			ScriptFunction mGetSeatPRI;
			ScriptFunction mServerChangeSeat;
			ScriptFunction mSwitchSeat;
			ScriptFunction mChangeSeat;
			ScriptFunction mSwitchWeapon;
			ScriptFunction mGetSeatIndexForStoragePawn;
			ScriptFunction mPlaceExitingDriver;
			ScriptFunction mTryExitPos;
			ScriptFunction mSeatAvailable;
			ScriptFunction mAnySeatAvailable;
			ScriptFunction mGetWeaponAim;
			ScriptFunction mWeaponRotationChanged;
			ScriptFunction mHealDamage;
			ScriptFunction mDoRepairs;
			ScriptFunction mDriverRadiusDamage;
			ScriptFunction mSuicide;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mTakeDamage;
			ScriptFunction mCheckDamageSmoke;
			ScriptFunction mBlowupVehicle;
			ScriptFunction mVehicleWeaponFireEffects;
			ScriptFunction mVehicleWeaponStoppedFiring;
			ScriptFunction mThirdPersonFireEffects;
			ScriptFunction mSpawnTracerBeam;
			ScriptFunction mSpawnTracerEffect;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mProcessViewRotationBasedOnSeat;
			ScriptFunction mShouldShowUseable;
			ScriptFunction mSetDriving;
			ScriptFunction mPlayVehicleEvent;
			ScriptFunction mVehicleEvent;
			ScriptFunction mPlayClientVehicleSound;
			ScriptFunction mMigrateVehicleSounds;
			ScriptFunction mStopVehicleSounds;
			ScriptFunction mGetCameraFocus;
			ScriptFunction mGetSpectatorName;
			ScriptFunction mPlayHorn;
			ScriptFunction mGoInvulnerable;
			ScriptFunction mClearInvulnerability;
		}
		public @property static final
		{
			ScriptFunction IsEmpty() { mixin(MGF!("mIsEmpty", "Function TribesGame.TrVehicle.IsEmpty")()); }
			ScriptFunction RidingPawnLeave() { mixin(MGF!("mRidingPawnLeave", "Function TribesGame.TrVehicle.RidingPawnLeave")()); }
			ScriptFunction GetSeatIndexForController() { mixin(MGF!("mGetSeatIndexForController", "Function TribesGame.TrVehicle.GetSeatIndexForController")()); }
			ScriptFunction CalcOtherWatchingCam() { mixin(MGF!("mCalcOtherWatchingCam", "Function TribesGame.TrVehicle.CalcOtherWatchingCam")()); }
			ScriptFunction SetScannerDetect() { mixin(MGF!("mSetScannerDetect", "Function TribesGame.TrVehicle.SetScannerDetect")()); }
			ScriptFunction StopsProjectile() { mixin(MGF!("mStopsProjectile", "Function TribesGame.TrVehicle.StopsProjectile")()); }
			ScriptFunction NativePostRenderFor() { mixin(MGF!("mNativePostRenderFor", "Function TribesGame.TrVehicle.NativePostRenderFor")()); }
			ScriptFunction ConsumePowerPool() { mixin(MGF!("mConsumePowerPool", "Function TribesGame.TrVehicle.ConsumePowerPool")()); }
			ScriptFunction GetPowerPoolPercent() { mixin(MGF!("mGetPowerPoolPercent", "Function TribesGame.TrVehicle.GetPowerPoolPercent")()); }
			ScriptFunction RegainPowerPool() { mixin(MGF!("mRegainPowerPool", "Function TribesGame.TrVehicle.RegainPowerPool")()); }
			ScriptFunction SyncClientCurrentPowerPool() { mixin(MGF!("mSyncClientCurrentPowerPool", "Function TribesGame.TrVehicle.SyncClientCurrentPowerPool")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrVehicle.ReplicatedEvent")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrVehicle.PostBeginPlay")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrVehicle.PostInitAnimTree")()); }
			ScriptFunction SetDetectedByEnemyScanner() { mixin(MGF!("mSetDetectedByEnemyScanner", "Function TribesGame.TrVehicle.SetDetectedByEnemyScanner")()); }
			ScriptFunction GetDetectedByEnemyScanner() { mixin(MGF!("mGetDetectedByEnemyScanner", "Function TribesGame.TrVehicle.GetDetectedByEnemyScanner")()); }
			ScriptFunction PancakeOther() { mixin(MGF!("mPancakeOther", "Function TribesGame.TrVehicle.PancakeOther")()); }
			ScriptFunction GetCollisionDamageInstigator() { mixin(MGF!("mGetCollisionDamageInstigator", "Function TribesGame.TrVehicle.GetCollisionDamageInstigator")()); }
			ScriptFunction GetDamageAmountForCollision() { mixin(MGF!("mGetDamageAmountForCollision", "Function TribesGame.TrVehicle.GetDamageAmountForCollision")()); }
			ScriptFunction RigidBodyCollision() { mixin(MGF!("mRigidBodyCollision", "Function TribesGame.TrVehicle.RigidBodyCollision")()); }
			ScriptFunction RanInto() { mixin(MGF!("mRanInto", "Function TribesGame.TrVehicle.RanInto")()); }
			ScriptFunction SitDriver() { mixin(MGF!("mSitDriver", "Function TribesGame.TrVehicle.SitDriver")()); }
			ScriptFunction DetachDriver() { mixin(MGF!("mDetachDriver", "Function TribesGame.TrVehicle.DetachDriver")()); }
			ScriptFunction SetPawnToTeleport() { mixin(MGF!("mSetPawnToTeleport", "Function TribesGame.TrVehicle.SetPawnToTeleport")()); }
			ScriptFunction SetPostSpawnLocked() { mixin(MGF!("mSetPostSpawnLocked", "Function TribesGame.TrVehicle.SetPostSpawnLocked")()); }
			ScriptFunction SendLockOnMessage() { mixin(MGF!("mSendLockOnMessage", "Function TribesGame.TrVehicle.SendLockOnMessage")()); }
			ScriptFunction Died() { mixin(MGF!("mDied", "Function TribesGame.TrVehicle.Died")()); }
			ScriptFunction KillControllerForTeamChange() { mixin(MGF!("mKillControllerForTeamChange", "Function TribesGame.TrVehicle.KillControllerForTeamChange")()); }
			ScriptFunction TeleportDriverToSeat() { mixin(MGF!("mTeleportDriverToSeat", "Function TribesGame.TrVehicle.TeleportDriverToSeat")()); }
			ScriptFunction CanArmorDriveVehicle() { mixin(MGF!("mCanArmorDriveVehicle", "Function TribesGame.TrVehicle.CanArmorDriveVehicle")()); }
			ScriptFunction CanArmorEnterVehicle() { mixin(MGF!("mCanArmorEnterVehicle", "Function TribesGame.TrVehicle.CanArmorEnterVehicle")()); }
			ScriptFunction GetFirstAvailableSeat() { mixin(MGF!("mGetFirstAvailableSeat", "Function TribesGame.TrVehicle.GetFirstAvailableSeat")()); }
			ScriptFunction TryToDrive() { mixin(MGF!("mTryToDrive", "Function TribesGame.TrVehicle.TryToDrive")()); }
			ScriptFunction DriverLeft() { mixin(MGF!("mDriverLeft", "Function TribesGame.TrVehicle.DriverLeft")()); }
			ScriptFunction PassengerLeave() { mixin(MGF!("mPassengerLeave", "Function TribesGame.TrVehicle.PassengerLeave")()); }
			ScriptFunction CheckReset() { mixin(MGF!("mCheckReset", "Function TribesGame.TrVehicle.CheckReset")()); }
			ScriptFunction ResetResetTime() { mixin(MGF!("mResetResetTime", "Function TribesGame.TrVehicle.ResetResetTime")()); }
			ScriptFunction HandleMomentum() { mixin(MGF!("mHandleMomentum", "Function TribesGame.TrVehicle.HandleMomentum")()); }
			ScriptFunction ToggleBoosters() { mixin(MGF!("mToggleBoosters", "Function TribesGame.TrVehicle.ToggleBoosters")()); }
			ScriptFunction ConsumeBoostPowerPool() { mixin(MGF!("mConsumeBoostPowerPool", "Function TribesGame.TrVehicle.ConsumeBoostPowerPool")()); }
			ScriptFunction CanActivateBoosters() { mixin(MGF!("mCanActivateBoosters", "Function TribesGame.TrVehicle.CanActivateBoosters")()); }
			ScriptFunction ShouldRechargePowerPool() { mixin(MGF!("mShouldRechargePowerPool", "Function TribesGame.TrVehicle.ShouldRechargePowerPool")()); }
			ScriptFunction ServerToggleLevelFlight() { mixin(MGF!("mServerToggleLevelFlight", "Function TribesGame.TrVehicle.ServerToggleLevelFlight")()); }
			ScriptFunction BoostSoundFinished() { mixin(MGF!("mBoostSoundFinished", "Function TribesGame.TrVehicle.BoostSoundFinished")()); }
			ScriptFunction PlayBoosterEffects() { mixin(MGF!("mPlayBoosterEffects", "Function TribesGame.TrVehicle.PlayBoosterEffects")()); }
			ScriptFunction PlayMissileLockSounds() { mixin(MGF!("mPlayMissileLockSounds", "Function TribesGame.TrVehicle.PlayMissileLockSounds")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrVehicle.Tick")()); }
			ScriptFunction Occupied() { mixin(MGF!("mOccupied", "Function TribesGame.TrVehicle.Occupied")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrVehicle.PostRenderFor")()); }
			ScriptFunction RenderDriverPassengerMarker() { mixin(MGF!("mRenderDriverPassengerMarker", "Function TribesGame.TrVehicle.RenderDriverPassengerMarker")()); }
			ScriptFunction SetSeatStoragePawn() { mixin(MGF!("mSetSeatStoragePawn", "Function TribesGame.TrVehicle.SetSeatStoragePawn")()); }
			ScriptFunction GetSVehicleDebug() { mixin(MGF!("mGetSVehicleDebug", "Function TribesGame.TrVehicle.GetSVehicleDebug")()); }
			ScriptFunction InitializeSeats() { mixin(MGF!("mInitializeSeats", "Function TribesGame.TrVehicle.InitializeSeats")()); }
			ScriptFunction PassengerEnter() { mixin(MGF!("mPassengerEnter", "Function TribesGame.TrVehicle.PassengerEnter")()); }
			ScriptFunction AttachDriver() { mixin(MGF!("mAttachDriver", "Function TribesGame.TrVehicle.AttachDriver")()); }
			ScriptFunction AttachRidingPawn() { mixin(MGF!("mAttachRidingPawn", "Function TribesGame.TrVehicle.AttachRidingPawn")()); }
			ScriptFunction DetachRidingPawn() { mixin(MGF!("mDetachRidingPawn", "Function TribesGame.TrVehicle.DetachRidingPawn")()); }
			ScriptFunction UpdateSeatAnimations() { mixin(MGF!("mUpdateSeatAnimations", "Function TribesGame.TrVehicle.UpdateSeatAnimations")()); }
			ScriptFunction HoldGameObject() { mixin(MGF!("mHoldGameObject", "Function TribesGame.TrVehicle.HoldGameObject")()); }
			ScriptFunction HandleEnteringFlag() { mixin(MGF!("mHandleEnteringFlag", "Function TribesGame.TrVehicle.HandleEnteringFlag")()); }
			ScriptFunction DriverEnter() { mixin(MGF!("mDriverEnter", "Function TribesGame.TrVehicle.DriverEnter")()); }
			ScriptFunction GetSeatPRI() { mixin(MGF!("mGetSeatPRI", "Function TribesGame.TrVehicle.GetSeatPRI")()); }
			ScriptFunction ServerChangeSeat() { mixin(MGF!("mServerChangeSeat", "Function TribesGame.TrVehicle.ServerChangeSeat")()); }
			ScriptFunction SwitchSeat() { mixin(MGF!("mSwitchSeat", "Function TribesGame.TrVehicle.SwitchSeat")()); }
			ScriptFunction ChangeSeat() { mixin(MGF!("mChangeSeat", "Function TribesGame.TrVehicle.ChangeSeat")()); }
			ScriptFunction SwitchWeapon() { mixin(MGF!("mSwitchWeapon", "Function TribesGame.TrVehicle.SwitchWeapon")()); }
			ScriptFunction GetSeatIndexForStoragePawn() { mixin(MGF!("mGetSeatIndexForStoragePawn", "Function TribesGame.TrVehicle.GetSeatIndexForStoragePawn")()); }
			ScriptFunction PlaceExitingDriver() { mixin(MGF!("mPlaceExitingDriver", "Function TribesGame.TrVehicle.PlaceExitingDriver")()); }
			ScriptFunction TryExitPos() { mixin(MGF!("mTryExitPos", "Function TribesGame.TrVehicle.TryExitPos")()); }
			ScriptFunction SeatAvailable() { mixin(MGF!("mSeatAvailable", "Function TribesGame.TrVehicle.SeatAvailable")()); }
			ScriptFunction AnySeatAvailable() { mixin(MGF!("mAnySeatAvailable", "Function TribesGame.TrVehicle.AnySeatAvailable")()); }
			ScriptFunction GetWeaponAim() { mixin(MGF!("mGetWeaponAim", "Function TribesGame.TrVehicle.GetWeaponAim")()); }
			ScriptFunction WeaponRotationChanged() { mixin(MGF!("mWeaponRotationChanged", "Function TribesGame.TrVehicle.WeaponRotationChanged")()); }
			ScriptFunction HealDamage() { mixin(MGF!("mHealDamage", "Function TribesGame.TrVehicle.HealDamage")()); }
			ScriptFunction DoRepairs() { mixin(MGF!("mDoRepairs", "Function TribesGame.TrVehicle.DoRepairs")()); }
			ScriptFunction DriverRadiusDamage() { mixin(MGF!("mDriverRadiusDamage", "Function TribesGame.TrVehicle.DriverRadiusDamage")()); }
			ScriptFunction Suicide() { mixin(MGF!("mSuicide", "Function TribesGame.TrVehicle.Suicide")()); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF!("mTakeRadiusDamage", "Function TribesGame.TrVehicle.TakeRadiusDamage")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function TribesGame.TrVehicle.TakeDamage")()); }
			ScriptFunction CheckDamageSmoke() { mixin(MGF!("mCheckDamageSmoke", "Function TribesGame.TrVehicle.CheckDamageSmoke")()); }
			ScriptFunction BlowupVehicle() { mixin(MGF!("mBlowupVehicle", "Function TribesGame.TrVehicle.BlowupVehicle")()); }
			ScriptFunction VehicleWeaponFireEffects() { mixin(MGF!("mVehicleWeaponFireEffects", "Function TribesGame.TrVehicle.VehicleWeaponFireEffects")()); }
			ScriptFunction VehicleWeaponStoppedFiring() { mixin(MGF!("mVehicleWeaponStoppedFiring", "Function TribesGame.TrVehicle.VehicleWeaponStoppedFiring")()); }
			ScriptFunction ThirdPersonFireEffects() { mixin(MGF!("mThirdPersonFireEffects", "Function TribesGame.TrVehicle.ThirdPersonFireEffects")()); }
			ScriptFunction SpawnTracerBeam() { mixin(MGF!("mSpawnTracerBeam", "Function TribesGame.TrVehicle.SpawnTracerBeam")()); }
			ScriptFunction SpawnTracerEffect() { mixin(MGF!("mSpawnTracerEffect", "Function TribesGame.TrVehicle.SpawnTracerEffect")()); }
			ScriptFunction ProcessViewRotation() { mixin(MGF!("mProcessViewRotation", "Function TribesGame.TrVehicle.ProcessViewRotation")()); }
			ScriptFunction ProcessViewRotationBasedOnSeat() { mixin(MGF!("mProcessViewRotationBasedOnSeat", "Function TribesGame.TrVehicle.ProcessViewRotationBasedOnSeat")()); }
			ScriptFunction ShouldShowUseable() { mixin(MGF!("mShouldShowUseable", "Function TribesGame.TrVehicle.ShouldShowUseable")()); }
			ScriptFunction SetDriving() { mixin(MGF!("mSetDriving", "Function TribesGame.TrVehicle.SetDriving")()); }
			ScriptFunction PlayVehicleEvent() { mixin(MGF!("mPlayVehicleEvent", "Function TribesGame.TrVehicle.PlayVehicleEvent")()); }
			ScriptFunction VehicleEvent() { mixin(MGF!("mVehicleEvent", "Function TribesGame.TrVehicle.VehicleEvent")()); }
			ScriptFunction PlayClientVehicleSound() { mixin(MGF!("mPlayClientVehicleSound", "Function TribesGame.TrVehicle.PlayClientVehicleSound")()); }
			ScriptFunction MigrateVehicleSounds() { mixin(MGF!("mMigrateVehicleSounds", "Function TribesGame.TrVehicle.MigrateVehicleSounds")()); }
			ScriptFunction StopVehicleSounds() { mixin(MGF!("mStopVehicleSounds", "Function TribesGame.TrVehicle.StopVehicleSounds")()); }
			ScriptFunction GetCameraFocus() { mixin(MGF!("mGetCameraFocus", "Function TribesGame.TrVehicle.GetCameraFocus")()); }
			ScriptFunction GetSpectatorName() { mixin(MGF!("mGetSpectatorName", "Function TribesGame.TrVehicle.GetSpectatorName")()); }
			ScriptFunction PlayHorn() { mixin(MGF!("mPlayHorn", "Function TribesGame.TrVehicle.PlayHorn")()); }
			ScriptFunction GoInvulnerable() { mixin(MGF!("mGoInvulnerable", "Function TribesGame.TrVehicle.GoInvulnerable")()); }
			ScriptFunction ClearInvulnerability() { mixin(MGF!("mClearInvulnerability", "Function TribesGame.TrVehicle.ClearInvulnerability")()); }
		}
	}
	static struct DyingVehicle
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrVehicle.DyingVehicle")()); }
	}
	@property final
	{
		auto ref
		{
			float m_fCurrentPowerPool() { mixin(MGPC!(float, 2804)()); }
			float r_fMaxPowerPool() { mixin(MGPC!(float, 2812)()); }
			ScriptString m_sName() { mixin(MGPC!(ScriptString, 2932)()); }
			int m_nIconIndex() { mixin(MGPC!(int, 2944)()); }
			Actor.RigidBodyState m_ClientRBState() { mixin(MGPC!(Actor.RigidBodyState, 3136)()); }
			TrObject.EVehicleTypes m_VehicleType() { mixin(MGPC!(TrObject.EVehicleTypes, 2780)()); }
			ScriptString m_sWeapon1Name() { mixin(MGPC!(ScriptString, 3092)()); }
			ScriptString m_sWeapon2Name() { mixin(MGPC!(ScriptString, 3104)()); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) m_DustEffects() { mixin(MGPC!(ScriptArray!(UDKPawn.MaterialImpactEffect), 2948)()); }
			float m_fMaxPawnLeaveSpeed() { mixin(MGPC!(float, 3208)()); }
			int m_nDetectedByEnemyScannerCount() { mixin(MGPC!(int, 3204)()); }
			int m_nServerTickCount() { mixin(MGPC!(int, 3200)()); }
			float m_fClientPhysDeltaTime() { mixin(MGPC!(float, 3120)()); }
			TrStatsInterface Stats() { mixin(MGPC!(TrStatsInterface, 3116)()); }
			Vector m_vDeathCamStartOffset() { mixin(MGPC!(Vector, 3080)()); }
			float m_fVehicleHealthBarHeight() { mixin(MGPC!(float, 3076)()); }
			float m_fVehicleHealthBarWidth() { mixin(MGPC!(float, 3072)()); }
			float m_fVehicleHealthBarPlacementY() { mixin(MGPC!(float, 3068)()); }
			float m_fVehicleHealthBarPlacementX() { mixin(MGPC!(float, 3064)()); }
			MaterialInstanceConstant m_MarkerMIC() { mixin(MGPC!(MaterialInstanceConstant, 3060)()); }
			MaterialInstanceConstant m_Passenger4HealthBarMIC() { mixin(MGPC!(MaterialInstanceConstant, 3056)()); }
			MaterialInstanceConstant m_Passenger3HealthBarMIC() { mixin(MGPC!(MaterialInstanceConstant, 3052)()); }
			MaterialInstanceConstant m_Passenger2HealthBarMIC() { mixin(MGPC!(MaterialInstanceConstant, 3048)()); }
			MaterialInstanceConstant m_Passenger1HealthBarMIC() { mixin(MGPC!(MaterialInstanceConstant, 3044)()); }
			MaterialInstanceConstant m_DriverHealthBarMIC() { mixin(MGPC!(MaterialInstanceConstant, 3040)()); }
			MaterialInstanceConstant m_HealthBarMIC() { mixin(MGPC!(MaterialInstanceConstant, 3036)()); }
			float m_fRemainingSeekingTargetHUDZoomTime() { mixin(MGPC!(float, 3032)()); }
			Rotator m_rPotentialSeekingTargetHUDRotation() { mixin(MGPC!(Rotator, 3020)()); }
			float m_fRemainingPotentialSeekingTargetHUDZoomTime() { mixin(MGPC!(float, 3016)()); }
			float m_fContrailSpeed() { mixin(MGPC!(float, 3012)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_DustPSC'!
			UDKPawn.MaterialImpactEffect m_DefaultDustEffect() { mixin(MGPC!(UDKPawn.MaterialImpactEffect, 2960)()); }
			float ShowHeaderUntil() { mixin(MGPC!(float, 2928)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentBoostSound'!
			float m_fBoostFadeOutTime() { mixin(MGPC!(float, 2920)()); }
			float m_fBoostFadeInTime() { mixin(MGPC!(float, 2916)()); }
			float m_fDivingMaxSpeedMultiplier() { mixin(MGPC!(float, 2912)()); }
			int r_nBaseMaxSpeed() { mixin(MGPC!(int, 2908)()); }
			float m_fWallDamageTickTime() { mixin(MGPC!(float, 2904)()); }
			float m_fLastWallDamageTime() { mixin(MGPC!(float, 2900)()); }
			float m_fWallMaxDamage() { mixin(MGPC!(float, 2896)()); }
			float m_fWallMinDamage() { mixin(MGPC!(float, 2892)()); }
			float m_fWallMinDamageSpeed() { mixin(MGPC!(float, 2888)()); }
			float m_fWallMaxDamageSpeed() { mixin(MGPC!(float, 2884)()); }
			ScriptClass WallCollisionDamageType() { mixin(MGPC!(ScriptClass, 2880)()); }
			float m_fVehicleDamageTickTime() { mixin(MGPC!(float, 2876)()); }
			float m_fLastVehicleDamageTime() { mixin(MGPC!(float, 2872)()); }
			float m_fVehicleMaxDamage() { mixin(MGPC!(float, 2868)()); }
			float m_fVehicleMinDamage() { mixin(MGPC!(float, 2864)()); }
			float m_fVehicleMinDamageSpeed() { mixin(MGPC!(float, 2860)()); }
			float m_fVehicleMaxDamageSpeed() { mixin(MGPC!(float, 2856)()); }
			ScriptClass VehicleCollisionDamageType() { mixin(MGPC!(ScriptClass, 2852)()); }
			float m_fPawnDamageTickTime() { mixin(MGPC!(float, 2848)()); }
			float m_fPawnMaxDamage() { mixin(MGPC!(float, 2844)()); }
			float m_fPawnMinDamage() { mixin(MGPC!(float, 2840)()); }
			float m_fPawnMaxDamageSpeed() { mixin(MGPC!(float, 2836)()); }
			float m_fPawnPushSpeed() { mixin(MGPC!(float, 2832)()); }
			float m_fFlagPushSpeed() { mixin(MGPC!(float, 2828)()); }
			float m_CrashDamageSeverity() { mixin(MGPC!(float, 2824)()); }
			float m_fPowerPoolTickRate() { mixin(MGPC!(float, 2820)()); }
			float m_fPowerPoolRechargeRate() { mixin(MGPC!(float, 2816)()); }
			float r_fCurrentPowerPool() { mixin(MGPC!(float, 2808)()); }
			float m_fBoostReactivatePct() { mixin(MGPC!(float, 2800)()); }
			float m_fBoostEnergyPerSec() { mixin(MGPC!(float, 2796)()); }
			float m_fBoostMultiplier() { mixin(MGPC!(float, 2792)()); }
			float m_fTimeToReset() { mixin(MGPC!(float, 2788)()); }
			TrVehicleStation m_OwnerStation() { mixin(MGPC!(TrVehicleStation, 2784)()); }
			TrObject.EMissileLock m_MissileLockStatus() { mixin(MGPC!(TrObject.EMissileLock, 2782)()); }
			TrObject.EMissileLock r_MissileLock() { mixin(MGPC!(TrObject.EMissileLock, 2781)()); }
			TrPawn m_PawnToTeleport() { mixin(MGPC!(TrPawn, 2772)()); }
			Pawn Passenger() { mixin(MGPC!(Pawn, 2756)()); }
		}
		bool m_bClientPhysDirty() { mixin(MGBPC!(2776, 0x100)()); }
		bool m_bClientPhysDirty(bool val) { mixin(MSBPC!(2776, 0x100)()); }
		bool m_bServerCorrectionForce() { mixin(MGBPC!(2776, 0x200)()); }
		bool m_bServerCorrectionForce(bool val) { mixin(MSBPC!(2776, 0x200)()); }
		bool m_bImprovedLagSupport() { mixin(MGBPC!(2776, 0x4)()); }
		bool m_bImprovedLagSupport(bool val) { mixin(MSBPC!(2776, 0x4)()); }
		bool m_bUsesArmoredMultiplier() { mixin(MGBPC!(2776, 0x80)()); }
		bool m_bUsesArmoredMultiplier(bool val) { mixin(MSBPC!(2776, 0x80)()); }
		bool r_bDetectedByEnemyScanner() { mixin(MGBPC!(2776, 0x400)()); }
		bool r_bDetectedByEnemyScanner(bool val) { mixin(MSBPC!(2776, 0x400)()); }
		bool r_LevelFlightEnabled() { mixin(MGBPC!(2776, 0x40)()); }
		bool r_LevelFlightEnabled(bool val) { mixin(MSBPC!(2776, 0x40)()); }
		bool m_bLowPowerPool() { mixin(MGBPC!(2776, 0x20)()); }
		bool m_bLowPowerPool(bool val) { mixin(MSBPC!(2776, 0x20)()); }
		bool r_BoostersEnabled() { mixin(MGBPC!(2776, 0x10)()); }
		bool r_BoostersEnabled(bool val) { mixin(MSBPC!(2776, 0x10)()); }
		bool r_bIsInvulnerable() { mixin(MGBPC!(2776, 0x8)()); }
		bool r_bIsInvulnerable(bool val) { mixin(MSBPC!(2776, 0x8)()); }
		bool m_bBoostRequiresThrust() { mixin(MGBPC!(2776, 0x2)()); }
		bool m_bBoostRequiresThrust(bool val) { mixin(MSBPC!(2776, 0x2)()); }
		bool m_bPostSpawnLocked() { mixin(MGBPC!(2776, 0x1)()); }
		bool m_bPostSpawnLocked(bool val) { mixin(MSBPC!(2776, 0x1)()); }
	}
final:
	bool IsEmpty()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEmpty, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool RidingPawnLeave(int SeatIndex, bool bForceLeave)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(Functions.RidingPawnLeave, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	int GetSeatIndexForController(Controller ControllerToMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatIndexForController, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
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
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[36];
	}
	bool SetScannerDetect(bool detected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = detected;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScannerDetect, params.ptr, cast(void*)0);
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
	void ConsumePowerPool(float fAmount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumePowerPool, params.ptr, cast(void*)0);
	}
	float GetPowerPoolPercent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPowerPoolPercent, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void RegainPowerPool(float fDeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegainPowerPool, params.ptr, cast(void*)0);
	}
	void SyncClientCurrentPowerPool()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SyncClientCurrentPowerPool, cast(void*)0, cast(void*)0);
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
	void PancakeOther(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PancakeOther, params.ptr, cast(void*)0);
	}
	Controller GetCollisionDamageInstigator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionDamageInstigator, params.ptr, cast(void*)0);
		return *cast(Controller*)params.ptr;
	}
	float GetDamageAmountForCollision(float Speed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Speed;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamageAmountForCollision, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
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
	void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RanInto, params.ptr, cast(void*)0);
	}
	void SitDriver(UTPawn UTP, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SitDriver, params.ptr, cast(void*)0);
	}
	void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachDriver, params.ptr, cast(void*)0);
	}
	void SetPawnToTeleport(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPawnToTeleport, params.ptr, cast(void*)0);
	}
	void SetPostSpawnLocked(bool bLocked)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bLocked;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPostSpawnLocked, params.ptr, cast(void*)0);
	}
	void SendLockOnMessage(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendLockOnMessage, params.ptr, cast(void*)0);
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
	void KillControllerForTeamChange(Controller ControllerToKill)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToKill;
		(cast(ScriptObject)this).ProcessEvent(Functions.KillControllerForTeamChange, params.ptr, cast(void*)0);
	}
	void TeleportDriverToSeat()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TeleportDriverToSeat, cast(void*)0, cast(void*)0);
	}
	bool CanArmorDriveVehicle(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanArmorDriveVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanArmorEnterVehicle(ScriptClass FamilyInfo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanArmorEnterVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetFirstAvailableSeat(bool bSeatMustAllowFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSeatMustAllowFlag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFirstAvailableSeat, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryToDrive, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeft, cast(void*)0, cast(void*)0);
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
	void ResetResetTime()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetResetTime, cast(void*)0, cast(void*)0);
	}
	void HandleMomentum(Vector Momentum, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = Momentum;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleMomentum, params.ptr, cast(void*)0);
	}
	void ToggleBoosters(bool bEnabled, bool ToggleTimer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		*cast(bool*)&params[4] = ToggleTimer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleBoosters, params.ptr, cast(void*)0);
	}
	void ConsumeBoostPowerPool()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeBoostPowerPool, cast(void*)0, cast(void*)0);
	}
	bool CanActivateBoosters()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanActivateBoosters, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldRechargePowerPool()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRechargePowerPool, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ServerToggleLevelFlight(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerToggleLevelFlight, params.ptr, cast(void*)0);
	}
	void BoostSoundFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.BoostSoundFinished, params.ptr, cast(void*)0);
	}
	void PlayBoosterEffects(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayBoosterEffects, params.ptr, cast(void*)0);
	}
	void PlayMissileLockSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayMissileLockSounds, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	bool Occupied()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Occupied, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	bool RenderDriverPassengerMarker(Canvas pCanvas, bool friendly, TrHUD pHUD, TrPlayerController TrPC)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(bool*)&params[4] = friendly;
		*cast(TrHUD*)&params[8] = pHUD;
		*cast(TrPlayerController*)&params[12] = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderDriverPassengerMarker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void SetSeatStoragePawn(int SeatIndex, Pawn PawnToSit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Pawn*)&params[4] = PawnToSit;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSeatStoragePawn, params.ptr, cast(void*)0);
	}
	void GetSVehicleDebug(ref ScriptArray!(ScriptString) DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSVehicleDebug, params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void InitializeSeats()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeSeats, cast(void*)0, cast(void*)0);
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
	void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachDriver, params.ptr, cast(void*)0);
	}
	void AttachRidingPawn(TrPawn PawnToSit, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = PawnToSit;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachRidingPawn, params.ptr, cast(void*)0);
	}
	void DetachRidingPawn(TrPawn PawnLeft)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = PawnLeft;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachRidingPawn, params.ptr, cast(void*)0);
	}
	void UpdateSeatAnimations(TrPawn PawnToSit, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = PawnToSit;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSeatAnimations, params.ptr, cast(void*)0);
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldGameObject, params.ptr, cast(void*)0);
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
	PlayerReplicationInfo GetSeatPRI(int SeatNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatPRI, params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)&params[4];
	}
	void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeSeat, params.ptr, cast(void*)0);
	}
	void SwitchSeat(int RequestedSeat, Controller ControllerRequestingSeatChange)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		*cast(Controller*)&params[4] = ControllerRequestingSeatChange;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchSeat, params.ptr, cast(void*)0);
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
	void SwitchWeapon(ubyte NewGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchWeapon, params.ptr, cast(void*)0);
	}
	int GetSeatIndexForStoragePawn(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeatIndexForStoragePawn, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool PlaceExitingDriver(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaceExitingDriver, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TryExitPos(Pawn ExitingDriver, Vector ExitPos, bool bMustFindGround)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		*cast(Vector*)&params[4] = ExitPos;
		*cast(bool*)&params[16] = bMustFindGround;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryExitPos, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
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
	Rotator GetWeaponAim(UTVehicleWeapon VWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTVehicleWeapon*)params.ptr = VWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponAim, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	void WeaponRotationChanged(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponRotationChanged, params.ptr, cast(void*)0);
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
	void DoRepairs(int HealAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = HealAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoRepairs, params.ptr, cast(void*)0);
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
	void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Suicide, cast(void*)0, cast(void*)0);
	}
	void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
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
	void CheckDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDamageSmoke, cast(void*)0, cast(void*)0);
	}
	void BlowupVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BlowupVehicle, cast(void*)0, cast(void*)0);
	}
	void VehicleWeaponFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponFireEffects, params.ptr, cast(void*)0);
	}
	void VehicleWeaponStoppedFiring(bool bViaReplication, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleWeaponStoppedFiring, params.ptr, cast(void*)0);
	}
	void ThirdPersonFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThirdPersonFireEffects, params.ptr, cast(void*)0);
	}
	void SpawnTracerBeam(Vector Start, Vector End, ParticleSystem TracerBeamTemplate)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(ParticleSystem*)&params[24] = TracerBeamTemplate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnTracerBeam, params.ptr, cast(void*)0);
	}
	TrProj_Tracer SpawnTracerEffect(TrObject.EWeaponTracerType TracerType, Vector EffectLocation, Vector HitLocation, float HitDistance)
	{
		ubyte params[36];
		params[] = 0;
		*cast(TrObject.EWeaponTracerType*)params.ptr = TracerType;
		*cast(Vector*)&params[4] = EffectLocation;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(float*)&params[28] = HitDistance;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnTracerEffect, params.ptr, cast(void*)0);
		return *cast(TrProj_Tracer*)&params[32];
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
	void ProcessViewRotationBasedOnSeat(int SeatIndex, float DeltaTime, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Rotator*)&params[8] = out_ViewRotation;
		*cast(Rotator*)&params[20] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotationBasedOnSeat, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[8];
		*out_DeltaRot = *cast(Rotator*)&params[20];
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
	void SetDriving(bool bNewDriving)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewDriving;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDriving, params.ptr, cast(void*)0);
	}
	void PlayVehicleEvent(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVehicleEvent, params.ptr, cast(void*)0);
	}
	void VehicleEvent(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleEvent, params.ptr, cast(void*)0);
	}
	void PlayClientVehicleSound(ScriptName SoundTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayClientVehicleSound, params.ptr, cast(void*)0);
	}
	void MigrateVehicleSounds(Pawn P, bool bIsRiding)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(bool*)&params[4] = bIsRiding;
		(cast(ScriptObject)this).ProcessEvent(Functions.MigrateVehicleSounds, params.ptr, cast(void*)0);
	}
	void StopVehicleSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopVehicleSounds, cast(void*)0, cast(void*)0);
	}
	Vector GetCameraFocus(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraFocus, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void PlayHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayHorn, cast(void*)0, cast(void*)0);
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
}
