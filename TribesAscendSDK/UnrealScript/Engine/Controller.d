module UnrealScript.Engine.Controller;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.ReachSpec;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpActor;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_ToggleHidden;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.SeqAct_Possess;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.SeqAct_SetVelocity;
import UnrealScript.Engine.SeqAct_SetPhysics;
import UnrealScript.Engine.SeqAct_Teleport;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.SeqAct_ModifyHealth;
import UnrealScript.Engine.LiftCenter;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.SeqAct_ToggleGodMode;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.Weapon;

extern(C++) interface Controller : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Controller")); }
	private static __gshared Controller mDefaultProperties;
	@property final static Controller DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Controller)("Controller Engine.Default__Controller")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsLocalPlayerController;
			ScriptFunction mRouteCache_Empty;
			ScriptFunction mRouteCache_AddItem;
			ScriptFunction mRouteCache_InsertItem;
			ScriptFunction mRouteCache_RemoveItem;
			ScriptFunction mRouteCache_RemoveIndex;
			ScriptFunction mSetFocalPoint;
			ScriptFunction mGetFocalPoint;
			ScriptFunction mSetDestinationPosition;
			ScriptFunction mGetDestinationPosition;
			ScriptFunction mSetAdjustLocation;
			ScriptFunction mGetAdjustLocation;
			ScriptFunction mNotifyPathChanged;
			ScriptFunction mBeginAnimControl;
			ScriptFunction mSetAnimPosition;
			ScriptFunction mFinishAnimControl;
			ScriptFunction mPlayActorFaceFXAnim;
			ScriptFunction mStopActorFaceFXAnim;
			ScriptFunction mSetMorphWeight;
			ScriptFunction mSetSkelControlScale;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReset;
			ScriptFunction mClientSetLocation;
			ScriptFunction mClientSetRotation;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnPossess;
			ScriptFunction mPossess;
			ScriptFunction mUnPossess;
			ScriptFunction mPawnDied;
			ScriptFunction mGamePlayEndedState;
			ScriptFunction mNotifyPostLanded;
			ScriptFunction mDestroyed;
			ScriptFunction mCleanupPRI;
			ScriptFunction mRestart;
			ScriptFunction mBeyondFogDistance;
			ScriptFunction mEnemyJustTeleported;
			ScriptFunction mNotifyTakeHit;
			ScriptFunction mInitPlayerReplicationInfo;
			ScriptFunction mGetTeamNum;
			ScriptFunction mServerRestartPlayer;
			ScriptFunction mServerGivePawn;
			ScriptFunction mSetCharacter;
			ScriptFunction mGameHasEnded;
			ScriptFunction mNotifyKilled;
			ScriptFunction mNotifyProjLanded;
			ScriptFunction mWarnProjExplode;
			ScriptFunction mRatePickup;
			ScriptFunction mFireWeaponAt;
			ScriptFunction mStopFiring;
			ScriptFunction mRoundHasEnded;
			ScriptFunction mHandlePickup;
			ScriptFunction mGetAdjustedAimFor;
			ScriptFunction mInstantWarnTarget;
			ScriptFunction mReceiveWarning;
			ScriptFunction mReceiveProjectileWarning;
			ScriptFunction mSwitchToBestWeapon;
			ScriptFunction mClientSwitchToBestWeapon;
			ScriptFunction mNotifyChangedWeapon;
			ScriptFunction mLineOfSightTo;
			ScriptFunction mCanSee;
			ScriptFunction mCanSeeByPoints;
			ScriptFunction mPickTarget;
			ScriptFunction mHearNoise;
			ScriptFunction mSeePlayer;
			ScriptFunction mSeeMonster;
			ScriptFunction mEnemyNotVisible;
			ScriptFunction mMoveTo;
			ScriptFunction mMoveToDirectNonPathPos;
			ScriptFunction mMoveToward;
			ScriptFunction mSetupSpecialPathAbilities;
			ScriptFunction mFinishRotation;
			ScriptFunction mFindPathTo;
			ScriptFunction mFindPathToward;
			ScriptFunction mFindPathTowardNearest;
			ScriptFunction mFindRandomDest;
			ScriptFunction mFindPathToIntercept;
			ScriptFunction mPointReachable;
			ScriptFunction mActorReachable;
			ScriptFunction mMoveUnreachable;
			ScriptFunction mPickWallAdjust;
			ScriptFunction mWaitForLanding;
			ScriptFunction mLongFall;
			ScriptFunction mEndClimbLadder;
			ScriptFunction mMayFall;
			ScriptFunction mAllowDetourTo;
			ScriptFunction mWaitForMover;
			ScriptFunction mMoverFinished;
			ScriptFunction mUnderLift;
			ScriptFunction mHandlePathObstruction;
			ScriptFunction mGetPlayerViewPoint;
			ScriptFunction mGetActorEyesViewPoint;
			ScriptFunction mIsAimingAt;
			ScriptFunction mLandingShake;
			ScriptFunction mNotifyPhysicsVolumeChange;
			ScriptFunction mNotifyHeadVolumeChange;
			ScriptFunction mNotifyLanded;
			ScriptFunction mNotifyHitWall;
			ScriptFunction mNotifyFallingHitWall;
			ScriptFunction mNotifyBump;
			ScriptFunction mNotifyJumpApex;
			ScriptFunction mNotifyMissedJump;
			ScriptFunction mReachedPreciseDestination;
			ScriptFunction mInLatentExecution;
			ScriptFunction mStopLatentExecution;
			ScriptFunction mDisplayDebug;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mIsDead;
			ScriptFunction mOnTeleport;
			ScriptFunction mOnToggleGodMode;
			ScriptFunction mOnSetPhysics;
			ScriptFunction mOnSetVelocity;
			ScriptFunction mNotifyCoverDisabled;
			ScriptFunction mNotifyCoverAdjusted;
			ScriptFunction mNotifyCoverClaimViolation;
			ScriptFunction mOnModifyHealth;
			ScriptFunction mNotifyAddInventory;
			ScriptFunction mOnToggleHidden;
			ScriptFunction mIsSpectating;
			ScriptFunction mIsInCombat;
			ScriptFunction mCurrentLevelUnloaded;
			ScriptFunction mSendMessage;
			ScriptFunction mReadyForLift;
			ScriptFunction mInitNavigationHandle;
			ScriptFunction mInterpolationStarted;
			ScriptFunction mInterpolationFinished;
			ScriptFunction mGeneratePathToActor;
			ScriptFunction mGeneratePathToLocation;
		}
		public @property static final
		{
			ScriptFunction IsLocalPlayerController() { return mIsLocalPlayerController ? mIsLocalPlayerController : (mIsLocalPlayerController = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.IsLocalPlayerController")); }
			ScriptFunction RouteCache_Empty() { return mRouteCache_Empty ? mRouteCache_Empty : (mRouteCache_Empty = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.RouteCache_Empty")); }
			ScriptFunction RouteCache_AddItem() { return mRouteCache_AddItem ? mRouteCache_AddItem : (mRouteCache_AddItem = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.RouteCache_AddItem")); }
			ScriptFunction RouteCache_InsertItem() { return mRouteCache_InsertItem ? mRouteCache_InsertItem : (mRouteCache_InsertItem = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.RouteCache_InsertItem")); }
			ScriptFunction RouteCache_RemoveItem() { return mRouteCache_RemoveItem ? mRouteCache_RemoveItem : (mRouteCache_RemoveItem = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.RouteCache_RemoveItem")); }
			ScriptFunction RouteCache_RemoveIndex() { return mRouteCache_RemoveIndex ? mRouteCache_RemoveIndex : (mRouteCache_RemoveIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.RouteCache_RemoveIndex")); }
			ScriptFunction SetFocalPoint() { return mSetFocalPoint ? mSetFocalPoint : (mSetFocalPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SetFocalPoint")); }
			ScriptFunction GetFocalPoint() { return mGetFocalPoint ? mGetFocalPoint : (mGetFocalPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GetFocalPoint")); }
			ScriptFunction SetDestinationPosition() { return mSetDestinationPosition ? mSetDestinationPosition : (mSetDestinationPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SetDestinationPosition")); }
			ScriptFunction GetDestinationPosition() { return mGetDestinationPosition ? mGetDestinationPosition : (mGetDestinationPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GetDestinationPosition")); }
			ScriptFunction SetAdjustLocation() { return mSetAdjustLocation ? mSetAdjustLocation : (mSetAdjustLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SetAdjustLocation")); }
			ScriptFunction GetAdjustLocation() { return mGetAdjustLocation ? mGetAdjustLocation : (mGetAdjustLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GetAdjustLocation")); }
			ScriptFunction NotifyPathChanged() { return mNotifyPathChanged ? mNotifyPathChanged : (mNotifyPathChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyPathChanged")); }
			ScriptFunction BeginAnimControl() { return mBeginAnimControl ? mBeginAnimControl : (mBeginAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.BeginAnimControl")); }
			ScriptFunction SetAnimPosition() { return mSetAnimPosition ? mSetAnimPosition : (mSetAnimPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SetAnimPosition")); }
			ScriptFunction FinishAnimControl() { return mFinishAnimControl ? mFinishAnimControl : (mFinishAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.FinishAnimControl")); }
			ScriptFunction PlayActorFaceFXAnim() { return mPlayActorFaceFXAnim ? mPlayActorFaceFXAnim : (mPlayActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.PlayActorFaceFXAnim")); }
			ScriptFunction StopActorFaceFXAnim() { return mStopActorFaceFXAnim ? mStopActorFaceFXAnim : (mStopActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.StopActorFaceFXAnim")); }
			ScriptFunction SetMorphWeight() { return mSetMorphWeight ? mSetMorphWeight : (mSetMorphWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SetMorphWeight")); }
			ScriptFunction SetSkelControlScale() { return mSetSkelControlScale ? mSetSkelControlScale : (mSetSkelControlScale = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SetSkelControlScale")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.PostBeginPlay")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.Reset")); }
			ScriptFunction ClientSetLocation() { return mClientSetLocation ? mClientSetLocation : (mClientSetLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ClientSetLocation")); }
			ScriptFunction ClientSetRotation() { return mClientSetRotation ? mClientSetRotation : (mClientSetRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ClientSetRotation")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ReplicatedEvent")); }
			ScriptFunction OnPossess() { return mOnPossess ? mOnPossess : (mOnPossess = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.OnPossess")); }
			ScriptFunction Possess() { return mPossess ? mPossess : (mPossess = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.Possess")); }
			ScriptFunction UnPossess() { return mUnPossess ? mUnPossess : (mUnPossess = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.UnPossess")); }
			ScriptFunction PawnDied() { return mPawnDied ? mPawnDied : (mPawnDied = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.PawnDied")); }
			ScriptFunction GamePlayEndedState() { return mGamePlayEndedState ? mGamePlayEndedState : (mGamePlayEndedState = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GamePlayEndedState")); }
			ScriptFunction NotifyPostLanded() { return mNotifyPostLanded ? mNotifyPostLanded : (mNotifyPostLanded = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyPostLanded")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.Destroyed")); }
			ScriptFunction CleanupPRI() { return mCleanupPRI ? mCleanupPRI : (mCleanupPRI = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.CleanupPRI")); }
			ScriptFunction Restart() { return mRestart ? mRestart : (mRestart = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.Restart")); }
			ScriptFunction BeyondFogDistance() { return mBeyondFogDistance ? mBeyondFogDistance : (mBeyondFogDistance = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.BeyondFogDistance")); }
			ScriptFunction EnemyJustTeleported() { return mEnemyJustTeleported ? mEnemyJustTeleported : (mEnemyJustTeleported = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.EnemyJustTeleported")); }
			ScriptFunction NotifyTakeHit() { return mNotifyTakeHit ? mNotifyTakeHit : (mNotifyTakeHit = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyTakeHit")); }
			ScriptFunction InitPlayerReplicationInfo() { return mInitPlayerReplicationInfo ? mInitPlayerReplicationInfo : (mInitPlayerReplicationInfo = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.InitPlayerReplicationInfo")); }
			ScriptFunction GetTeamNum() { return mGetTeamNum ? mGetTeamNum : (mGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GetTeamNum")); }
			ScriptFunction ServerRestartPlayer() { return mServerRestartPlayer ? mServerRestartPlayer : (mServerRestartPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ServerRestartPlayer")); }
			ScriptFunction ServerGivePawn() { return mServerGivePawn ? mServerGivePawn : (mServerGivePawn = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ServerGivePawn")); }
			ScriptFunction SetCharacter() { return mSetCharacter ? mSetCharacter : (mSetCharacter = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SetCharacter")); }
			ScriptFunction GameHasEnded() { return mGameHasEnded ? mGameHasEnded : (mGameHasEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GameHasEnded")); }
			ScriptFunction NotifyKilled() { return mNotifyKilled ? mNotifyKilled : (mNotifyKilled = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyKilled")); }
			ScriptFunction NotifyProjLanded() { return mNotifyProjLanded ? mNotifyProjLanded : (mNotifyProjLanded = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyProjLanded")); }
			ScriptFunction WarnProjExplode() { return mWarnProjExplode ? mWarnProjExplode : (mWarnProjExplode = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.WarnProjExplode")); }
			ScriptFunction RatePickup() { return mRatePickup ? mRatePickup : (mRatePickup = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.RatePickup")); }
			ScriptFunction FireWeaponAt() { return mFireWeaponAt ? mFireWeaponAt : (mFireWeaponAt = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.FireWeaponAt")); }
			ScriptFunction StopFiring() { return mStopFiring ? mStopFiring : (mStopFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.StopFiring")); }
			ScriptFunction RoundHasEnded() { return mRoundHasEnded ? mRoundHasEnded : (mRoundHasEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.RoundHasEnded")); }
			ScriptFunction HandlePickup() { return mHandlePickup ? mHandlePickup : (mHandlePickup = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.HandlePickup")); }
			ScriptFunction GetAdjustedAimFor() { return mGetAdjustedAimFor ? mGetAdjustedAimFor : (mGetAdjustedAimFor = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GetAdjustedAimFor")); }
			ScriptFunction InstantWarnTarget() { return mInstantWarnTarget ? mInstantWarnTarget : (mInstantWarnTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.InstantWarnTarget")); }
			ScriptFunction ReceiveWarning() { return mReceiveWarning ? mReceiveWarning : (mReceiveWarning = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ReceiveWarning")); }
			ScriptFunction ReceiveProjectileWarning() { return mReceiveProjectileWarning ? mReceiveProjectileWarning : (mReceiveProjectileWarning = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ReceiveProjectileWarning")); }
			ScriptFunction SwitchToBestWeapon() { return mSwitchToBestWeapon ? mSwitchToBestWeapon : (mSwitchToBestWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SwitchToBestWeapon")); }
			ScriptFunction ClientSwitchToBestWeapon() { return mClientSwitchToBestWeapon ? mClientSwitchToBestWeapon : (mClientSwitchToBestWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ClientSwitchToBestWeapon")); }
			ScriptFunction NotifyChangedWeapon() { return mNotifyChangedWeapon ? mNotifyChangedWeapon : (mNotifyChangedWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyChangedWeapon")); }
			ScriptFunction LineOfSightTo() { return mLineOfSightTo ? mLineOfSightTo : (mLineOfSightTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.LineOfSightTo")); }
			ScriptFunction CanSee() { return mCanSee ? mCanSee : (mCanSee = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.CanSee")); }
			ScriptFunction CanSeeByPoints() { return mCanSeeByPoints ? mCanSeeByPoints : (mCanSeeByPoints = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.CanSeeByPoints")); }
			ScriptFunction PickTarget() { return mPickTarget ? mPickTarget : (mPickTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.PickTarget")); }
			ScriptFunction HearNoise() { return mHearNoise ? mHearNoise : (mHearNoise = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.HearNoise")); }
			ScriptFunction SeePlayer() { return mSeePlayer ? mSeePlayer : (mSeePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SeePlayer")); }
			ScriptFunction SeeMonster() { return mSeeMonster ? mSeeMonster : (mSeeMonster = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SeeMonster")); }
			ScriptFunction EnemyNotVisible() { return mEnemyNotVisible ? mEnemyNotVisible : (mEnemyNotVisible = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.EnemyNotVisible")); }
			ScriptFunction MoveTo() { return mMoveTo ? mMoveTo : (mMoveTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.MoveTo")); }
			ScriptFunction MoveToDirectNonPathPos() { return mMoveToDirectNonPathPos ? mMoveToDirectNonPathPos : (mMoveToDirectNonPathPos = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.MoveToDirectNonPathPos")); }
			ScriptFunction MoveToward() { return mMoveToward ? mMoveToward : (mMoveToward = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.MoveToward")); }
			ScriptFunction SetupSpecialPathAbilities() { return mSetupSpecialPathAbilities ? mSetupSpecialPathAbilities : (mSetupSpecialPathAbilities = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SetupSpecialPathAbilities")); }
			ScriptFunction FinishRotation() { return mFinishRotation ? mFinishRotation : (mFinishRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.FinishRotation")); }
			ScriptFunction FindPathTo() { return mFindPathTo ? mFindPathTo : (mFindPathTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.FindPathTo")); }
			ScriptFunction FindPathToward() { return mFindPathToward ? mFindPathToward : (mFindPathToward = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.FindPathToward")); }
			ScriptFunction FindPathTowardNearest() { return mFindPathTowardNearest ? mFindPathTowardNearest : (mFindPathTowardNearest = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.FindPathTowardNearest")); }
			ScriptFunction FindRandomDest() { return mFindRandomDest ? mFindRandomDest : (mFindRandomDest = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.FindRandomDest")); }
			ScriptFunction FindPathToIntercept() { return mFindPathToIntercept ? mFindPathToIntercept : (mFindPathToIntercept = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.FindPathToIntercept")); }
			ScriptFunction PointReachable() { return mPointReachable ? mPointReachable : (mPointReachable = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.PointReachable")); }
			ScriptFunction ActorReachable() { return mActorReachable ? mActorReachable : (mActorReachable = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ActorReachable")); }
			ScriptFunction MoveUnreachable() { return mMoveUnreachable ? mMoveUnreachable : (mMoveUnreachable = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.MoveUnreachable")); }
			ScriptFunction PickWallAdjust() { return mPickWallAdjust ? mPickWallAdjust : (mPickWallAdjust = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.PickWallAdjust")); }
			ScriptFunction WaitForLanding() { return mWaitForLanding ? mWaitForLanding : (mWaitForLanding = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.WaitForLanding")); }
			ScriptFunction LongFall() { return mLongFall ? mLongFall : (mLongFall = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.LongFall")); }
			ScriptFunction EndClimbLadder() { return mEndClimbLadder ? mEndClimbLadder : (mEndClimbLadder = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.EndClimbLadder")); }
			ScriptFunction MayFall() { return mMayFall ? mMayFall : (mMayFall = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.MayFall")); }
			ScriptFunction AllowDetourTo() { return mAllowDetourTo ? mAllowDetourTo : (mAllowDetourTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.AllowDetourTo")); }
			ScriptFunction WaitForMover() { return mWaitForMover ? mWaitForMover : (mWaitForMover = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.WaitForMover")); }
			ScriptFunction MoverFinished() { return mMoverFinished ? mMoverFinished : (mMoverFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.MoverFinished")); }
			ScriptFunction UnderLift() { return mUnderLift ? mUnderLift : (mUnderLift = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.UnderLift")); }
			ScriptFunction HandlePathObstruction() { return mHandlePathObstruction ? mHandlePathObstruction : (mHandlePathObstruction = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.HandlePathObstruction")); }
			ScriptFunction GetPlayerViewPoint() { return mGetPlayerViewPoint ? mGetPlayerViewPoint : (mGetPlayerViewPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GetPlayerViewPoint")); }
			ScriptFunction GetActorEyesViewPoint() { return mGetActorEyesViewPoint ? mGetActorEyesViewPoint : (mGetActorEyesViewPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GetActorEyesViewPoint")); }
			ScriptFunction IsAimingAt() { return mIsAimingAt ? mIsAimingAt : (mIsAimingAt = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.IsAimingAt")); }
			ScriptFunction LandingShake() { return mLandingShake ? mLandingShake : (mLandingShake = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.LandingShake")); }
			ScriptFunction NotifyPhysicsVolumeChange() { return mNotifyPhysicsVolumeChange ? mNotifyPhysicsVolumeChange : (mNotifyPhysicsVolumeChange = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyPhysicsVolumeChange")); }
			ScriptFunction NotifyHeadVolumeChange() { return mNotifyHeadVolumeChange ? mNotifyHeadVolumeChange : (mNotifyHeadVolumeChange = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyHeadVolumeChange")); }
			ScriptFunction NotifyLanded() { return mNotifyLanded ? mNotifyLanded : (mNotifyLanded = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyLanded")); }
			ScriptFunction NotifyHitWall() { return mNotifyHitWall ? mNotifyHitWall : (mNotifyHitWall = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyHitWall")); }
			ScriptFunction NotifyFallingHitWall() { return mNotifyFallingHitWall ? mNotifyFallingHitWall : (mNotifyFallingHitWall = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyFallingHitWall")); }
			ScriptFunction NotifyBump() { return mNotifyBump ? mNotifyBump : (mNotifyBump = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyBump")); }
			ScriptFunction NotifyJumpApex() { return mNotifyJumpApex ? mNotifyJumpApex : (mNotifyJumpApex = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyJumpApex")); }
			ScriptFunction NotifyMissedJump() { return mNotifyMissedJump ? mNotifyMissedJump : (mNotifyMissedJump = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyMissedJump")); }
			ScriptFunction ReachedPreciseDestination() { return mReachedPreciseDestination ? mReachedPreciseDestination : (mReachedPreciseDestination = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ReachedPreciseDestination")); }
			ScriptFunction InLatentExecution() { return mInLatentExecution ? mInLatentExecution : (mInLatentExecution = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.InLatentExecution")); }
			ScriptFunction StopLatentExecution() { return mStopLatentExecution ? mStopLatentExecution : (mStopLatentExecution = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.StopLatentExecution")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.DisplayDebug")); }
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GetHumanReadableName")); }
			ScriptFunction IsDead() { return mIsDead ? mIsDead : (mIsDead = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.IsDead")); }
			ScriptFunction OnTeleport() { return mOnTeleport ? mOnTeleport : (mOnTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.OnTeleport")); }
			ScriptFunction OnToggleGodMode() { return mOnToggleGodMode ? mOnToggleGodMode : (mOnToggleGodMode = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.OnToggleGodMode")); }
			ScriptFunction OnSetPhysics() { return mOnSetPhysics ? mOnSetPhysics : (mOnSetPhysics = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.OnSetPhysics")); }
			ScriptFunction OnSetVelocity() { return mOnSetVelocity ? mOnSetVelocity : (mOnSetVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.OnSetVelocity")); }
			ScriptFunction NotifyCoverDisabled() { return mNotifyCoverDisabled ? mNotifyCoverDisabled : (mNotifyCoverDisabled = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyCoverDisabled")); }
			ScriptFunction NotifyCoverAdjusted() { return mNotifyCoverAdjusted ? mNotifyCoverAdjusted : (mNotifyCoverAdjusted = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyCoverAdjusted")); }
			ScriptFunction NotifyCoverClaimViolation() { return mNotifyCoverClaimViolation ? mNotifyCoverClaimViolation : (mNotifyCoverClaimViolation = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyCoverClaimViolation")); }
			ScriptFunction OnModifyHealth() { return mOnModifyHealth ? mOnModifyHealth : (mOnModifyHealth = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.OnModifyHealth")); }
			ScriptFunction NotifyAddInventory() { return mNotifyAddInventory ? mNotifyAddInventory : (mNotifyAddInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.NotifyAddInventory")); }
			ScriptFunction OnToggleHidden() { return mOnToggleHidden ? mOnToggleHidden : (mOnToggleHidden = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.OnToggleHidden")); }
			ScriptFunction IsSpectating() { return mIsSpectating ? mIsSpectating : (mIsSpectating = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.IsSpectating")); }
			ScriptFunction IsInCombat() { return mIsInCombat ? mIsInCombat : (mIsInCombat = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.IsInCombat")); }
			ScriptFunction CurrentLevelUnloaded() { return mCurrentLevelUnloaded ? mCurrentLevelUnloaded : (mCurrentLevelUnloaded = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.CurrentLevelUnloaded")); }
			ScriptFunction SendMessage() { return mSendMessage ? mSendMessage : (mSendMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.SendMessage")); }
			ScriptFunction ReadyForLift() { return mReadyForLift ? mReadyForLift : (mReadyForLift = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.ReadyForLift")); }
			ScriptFunction InitNavigationHandle() { return mInitNavigationHandle ? mInitNavigationHandle : (mInitNavigationHandle = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.InitNavigationHandle")); }
			ScriptFunction InterpolationStarted() { return mInterpolationStarted ? mInterpolationStarted : (mInterpolationStarted = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.InterpolationStarted")); }
			ScriptFunction InterpolationFinished() { return mInterpolationFinished ? mInterpolationFinished : (mInterpolationFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.InterpolationFinished")); }
			ScriptFunction GeneratePathToActor() { return mGeneratePathToActor ? mGeneratePathToActor : (mGeneratePathToActor = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GeneratePathToActor")); }
			ScriptFunction GeneratePathToLocation() { return mGeneratePathToLocation ? mGeneratePathToLocation : (mGeneratePathToLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Controller.GeneratePathToLocation")); }
		}
	}
	static struct Constants
	{
		enum LATENT_MOVETOWARD = 503;
	}
	struct VisiblePortalInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Controller.VisiblePortalInfo")); }
		@property final auto ref
		{
			Actor Destination() { return *cast(Actor*)(cast(size_t)&this + 4); }
			Actor Source() { return *cast(Actor*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'Pawn' has the same name as a defined type!
			// WARNING: Property 'PlayerReplicationInfo' has the same name as a defined type!
			ScriptArray!(NavigationPoint) RouteCache() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 716); }
			ScriptArray!(Controller.VisiblePortalInfo) VisiblePortals() { return *cast(ScriptArray!(Controller.VisiblePortalInfo)*)(cast(size_t)cast(void*)this + 860); }
			Vector NavMeshPath_SearchExtent_Modifier() { return *cast(Vector*)(cast(size_t)cast(void*)this + 888); }
			Rotator OldBasedRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 876); }
			float LaneOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 872); }
			Pawn Enemy() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 856); }
			float MaxMoveTowardPawnTargetTime() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
			int HighJumpNodeCostModifier() { return *cast(int*)(cast(size_t)cast(void*)this + 848); }
			float InUseNodeCostMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 844); }
			float SightCounterInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
			float SightCounter() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
			Vector FailedReachLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 824); }
			float FailedReachTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			Actor LastFailedReach() { return *cast(Actor*)(cast(size_t)cast(void*)this + 816); }
			Pawn ShotTarget() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 812); }
			Vector ViewZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
			Vector ViewY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
			Vector ViewX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 776); }
			float GroundPitchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
			int MoveFailureCount() { return *cast(int*)(cast(size_t)cast(void*)this + 768); }
			Actor FailedMoveTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 764); }
			InterpActor PendingMover() { return *cast(InterpActor*)(cast(size_t)cast(void*)this + 760); }
			float LastRouteFind() { return *cast(float*)(cast(size_t)cast(void*)this + 756); }
			float RouteDist() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
			Actor RouteGoal() { return *cast(Actor*)(cast(size_t)cast(void*)this + 748); }
			Vector CurrentPathDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 736); }
			ReachSpec NextRoutePath() { return *cast(ReachSpec*)(cast(size_t)cast(void*)this + 732); }
			ReachSpec CurrentPath() { return *cast(ReachSpec*)(cast(size_t)cast(void*)this + 728); }
			NavigationPoint StartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 712); }
			Actor.BasedPosition AdjustPosition() { return *cast(Actor.BasedPosition*)(cast(size_t)cast(void*)this + 660); }
			Actor GoalList() { return *cast(Actor*)(cast(size_t)cast(void*)this + 644); }
			Actor Focus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 640); }
			Actor.BasedPosition FocalPosition() { return *cast(Actor.BasedPosition*)(cast(size_t)cast(void*)this + 588); }
			Actor.BasedPosition DestinationPosition() { return *cast(Actor.BasedPosition*)(cast(size_t)cast(void*)this + 536); }
			Actor MoveTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 532); }
			float MoveTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			Vector OverrideSearchStart() { return *cast(Vector*)(cast(size_t)cast(void*)this + 516); }
			// WARNING: Property 'NavigationHandle' has the same name as a defined type!
			ScriptClass NavigationHandleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 508); }
			float MinHitWall() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			ubyte bAltFire() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 501); }
			ubyte bFire() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 500); }
			Controller NextController() { return *cast(Controller*)(cast(size_t)cast(void*)this + 492); }
			int PlayerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
			UObject.Pointer VfTable_IInterface_NavigationHandle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bGodMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
		bool bGodMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
		bool bUsingPathLanes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x20000) != 0; }
		bool bUsingPathLanes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x20000; } return val; }
		bool bSeeFriendly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x10000) != 0; }
		bool bSeeFriendly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x10000; } return val; }
		bool bPreciseDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x8000) != 0; }
		bool bPreciseDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x8000; } return val; }
		bool bNotifyFallingHitWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x4000) != 0; }
		bool bNotifyFallingHitWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x4000; } return val; }
		bool bSkipExtraLOSChecks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2000) != 0; }
		bool bSkipExtraLOSChecks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2000; } return val; }
		bool bLOSflag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1000) != 0; }
		bool bLOSflag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1000; } return val; }
		bool bForceStrafe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x800) != 0; }
		bool bForceStrafe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x800; } return val; }
		bool bPreparingMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x400) != 0; }
		bool bPreparingMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x400; } return val; }
		bool bAdjusting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x200) != 0; }
		bool bAdjusting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x200; } return val; }
		bool bCanDoSpecial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x100) != 0; }
		bool bCanDoSpecial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x100; } return val; }
		bool bAdvancedTactics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x80) != 0; }
		bool bAdvancedTactics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x80; } return val; }
		bool bOverrideSearchStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x40) != 0; }
		bool bOverrideSearchStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x40; } return val; }
		bool bNotifyApex() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x20) != 0; }
		bool bNotifyApex(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x20; } return val; }
		bool bNotifyPostLanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x10) != 0; }
		bool bNotifyPostLanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x10; } return val; }
		bool bSlowerZAcquire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x8) != 0; }
		bool bSlowerZAcquire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x8; } return val; }
		bool bSoaking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x4) != 0; }
		bool bSoaking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x4; } return val; }
		bool bIsPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool bIsPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	}
final:
	bool IsLocalPlayerController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocalPlayerController, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RouteCache_Empty()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RouteCache_Empty, cast(void*)0, cast(void*)0);
	}
	void RouteCache_AddItem(NavigationPoint Nav)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		(cast(ScriptObject)this).ProcessEvent(Functions.RouteCache_AddItem, params.ptr, cast(void*)0);
	}
	void RouteCache_InsertItem(NavigationPoint Nav, int Idx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		*cast(int*)&params[4] = Idx;
		(cast(ScriptObject)this).ProcessEvent(Functions.RouteCache_InsertItem, params.ptr, cast(void*)0);
	}
	void RouteCache_RemoveItem(NavigationPoint Nav)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Nav;
		(cast(ScriptObject)this).ProcessEvent(Functions.RouteCache_RemoveItem, params.ptr, cast(void*)0);
	}
	void RouteCache_RemoveIndex(int InIndex, int Count)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIndex;
		*cast(int*)&params[4] = Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.RouteCache_RemoveIndex, params.ptr, cast(void*)0);
	}
	void SetFocalPoint(Vector FP, bool bOffsetFromBase)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = FP;
		*cast(bool*)&params[12] = bOffsetFromBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFocalPoint, params.ptr, cast(void*)0);
	}
	Vector GetFocalPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFocalPoint, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void SetDestinationPosition(Vector Dest, bool bOffsetFromBase)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Dest;
		*cast(bool*)&params[12] = bOffsetFromBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDestinationPosition, params.ptr, cast(void*)0);
	}
	Vector GetDestinationPosition()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDestinationPosition, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void SetAdjustLocation(Vector NewLoc, bool bAdjust, bool bOffsetFromBase)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLoc;
		*cast(bool*)&params[12] = bAdjust;
		*cast(bool*)&params[16] = bOffsetFromBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAdjustLocation, params.ptr, cast(void*)0);
	}
	Vector GetAdjustLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPathChanged, cast(void*)0, cast(void*)0);
	}
	void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginAnimControl, params.ptr, cast(void*)0);
	}
	void SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SlotName;
		*cast(int*)&params[8] = ChannelIndex;
		*cast(ScriptName*)&params[12] = InAnimSeqName;
		*cast(float*)&params[20] = InPosition;
		*cast(bool*)&params[24] = bFireNotifies;
		*cast(bool*)&params[28] = bLooping;
		*cast(bool*)&params[32] = bEnableRootMotion;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimPosition, params.ptr, cast(void*)0);
	}
	void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishAnimControl, params.ptr, cast(void*)0);
	}
	bool PlayActorFaceFXAnim(FaceFXAnimSet pAnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = pAnimSet;
		*cast(ScriptString*)&params[4] = GroupName;
		*cast(ScriptString*)&params[16] = SeqName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayActorFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopActorFaceFXAnim, cast(void*)0, cast(void*)0);
	}
	void SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMorphWeight, params.ptr, cast(void*)0);
	}
	void SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkelControlScale, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void ClientSetLocation(Vector NewLocation, Rotator NewRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		*cast(Rotator*)&params[12] = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetLocation, params.ptr, cast(void*)0);
	}
	void ClientSetRotation(Rotator NewRotation, bool bResetCamera)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(bool*)&params[12] = bResetCamera;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetRotation, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnPossess(SeqAct_Possess inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Possess*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPossess, params.ptr, cast(void*)0);
	}
	void Possess(Pawn inPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = inPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Possess, params.ptr, cast(void*)0);
	}
	void UnPossess()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnPossess, cast(void*)0, cast(void*)0);
	}
	void PawnDied(Pawn inPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = inPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnDied, params.ptr, cast(void*)0);
	}
	bool GamePlayEndedState()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GamePlayEndedState, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void NotifyPostLanded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPostLanded, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void CleanupPRI()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupPRI, cast(void*)0, cast(void*)0);
	}
	void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.Restart, params.ptr, cast(void*)0);
	}
	bool BeyondFogDistance(Vector ViewPoint, Vector OtherPoint)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewPoint;
		*cast(Vector*)&params[12] = OtherPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeyondFogDistance, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void EnemyJustTeleported()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnemyJustTeleported, cast(void*)0, cast(void*)0);
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
	void InitPlayerReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitPlayerReplicationInfo, cast(void*)0, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
	void ServerRestartPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRestartPlayer, cast(void*)0, cast(void*)0);
	}
	void ServerGivePawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerGivePawn, cast(void*)0, cast(void*)0);
	}
	void SetCharacter(ScriptString inCharacter)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = inCharacter;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCharacter, params.ptr, cast(void*)0);
	}
	void GameHasEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(Functions.GameHasEnded, params.ptr, cast(void*)0);
	}
	void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass damageTyp)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = damageTyp;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyKilled, params.ptr, cast(void*)0);
	}
	void NotifyProjLanded(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyProjLanded, params.ptr, cast(void*)0);
	}
	void WarnProjExplode(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(Functions.WarnProjExplode, params.ptr, cast(void*)0);
	}
	float RatePickup(Actor PickupHolder, ScriptClass inPickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(ScriptClass*)&params[4] = inPickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.RatePickup, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool FireWeaponAt(Actor inActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = inActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireWeaponAt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StopFiring()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFiring, cast(void*)0, cast(void*)0);
	}
	void RoundHasEnded(Actor EndRoundFocus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = EndRoundFocus;
		(cast(ScriptObject)this).ProcessEvent(Functions.RoundHasEnded, params.ptr, cast(void*)0);
	}
	void HandlePickup(Inventory Inv)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePickup, params.ptr, cast(void*)0);
	}
	Rotator GetAdjustedAimFor(Weapon W, Vector StartFireLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		*cast(Vector*)&params[4] = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAdjustedAimFor, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	void InstantWarnTarget(Actor InTarget, Weapon FiredWeapon, Vector FireDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = InTarget;
		*cast(Weapon*)&params[4] = FiredWeapon;
		*cast(Vector*)&params[8] = FireDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantWarnTarget, params.ptr, cast(void*)0);
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
	void ReceiveProjectileWarning(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceiveProjectileWarning, params.ptr, cast(void*)0);
	}
	void SwitchToBestWeapon(bool bForceNewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceNewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToBestWeapon, params.ptr, cast(void*)0);
	}
	void ClientSwitchToBestWeapon(bool bForceNewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceNewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSwitchToBestWeapon, params.ptr, cast(void*)0);
	}
	void NotifyChangedWeapon(Weapon PrevWeapon, Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = PrevWeapon;
		*cast(Weapon*)&params[4] = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyChangedWeapon, params.ptr, cast(void*)0);
	}
	bool LineOfSightTo(Actor Other, Vector chkLocation, bool bTryAlternateTargetLoc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = chkLocation;
		*cast(bool*)&params[16] = bTryAlternateTargetLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.LineOfSightTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool CanSee(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSee, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanSeeByPoints(Vector ViewLocation, Vector TestLocation, Rotator ViewRotation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewLocation;
		*cast(Vector*)&params[12] = TestLocation;
		*cast(Rotator*)&params[24] = ViewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSeeByPoints, params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	Pawn PickTarget(ScriptClass TargetClass, float* bestAim, float* bestDist, Vector FireDir, Vector projStart, float MaxRange)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = TargetClass;
		*cast(float*)&params[4] = *bestAim;
		*cast(float*)&params[8] = *bestDist;
		*cast(Vector*)&params[12] = FireDir;
		*cast(Vector*)&params[24] = projStart;
		*cast(float*)&params[36] = MaxRange;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickTarget, params.ptr, cast(void*)0);
		*bestAim = *cast(float*)&params[4];
		*bestDist = *cast(float*)&params[8];
		return *cast(Pawn*)&params[40];
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
	void SeePlayer(Pawn Seen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Seen;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeePlayer, params.ptr, cast(void*)0);
	}
	void SeeMonster(Pawn Seen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Seen;
		(cast(ScriptObject)this).ProcessEvent(Functions.SeeMonster, params.ptr, cast(void*)0);
	}
	void EnemyNotVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnemyNotVisible, cast(void*)0, cast(void*)0);
	}
	void MoveTo(Vector NewDestination, Actor ViewFocus, float DestinationOffset, bool bShouldWalk)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = NewDestination;
		*cast(Actor*)&params[12] = ViewFocus;
		*cast(float*)&params[16] = DestinationOffset;
		*cast(bool*)&params[20] = bShouldWalk;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveTo, params.ptr, cast(void*)0);
	}
	void MoveToDirectNonPathPos(Vector NewDestination, Actor ViewFocus, float DestinationOffset, bool bShouldWalk)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = NewDestination;
		*cast(Actor*)&params[12] = ViewFocus;
		*cast(float*)&params[16] = DestinationOffset;
		*cast(bool*)&params[20] = bShouldWalk;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToDirectNonPathPos, params.ptr, cast(void*)0);
	}
	void MoveToward(Actor NewTarget, Actor ViewFocus, float DestinationOffset, bool bUseStrafing, bool bShouldWalk)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewTarget;
		*cast(Actor*)&params[4] = ViewFocus;
		*cast(float*)&params[8] = DestinationOffset;
		*cast(bool*)&params[12] = bUseStrafing;
		*cast(bool*)&params[16] = bShouldWalk;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveToward, params.ptr, cast(void*)0);
	}
	void SetupSpecialPathAbilities()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupSpecialPathAbilities, cast(void*)0, cast(void*)0);
	}
	void FinishRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishRotation, cast(void*)0, cast(void*)0);
	}
	Actor FindPathTo(Vector aPoint, int MaxPathLength, bool bReturnPartial)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = aPoint;
		*cast(int*)&params[12] = MaxPathLength;
		*cast(bool*)&params[16] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPathTo, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[20];
	}
	Actor FindPathToward(Actor anActor, bool bWeightDetours, int MaxPathLength, bool bReturnPartial)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = anActor;
		*cast(bool*)&params[4] = bWeightDetours;
		*cast(int*)&params[8] = MaxPathLength;
		*cast(bool*)&params[12] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPathToward, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[16];
	}
	Actor FindPathTowardNearest(ScriptClass GoalClass, bool bWeightDetours, int MaxPathLength, bool bReturnPartial)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalClass;
		*cast(bool*)&params[4] = bWeightDetours;
		*cast(int*)&params[8] = MaxPathLength;
		*cast(bool*)&params[12] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPathTowardNearest, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[16];
	}
	NavigationPoint FindRandomDest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindRandomDest, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)params.ptr;
	}
	Actor FindPathToIntercept(Pawn P, Actor InRouteGoal, bool bWeightDetours, int MaxPathLength, bool bReturnPartial)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Actor*)&params[4] = InRouteGoal;
		*cast(bool*)&params[8] = bWeightDetours;
		*cast(int*)&params[12] = MaxPathLength;
		*cast(bool*)&params[16] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPathToIntercept, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[20];
	}
	bool PointReachable(Vector aPoint)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = aPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.PointReachable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ActorReachable(Actor anActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = anActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActorReachable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void MoveUnreachable(Vector AttemptedDest, Actor AttemptedTarget)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = AttemptedDest;
		*cast(Actor*)&params[12] = AttemptedTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveUnreachable, params.ptr, cast(void*)0);
	}
	bool PickWallAdjust(Vector HitNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickWallAdjust, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void WaitForLanding(float waitDuration)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = waitDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitForLanding, params.ptr, cast(void*)0);
	}
	void LongFall()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LongFall, cast(void*)0, cast(void*)0);
	}
	void EndClimbLadder()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndClimbLadder, cast(void*)0, cast(void*)0);
	}
	void MayFall(bool bFloor, Vector FloorNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bFloor;
		*cast(Vector*)&params[4] = FloorNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.MayFall, params.ptr, cast(void*)0);
	}
	bool AllowDetourTo(NavigationPoint N)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowDetourTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void WaitForMover(InterpActor M)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpActor*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitForMover, params.ptr, cast(void*)0);
	}
	bool MoverFinished()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoverFinished, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void UnderLift(LiftCenter Lift)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LiftCenter*)params.ptr = Lift;
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
	void GetPlayerViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	void GetActorEyesViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorEyesViewPoint, params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	bool IsAimingAt(Actor ATarget, float Epsilon)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = ATarget;
		*cast(float*)&params[4] = Epsilon;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAimingAt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool LandingShake()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LandingShake, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void NotifyPhysicsVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPhysicsVolumeChange, params.ptr, cast(void*)0);
	}
	bool NotifyHeadVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyHeadVolumeChange, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	bool NotifyHitWall(Vector HitNormal, Actor Wall)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyHitWall, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void NotifyFallingHitWall(Vector HitNormal, Actor Wall)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyFallingHitWall, params.ptr, cast(void*)0);
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
	void NotifyJumpApex()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyJumpApex, cast(void*)0, cast(void*)0);
	}
	void NotifyMissedJump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyMissedJump, cast(void*)0, cast(void*)0);
	}
	void ReachedPreciseDestination()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedPreciseDestination, cast(void*)0, cast(void*)0);
	}
	bool InLatentExecution(int LatentActionNumber)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LatentActionNumber;
		(cast(ScriptObject)this).ProcessEvent(Functions.InLatentExecution, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StopLatentExecution()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopLatentExecution, cast(void*)0, cast(void*)0);
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
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool IsDead()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDead, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnTeleport(SeqAct_Teleport Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTeleport, params.ptr, cast(void*)0);
	}
	void OnToggleGodMode(SeqAct_ToggleGodMode inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleGodMode*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggleGodMode, params.ptr, cast(void*)0);
	}
	void OnSetPhysics(SeqAct_SetPhysics Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetPhysics*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetPhysics, params.ptr, cast(void*)0);
	}
	void OnSetVelocity(SeqAct_SetVelocity Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetVelocity*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetVelocity, params.ptr, cast(void*)0);
	}
	void NotifyCoverDisabled(CoverLink Link, int SlotIdx, bool bAdjacentIdx)
	{
		ubyte params[12];
		params[] = 0;
		*cast(CoverLink*)params.ptr = Link;
		*cast(int*)&params[4] = SlotIdx;
		*cast(bool*)&params[8] = bAdjacentIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyCoverDisabled, params.ptr, cast(void*)0);
	}
	void NotifyCoverAdjusted()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyCoverAdjusted, cast(void*)0, cast(void*)0);
	}
	bool NotifyCoverClaimViolation(Controller NewClaim, CoverLink Link, int SlotIdx)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = NewClaim;
		*cast(CoverLink*)&params[4] = Link;
		*cast(int*)&params[8] = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyCoverClaimViolation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void OnModifyHealth(SeqAct_ModifyHealth Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyHealth*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnModifyHealth, params.ptr, cast(void*)0);
	}
	void NotifyAddInventory(Inventory pNewItem)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = pNewItem;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyAddInventory, params.ptr, cast(void*)0);
	}
	void OnToggleHidden(SeqAct_ToggleHidden Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHidden*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggleHidden, params.ptr, cast(void*)0);
	}
	bool IsSpectating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSpectating, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsInCombat(bool bForceCheck)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInCombat, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CurrentLevelUnloaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CurrentLevelUnloaded, cast(void*)0, cast(void*)0);
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
	void ReadyForLift()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadyForLift, cast(void*)0, cast(void*)0);
	}
	void InitNavigationHandle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitNavigationHandle, cast(void*)0, cast(void*)0);
	}
	void InterpolationStarted(SeqAct_Interp InterpAction, InterpGroupInst GroupInst)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		*cast(InterpGroupInst*)&params[4] = GroupInst;
		(cast(ScriptObject)this).ProcessEvent(Functions.InterpolationStarted, params.ptr, cast(void*)0);
	}
	void InterpolationFinished(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.InterpolationFinished, params.ptr, cast(void*)0);
	}
	bool GeneratePathToActor(Actor Goal, float WithinDistance, bool bAllowPartialPath)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		*cast(float*)&params[4] = WithinDistance;
		*cast(bool*)&params[8] = bAllowPartialPath;
		(cast(ScriptObject)this).ProcessEvent(Functions.GeneratePathToActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GeneratePathToLocation(Vector Goal, float WithinDistance, bool bAllowPartialPath)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Goal;
		*cast(float*)&params[12] = WithinDistance;
		*cast(bool*)&params[16] = bAllowPartialPath;
		(cast(ScriptObject)this).ProcessEvent(Functions.GeneratePathToLocation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
