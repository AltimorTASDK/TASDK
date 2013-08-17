module UnrealScript.UTGame.UTBot;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTBot")()); }
	private static __gshared UTBot mDefaultProperties;
	@property final static UTBot DefaultProperties() { mixin(MGDPC!(UTBot, "UTBot UTGame.Default__UTBot")()); }
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
			ScriptFunction GetDirectionHint() { mixin(MGF!("mGetDirectionHint", "Function UTGame.UTBot.GetDirectionHint")()); }
			ScriptFunction RatePickup() { mixin(MGF!("mRatePickup", "Function UTGame.UTBot.RatePickup")()); }
			ScriptFunction PriorityObjective() { mixin(MGF!("mPriorityObjective", "Function UTGame.UTBot.PriorityObjective")()); }
			ScriptFunction RateWeapon() { mixin(MGF!("mRateWeapon", "Function UTGame.UTBot.RateWeapon")()); }
			ScriptFunction WeaponFireAgain() { mixin(MGF!("mWeaponFireAgain", "Function UTGame.UTBot.WeaponFireAgain")()); }
			ScriptFunction NeedWeapon() { mixin(MGF!("mNeedWeapon", "Function UTGame.UTBot.NeedWeapon")()); }
			ScriptFunction DoWaitForLanding() { mixin(MGF!("mDoWaitForLanding", "Function UTGame.UTBot.DoWaitForLanding")()); }
			ScriptFunction DelayedLeaveVehicle() { mixin(MGF!("mDelayedLeaveVehicle", "Function UTGame.UTBot.DelayedLeaveVehicle")()); }
			ScriptFunction NotifyLanded() { mixin(MGF!("mNotifyLanded", "Function UTGame.UTBot.NotifyLanded")()); }
			ScriptFunction SetFall() { mixin(MGF!("mSetFall", "Function UTGame.UTBot.SetFall")()); }
			ScriptFunction CustomActionFunc() { mixin(MGF!("mCustomActionFunc", "Function UTGame.UTBot.CustomActionFunc")()); }
			ScriptFunction EnemyJustTeleported() { mixin(MGF!("mEnemyJustTeleported", "Function UTGame.UTBot.EnemyJustTeleported")()); }
			ScriptFunction WasKilledBy() { mixin(MGF!("mWasKilledBy", "Function UTGame.UTBot.WasKilledBy")()); }
			ScriptFunction StartMonitoring() { mixin(MGF!("mStartMonitoring", "Function UTGame.UTBot.StartMonitoring")()); }
			ScriptFunction PawnDied() { mixin(MGF!("mPawnDied", "Function UTGame.UTBot.PawnDied")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTBot.Destroyed")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTBot.PostBeginPlay")()); }
			ScriptFunction SpawnedByKismet() { mixin(MGF!("mSpawnedByKismet", "Function UTGame.UTBot.SpawnedByKismet")()); }
			ScriptFunction LandingShake() { mixin(MGF!("mLandingShake", "Function UTGame.UTBot.LandingShake")()); }
			ScriptFunction HasTimedPowerup() { mixin(MGF!("mHasTimedPowerup", "Function UTGame.UTBot.HasTimedPowerup")()); }
			ScriptFunction NotifyAddInventory() { mixin(MGF!("mNotifyAddInventory", "Function UTGame.UTBot.NotifyAddInventory")()); }
			ScriptFunction SetupSpecialPathAbilities() { mixin(MGF!("mSetupSpecialPathAbilities", "Function UTGame.UTBot.SetupSpecialPathAbilities")()); }
			ScriptFunction NotifyHitWall() { mixin(MGF!("mNotifyHitWall", "Function UTGame.UTBot.NotifyHitWall")()); }
			ScriptFunction FearThisSpot() { mixin(MGF!("mFearThisSpot", "Function UTGame.UTBot.FearThisSpot")()); }
			ScriptFunction Startle() { mixin(MGF!("mStartle", "Function UTGame.UTBot.Startle")()); }
			ScriptFunction SetCombatTimer() { mixin(MGF!("mSetCombatTimer", "Function UTGame.UTBot.SetCombatTimer")()); }
			ScriptFunction CanImpactJump() { mixin(MGF!("mCanImpactJump", "Function UTGame.UTBot.CanImpactJump")()); }
			ScriptFunction TimeDJReset() { mixin(MGF!("mTimeDJReset", "Function UTGame.UTBot.TimeDJReset")()); }
			ScriptFunction ResetDoubleJump() { mixin(MGF!("mResetDoubleJump", "Function UTGame.UTBot.ResetDoubleJump")()); }
			ScriptFunction WaitForMover() { mixin(MGF!("mWaitForMover", "Function UTGame.UTBot.WaitForMover")()); }
			ScriptFunction ReadyForLift() { mixin(MGF!("mReadyForLift", "Function UTGame.UTBot.ReadyForLift")()); }
			ScriptFunction ShouldFireAgain() { mixin(MGF!("mShouldFireAgain", "Function UTGame.UTBot.ShouldFireAgain")()); }
			ScriptFunction TimedFireWeaponAtEnemy() { mixin(MGF!("mTimedFireWeaponAtEnemy", "Function UTGame.UTBot.TimedFireWeaponAtEnemy")()); }
			ScriptFunction FireWeaponAt() { mixin(MGF!("mFireWeaponAt", "Function UTGame.UTBot.FireWeaponAt")()); }
			ScriptFunction CanAttack() { mixin(MGF!("mCanAttack", "Function UTGame.UTBot.CanAttack")()); }
			ScriptFunction OnAIStartFireAt() { mixin(MGF!("mOnAIStartFireAt", "Function UTGame.UTBot.OnAIStartFireAt")()); }
			ScriptFunction TimedFireWeaponAtScriptedTarget() { mixin(MGF!("mTimedFireWeaponAtScriptedTarget", "Function UTGame.UTBot.TimedFireWeaponAtScriptedTarget")()); }
			ScriptFunction StopFiring() { mixin(MGF!("mStopFiring", "Function UTGame.UTBot.StopFiring")()); }
			ScriptFunction OnAIStopFire() { mixin(MGF!("mOnAIStopFire", "Function UTGame.UTBot.OnAIStopFire")()); }
			ScriptFunction WeaponPreference() { mixin(MGF!("mWeaponPreference", "Function UTGame.UTBot.WeaponPreference")()); }
			ScriptFunction ProficientWithWeapon() { mixin(MGF!("mProficientWithWeapon", "Function UTGame.UTBot.ProficientWithWeapon")()); }
			ScriptFunction CanComboMoving() { mixin(MGF!("mCanComboMoving", "Function UTGame.UTBot.CanComboMoving")()); }
			ScriptFunction CanCombo() { mixin(MGF!("mCanCombo", "Function UTGame.UTBot.CanCombo")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function UTGame.UTBot.DisplayDebug")()); }
			ScriptFunction GetOrders() { mixin(MGF!("mGetOrders", "Function UTGame.UTBot.GetOrders")()); }
			ScriptFunction YellAt() { mixin(MGF!("mYellAt", "Function UTGame.UTBot.YellAt")()); }
			ScriptFunction SendMessage() { mixin(MGF!("mSendMessage", "Function UTGame.UTBot.SendMessage")()); }
			ScriptFunction SetBotOrders() { mixin(MGF!("mSetBotOrders", "Function UTGame.UTBot.SetBotOrders")()); }
			ScriptFunction SetTemporaryOrders() { mixin(MGF!("mSetTemporaryOrders", "Function UTGame.UTBot.SetTemporaryOrders")()); }
			ScriptFunction ClearTemporaryOrders() { mixin(MGF!("mClearTemporaryOrders", "Function UTGame.UTBot.ClearTemporaryOrders")()); }
			ScriptFunction HearNoise() { mixin(MGF!("mHearNoise", "Function UTGame.UTBot.HearNoise")()); }
			ScriptFunction SeePlayer() { mixin(MGF!("mSeePlayer", "Function UTGame.UTBot.SeePlayer")()); }
			ScriptFunction SetAttractionState() { mixin(MGF!("mSetAttractionState", "Function UTGame.UTBot.SetAttractionState")()); }
			ScriptFunction ClearShot() { mixin(MGF!("mClearShot", "Function UTGame.UTBot.ClearShot")()); }
			ScriptFunction CanStakeOut() { mixin(MGF!("mCanStakeOut", "Function UTGame.UTBot.CanStakeOut")()); }
			ScriptFunction CheckIfShouldCrouch() { mixin(MGF!("mCheckIfShouldCrouch", "Function UTGame.UTBot.CheckIfShouldCrouch")()); }
			ScriptFunction IsSniping() { mixin(MGF!("mIsSniping", "Function UTGame.UTBot.IsSniping")()); }
			ScriptFunction FreePoint() { mixin(MGF!("mFreePoint", "Function UTGame.UTBot.FreePoint")()); }
			ScriptFunction AssignSquadResponsibility() { mixin(MGF!("mAssignSquadResponsibility", "Function UTGame.UTBot.AssignSquadResponsibility")()); }
			ScriptFunction RelativeStrength() { mixin(MGF!("mRelativeStrength", "Function UTGame.UTBot.RelativeStrength")()); }
			ScriptFunction SetEnemyInfo() { mixin(MGF!("mSetEnemyInfo", "Function UTGame.UTBot.SetEnemyInfo")()); }
			ScriptFunction EnemyChanged() { mixin(MGF!("mEnemyChanged", "Function UTGame.UTBot.EnemyChanged")()); }
			ScriptFunction StrafeFromDamage() { mixin(MGF!("mStrafeFromDamage", "Function UTGame.UTBot.StrafeFromDamage")()); }
			ScriptFunction NotifyPhysicsVolumeChange() { mixin(MGF!("mNotifyPhysicsVolumeChange", "Function UTGame.UTBot.NotifyPhysicsVolumeChange")()); }
			ScriptFunction MayDodgeToMoveTarget() { mixin(MGF!("mMayDodgeToMoveTarget", "Function UTGame.UTBot.MayDodgeToMoveTarget")()); }
			ScriptFunction NotifyJumpApex() { mixin(MGF!("mNotifyJumpApex", "Function UTGame.UTBot.NotifyJumpApex")()); }
			ScriptFunction NotifyMissedJump() { mixin(MGF!("mNotifyMissedJump", "Function UTGame.UTBot.NotifyMissedJump")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function UTGame.UTBot.Reset")()); }
			ScriptFunction Possess() { mixin(MGF!("mPossess", "Function UTGame.UTBot.Possess")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function UTGame.UTBot.Initialize")()); }
			ScriptFunction ResetSkill() { mixin(MGF!("mResetSkill", "Function UTGame.UTBot.ResetSkill")()); }
			ScriptFunction SetMaxDesiredSpeed() { mixin(MGF!("mSetMaxDesiredSpeed", "Function UTGame.UTBot.SetMaxDesiredSpeed")()); }
			ScriptFunction SetPeripheralVision() { mixin(MGF!("mSetPeripheralVision", "Function UTGame.UTBot.SetPeripheralVision")()); }
			ScriptFunction SetAlertness() { mixin(MGF!("mSetAlertness", "Function UTGame.UTBot.SetAlertness")()); }
			ScriptFunction WhatToDoNext() { mixin(MGF!("mWhatToDoNext", "Function UTGame.UTBot.WhatToDoNext")()); }
			ScriptFunction ExecuteWhatToDoNext() { mixin(MGF!("mExecuteWhatToDoNext", "Function UTGame.UTBot.ExecuteWhatToDoNext")()); }
			ScriptFunction EnterVehicle() { mixin(MGF!("mEnterVehicle", "Function UTGame.UTBot.EnterVehicle")()); }
			ScriptFunction LeaveVehicle() { mixin(MGF!("mLeaveVehicle", "Function UTGame.UTBot.LeaveVehicle")()); }
			ScriptFunction VehicleFightEnemy() { mixin(MGF!("mVehicleFightEnemy", "Function UTGame.UTBot.VehicleFightEnemy")()); }
			ScriptFunction FightEnemy() { mixin(MGF!("mFightEnemy", "Function UTGame.UTBot.FightEnemy")()); }
			ScriptFunction DoRangedAttackOn() { mixin(MGF!("mDoRangedAttackOn", "Function UTGame.UTBot.DoRangedAttackOn")()); }
			ScriptFunction ChooseAttackMode() { mixin(MGF!("mChooseAttackMode", "Function UTGame.UTBot.ChooseAttackMode")()); }
			ScriptFunction FindSuperPickup() { mixin(MGF!("mFindSuperPickup", "Function UTGame.UTBot.FindSuperPickup")()); }
			ScriptFunction FindInventoryGoal() { mixin(MGF!("mFindInventoryGoal", "Function UTGame.UTBot.FindInventoryGoal")()); }
			ScriptFunction TossFlagToPlayer() { mixin(MGF!("mTossFlagToPlayer", "Function UTGame.UTBot.TossFlagToPlayer")()); }
			ScriptFunction PickRetreatDestination() { mixin(MGF!("mPickRetreatDestination", "Function UTGame.UTBot.PickRetreatDestination")()); }
			ScriptFunction SoakStop() { mixin(MGF!("mSoakStop", "Function UTGame.UTBot.SoakStop")()); }
			ScriptFunction FindRoamDest() { mixin(MGF!("mFindRoamDest", "Function UTGame.UTBot.FindRoamDest")()); }
			ScriptFunction Restart() { mixin(MGF!("mRestart", "Function UTGame.UTBot.Restart")()); }
			ScriptFunction CheckPathToGoalAround() { mixin(MGF!("mCheckPathToGoalAround", "Function UTGame.UTBot.CheckPathToGoalAround")()); }
			ScriptFunction ClearPathFor() { mixin(MGF!("mClearPathFor", "Function UTGame.UTBot.ClearPathFor")()); }
			ScriptFunction AdjustAround() { mixin(MGF!("mAdjustAround", "Function UTGame.UTBot.AdjustAround")()); }
			ScriptFunction NotifyBump() { mixin(MGF!("mNotifyBump", "Function UTGame.UTBot.NotifyBump")()); }
			ScriptFunction NotifyPostLanded() { mixin(MGF!("mNotifyPostLanded", "Function UTGame.UTBot.NotifyPostLanded")()); }
			ScriptFunction TimedDodgeToMoveTarget() { mixin(MGF!("mTimedDodgeToMoveTarget", "Function UTGame.UTBot.TimedDodgeToMoveTarget")()); }
			ScriptFunction StartMoveToward() { mixin(MGF!("mStartMoveToward", "Function UTGame.UTBot.StartMoveToward")()); }
			ScriptFunction SetRouteToGoal() { mixin(MGF!("mSetRouteToGoal", "Function UTGame.UTBot.SetRouteToGoal")()); }
			ScriptFunction AllowDetourTo() { mixin(MGF!("mAllowDetourTo", "Function UTGame.UTBot.AllowDetourTo")()); }
			ScriptFunction FindBestPathToward() { mixin(MGF!("mFindBestPathToward", "Function UTGame.UTBot.FindBestPathToward")()); }
			ScriptFunction CheckFutureSight() { mixin(MGF!("mCheckFutureSight", "Function UTGame.UTBot.CheckFutureSight")()); }
			ScriptFunction AdjustAimError() { mixin(MGF!("mAdjustAimError", "Function UTGame.UTBot.AdjustAimError")()); }
			ScriptFunction GetAdjustedAimFor() { mixin(MGF!("mGetAdjustedAimFor", "Function UTGame.UTBot.GetAdjustedAimFor")()); }
			ScriptFunction TryDuckTowardsMoveTarget() { mixin(MGF!("mTryDuckTowardsMoveTarget", "Function UTGame.UTBot.TryDuckTowardsMoveTarget")()); }
			ScriptFunction DelayedWarning() { mixin(MGF!("mDelayedWarning", "Function UTGame.UTBot.DelayedWarning")()); }
			ScriptFunction ReceiveProjectileWarning() { mixin(MGF!("mReceiveProjectileWarning", "Function UTGame.UTBot.ReceiveProjectileWarning")()); }
			ScriptFunction NotifyTakeHit() { mixin(MGF!("mNotifyTakeHit", "Function UTGame.UTBot.NotifyTakeHit")()); }
			ScriptFunction DelayedInstantWarning() { mixin(MGF!("mDelayedInstantWarning", "Function UTGame.UTBot.DelayedInstantWarning")()); }
			ScriptFunction ReceiveWarning() { mixin(MGF!("mReceiveWarning", "Function UTGame.UTBot.ReceiveWarning")()); }
			ScriptFunction ReceiveRunOverWarning() { mixin(MGF!("mReceiveRunOverWarning", "Function UTGame.UTBot.ReceiveRunOverWarning")()); }
			ScriptFunction NotifyFallingHitWall() { mixin(MGF!("mNotifyFallingHitWall", "Function UTGame.UTBot.NotifyFallingHitWall")()); }
			ScriptFunction MissedDodge() { mixin(MGF!("mMissedDodge", "Function UTGame.UTBot.MissedDodge")()); }
			ScriptFunction TryWallDodge() { mixin(MGF!("mTryWallDodge", "Function UTGame.UTBot.TryWallDodge")()); }
			ScriptFunction ChangeStrafe() { mixin(MGF!("mChangeStrafe", "Function UTGame.UTBot.ChangeStrafe")()); }
			ScriptFunction TryToDuck() { mixin(MGF!("mTryToDuck", "Function UTGame.UTBot.TryToDuck")()); }
			ScriptFunction NotifyKilled() { mixin(MGF!("mNotifyKilled", "Function UTGame.UTBot.NotifyKilled")()); }
			ScriptFunction FaceMoveTarget() { mixin(MGF!("mFaceMoveTarget", "Function UTGame.UTBot.FaceMoveTarget")()); }
			ScriptFunction ShouldStrafeTo() { mixin(MGF!("mShouldStrafeTo", "Function UTGame.UTBot.ShouldStrafeTo")()); }
			ScriptFunction FaceActor() { mixin(MGF!("mFaceActor", "Function UTGame.UTBot.FaceActor")()); }
			ScriptFunction SuperDesireability() { mixin(MGF!("mSuperDesireability", "Function UTGame.UTBot.SuperDesireability")()); }
			ScriptFunction SuperPickupNotSpokenFor() { mixin(MGF!("mSuperPickupNotSpokenFor", "Function UTGame.UTBot.SuperPickupNotSpokenFor")()); }
			ScriptFunction DamageAttitudeTo() { mixin(MGF!("mDamageAttitudeTo", "Function UTGame.UTBot.DamageAttitudeTo")()); }
			ScriptFunction IsRetreating() { mixin(MGF!("mIsRetreating", "Function UTGame.UTBot.IsRetreating")()); }
			ScriptFunction OnAIFreeze() { mixin(MGF!("mOnAIFreeze", "Function UTGame.UTBot.OnAIFreeze")()); }
			ScriptFunction IsDefending() { mixin(MGF!("mIsDefending", "Function UTGame.UTBot.IsDefending")()); }
			ScriptFunction ShouldDefendPosition() { mixin(MGF!("mShouldDefendPosition", "Function UTGame.UTBot.ShouldDefendPosition")()); }
			ScriptFunction MoveToDefensePoint() { mixin(MGF!("mMoveToDefensePoint", "Function UTGame.UTBot.MoveToDefensePoint")()); }
			ScriptFunction MoveAwayFrom() { mixin(MGF!("mMoveAwayFrom", "Function UTGame.UTBot.MoveAwayFrom")()); }
			ScriptFunction WanderOrCamp() { mixin(MGF!("mWanderOrCamp", "Function UTGame.UTBot.WanderOrCamp")()); }
			ScriptFunction EnableBumps() { mixin(MGF!("mEnableBumps", "Function UTGame.UTBot.EnableBumps")()); }
			ScriptFunction Celebrate() { mixin(MGF!("mCelebrate", "Function UTGame.UTBot.Celebrate")()); }
			ScriptFunction ForceGiveWeapon() { mixin(MGF!("mForceGiveWeapon", "Function UTGame.UTBot.ForceGiveWeapon")()); }
			ScriptFunction GetDesiredOffset() { mixin(MGF!("mGetDesiredOffset", "Function UTGame.UTBot.GetDesiredOffset")()); }
			ScriptFunction LostContact() { mixin(MGF!("mLostContact", "Function UTGame.UTBot.LostContact")()); }
			ScriptFunction LoseEnemy() { mixin(MGF!("mLoseEnemy", "Function UTGame.UTBot.LoseEnemy")()); }
			ScriptFunction DoStakeOut() { mixin(MGF!("mDoStakeOut", "Function UTGame.UTBot.DoStakeOut")()); }
			ScriptFunction DoCharge() { mixin(MGF!("mDoCharge", "Function UTGame.UTBot.DoCharge")()); }
			ScriptFunction DoTacticalMove() { mixin(MGF!("mDoTacticalMove", "Function UTGame.UTBot.DoTacticalMove")()); }
			ScriptFunction DoRetreat() { mixin(MGF!("mDoRetreat", "Function UTGame.UTBot.DoRetreat")()); }
			ScriptFunction DefendMelee() { mixin(MGF!("mDefendMelee", "Function UTGame.UTBot.DefendMelee")()); }
			ScriptFunction IsStrafing() { mixin(MGF!("mIsStrafing", "Function UTGame.UTBot.IsStrafing")()); }
			ScriptFunction EngageDirection() { mixin(MGF!("mEngageDirection", "Function UTGame.UTBot.EngageDirection")()); }
			ScriptFunction IsHunting() { mixin(MGF!("mIsHunting", "Function UTGame.UTBot.IsHunting")()); }
			ScriptFunction FindViewSpot() { mixin(MGF!("mFindViewSpot", "Function UTGame.UTBot.FindViewSpot")()); }
			ScriptFunction Stopped() { mixin(MGF!("mStopped", "Function UTGame.UTBot.Stopped")()); }
			ScriptFunction IsShootingObjective() { mixin(MGF!("mIsShootingObjective", "Function UTGame.UTBot.IsShootingObjective")()); }
			ScriptFunction FocusOnLeader() { mixin(MGF!("mFocusOnLeader", "Function UTGame.UTBot.FocusOnLeader")()); }
			ScriptFunction StopMovement() { mixin(MGF!("mStopMovement", "Function UTGame.UTBot.StopMovement")()); }
			ScriptFunction PerformCustomAction() { mixin(MGF!("mPerformCustomAction", "Function UTGame.UTBot.PerformCustomAction")()); }
			ScriptFunction UnderLift() { mixin(MGF!("mUnderLift", "Function UTGame.UTBot.UnderLift")()); }
			ScriptFunction HandlePathObstruction() { mixin(MGF!("mHandlePathObstruction", "Function UTGame.UTBot.HandlePathObstruction")()); }
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
	static struct WaitingForLanding
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.WaitingForLanding")()); }
	}
	static struct RoundEnded
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.RoundEnded")()); }
	}
	static struct EnteringVehicle
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.EnteringVehicle")()); }
	}
	static struct LeavingVehicle
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.LeavingVehicle")()); }
	}
	static struct Defending
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Defending")()); }
	}
	static struct Startled
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Startled")()); }
	}
	static struct MoveToGoal
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.MoveToGoal")()); }
	}
	static struct MoveToGoalNoEnemy
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.MoveToGoalNoEnemy")()); }
	}
	static struct MoveToGoalWithEnemy
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.MoveToGoalWithEnemy")()); }
	}
	static struct Roaming
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Roaming")()); }
	}
	static struct Fallback
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Fallback")()); }
	}
	static struct Retreating
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Retreating")()); }
	}
	static struct Charging
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Charging")()); }
	}
	static struct VehicleCharging
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.VehicleCharging")()); }
	}
	static struct TacticalMove
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.TacticalMove")()); }
	}
	static struct Hunting
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Hunting")()); }
	}
	static struct StakeOut
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.StakeOut")()); }
	}
	static struct RangedAttack
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.RangedAttack")()); }
	}
	static struct Dead
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Dead")()); }
	}
	static struct FindAir
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.FindAir")()); }
	}
	static struct CustomAction
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.CustomAction")()); }
	}
	static struct InQueue
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.InQueue")()); }
	}
	static struct ScriptedMove
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.ScriptedMove")()); }
	}
	static struct Frozen
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.Frozen")()); }
	}
	static struct FrozenMovement
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBot.FrozenMovement")()); }
	}
	@property final
	{
		auto ref
		{
			Actor NoVehicleGoal() { mixin(MGPC!(Actor, 1304)()); }
			Vector DirectionHint() { mixin(MGPC!(Vector, 1308)()); }
			ScriptClass KilledVehicleClass() { mixin(MGPC!(ScriptClass, 1164)()); }
			ScriptClass FavoriteWeapon() { mixin(MGPC!(ScriptClass, 1256)()); }
			UTDefensePoint DefensePoint() { mixin(MGPC!(UTDefensePoint, 1296)()); }
			ScriptString GoalString() { mixin(MGPC!(ScriptString, 1264)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__CustomActionFunc__Delegate'!
			float LastInjuredVoiceMessageTime() { mixin(MGPC!(float, 1544)()); }
			float LastCanAttackCheckTime() { mixin(MGPC!(float, 1540)()); }
			Actor LastFireTarget() { mixin(MGPC!(Actor, 1536)()); }
			float LastTryHoverboardTime() { mixin(MGPC!(float, 1532)()); }
			float LastActionMusicUpdate() { mixin(MGPC!(float, 1528)()); }
			Actor ScriptedTarget() { mixin(MGPC!(Actor, 1524)()); }
			Vector LastKillerPosition() { mixin(MGPC!(Vector, 1512)()); }
			Vector LastKnownPosition() { mixin(MGPC!(Vector, 1500)()); }
			Controller OldOrderGiver() { mixin(MGPC!(Controller, 1496)()); }
			ScriptName OldOrders() { mixin(MGPC!(ScriptName, 1488)()); }
			ScriptName OrderNames() { mixin(MGPC!(ScriptName, 1360)()); }
			float GatherTime() { mixin(MGPC!(float, 1356)()); }
			float LastFireAttempt() { mixin(MGPC!(float, 1352)()); }
			int NumRandomJumps() { mixin(MGPC!(int, 1348)()); }
			float CampTime() { mixin(MGPC!(float, 1344)()); }
			float LastSearchWeight() { mixin(MGPC!(float, 1340)()); }
			float LastSearchTime() { mixin(MGPC!(float, 1336)()); }
			Pawn FailedHuntEnemy() { mixin(MGPC!(Pawn, 1332)()); }
			float FailedHuntTime() { mixin(MGPC!(float, 1328)()); }
			float LastRespawnTime() { mixin(MGPC!(float, 1324)()); }
			float StopStartTime() { mixin(MGPC!(float, 1320)()); }
			NavigationPoint DefensivePosition() { mixin(MGPC!(NavigationPoint, 1300)()); }
			float ReTaskTime() { mixin(MGPC!(float, 1292)()); }
			UTBot NextSquadMember() { mixin(MGPC!(UTBot, 1288)()); }
			ScriptString SoakString() { mixin(MGPC!(ScriptString, 1276)()); }
			float OldMessageTime() { mixin(MGPC!(float, 1260)()); }
			float Jumpiness() { mixin(MGPC!(float, 1252)()); }
			float ReactionTime() { mixin(MGPC!(float, 1248)()); }
			float Tactics() { mixin(MGPC!(float, 1244)()); }
			float CombatStyle() { mixin(MGPC!(float, 1240)()); }
			float StrafingAbility() { mixin(MGPC!(float, 1236)()); }
			float BaseAggressiveness() { mixin(MGPC!(float, 1232)()); }
			float Accuracy() { mixin(MGPC!(float, 1228)()); }
			float BaseAlertness() { mixin(MGPC!(float, 1224)()); }
			float ForcedFlagDropTime() { mixin(MGPC!(float, 1220)()); }
			float RetreatStartTime() { mixin(MGPC!(float, 1216)()); }
			float LastUnderFire() { mixin(MGPC!(float, 1212)()); }
			float StartTacticalTime() { mixin(MGPC!(float, 1208)()); }
			Actor StartleActor() { mixin(MGPC!(Actor, 1204)()); }
			float LoseEnemyCheckTime() { mixin(MGPC!(float, 1200)()); }
			float Aggression() { mixin(MGPC!(float, 1196)()); }
			float AcquireTime() { mixin(MGPC!(float, 1192)()); }
			NavigationPoint BlockedPath() { mixin(MGPC!(NavigationPoint, 1188)()); }
			float LastAttractCheck() { mixin(MGPC!(float, 1184)()); }
			float Aggressiveness() { mixin(MGPC!(float, 1180)()); }
			Vector HidingSpot() { mixin(MGPC!(Vector, 1168)()); }
			int LastTauntIndex() { mixin(MGPC!(int, 1160)()); }
			int OldMessageID() { mixin(MGPC!(int, 1156)()); }
			ScriptName OldMessageType() { mixin(MGPC!(ScriptName, 1148)()); }
			float MaxSpecialJumpZ() { mixin(MGPC!(float, 1144)()); }
			float ImpactJumpZ() { mixin(MGPC!(float, 1140)()); }
			Actor ImpactTarget() { mixin(MGPC!(Actor, 1136)()); }
			float LastWarningTime() { mixin(MGPC!(float, 1128)()); }
			Pawn InstantWarningShooter() { mixin(MGPC!(Pawn, 1124)()); }
		}
		bool bHuntPlayer() { mixin(MGBPC!(1132, 0x1)()); }
		bool bHuntPlayer(bool val) { mixin(MSBPC!(1132, 0x1)()); }
		bool bJustLanded() { mixin(MGBPC!(1132, 0x8000)()); }
		bool bJustLanded(bool val) { mixin(MSBPC!(1132, 0x8000)()); }
		bool bResetCombatTimer() { mixin(MGBPC!(1132, 0x40000000)()); }
		bool bResetCombatTimer(bool val) { mixin(MSBPC!(1132, 0x40000000)()); }
		bool bCheckDriverPickups() { mixin(MGBPC!(1132, 0x20000000)()); }
		bool bCheckDriverPickups(bool val) { mixin(MSBPC!(1132, 0x20000000)()); }
		bool bDirectHunt() { mixin(MGBPC!(1132, 0x10000000)()); }
		bool bDirectHunt(bool val) { mixin(MSBPC!(1132, 0x10000000)()); }
		bool bFinalStretch() { mixin(MGBPC!(1132, 0x8000000)()); }
		bool bFinalStretch(bool val) { mixin(MSBPC!(1132, 0x8000000)()); }
		bool bSpawnedByKismet() { mixin(MGBPC!(1132, 0x4000000)()); }
		bool bSpawnedByKismet(bool val) { mixin(MSBPC!(1132, 0x4000000)()); }
		bool bBetrayTeam() { mixin(MGBPC!(1132, 0x2000000)()); }
		bool bBetrayTeam(bool val) { mixin(MSBPC!(1132, 0x2000000)()); }
		bool bShortCamp() { mixin(MGBPC!(1132, 0x1000000)()); }
		bool bShortCamp(bool val) { mixin(MSBPC!(1132, 0x1000000)()); }
		bool bForceNoDetours() { mixin(MGBPC!(1132, 0x800000)()); }
		bool bForceNoDetours(bool val) { mixin(MSBPC!(1132, 0x800000)()); }
		bool bSendFlagMessage() { mixin(MGBPC!(1132, 0x400000)()); }
		bool bSendFlagMessage(bool val) { mixin(MSBPC!(1132, 0x400000)()); }
		bool bScriptedFrozen() { mixin(MGBPC!(1132, 0x200000)()); }
		bool bScriptedFrozen(bool val) { mixin(MSBPC!(1132, 0x200000)()); }
		bool bAllowedToImpactJump() { mixin(MGBPC!(1132, 0x100000)()); }
		bool bAllowedToImpactJump(bool val) { mixin(MSBPC!(1132, 0x100000)()); }
		bool bPendingDoubleJump() { mixin(MGBPC!(1132, 0x80000)()); }
		bool bPendingDoubleJump(bool val) { mixin(MSBPC!(1132, 0x80000)()); }
		bool bHasSuperWeapon() { mixin(MGBPC!(1132, 0x40000)()); }
		bool bHasSuperWeapon(bool val) { mixin(MSBPC!(1132, 0x40000)()); }
		bool bIgnoreEnemyChange() { mixin(MGBPC!(1132, 0x20000)()); }
		bool bIgnoreEnemyChange(bool val) { mixin(MSBPC!(1132, 0x20000)()); }
		bool bRecommendFastMove() { mixin(MGBPC!(1132, 0x10000)()); }
		bool bRecommendFastMove(bool val) { mixin(MSBPC!(1132, 0x10000)()); }
		bool bPursuingFlag() { mixin(MGBPC!(1132, 0x4000)()); }
		bool bPursuingFlag(bool val) { mixin(MSBPC!(1132, 0x4000)()); }
		bool bMustCharge() { mixin(MGBPC!(1132, 0x2000)()); }
		bool bMustCharge(bool val) { mixin(MSBPC!(1132, 0x2000)()); }
		bool bStoppedFiring() { mixin(MGBPC!(1132, 0x1000)()); }
		bool bStoppedFiring(bool val) { mixin(MSBPC!(1132, 0x1000)()); }
		bool bFireSuccess() { mixin(MGBPC!(1132, 0x800)()); }
		bool bFireSuccess(bool val) { mixin(MSBPC!(1132, 0x800)()); }
		bool bForcedDirection() { mixin(MGBPC!(1132, 0x400)()); }
		bool bForcedDirection(bool val) { mixin(MSBPC!(1132, 0x400)()); }
		bool bHasFired() { mixin(MGBPC!(1132, 0x200)()); }
		bool bHasFired(bool val) { mixin(MSBPC!(1132, 0x200)()); }
		bool bWasNearObjective() { mixin(MGBPC!(1132, 0x100)()); }
		bool bWasNearObjective(bool val) { mixin(MSBPC!(1132, 0x100)()); }
		bool bTacticalDoubleJump() { mixin(MGBPC!(1132, 0x80)()); }
		bool bTacticalDoubleJump(bool val) { mixin(MSBPC!(1132, 0x80)()); }
		bool bReachedGatherPoint() { mixin(MGBPC!(1132, 0x40)()); }
		bool bReachedGatherPoint(bool val) { mixin(MSBPC!(1132, 0x40)()); }
		bool bInitLifeMessage() { mixin(MGBPC!(1132, 0x20)()); }
		bool bInitLifeMessage(bool val) { mixin(MSBPC!(1132, 0x20)()); }
		bool bFrustrated() { mixin(MGBPC!(1132, 0x10)()); }
		bool bFrustrated(bool val) { mixin(MSBPC!(1132, 0x10)()); }
		bool bChangeDir() { mixin(MGBPC!(1132, 0x8)()); }
		bool bChangeDir(bool val) { mixin(MSBPC!(1132, 0x8)()); }
		bool bStrafeDir() { mixin(MGBPC!(1132, 0x4)()); }
		bool bStrafeDir(bool val) { mixin(MSBPC!(1132, 0x4)()); }
		bool bCanFire() { mixin(MGBPC!(1132, 0x2)()); }
		bool bCanFire(bool val) { mixin(MSBPC!(1132, 0x2)()); }
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
	void DisplayDebug(HUD pHUD, ref float YL, ref float YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = YL;
		*cast(float*)&params[8] = YPos;
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
	void Initialize(float InSkill, ref const UTCharInfo.CharacterInfo BotInfo)
	{
		ubyte params[116];
		params[] = 0;
		*cast(float*)params.ptr = InSkill;
		*cast(UTCharInfo.CharacterInfo*)&params[4] = BotInfo;
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
