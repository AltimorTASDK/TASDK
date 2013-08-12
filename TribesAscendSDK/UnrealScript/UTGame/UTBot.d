module UnrealScript.UTGame.UTBot;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.InterpActor;
import UnrealScript.UTGame.UTDefensePoint;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTSeqAct_AIStartFireAt;
import UnrealScript.UTGame.UTSeqAct_AIStopFire;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PickupFactory;
import UnrealScript.Engine.Pawn;
import UnrealScript.UDKBase.UDKBot;
import UnrealScript.UTGame.UTPickupFactory;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.UTGame.UTSeqAct_AIFreeze;
import UnrealScript.Engine.LiftCenter;
import UnrealScript.UTGame.UTAvoidMarker;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTCharInfo;
import UnrealScript.Engine.Weapon;

extern(C++) interface UTBot : UDKBot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTBot")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDirectionHint;
			ScriptFunction mRatePickup;
			ScriptFunction mPriorityObjective;
			ScriptFunction mRateWeapon;
			ScriptFunction mWeaponFireAgain;
			ScriptFunction mNeedWeapon;
			ScriptFunction mDoWaitForLanding;
			ScriptFunction mDelayedLeaveVehicle;
			ScriptFunction mNotifyLanded;
			ScriptFunction mSetFall;
			ScriptFunction mCustomActionFunc;
			ScriptFunction mEnemyJustTeleported;
			ScriptFunction mWasKilledBy;
			ScriptFunction mStartMonitoring;
			ScriptFunction mPawnDied;
			ScriptFunction mDestroyed;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSpawnedByKismet;
			ScriptFunction mLandingShake;
			ScriptFunction mHasTimedPowerup;
			ScriptFunction mNotifyAddInventory;
			ScriptFunction mSetupSpecialPathAbilities;
			ScriptFunction mNotifyHitWall;
			ScriptFunction mFearThisSpot;
			ScriptFunction mStartle;
			ScriptFunction mSetCombatTimer;
			ScriptFunction mCanImpactJump;
			ScriptFunction mTimeDJReset;
			ScriptFunction mResetDoubleJump;
			ScriptFunction mWaitForMover;
			ScriptFunction mReadyForLift;
			ScriptFunction mShouldFireAgain;
			ScriptFunction mTimedFireWeaponAtEnemy;
			ScriptFunction mFireWeaponAt;
			ScriptFunction mCanAttack;
			ScriptFunction mOnAIStartFireAt;
			ScriptFunction mTimedFireWeaponAtScriptedTarget;
			ScriptFunction mStopFiring;
			ScriptFunction mOnAIStopFire;
			ScriptFunction mWeaponPreference;
			ScriptFunction mProficientWithWeapon;
			ScriptFunction mCanComboMoving;
			ScriptFunction mCanCombo;
			ScriptFunction mDisplayDebug;
			ScriptFunction mGetOrders;
			ScriptFunction mYellAt;
			ScriptFunction mSendMessage;
			ScriptFunction mSetBotOrders;
			ScriptFunction mSetTemporaryOrders;
			ScriptFunction mClearTemporaryOrders;
			ScriptFunction mHearNoise;
			ScriptFunction mSeePlayer;
			ScriptFunction mSetAttractionState;
			ScriptFunction mClearShot;
			ScriptFunction mCanStakeOut;
			ScriptFunction mCheckIfShouldCrouch;
			ScriptFunction mIsSniping;
			ScriptFunction mFreePoint;
			ScriptFunction mAssignSquadResponsibility;
			ScriptFunction mRelativeStrength;
			ScriptFunction mSetEnemyInfo;
			ScriptFunction mEnemyChanged;
			ScriptFunction mStrafeFromDamage;
			ScriptFunction mNotifyPhysicsVolumeChange;
			ScriptFunction mMayDodgeToMoveTarget;
			ScriptFunction mNotifyJumpApex;
			ScriptFunction mNotifyMissedJump;
			ScriptFunction mReset;
			ScriptFunction mPossess;
			ScriptFunction mInitialize;
			ScriptFunction mResetSkill;
			ScriptFunction mSetMaxDesiredSpeed;
			ScriptFunction mSetPeripheralVision;
			ScriptFunction mSetAlertness;
			ScriptFunction mWhatToDoNext;
			ScriptFunction mExecuteWhatToDoNext;
			ScriptFunction mEnterVehicle;
			ScriptFunction mLeaveVehicle;
			ScriptFunction mVehicleFightEnemy;
			ScriptFunction mFightEnemy;
			ScriptFunction mDoRangedAttackOn;
			ScriptFunction mChooseAttackMode;
			ScriptFunction mFindSuperPickup;
			ScriptFunction mFindInventoryGoal;
			ScriptFunction mTossFlagToPlayer;
			ScriptFunction mPickRetreatDestination;
			ScriptFunction mSoakStop;
			ScriptFunction mFindRoamDest;
			ScriptFunction mRestart;
			ScriptFunction mCheckPathToGoalAround;
			ScriptFunction mClearPathFor;
			ScriptFunction mAdjustAround;
			ScriptFunction mNotifyBump;
			ScriptFunction mNotifyPostLanded;
			ScriptFunction mTimedDodgeToMoveTarget;
			ScriptFunction mStartMoveToward;
			ScriptFunction mSetRouteToGoal;
			ScriptFunction mAllowDetourTo;
			ScriptFunction mFindBestPathToward;
			ScriptFunction mCheckFutureSight;
			ScriptFunction mAdjustAimError;
			ScriptFunction mGetAdjustedAimFor;
			ScriptFunction mTryDuckTowardsMoveTarget;
			ScriptFunction mDelayedWarning;
			ScriptFunction mReceiveProjectileWarning;
			ScriptFunction mNotifyTakeHit;
			ScriptFunction mDelayedInstantWarning;
			ScriptFunction mReceiveWarning;
			ScriptFunction mReceiveRunOverWarning;
			ScriptFunction mNotifyFallingHitWall;
			ScriptFunction mMissedDodge;
			ScriptFunction mTryWallDodge;
			ScriptFunction mChangeStrafe;
			ScriptFunction mTryToDuck;
			ScriptFunction mNotifyKilled;
			ScriptFunction mFaceMoveTarget;
			ScriptFunction mShouldStrafeTo;
			ScriptFunction mFaceActor;
			ScriptFunction mSuperDesireability;
			ScriptFunction mSuperPickupNotSpokenFor;
			ScriptFunction mDamageAttitudeTo;
			ScriptFunction mIsRetreating;
			ScriptFunction mOnAIFreeze;
			ScriptFunction mIsDefending;
			ScriptFunction mShouldDefendPosition;
			ScriptFunction mMoveToDefensePoint;
			ScriptFunction mMoveAwayFrom;
			ScriptFunction mWanderOrCamp;
			ScriptFunction mEnableBumps;
			ScriptFunction mCelebrate;
			ScriptFunction mForceGiveWeapon;
			ScriptFunction mGetDesiredOffset;
			ScriptFunction mLostContact;
			ScriptFunction mLoseEnemy;
			ScriptFunction mDoStakeOut;
			ScriptFunction mDoCharge;
			ScriptFunction mDoTacticalMove;
			ScriptFunction mDoRetreat;
			ScriptFunction mDefendMelee;
			ScriptFunction mIsStrafing;
			ScriptFunction mEngageDirection;
			ScriptFunction mIsHunting;
			ScriptFunction mFindViewSpot;
			ScriptFunction mStopped;
			ScriptFunction mIsShootingObjective;
			ScriptFunction mFocusOnLeader;
			ScriptFunction mStopMovement;
			ScriptFunction mPerformCustomAction;
			ScriptFunction mUnderLift;
			ScriptFunction mHandlePathObstruction;
		}
		public @property static final
		{
			ScriptFunction GetDirectionHint() { return mGetDirectionHint ? mGetDirectionHint : (mGetDirectionHint = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.GetDirectionHint")); }
			ScriptFunction RatePickup() { return mRatePickup ? mRatePickup : (mRatePickup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.RatePickup")); }
			ScriptFunction PriorityObjective() { return mPriorityObjective ? mPriorityObjective : (mPriorityObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.PriorityObjective")); }
			ScriptFunction RateWeapon() { return mRateWeapon ? mRateWeapon : (mRateWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.RateWeapon")); }
			ScriptFunction WeaponFireAgain() { return mWeaponFireAgain ? mWeaponFireAgain : (mWeaponFireAgain = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.WeaponFireAgain")); }
			ScriptFunction NeedWeapon() { return mNeedWeapon ? mNeedWeapon : (mNeedWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NeedWeapon")); }
			ScriptFunction DoWaitForLanding() { return mDoWaitForLanding ? mDoWaitForLanding : (mDoWaitForLanding = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DoWaitForLanding")); }
			ScriptFunction DelayedLeaveVehicle() { return mDelayedLeaveVehicle ? mDelayedLeaveVehicle : (mDelayedLeaveVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DelayedLeaveVehicle")); }
			ScriptFunction NotifyLanded() { return mNotifyLanded ? mNotifyLanded : (mNotifyLanded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyLanded")); }
			ScriptFunction SetFall() { return mSetFall ? mSetFall : (mSetFall = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetFall")); }
			ScriptFunction CustomActionFunc() { return mCustomActionFunc ? mCustomActionFunc : (mCustomActionFunc = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CustomActionFunc")); }
			ScriptFunction EnemyJustTeleported() { return mEnemyJustTeleported ? mEnemyJustTeleported : (mEnemyJustTeleported = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.EnemyJustTeleported")); }
			ScriptFunction WasKilledBy() { return mWasKilledBy ? mWasKilledBy : (mWasKilledBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.WasKilledBy")); }
			ScriptFunction StartMonitoring() { return mStartMonitoring ? mStartMonitoring : (mStartMonitoring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.StartMonitoring")); }
			ScriptFunction PawnDied() { return mPawnDied ? mPawnDied : (mPawnDied = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.PawnDied")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.Destroyed")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.PostBeginPlay")); }
			ScriptFunction SpawnedByKismet() { return mSpawnedByKismet ? mSpawnedByKismet : (mSpawnedByKismet = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SpawnedByKismet")); }
			ScriptFunction LandingShake() { return mLandingShake ? mLandingShake : (mLandingShake = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.LandingShake")); }
			ScriptFunction HasTimedPowerup() { return mHasTimedPowerup ? mHasTimedPowerup : (mHasTimedPowerup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.HasTimedPowerup")); }
			ScriptFunction NotifyAddInventory() { return mNotifyAddInventory ? mNotifyAddInventory : (mNotifyAddInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyAddInventory")); }
			ScriptFunction SetupSpecialPathAbilities() { return mSetupSpecialPathAbilities ? mSetupSpecialPathAbilities : (mSetupSpecialPathAbilities = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetupSpecialPathAbilities")); }
			ScriptFunction NotifyHitWall() { return mNotifyHitWall ? mNotifyHitWall : (mNotifyHitWall = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyHitWall")); }
			ScriptFunction FearThisSpot() { return mFearThisSpot ? mFearThisSpot : (mFearThisSpot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FearThisSpot")); }
			ScriptFunction Startle() { return mStartle ? mStartle : (mStartle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.Startle")); }
			ScriptFunction SetCombatTimer() { return mSetCombatTimer ? mSetCombatTimer : (mSetCombatTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetCombatTimer")); }
			ScriptFunction CanImpactJump() { return mCanImpactJump ? mCanImpactJump : (mCanImpactJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CanImpactJump")); }
			ScriptFunction TimeDJReset() { return mTimeDJReset ? mTimeDJReset : (mTimeDJReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.TimeDJReset")); }
			ScriptFunction ResetDoubleJump() { return mResetDoubleJump ? mResetDoubleJump : (mResetDoubleJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ResetDoubleJump")); }
			ScriptFunction WaitForMover() { return mWaitForMover ? mWaitForMover : (mWaitForMover = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.WaitForMover")); }
			ScriptFunction ReadyForLift() { return mReadyForLift ? mReadyForLift : (mReadyForLift = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ReadyForLift")); }
			ScriptFunction ShouldFireAgain() { return mShouldFireAgain ? mShouldFireAgain : (mShouldFireAgain = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ShouldFireAgain")); }
			ScriptFunction TimedFireWeaponAtEnemy() { return mTimedFireWeaponAtEnemy ? mTimedFireWeaponAtEnemy : (mTimedFireWeaponAtEnemy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.TimedFireWeaponAtEnemy")); }
			ScriptFunction FireWeaponAt() { return mFireWeaponAt ? mFireWeaponAt : (mFireWeaponAt = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FireWeaponAt")); }
			ScriptFunction CanAttack() { return mCanAttack ? mCanAttack : (mCanAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CanAttack")); }
			ScriptFunction OnAIStartFireAt() { return mOnAIStartFireAt ? mOnAIStartFireAt : (mOnAIStartFireAt = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.OnAIStartFireAt")); }
			ScriptFunction TimedFireWeaponAtScriptedTarget() { return mTimedFireWeaponAtScriptedTarget ? mTimedFireWeaponAtScriptedTarget : (mTimedFireWeaponAtScriptedTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.TimedFireWeaponAtScriptedTarget")); }
			ScriptFunction StopFiring() { return mStopFiring ? mStopFiring : (mStopFiring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.StopFiring")); }
			ScriptFunction OnAIStopFire() { return mOnAIStopFire ? mOnAIStopFire : (mOnAIStopFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.OnAIStopFire")); }
			ScriptFunction WeaponPreference() { return mWeaponPreference ? mWeaponPreference : (mWeaponPreference = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.WeaponPreference")); }
			ScriptFunction ProficientWithWeapon() { return mProficientWithWeapon ? mProficientWithWeapon : (mProficientWithWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ProficientWithWeapon")); }
			ScriptFunction CanComboMoving() { return mCanComboMoving ? mCanComboMoving : (mCanComboMoving = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CanComboMoving")); }
			ScriptFunction CanCombo() { return mCanCombo ? mCanCombo : (mCanCombo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CanCombo")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DisplayDebug")); }
			ScriptFunction GetOrders() { return mGetOrders ? mGetOrders : (mGetOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.GetOrders")); }
			ScriptFunction YellAt() { return mYellAt ? mYellAt : (mYellAt = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.YellAt")); }
			ScriptFunction SendMessage() { return mSendMessage ? mSendMessage : (mSendMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SendMessage")); }
			ScriptFunction SetBotOrders() { return mSetBotOrders ? mSetBotOrders : (mSetBotOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetBotOrders")); }
			ScriptFunction SetTemporaryOrders() { return mSetTemporaryOrders ? mSetTemporaryOrders : (mSetTemporaryOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetTemporaryOrders")); }
			ScriptFunction ClearTemporaryOrders() { return mClearTemporaryOrders ? mClearTemporaryOrders : (mClearTemporaryOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ClearTemporaryOrders")); }
			ScriptFunction HearNoise() { return mHearNoise ? mHearNoise : (mHearNoise = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.HearNoise")); }
			ScriptFunction SeePlayer() { return mSeePlayer ? mSeePlayer : (mSeePlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SeePlayer")); }
			ScriptFunction SetAttractionState() { return mSetAttractionState ? mSetAttractionState : (mSetAttractionState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetAttractionState")); }
			ScriptFunction ClearShot() { return mClearShot ? mClearShot : (mClearShot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ClearShot")); }
			ScriptFunction CanStakeOut() { return mCanStakeOut ? mCanStakeOut : (mCanStakeOut = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CanStakeOut")); }
			ScriptFunction CheckIfShouldCrouch() { return mCheckIfShouldCrouch ? mCheckIfShouldCrouch : (mCheckIfShouldCrouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CheckIfShouldCrouch")); }
			ScriptFunction IsSniping() { return mIsSniping ? mIsSniping : (mIsSniping = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.IsSniping")); }
			ScriptFunction FreePoint() { return mFreePoint ? mFreePoint : (mFreePoint = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FreePoint")); }
			ScriptFunction AssignSquadResponsibility() { return mAssignSquadResponsibility ? mAssignSquadResponsibility : (mAssignSquadResponsibility = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.AssignSquadResponsibility")); }
			ScriptFunction RelativeStrength() { return mRelativeStrength ? mRelativeStrength : (mRelativeStrength = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.RelativeStrength")); }
			ScriptFunction SetEnemyInfo() { return mSetEnemyInfo ? mSetEnemyInfo : (mSetEnemyInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetEnemyInfo")); }
			ScriptFunction EnemyChanged() { return mEnemyChanged ? mEnemyChanged : (mEnemyChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.EnemyChanged")); }
			ScriptFunction StrafeFromDamage() { return mStrafeFromDamage ? mStrafeFromDamage : (mStrafeFromDamage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.StrafeFromDamage")); }
			ScriptFunction NotifyPhysicsVolumeChange() { return mNotifyPhysicsVolumeChange ? mNotifyPhysicsVolumeChange : (mNotifyPhysicsVolumeChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyPhysicsVolumeChange")); }
			ScriptFunction MayDodgeToMoveTarget() { return mMayDodgeToMoveTarget ? mMayDodgeToMoveTarget : (mMayDodgeToMoveTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.MayDodgeToMoveTarget")); }
			ScriptFunction NotifyJumpApex() { return mNotifyJumpApex ? mNotifyJumpApex : (mNotifyJumpApex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyJumpApex")); }
			ScriptFunction NotifyMissedJump() { return mNotifyMissedJump ? mNotifyMissedJump : (mNotifyMissedJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyMissedJump")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.Reset")); }
			ScriptFunction Possess() { return mPossess ? mPossess : (mPossess = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.Possess")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.Initialize")); }
			ScriptFunction ResetSkill() { return mResetSkill ? mResetSkill : (mResetSkill = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ResetSkill")); }
			ScriptFunction SetMaxDesiredSpeed() { return mSetMaxDesiredSpeed ? mSetMaxDesiredSpeed : (mSetMaxDesiredSpeed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetMaxDesiredSpeed")); }
			ScriptFunction SetPeripheralVision() { return mSetPeripheralVision ? mSetPeripheralVision : (mSetPeripheralVision = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetPeripheralVision")); }
			ScriptFunction SetAlertness() { return mSetAlertness ? mSetAlertness : (mSetAlertness = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetAlertness")); }
			ScriptFunction WhatToDoNext() { return mWhatToDoNext ? mWhatToDoNext : (mWhatToDoNext = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.WhatToDoNext")); }
			ScriptFunction ExecuteWhatToDoNext() { return mExecuteWhatToDoNext ? mExecuteWhatToDoNext : (mExecuteWhatToDoNext = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ExecuteWhatToDoNext")); }
			ScriptFunction EnterVehicle() { return mEnterVehicle ? mEnterVehicle : (mEnterVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.EnterVehicle")); }
			ScriptFunction LeaveVehicle() { return mLeaveVehicle ? mLeaveVehicle : (mLeaveVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.LeaveVehicle")); }
			ScriptFunction VehicleFightEnemy() { return mVehicleFightEnemy ? mVehicleFightEnemy : (mVehicleFightEnemy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.VehicleFightEnemy")); }
			ScriptFunction FightEnemy() { return mFightEnemy ? mFightEnemy : (mFightEnemy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FightEnemy")); }
			ScriptFunction DoRangedAttackOn() { return mDoRangedAttackOn ? mDoRangedAttackOn : (mDoRangedAttackOn = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DoRangedAttackOn")); }
			ScriptFunction ChooseAttackMode() { return mChooseAttackMode ? mChooseAttackMode : (mChooseAttackMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ChooseAttackMode")); }
			ScriptFunction FindSuperPickup() { return mFindSuperPickup ? mFindSuperPickup : (mFindSuperPickup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FindSuperPickup")); }
			ScriptFunction FindInventoryGoal() { return mFindInventoryGoal ? mFindInventoryGoal : (mFindInventoryGoal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FindInventoryGoal")); }
			ScriptFunction TossFlagToPlayer() { return mTossFlagToPlayer ? mTossFlagToPlayer : (mTossFlagToPlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.TossFlagToPlayer")); }
			ScriptFunction PickRetreatDestination() { return mPickRetreatDestination ? mPickRetreatDestination : (mPickRetreatDestination = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.PickRetreatDestination")); }
			ScriptFunction SoakStop() { return mSoakStop ? mSoakStop : (mSoakStop = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SoakStop")); }
			ScriptFunction FindRoamDest() { return mFindRoamDest ? mFindRoamDest : (mFindRoamDest = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FindRoamDest")); }
			ScriptFunction Restart() { return mRestart ? mRestart : (mRestart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.Restart")); }
			ScriptFunction CheckPathToGoalAround() { return mCheckPathToGoalAround ? mCheckPathToGoalAround : (mCheckPathToGoalAround = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CheckPathToGoalAround")); }
			ScriptFunction ClearPathFor() { return mClearPathFor ? mClearPathFor : (mClearPathFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ClearPathFor")); }
			ScriptFunction AdjustAround() { return mAdjustAround ? mAdjustAround : (mAdjustAround = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.AdjustAround")); }
			ScriptFunction NotifyBump() { return mNotifyBump ? mNotifyBump : (mNotifyBump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyBump")); }
			ScriptFunction NotifyPostLanded() { return mNotifyPostLanded ? mNotifyPostLanded : (mNotifyPostLanded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyPostLanded")); }
			ScriptFunction TimedDodgeToMoveTarget() { return mTimedDodgeToMoveTarget ? mTimedDodgeToMoveTarget : (mTimedDodgeToMoveTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.TimedDodgeToMoveTarget")); }
			ScriptFunction StartMoveToward() { return mStartMoveToward ? mStartMoveToward : (mStartMoveToward = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.StartMoveToward")); }
			ScriptFunction SetRouteToGoal() { return mSetRouteToGoal ? mSetRouteToGoal : (mSetRouteToGoal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SetRouteToGoal")); }
			ScriptFunction AllowDetourTo() { return mAllowDetourTo ? mAllowDetourTo : (mAllowDetourTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.AllowDetourTo")); }
			ScriptFunction FindBestPathToward() { return mFindBestPathToward ? mFindBestPathToward : (mFindBestPathToward = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FindBestPathToward")); }
			ScriptFunction CheckFutureSight() { return mCheckFutureSight ? mCheckFutureSight : (mCheckFutureSight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.CheckFutureSight")); }
			ScriptFunction AdjustAimError() { return mAdjustAimError ? mAdjustAimError : (mAdjustAimError = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.AdjustAimError")); }
			ScriptFunction GetAdjustedAimFor() { return mGetAdjustedAimFor ? mGetAdjustedAimFor : (mGetAdjustedAimFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.GetAdjustedAimFor")); }
			ScriptFunction TryDuckTowardsMoveTarget() { return mTryDuckTowardsMoveTarget ? mTryDuckTowardsMoveTarget : (mTryDuckTowardsMoveTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.TryDuckTowardsMoveTarget")); }
			ScriptFunction DelayedWarning() { return mDelayedWarning ? mDelayedWarning : (mDelayedWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DelayedWarning")); }
			ScriptFunction ReceiveProjectileWarning() { return mReceiveProjectileWarning ? mReceiveProjectileWarning : (mReceiveProjectileWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ReceiveProjectileWarning")); }
			ScriptFunction NotifyTakeHit() { return mNotifyTakeHit ? mNotifyTakeHit : (mNotifyTakeHit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyTakeHit")); }
			ScriptFunction DelayedInstantWarning() { return mDelayedInstantWarning ? mDelayedInstantWarning : (mDelayedInstantWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DelayedInstantWarning")); }
			ScriptFunction ReceiveWarning() { return mReceiveWarning ? mReceiveWarning : (mReceiveWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ReceiveWarning")); }
			ScriptFunction ReceiveRunOverWarning() { return mReceiveRunOverWarning ? mReceiveRunOverWarning : (mReceiveRunOverWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ReceiveRunOverWarning")); }
			ScriptFunction NotifyFallingHitWall() { return mNotifyFallingHitWall ? mNotifyFallingHitWall : (mNotifyFallingHitWall = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyFallingHitWall")); }
			ScriptFunction MissedDodge() { return mMissedDodge ? mMissedDodge : (mMissedDodge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.MissedDodge")); }
			ScriptFunction TryWallDodge() { return mTryWallDodge ? mTryWallDodge : (mTryWallDodge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.TryWallDodge")); }
			ScriptFunction ChangeStrafe() { return mChangeStrafe ? mChangeStrafe : (mChangeStrafe = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ChangeStrafe")); }
			ScriptFunction TryToDuck() { return mTryToDuck ? mTryToDuck : (mTryToDuck = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.TryToDuck")); }
			ScriptFunction NotifyKilled() { return mNotifyKilled ? mNotifyKilled : (mNotifyKilled = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.NotifyKilled")); }
			ScriptFunction FaceMoveTarget() { return mFaceMoveTarget ? mFaceMoveTarget : (mFaceMoveTarget = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FaceMoveTarget")); }
			ScriptFunction ShouldStrafeTo() { return mShouldStrafeTo ? mShouldStrafeTo : (mShouldStrafeTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ShouldStrafeTo")); }
			ScriptFunction FaceActor() { return mFaceActor ? mFaceActor : (mFaceActor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FaceActor")); }
			ScriptFunction SuperDesireability() { return mSuperDesireability ? mSuperDesireability : (mSuperDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SuperDesireability")); }
			ScriptFunction SuperPickupNotSpokenFor() { return mSuperPickupNotSpokenFor ? mSuperPickupNotSpokenFor : (mSuperPickupNotSpokenFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.SuperPickupNotSpokenFor")); }
			ScriptFunction DamageAttitudeTo() { return mDamageAttitudeTo ? mDamageAttitudeTo : (mDamageAttitudeTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DamageAttitudeTo")); }
			ScriptFunction IsRetreating() { return mIsRetreating ? mIsRetreating : (mIsRetreating = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.IsRetreating")); }
			ScriptFunction OnAIFreeze() { return mOnAIFreeze ? mOnAIFreeze : (mOnAIFreeze = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.OnAIFreeze")); }
			ScriptFunction IsDefending() { return mIsDefending ? mIsDefending : (mIsDefending = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.IsDefending")); }
			ScriptFunction ShouldDefendPosition() { return mShouldDefendPosition ? mShouldDefendPosition : (mShouldDefendPosition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ShouldDefendPosition")); }
			ScriptFunction MoveToDefensePoint() { return mMoveToDefensePoint ? mMoveToDefensePoint : (mMoveToDefensePoint = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.MoveToDefensePoint")); }
			ScriptFunction MoveAwayFrom() { return mMoveAwayFrom ? mMoveAwayFrom : (mMoveAwayFrom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.MoveAwayFrom")); }
			ScriptFunction WanderOrCamp() { return mWanderOrCamp ? mWanderOrCamp : (mWanderOrCamp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.WanderOrCamp")); }
			ScriptFunction EnableBumps() { return mEnableBumps ? mEnableBumps : (mEnableBumps = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.EnableBumps")); }
			ScriptFunction Celebrate() { return mCelebrate ? mCelebrate : (mCelebrate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.Celebrate")); }
			ScriptFunction ForceGiveWeapon() { return mForceGiveWeapon ? mForceGiveWeapon : (mForceGiveWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.ForceGiveWeapon")); }
			ScriptFunction GetDesiredOffset() { return mGetDesiredOffset ? mGetDesiredOffset : (mGetDesiredOffset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.GetDesiredOffset")); }
			ScriptFunction LostContact() { return mLostContact ? mLostContact : (mLostContact = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.LostContact")); }
			ScriptFunction LoseEnemy() { return mLoseEnemy ? mLoseEnemy : (mLoseEnemy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.LoseEnemy")); }
			ScriptFunction DoStakeOut() { return mDoStakeOut ? mDoStakeOut : (mDoStakeOut = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DoStakeOut")); }
			ScriptFunction DoCharge() { return mDoCharge ? mDoCharge : (mDoCharge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DoCharge")); }
			ScriptFunction DoTacticalMove() { return mDoTacticalMove ? mDoTacticalMove : (mDoTacticalMove = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DoTacticalMove")); }
			ScriptFunction DoRetreat() { return mDoRetreat ? mDoRetreat : (mDoRetreat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DoRetreat")); }
			ScriptFunction DefendMelee() { return mDefendMelee ? mDefendMelee : (mDefendMelee = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.DefendMelee")); }
			ScriptFunction IsStrafing() { return mIsStrafing ? mIsStrafing : (mIsStrafing = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.IsStrafing")); }
			ScriptFunction EngageDirection() { return mEngageDirection ? mEngageDirection : (mEngageDirection = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.EngageDirection")); }
			ScriptFunction IsHunting() { return mIsHunting ? mIsHunting : (mIsHunting = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.IsHunting")); }
			ScriptFunction FindViewSpot() { return mFindViewSpot ? mFindViewSpot : (mFindViewSpot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FindViewSpot")); }
			ScriptFunction Stopped() { return mStopped ? mStopped : (mStopped = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.Stopped")); }
			ScriptFunction IsShootingObjective() { return mIsShootingObjective ? mIsShootingObjective : (mIsShootingObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.IsShootingObjective")); }
			ScriptFunction FocusOnLeader() { return mFocusOnLeader ? mFocusOnLeader : (mFocusOnLeader = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.FocusOnLeader")); }
			ScriptFunction StopMovement() { return mStopMovement ? mStopMovement : (mStopMovement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.StopMovement")); }
			ScriptFunction PerformCustomAction() { return mPerformCustomAction ? mPerformCustomAction : (mPerformCustomAction = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.PerformCustomAction")); }
			ScriptFunction UnderLift() { return mUnderLift ? mUnderLift : (mUnderLift = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.UnderLift")); }
			ScriptFunction HandlePathObstruction() { return mHandlePathObstruction ? mHandlePathObstruction : (mHandlePathObstruction = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBot.HandlePathObstruction")); }
		}
	}
	static struct Constants
	{
		enum
		{
			MAXSTAKEOUTDIST = 2000,
			ENEMYLOCATIONFUZZ = 1200,
			TACTICALHEIGHTADVANTAGE = 320,
			MINSTRAFEDIST = 200,
			MINVIEWDIST = 200,
			AngleConvert = 0.0000958738,
		}
	}
	@property final
	{
		auto ref
		{
			Actor NoVehicleGoal() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1304); }
			Vector DirectionHint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1308); }
			ScriptClass KilledVehicleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1164); }
			ScriptClass FavoriteWeapon() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1256); }
			UTDefensePoint DefensePoint() { return *cast(UTDefensePoint*)(cast(size_t)cast(void*)this + 1296); }
			ScriptString GoalString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1264); }
			float LastInjuredVoiceMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
			float LastCanAttackCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
			Actor LastFireTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1536); }
			float LastTryHoverboardTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1532); }
			float LastActionMusicUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 1528); }
			Actor ScriptedTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1524); }
			Vector LastKillerPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1512); }
			Vector LastKnownPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1500); }
			Controller OldOrderGiver() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1496); }
			ScriptName OldOrders() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1488); }
			ScriptName OrderNames() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1360); }
			float GatherTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1356); }
			float LastFireAttempt() { return *cast(float*)(cast(size_t)cast(void*)this + 1352); }
			int NumRandomJumps() { return *cast(int*)(cast(size_t)cast(void*)this + 1348); }
			float CampTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1344); }
			float LastSearchWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1340); }
			float LastSearchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
			Pawn FailedHuntEnemy() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1332); }
			float FailedHuntTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1328); }
			float LastRespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1324); }
			float StopStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1320); }
			NavigationPoint DefensivePosition() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1300); }
			float ReTaskTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1292); }
			UTBot NextSquadMember() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 1288); }
			ScriptString SoakString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1276); }
			float OldMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1260); }
			float Jumpiness() { return *cast(float*)(cast(size_t)cast(void*)this + 1252); }
			float ReactionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1248); }
			float Tactics() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
			float CombatStyle() { return *cast(float*)(cast(size_t)cast(void*)this + 1240); }
			float StrafingAbility() { return *cast(float*)(cast(size_t)cast(void*)this + 1236); }
			float BaseAggressiveness() { return *cast(float*)(cast(size_t)cast(void*)this + 1232); }
			float Accuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
			float BaseAlertness() { return *cast(float*)(cast(size_t)cast(void*)this + 1224); }
			float ForcedFlagDropTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1220); }
			float RetreatStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1216); }
			float LastUnderFire() { return *cast(float*)(cast(size_t)cast(void*)this + 1212); }
			float StartTacticalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1208); }
			Actor StartleActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1204); }
			float LoseEnemyCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1200); }
			float Aggression() { return *cast(float*)(cast(size_t)cast(void*)this + 1196); }
			float AcquireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
			NavigationPoint BlockedPath() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1188); }
			float LastAttractCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 1184); }
			float Aggressiveness() { return *cast(float*)(cast(size_t)cast(void*)this + 1180); }
			Vector HidingSpot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1168); }
			int LastTauntIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
			int OldMessageID() { return *cast(int*)(cast(size_t)cast(void*)this + 1156); }
			ScriptName OldMessageType() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1148); }
			float MaxSpecialJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1144); }
			float ImpactJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1140); }
			Actor ImpactTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1136); }
			float LastWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1128); }
			Pawn InstantWarningShooter() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1124); }
		}
		bool bHuntPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1) != 0; }
		bool bHuntPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1; } return val; }
		bool bJustLanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x8000) != 0; }
		bool bJustLanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x8000; } return val; }
		bool bResetCombatTimer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x40000000) != 0; }
		bool bResetCombatTimer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x40000000; } return val; }
		bool bCheckDriverPickups() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x20000000) != 0; }
		bool bCheckDriverPickups(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x20000000; } return val; }
		bool bDirectHunt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x10000000) != 0; }
		bool bDirectHunt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x10000000; } return val; }
		bool bFinalStretch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x8000000) != 0; }
		bool bFinalStretch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x8000000; } return val; }
		bool bSpawnedByKismet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x4000000) != 0; }
		bool bSpawnedByKismet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x4000000; } return val; }
		bool bBetrayTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x2000000) != 0; }
		bool bBetrayTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x2000000; } return val; }
		bool bShortCamp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1000000) != 0; }
		bool bShortCamp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1000000; } return val; }
		bool bForceNoDetours() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x800000) != 0; }
		bool bForceNoDetours(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x800000; } return val; }
		bool bSendFlagMessage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x400000) != 0; }
		bool bSendFlagMessage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x400000; } return val; }
		bool bScriptedFrozen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x200000) != 0; }
		bool bScriptedFrozen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x200000; } return val; }
		bool bAllowedToImpactJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x100000) != 0; }
		bool bAllowedToImpactJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x100000; } return val; }
		bool bPendingDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x80000) != 0; }
		bool bPendingDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x80000; } return val; }
		bool bHasSuperWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x40000) != 0; }
		bool bHasSuperWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x40000; } return val; }
		bool bIgnoreEnemyChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x20000) != 0; }
		bool bIgnoreEnemyChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x20000; } return val; }
		bool bRecommendFastMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x10000) != 0; }
		bool bRecommendFastMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x10000; } return val; }
		bool bPursuingFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x4000) != 0; }
		bool bPursuingFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x4000; } return val; }
		bool bMustCharge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x2000) != 0; }
		bool bMustCharge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x2000; } return val; }
		bool bStoppedFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1000) != 0; }
		bool bStoppedFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1000; } return val; }
		bool bFireSuccess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x800) != 0; }
		bool bFireSuccess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x800; } return val; }
		bool bForcedDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x400) != 0; }
		bool bForcedDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x400; } return val; }
		bool bHasFired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x200) != 0; }
		bool bHasFired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x200; } return val; }
		bool bWasNearObjective() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x100) != 0; }
		bool bWasNearObjective(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x100; } return val; }
		bool bTacticalDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x80) != 0; }
		bool bTacticalDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x80; } return val; }
		bool bReachedGatherPoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x40) != 0; }
		bool bReachedGatherPoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x40; } return val; }
		bool bInitLifeMessage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x20) != 0; }
		bool bInitLifeMessage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x20; } return val; }
		bool bFrustrated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x10) != 0; }
		bool bFrustrated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x10; } return val; }
		bool bChangeDir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x8) != 0; }
		bool bChangeDir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x8; } return val; }
		bool bStrafeDir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x4) != 0; }
		bool bStrafeDir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x4; } return val; }
		bool bCanFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x2) != 0; }
		bool bCanFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x2; } return val; }
	}
final:
	Vector GetDirectionHint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDirectionHint, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	float RatePickup(Actor PickupHolder, ScriptClass InvClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(ScriptClass*)&params[4] = InvClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.RatePickup, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool PriorityObjective()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PriorityObjective, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float RateWeapon(Weapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		(cast(ScriptObject)this).ProcessEvent(Functions.RateWeapon, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool WeaponFireAgain(bool bFinishedFire)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinishedFire;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponFireAgain, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NeedWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool DoWaitForLanding()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoWaitForLanding, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DelayedLeaveVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayedLeaveVehicle, cast(void*)0, cast(void*)0);
	}
	bool NotifyLanded(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLanded, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void SetFall()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFall, cast(void*)0, cast(void*)0);
	}
	bool CustomActionFunc(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomActionFunc, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void EnemyJustTeleported()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnemyJustTeleported, cast(void*)0, cast(void*)0);
	}
	void WasKilledBy(Controller Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.WasKilledBy, params.ptr, cast(void*)0);
	}
	void StartMonitoring(Pawn P, float MaxDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = MaxDist;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMonitoring, params.ptr, cast(void*)0);
	}
	void PawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnDied, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnedByKismet, cast(void*)0, cast(void*)0);
	}
	bool LandingShake()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LandingShake, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasTimedPowerup()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasTimedPowerup, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void NotifyAddInventory(Inventory pNewItem)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = pNewItem;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyAddInventory, params.ptr, cast(void*)0);
	}
	void SetupSpecialPathAbilities()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupSpecialPathAbilities, cast(void*)0, cast(void*)0);
	}
	bool NotifyHitWall(Vector HitNormal, Actor Wall)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyHitWall, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void FearThisSpot(UTAvoidMarker aSpot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTAvoidMarker*)params.ptr = aSpot;
		(cast(ScriptObject)this).ProcessEvent(Functions.FearThisSpot, params.ptr, cast(void*)0);
	}
	void Startle(Actor Feared)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Feared;
		(cast(ScriptObject)this).ProcessEvent(Functions.Startle, params.ptr, cast(void*)0);
	}
	void SetCombatTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCombatTimer, cast(void*)0, cast(void*)0);
	}
	bool CanImpactJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanImpactJump, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void TimeDJReset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimeDJReset, cast(void*)0, cast(void*)0);
	}
	void ResetDoubleJump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetDoubleJump, cast(void*)0, cast(void*)0);
	}
	void WaitForMover(InterpActor M)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpActor*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitForMover, params.ptr, cast(void*)0);
	}
	void ReadyForLift()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadyForLift, cast(void*)0, cast(void*)0);
	}
	bool ShouldFireAgain()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldFireAgain, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void TimedFireWeaponAtEnemy()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimedFireWeaponAtEnemy, cast(void*)0, cast(void*)0);
	}
	bool FireWeaponAt(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireWeaponAt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnAIStartFireAt(UTSeqAct_AIStartFireAt FireAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_AIStartFireAt*)params.ptr = FireAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIStartFireAt, params.ptr, cast(void*)0);
	}
	void TimedFireWeaponAtScriptedTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimedFireWeaponAtScriptedTarget, cast(void*)0, cast(void*)0);
	}
	void StopFiring()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFiring, cast(void*)0, cast(void*)0);
	}
	void OnAIStopFire(UTSeqAct_AIStopFire FireAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_AIStopFire*)params.ptr = FireAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIStopFire, params.ptr, cast(void*)0);
	}
	float WeaponPreference(Weapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponPreference, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool ProficientWithWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProficientWithWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanComboMoving()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanComboMoving, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanCombo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanCombo, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DisplayDebug(HUD pHUD, float* YL, float* YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *YL;
		*cast(float*)&params[8] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*YL = *cast(float*)&params[4];
		*YPos = *cast(float*)&params[8];
	}
	ScriptName GetOrders()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOrders, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void YellAt(PlayerReplicationInfo Moron)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Moron;
		(cast(ScriptObject)this).ProcessEvent(Functions.YellAt, params.ptr, cast(void*)0);
	}
	void SendMessage(PlayerReplicationInfo Recipient, ScriptName MessageType, float Wait, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Recipient;
		*cast(ScriptName*)&params[4] = MessageType;
		*cast(float*)&params[12] = Wait;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMessage, params.ptr, cast(void*)0);
	}
	void SetBotOrders(ScriptName NewOrders, Controller OrderGiver, bool bShouldAck)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewOrders;
		*cast(Controller*)&params[8] = OrderGiver;
		*cast(bool*)&params[12] = bShouldAck;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBotOrders, params.ptr, cast(void*)0);
	}
	void SetTemporaryOrders(ScriptName NewOrders, Controller OrderGiver)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewOrders;
		*cast(Controller*)&params[8] = OrderGiver;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemporaryOrders, params.ptr, cast(void*)0);
	}
	void ClearTemporaryOrders()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearTemporaryOrders, cast(void*)0, cast(void*)0);
	}
	void HearNoise(float Loudness, Actor NoiseMaker, ScriptName NoiseType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Loudness;
		*cast(Actor*)&params[4] = NoiseMaker;
		*cast(ScriptName*)&params[8] = NoiseType;
		(cast(ScriptObject)this).ProcessEvent(Functions.HearNoise, params.ptr, cast(void*)0);
	}
	void SeePlayer(Pawn SeenPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = SeenPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeePlayer, params.ptr, cast(void*)0);
	}
	void SetAttractionState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAttractionState, cast(void*)0, cast(void*)0);
	}
	bool ClearShot(Vector TargetLoc, bool bImmediateFire)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		*cast(bool*)&params[12] = bImmediateFire;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearShot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool CanStakeOut()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanStakeOut, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void CheckIfShouldCrouch(Vector StartPosition, Vector TargetPosition, float probability)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = StartPosition;
		*cast(Vector*)&params[12] = TargetPosition;
		*cast(float*)&params[24] = probability;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckIfShouldCrouch, params.ptr, cast(void*)0);
	}
	bool IsSniping()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSniping, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void FreePoint()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FreePoint, cast(void*)0, cast(void*)0);
	}
	bool AssignSquadResponsibility()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AssignSquadResponsibility, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float RelativeStrength(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RelativeStrength, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void SetEnemyInfo(bool bNewEnemyVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewEnemyVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnemyInfo, params.ptr, cast(void*)0);
	}
	void EnemyChanged(bool bNewEnemyVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewEnemyVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnemyChanged, params.ptr, cast(void*)0);
	}
	bool StrafeFromDamage(float Damage, ScriptClass pDamageType, bool bFindDest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(bool*)&params[8] = bFindDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.StrafeFromDamage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void NotifyPhysicsVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPhysicsVolumeChange, params.ptr, cast(void*)0);
	}
	void MayDodgeToMoveTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MayDodgeToMoveTarget, cast(void*)0, cast(void*)0);
	}
	void NotifyJumpApex()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyJumpApex, cast(void*)0, cast(void*)0);
	}
	void NotifyMissedJump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyMissedJump, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void Possess(Pawn aPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Possess, params.ptr, cast(void*)0);
	}
	void Initialize(float InSkill, UTCharInfo.CharacterInfo* BotInfo)
	{
		ubyte params[116];
		params[] = 0;
		*cast(float*)params.ptr = InSkill;
		*cast(UTCharInfo.CharacterInfo*)&params[4] = *BotInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, params.ptr, cast(void*)0);
		*BotInfo = *cast(UTCharInfo.CharacterInfo*)&params[4];
	}
	void ResetSkill()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetSkill, cast(void*)0, cast(void*)0);
	}
	void SetMaxDesiredSpeed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaxDesiredSpeed, cast(void*)0, cast(void*)0);
	}
	void SetPeripheralVision()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPeripheralVision, cast(void*)0, cast(void*)0);
	}
	void SetAlertness(float NewAlertness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewAlertness;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAlertness, params.ptr, cast(void*)0);
	}
	void WhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WhatToDoNext, cast(void*)0, cast(void*)0);
	}
	void ExecuteWhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ExecuteWhatToDoNext, cast(void*)0, cast(void*)0);
	}
	void EnterVehicle(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnterVehicle, params.ptr, cast(void*)0);
	}
	void LeaveVehicle(bool bBlocking)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bBlocking;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveVehicle, params.ptr, cast(void*)0);
	}
	void VehicleFightEnemy(bool bCanCharge, float EnemyStrength)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCanCharge;
		*cast(float*)&params[4] = EnemyStrength;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleFightEnemy, params.ptr, cast(void*)0);
	}
	void FightEnemy(bool bCanCharge, float EnemyStrength)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCanCharge;
		*cast(float*)&params[4] = EnemyStrength;
		(cast(ScriptObject)this).ProcessEvent(Functions.FightEnemy, params.ptr, cast(void*)0);
	}
	void DoRangedAttackOn(Actor A)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoRangedAttackOn, params.ptr, cast(void*)0);
	}
	void ChooseAttackMode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ChooseAttackMode, cast(void*)0, cast(void*)0);
	}
	bool FindSuperPickup(float MaxDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxDist;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSuperPickup, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FindInventoryGoal(float BestWeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = BestWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindInventoryGoal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void TossFlagToPlayer(Controller OrderGiver)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = OrderGiver;
		(cast(ScriptObject)this).ProcessEvent(Functions.TossFlagToPlayer, params.ptr, cast(void*)0);
	}
	bool PickRetreatDestination()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickRetreatDestination, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SoakStop(ScriptString problem)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = problem;
		(cast(ScriptObject)this).ProcessEvent(Functions.SoakStop, params.ptr, cast(void*)0);
	}
	bool FindRoamDest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindRoamDest, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Restart, params.ptr, cast(void*)0);
	}
	bool CheckPathToGoalAround(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPathToGoalAround, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ClearPathFor(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPathFor, params.ptr, cast(void*)0);
	}
	bool AdjustAround(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustAround, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NotifyBump(Actor Other, Vector HitNormal)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyBump, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void NotifyPostLanded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPostLanded, cast(void*)0, cast(void*)0);
	}
	void TimedDodgeToMoveTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TimedDodgeToMoveTarget, cast(void*)0, cast(void*)0);
	}
	bool StartMoveToward(Actor O)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMoveToward, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetRouteToGoal(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRouteToGoal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowDetourTo(NavigationPoint N)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowDetourTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FindBestPathToward(Actor A, bool bCheckedReach, bool bAllowDetour)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(bool*)&params[4] = bCheckedReach;
		*cast(bool*)&params[8] = bAllowDetour;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBestPathToward, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool CheckFutureSight(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckFutureSight, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float AdjustAimError(float TargetDist, bool bInstantProj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = TargetDist;
		*cast(bool*)&params[4] = bInstantProj;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustAimError, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	Rotator GetAdjustedAimFor(Weapon InWeapon, Vector projStart)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = projStart;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAimFor, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	bool TryDuckTowardsMoveTarget(Vector Dir, Vector Y)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		*cast(Vector*)&params[12] = Y;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryDuckTowardsMoveTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void DelayedWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayedWarning, cast(void*)0, cast(void*)0);
	}
	void ReceiveProjectileWarning(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveProjectileWarning, params.ptr, cast(void*)0);
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
	void DelayedInstantWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayedInstantWarning, cast(void*)0, cast(void*)0);
	}
	void ReceiveWarning(Pawn shooter, float projSpeed, Vector FireDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = shooter;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = FireDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveWarning, params.ptr, cast(void*)0);
	}
	void ReceiveRunOverWarning(UDKVehicle V, float projSpeed, Vector VehicleDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = V;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = VehicleDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveRunOverWarning, params.ptr, cast(void*)0);
	}
	void NotifyFallingHitWall(Vector HitNormal, Actor HitActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyFallingHitWall, params.ptr, cast(void*)0);
	}
	void MissedDodge()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MissedDodge, cast(void*)0, cast(void*)0);
	}
	bool TryWallDodge(Vector HitNormal, Actor HitActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryWallDodge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ChangeStrafe()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeStrafe, cast(void*)0, cast(void*)0);
	}
	bool TryToDuck(Vector duckDir, bool bReversed)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = duckDir;
		*cast(bool*)&params[12] = bReversed;
		(cast(ScriptObject)this).ProcessEvent(Functions.TryToDuck, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyKilled, params.ptr, cast(void*)0);
	}
	Actor FaceMoveTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceMoveTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool ShouldStrafeTo(Actor WayPoint)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = WayPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldStrafeTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Actor FaceActor(float StrafingModifier)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = StrafingModifier;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceActor, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	float SuperDesireability(PickupFactory P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuperDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool SuperPickupNotSpokenFor(UTPickupFactory P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPickupFactory*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuperPickupNotSpokenFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DamageAttitudeTo(Controller Other, float Damage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(float*)&params[4] = Damage;
		(cast(ScriptObject)this).ProcessEvent(Functions.DamageAttitudeTo, params.ptr, cast(void*)0);
	}
	bool IsRetreating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsRetreating, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnAIFreeze(UTSeqAct_AIFreeze FreezeAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_AIFreeze*)params.ptr = FreezeAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIFreeze, params.ptr, cast(void*)0);
	}
	bool IsDefending()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDefending, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldDefendPosition()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldDefendPosition, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void MoveToDefensePoint()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToDefensePoint, cast(void*)0, cast(void*)0);
	}
	void MoveAwayFrom(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveAwayFrom, params.ptr, cast(void*)0);
	}
	void WanderOrCamp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WanderOrCamp, cast(void*)0, cast(void*)0);
	}
	void EnableBumps()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableBumps, cast(void*)0, cast(void*)0);
	}
	void Celebrate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Celebrate, cast(void*)0, cast(void*)0);
	}
	void ForceGiveWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceGiveWeapon, cast(void*)0, cast(void*)0);
	}
	float GetDesiredOffset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDesiredOffset, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool LostContact(float MaxTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.LostContact, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool LoseEnemy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoseEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DoStakeOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoStakeOut, cast(void*)0, cast(void*)0);
	}
	void DoCharge()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoCharge, cast(void*)0, cast(void*)0);
	}
	void DoTacticalMove()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoTacticalMove, cast(void*)0, cast(void*)0);
	}
	void DoRetreat()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoRetreat, cast(void*)0, cast(void*)0);
	}
	bool DefendMelee(float Dist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Dist;
		(cast(ScriptObject)this).ProcessEvent(Functions.DefendMelee, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsStrafing()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsStrafing, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool EngageDirection(Vector StrafeDir, bool bForced)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = StrafeDir;
		*cast(bool*)&params[12] = bForced;
		(cast(ScriptObject)this).ProcessEvent(Functions.EngageDirection, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsHunting()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsHunting, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool FindViewSpot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindViewSpot, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool Stopped()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Stopped, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsShootingObjective()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsShootingObjective, params.ptr, cast(void*)0);
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
	void StopMovement()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopMovement, cast(void*)0, cast(void*)0);
	}
	void PerformCustomAction(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ActionFunc)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ActionFunc;
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformCustomAction, params.ptr, cast(void*)0);
	}
	void UnderLift(LiftCenter M)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LiftCenter*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnderLift, params.ptr, cast(void*)0);
	}
	bool HandlePathObstruction(Actor BlockedBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = BlockedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePathObstruction, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
