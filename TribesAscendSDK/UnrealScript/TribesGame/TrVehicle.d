module UnrealScript.TribesGame.TrVehicle;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle")); }
	private static __gshared TrVehicle mDefaultProperties;
	@property final static TrVehicle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicle)("TrVehicle TribesGame.Default__TrVehicle")); }
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
			ScriptFunction IsEmpty() { return mIsEmpty ? mIsEmpty : (mIsEmpty = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.IsEmpty")); }
			ScriptFunction RidingPawnLeave() { return mRidingPawnLeave ? mRidingPawnLeave : (mRidingPawnLeave = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.RidingPawnLeave")); }
			ScriptFunction GetSeatIndexForController() { return mGetSeatIndexForController ? mGetSeatIndexForController : (mGetSeatIndexForController = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetSeatIndexForController")); }
			ScriptFunction CalcOtherWatchingCam() { return mCalcOtherWatchingCam ? mCalcOtherWatchingCam : (mCalcOtherWatchingCam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.CalcOtherWatchingCam")); }
			ScriptFunction SetScannerDetect() { return mSetScannerDetect ? mSetScannerDetect : (mSetScannerDetect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SetScannerDetect")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.StopsProjectile")); }
			ScriptFunction NativePostRenderFor() { return mNativePostRenderFor ? mNativePostRenderFor : (mNativePostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.NativePostRenderFor")); }
			ScriptFunction ConsumePowerPool() { return mConsumePowerPool ? mConsumePowerPool : (mConsumePowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ConsumePowerPool")); }
			ScriptFunction GetPowerPoolPercent() { return mGetPowerPoolPercent ? mGetPowerPoolPercent : (mGetPowerPoolPercent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetPowerPoolPercent")); }
			ScriptFunction RegainPowerPool() { return mRegainPowerPool ? mRegainPowerPool : (mRegainPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.RegainPowerPool")); }
			ScriptFunction SyncClientCurrentPowerPool() { return mSyncClientCurrentPowerPool ? mSyncClientCurrentPowerPool : (mSyncClientCurrentPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SyncClientCurrentPowerPool")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PostInitAnimTree")); }
			ScriptFunction SetDetectedByEnemyScanner() { return mSetDetectedByEnemyScanner ? mSetDetectedByEnemyScanner : (mSetDetectedByEnemyScanner = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SetDetectedByEnemyScanner")); }
			ScriptFunction GetDetectedByEnemyScanner() { return mGetDetectedByEnemyScanner ? mGetDetectedByEnemyScanner : (mGetDetectedByEnemyScanner = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetDetectedByEnemyScanner")); }
			ScriptFunction PancakeOther() { return mPancakeOther ? mPancakeOther : (mPancakeOther = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PancakeOther")); }
			ScriptFunction GetCollisionDamageInstigator() { return mGetCollisionDamageInstigator ? mGetCollisionDamageInstigator : (mGetCollisionDamageInstigator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetCollisionDamageInstigator")); }
			ScriptFunction GetDamageAmountForCollision() { return mGetDamageAmountForCollision ? mGetDamageAmountForCollision : (mGetDamageAmountForCollision = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetDamageAmountForCollision")); }
			ScriptFunction RigidBodyCollision() { return mRigidBodyCollision ? mRigidBodyCollision : (mRigidBodyCollision = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.RigidBodyCollision")); }
			ScriptFunction RanInto() { return mRanInto ? mRanInto : (mRanInto = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.RanInto")); }
			ScriptFunction SitDriver() { return mSitDriver ? mSitDriver : (mSitDriver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SitDriver")); }
			ScriptFunction DetachDriver() { return mDetachDriver ? mDetachDriver : (mDetachDriver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.DetachDriver")); }
			ScriptFunction SetPawnToTeleport() { return mSetPawnToTeleport ? mSetPawnToTeleport : (mSetPawnToTeleport = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SetPawnToTeleport")); }
			ScriptFunction SetPostSpawnLocked() { return mSetPostSpawnLocked ? mSetPostSpawnLocked : (mSetPostSpawnLocked = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SetPostSpawnLocked")); }
			ScriptFunction SendLockOnMessage() { return mSendLockOnMessage ? mSendLockOnMessage : (mSendLockOnMessage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SendLockOnMessage")); }
			ScriptFunction Died() { return mDied ? mDied : (mDied = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.Died")); }
			ScriptFunction KillControllerForTeamChange() { return mKillControllerForTeamChange ? mKillControllerForTeamChange : (mKillControllerForTeamChange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.KillControllerForTeamChange")); }
			ScriptFunction TeleportDriverToSeat() { return mTeleportDriverToSeat ? mTeleportDriverToSeat : (mTeleportDriverToSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.TeleportDriverToSeat")); }
			ScriptFunction CanArmorDriveVehicle() { return mCanArmorDriveVehicle ? mCanArmorDriveVehicle : (mCanArmorDriveVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.CanArmorDriveVehicle")); }
			ScriptFunction CanArmorEnterVehicle() { return mCanArmorEnterVehicle ? mCanArmorEnterVehicle : (mCanArmorEnterVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.CanArmorEnterVehicle")); }
			ScriptFunction GetFirstAvailableSeat() { return mGetFirstAvailableSeat ? mGetFirstAvailableSeat : (mGetFirstAvailableSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetFirstAvailableSeat")); }
			ScriptFunction TryToDrive() { return mTryToDrive ? mTryToDrive : (mTryToDrive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.TryToDrive")); }
			ScriptFunction DriverLeft() { return mDriverLeft ? mDriverLeft : (mDriverLeft = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.DriverLeft")); }
			ScriptFunction PassengerLeave() { return mPassengerLeave ? mPassengerLeave : (mPassengerLeave = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PassengerLeave")); }
			ScriptFunction CheckReset() { return mCheckReset ? mCheckReset : (mCheckReset = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.CheckReset")); }
			ScriptFunction ResetResetTime() { return mResetResetTime ? mResetResetTime : (mResetResetTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ResetResetTime")); }
			ScriptFunction HandleMomentum() { return mHandleMomentum ? mHandleMomentum : (mHandleMomentum = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.HandleMomentum")); }
			ScriptFunction ToggleBoosters() { return mToggleBoosters ? mToggleBoosters : (mToggleBoosters = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ToggleBoosters")); }
			ScriptFunction ConsumeBoostPowerPool() { return mConsumeBoostPowerPool ? mConsumeBoostPowerPool : (mConsumeBoostPowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ConsumeBoostPowerPool")); }
			ScriptFunction CanActivateBoosters() { return mCanActivateBoosters ? mCanActivateBoosters : (mCanActivateBoosters = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.CanActivateBoosters")); }
			ScriptFunction ShouldRechargePowerPool() { return mShouldRechargePowerPool ? mShouldRechargePowerPool : (mShouldRechargePowerPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ShouldRechargePowerPool")); }
			ScriptFunction ServerToggleLevelFlight() { return mServerToggleLevelFlight ? mServerToggleLevelFlight : (mServerToggleLevelFlight = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ServerToggleLevelFlight")); }
			ScriptFunction BoostSoundFinished() { return mBoostSoundFinished ? mBoostSoundFinished : (mBoostSoundFinished = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.BoostSoundFinished")); }
			ScriptFunction PlayBoosterEffects() { return mPlayBoosterEffects ? mPlayBoosterEffects : (mPlayBoosterEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PlayBoosterEffects")); }
			ScriptFunction PlayMissileLockSounds() { return mPlayMissileLockSounds ? mPlayMissileLockSounds : (mPlayMissileLockSounds = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PlayMissileLockSounds")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.Tick")); }
			ScriptFunction Occupied() { return mOccupied ? mOccupied : (mOccupied = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.Occupied")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PostRenderFor")); }
			ScriptFunction RenderDriverPassengerMarker() { return mRenderDriverPassengerMarker ? mRenderDriverPassengerMarker : (mRenderDriverPassengerMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.RenderDriverPassengerMarker")); }
			ScriptFunction SetSeatStoragePawn() { return mSetSeatStoragePawn ? mSetSeatStoragePawn : (mSetSeatStoragePawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SetSeatStoragePawn")); }
			ScriptFunction GetSVehicleDebug() { return mGetSVehicleDebug ? mGetSVehicleDebug : (mGetSVehicleDebug = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetSVehicleDebug")); }
			ScriptFunction InitializeSeats() { return mInitializeSeats ? mInitializeSeats : (mInitializeSeats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.InitializeSeats")); }
			ScriptFunction PassengerEnter() { return mPassengerEnter ? mPassengerEnter : (mPassengerEnter = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PassengerEnter")); }
			ScriptFunction AttachDriver() { return mAttachDriver ? mAttachDriver : (mAttachDriver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.AttachDriver")); }
			ScriptFunction AttachRidingPawn() { return mAttachRidingPawn ? mAttachRidingPawn : (mAttachRidingPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.AttachRidingPawn")); }
			ScriptFunction DetachRidingPawn() { return mDetachRidingPawn ? mDetachRidingPawn : (mDetachRidingPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.DetachRidingPawn")); }
			ScriptFunction UpdateSeatAnimations() { return mUpdateSeatAnimations ? mUpdateSeatAnimations : (mUpdateSeatAnimations = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.UpdateSeatAnimations")); }
			ScriptFunction HoldGameObject() { return mHoldGameObject ? mHoldGameObject : (mHoldGameObject = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.HoldGameObject")); }
			ScriptFunction HandleEnteringFlag() { return mHandleEnteringFlag ? mHandleEnteringFlag : (mHandleEnteringFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.HandleEnteringFlag")); }
			ScriptFunction DriverEnter() { return mDriverEnter ? mDriverEnter : (mDriverEnter = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.DriverEnter")); }
			ScriptFunction GetSeatPRI() { return mGetSeatPRI ? mGetSeatPRI : (mGetSeatPRI = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetSeatPRI")); }
			ScriptFunction ServerChangeSeat() { return mServerChangeSeat ? mServerChangeSeat : (mServerChangeSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ServerChangeSeat")); }
			ScriptFunction SwitchSeat() { return mSwitchSeat ? mSwitchSeat : (mSwitchSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SwitchSeat")); }
			ScriptFunction ChangeSeat() { return mChangeSeat ? mChangeSeat : (mChangeSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ChangeSeat")); }
			ScriptFunction SwitchWeapon() { return mSwitchWeapon ? mSwitchWeapon : (mSwitchWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SwitchWeapon")); }
			ScriptFunction GetSeatIndexForStoragePawn() { return mGetSeatIndexForStoragePawn ? mGetSeatIndexForStoragePawn : (mGetSeatIndexForStoragePawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetSeatIndexForStoragePawn")); }
			ScriptFunction PlaceExitingDriver() { return mPlaceExitingDriver ? mPlaceExitingDriver : (mPlaceExitingDriver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PlaceExitingDriver")); }
			ScriptFunction TryExitPos() { return mTryExitPos ? mTryExitPos : (mTryExitPos = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.TryExitPos")); }
			ScriptFunction SeatAvailable() { return mSeatAvailable ? mSeatAvailable : (mSeatAvailable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SeatAvailable")); }
			ScriptFunction AnySeatAvailable() { return mAnySeatAvailable ? mAnySeatAvailable : (mAnySeatAvailable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.AnySeatAvailable")); }
			ScriptFunction GetWeaponAim() { return mGetWeaponAim ? mGetWeaponAim : (mGetWeaponAim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetWeaponAim")); }
			ScriptFunction WeaponRotationChanged() { return mWeaponRotationChanged ? mWeaponRotationChanged : (mWeaponRotationChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.WeaponRotationChanged")); }
			ScriptFunction HealDamage() { return mHealDamage ? mHealDamage : (mHealDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.HealDamage")); }
			ScriptFunction DoRepairs() { return mDoRepairs ? mDoRepairs : (mDoRepairs = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.DoRepairs")); }
			ScriptFunction DriverRadiusDamage() { return mDriverRadiusDamage ? mDriverRadiusDamage : (mDriverRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.DriverRadiusDamage")); }
			ScriptFunction Suicide() { return mSuicide ? mSuicide : (mSuicide = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.Suicide")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.TakeRadiusDamage")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.TakeDamage")); }
			ScriptFunction CheckDamageSmoke() { return mCheckDamageSmoke ? mCheckDamageSmoke : (mCheckDamageSmoke = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.CheckDamageSmoke")); }
			ScriptFunction BlowupVehicle() { return mBlowupVehicle ? mBlowupVehicle : (mBlowupVehicle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.BlowupVehicle")); }
			ScriptFunction VehicleWeaponFireEffects() { return mVehicleWeaponFireEffects ? mVehicleWeaponFireEffects : (mVehicleWeaponFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.VehicleWeaponFireEffects")); }
			ScriptFunction VehicleWeaponStoppedFiring() { return mVehicleWeaponStoppedFiring ? mVehicleWeaponStoppedFiring : (mVehicleWeaponStoppedFiring = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.VehicleWeaponStoppedFiring")); }
			ScriptFunction ThirdPersonFireEffects() { return mThirdPersonFireEffects ? mThirdPersonFireEffects : (mThirdPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ThirdPersonFireEffects")); }
			ScriptFunction SpawnTracerBeam() { return mSpawnTracerBeam ? mSpawnTracerBeam : (mSpawnTracerBeam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SpawnTracerBeam")); }
			ScriptFunction SpawnTracerEffect() { return mSpawnTracerEffect ? mSpawnTracerEffect : (mSpawnTracerEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SpawnTracerEffect")); }
			ScriptFunction ProcessViewRotation() { return mProcessViewRotation ? mProcessViewRotation : (mProcessViewRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ProcessViewRotation")); }
			ScriptFunction ProcessViewRotationBasedOnSeat() { return mProcessViewRotationBasedOnSeat ? mProcessViewRotationBasedOnSeat : (mProcessViewRotationBasedOnSeat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ProcessViewRotationBasedOnSeat")); }
			ScriptFunction ShouldShowUseable() { return mShouldShowUseable ? mShouldShowUseable : (mShouldShowUseable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ShouldShowUseable")); }
			ScriptFunction SetDriving() { return mSetDriving ? mSetDriving : (mSetDriving = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.SetDriving")); }
			ScriptFunction PlayVehicleEvent() { return mPlayVehicleEvent ? mPlayVehicleEvent : (mPlayVehicleEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PlayVehicleEvent")); }
			ScriptFunction VehicleEvent() { return mVehicleEvent ? mVehicleEvent : (mVehicleEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.VehicleEvent")); }
			ScriptFunction PlayClientVehicleSound() { return mPlayClientVehicleSound ? mPlayClientVehicleSound : (mPlayClientVehicleSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PlayClientVehicleSound")); }
			ScriptFunction MigrateVehicleSounds() { return mMigrateVehicleSounds ? mMigrateVehicleSounds : (mMigrateVehicleSounds = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.MigrateVehicleSounds")); }
			ScriptFunction StopVehicleSounds() { return mStopVehicleSounds ? mStopVehicleSounds : (mStopVehicleSounds = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.StopVehicleSounds")); }
			ScriptFunction GetCameraFocus() { return mGetCameraFocus ? mGetCameraFocus : (mGetCameraFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetCameraFocus")); }
			ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GetSpectatorName")); }
			ScriptFunction PlayHorn() { return mPlayHorn ? mPlayHorn : (mPlayHorn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.PlayHorn")); }
			ScriptFunction GoInvulnerable() { return mGoInvulnerable ? mGoInvulnerable : (mGoInvulnerable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.GoInvulnerable")); }
			ScriptFunction ClearInvulnerability() { return mClearInvulnerability ? mClearInvulnerability : (mClearInvulnerability = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle.ClearInvulnerability")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2804); }
			float r_fMaxPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2812); }
			ScriptString m_sName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2932); }
			int m_nIconIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2944); }
			Actor.RigidBodyState m_ClientRBState() { return *cast(Actor.RigidBodyState*)(cast(size_t)cast(void*)this + 3136); }
			TrObject.EVehicleTypes m_VehicleType() { return *cast(TrObject.EVehicleTypes*)(cast(size_t)cast(void*)this + 2780); }
			ScriptString m_sWeapon1Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3092); }
			ScriptString m_sWeapon2Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3104); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) m_DustEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 2948); }
			float m_fMaxPawnLeaveSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3208); }
			int m_nDetectedByEnemyScannerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3204); }
			int m_nServerTickCount() { return *cast(int*)(cast(size_t)cast(void*)this + 3200); }
			float m_fClientPhysDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3120); }
			TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 3116); }
			Vector m_vDeathCamStartOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3080); }
			float m_fVehicleHealthBarHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 3076); }
			float m_fVehicleHealthBarWidth() { return *cast(float*)(cast(size_t)cast(void*)this + 3072); }
			float m_fVehicleHealthBarPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 3068); }
			float m_fVehicleHealthBarPlacementX() { return *cast(float*)(cast(size_t)cast(void*)this + 3064); }
			MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3060); }
			MaterialInstanceConstant m_Passenger4HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3056); }
			MaterialInstanceConstant m_Passenger3HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3052); }
			MaterialInstanceConstant m_Passenger2HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3048); }
			MaterialInstanceConstant m_Passenger1HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3044); }
			MaterialInstanceConstant m_DriverHealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3040); }
			MaterialInstanceConstant m_HealthBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 3036); }
			float m_fRemainingSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3032); }
			Rotator m_rPotentialSeekingTargetHUDRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3020); }
			float m_fRemainingPotentialSeekingTargetHUDZoomTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3016); }
			float m_fContrailSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 3012); }
			UDKPawn.MaterialImpactEffect m_DefaultDustEffect() { return *cast(UDKPawn.MaterialImpactEffect*)(cast(size_t)cast(void*)this + 2960); }
			float ShowHeaderUntil() { return *cast(float*)(cast(size_t)cast(void*)this + 2928); }
			float m_fBoostFadeOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2920); }
			float m_fBoostFadeInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2916); }
			float m_fDivingMaxSpeedMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 2912); }
			int r_nBaseMaxSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 2908); }
			float m_fWallDamageTickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2904); }
			float m_fLastWallDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2900); }
			float m_fWallMaxDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2896); }
			float m_fWallMinDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2892); }
			float m_fWallMinDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2888); }
			float m_fWallMaxDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2884); }
			ScriptClass WallCollisionDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2880); }
			float m_fVehicleDamageTickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2876); }
			float m_fLastVehicleDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2872); }
			float m_fVehicleMaxDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2868); }
			float m_fVehicleMinDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2864); }
			float m_fVehicleMinDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2860); }
			float m_fVehicleMaxDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2856); }
			ScriptClass VehicleCollisionDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2852); }
			float m_fPawnDamageTickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2848); }
			float m_fPawnMaxDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2844); }
			float m_fPawnMinDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2840); }
			float m_fPawnMaxDamageSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2836); }
			float m_fPawnPushSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2832); }
			float m_fFlagPushSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 2828); }
			float m_CrashDamageSeverity() { return *cast(float*)(cast(size_t)cast(void*)this + 2824); }
			float m_fPowerPoolTickRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2820); }
			float m_fPowerPoolRechargeRate() { return *cast(float*)(cast(size_t)cast(void*)this + 2816); }
			float r_fCurrentPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 2808); }
			float m_fBoostReactivatePct() { return *cast(float*)(cast(size_t)cast(void*)this + 2800); }
			float m_fBoostEnergyPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 2796); }
			float m_fBoostMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 2792); }
			float m_fTimeToReset() { return *cast(float*)(cast(size_t)cast(void*)this + 2788); }
			TrVehicleStation m_OwnerStation() { return *cast(TrVehicleStation*)(cast(size_t)cast(void*)this + 2784); }
			TrObject.EMissileLock m_MissileLockStatus() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 2782); }
			TrObject.EMissileLock r_MissileLock() { return *cast(TrObject.EMissileLock*)(cast(size_t)cast(void*)this + 2781); }
			TrPawn m_PawnToTeleport() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 2772); }
			Pawn Passenger() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 2756); }
		}
		bool m_bClientPhysDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x100) != 0; }
		bool m_bClientPhysDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x100; } return val; }
		bool m_bServerCorrectionForce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x200) != 0; }
		bool m_bServerCorrectionForce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x200; } return val; }
		bool m_bImprovedLagSupport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x4) != 0; }
		bool m_bImprovedLagSupport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x4; } return val; }
		bool m_bUsesArmoredMultiplier() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x80) != 0; }
		bool m_bUsesArmoredMultiplier(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x80; } return val; }
		bool r_bDetectedByEnemyScanner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x400) != 0; }
		bool r_bDetectedByEnemyScanner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x400; } return val; }
		bool r_LevelFlightEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x40) != 0; }
		bool r_LevelFlightEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x40; } return val; }
		bool m_bLowPowerPool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x20) != 0; }
		bool m_bLowPowerPool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x20; } return val; }
		bool r_BoostersEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x10) != 0; }
		bool r_BoostersEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x10; } return val; }
		bool r_bIsInvulnerable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x8) != 0; }
		bool r_bIsInvulnerable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x8; } return val; }
		bool m_bBoostRequiresThrust() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x2) != 0; }
		bool m_bBoostRequiresThrust(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x2; } return val; }
		bool m_bPostSpawnLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2776) & 0x1) != 0; }
		bool m_bPostSpawnLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2776) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2776) &= ~0x1; } return val; }
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
	bool CalcOtherWatchingCam(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV, TrPlayerController WatcherController)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
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
void* OtherComponent, Actor.CollisionImpactData* Collision, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *Collision;
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
	void GetSVehicleDebug(ScriptArray!(ScriptString)* DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *DebugInfo;
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
	void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	void ProcessViewRotationBasedOnSeat(int SeatIndex, float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Rotator*)&params[8] = *out_ViewRotation;
		*cast(Rotator*)&params[20] = *out_DeltaRot;
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
