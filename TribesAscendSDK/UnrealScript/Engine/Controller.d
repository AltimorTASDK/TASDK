module UnrealScript.Engine.Controller;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Controller")()); }
	private static __gshared Controller mDefaultProperties;
	@property final static Controller DefaultProperties() { mixin(MGDPC!(Controller, "Controller Engine.Default__Controller")()); }
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
			ScriptFunction IsLocalPlayerController() { mixin(MGF!("mIsLocalPlayerController", "Function Engine.Controller.IsLocalPlayerController")()); }
			ScriptFunction RouteCache_Empty() { mixin(MGF!("mRouteCache_Empty", "Function Engine.Controller.RouteCache_Empty")()); }
			ScriptFunction RouteCache_AddItem() { mixin(MGF!("mRouteCache_AddItem", "Function Engine.Controller.RouteCache_AddItem")()); }
			ScriptFunction RouteCache_InsertItem() { mixin(MGF!("mRouteCache_InsertItem", "Function Engine.Controller.RouteCache_InsertItem")()); }
			ScriptFunction RouteCache_RemoveItem() { mixin(MGF!("mRouteCache_RemoveItem", "Function Engine.Controller.RouteCache_RemoveItem")()); }
			ScriptFunction RouteCache_RemoveIndex() { mixin(MGF!("mRouteCache_RemoveIndex", "Function Engine.Controller.RouteCache_RemoveIndex")()); }
			ScriptFunction SetFocalPoint() { mixin(MGF!("mSetFocalPoint", "Function Engine.Controller.SetFocalPoint")()); }
			ScriptFunction GetFocalPoint() { mixin(MGF!("mGetFocalPoint", "Function Engine.Controller.GetFocalPoint")()); }
			ScriptFunction SetDestinationPosition() { mixin(MGF!("mSetDestinationPosition", "Function Engine.Controller.SetDestinationPosition")()); }
			ScriptFunction GetDestinationPosition() { mixin(MGF!("mGetDestinationPosition", "Function Engine.Controller.GetDestinationPosition")()); }
			ScriptFunction SetAdjustLocation() { mixin(MGF!("mSetAdjustLocation", "Function Engine.Controller.SetAdjustLocation")()); }
			ScriptFunction GetAdjustLocation() { mixin(MGF!("mGetAdjustLocation", "Function Engine.Controller.GetAdjustLocation")()); }
			ScriptFunction NotifyPathChanged() { mixin(MGF!("mNotifyPathChanged", "Function Engine.Controller.NotifyPathChanged")()); }
			ScriptFunction BeginAnimControl() { mixin(MGF!("mBeginAnimControl", "Function Engine.Controller.BeginAnimControl")()); }
			ScriptFunction SetAnimPosition() { mixin(MGF!("mSetAnimPosition", "Function Engine.Controller.SetAnimPosition")()); }
			ScriptFunction FinishAnimControl() { mixin(MGF!("mFinishAnimControl", "Function Engine.Controller.FinishAnimControl")()); }
			ScriptFunction PlayActorFaceFXAnim() { mixin(MGF!("mPlayActorFaceFXAnim", "Function Engine.Controller.PlayActorFaceFXAnim")()); }
			ScriptFunction StopActorFaceFXAnim() { mixin(MGF!("mStopActorFaceFXAnim", "Function Engine.Controller.StopActorFaceFXAnim")()); }
			ScriptFunction SetMorphWeight() { mixin(MGF!("mSetMorphWeight", "Function Engine.Controller.SetMorphWeight")()); }
			ScriptFunction SetSkelControlScale() { mixin(MGF!("mSetSkelControlScale", "Function Engine.Controller.SetSkelControlScale")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.Controller.PostBeginPlay")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.Controller.Reset")()); }
			ScriptFunction ClientSetLocation() { mixin(MGF!("mClientSetLocation", "Function Engine.Controller.ClientSetLocation")()); }
			ScriptFunction ClientSetRotation() { mixin(MGF!("mClientSetRotation", "Function Engine.Controller.ClientSetRotation")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.Controller.ReplicatedEvent")()); }
			ScriptFunction OnPossess() { mixin(MGF!("mOnPossess", "Function Engine.Controller.OnPossess")()); }
			ScriptFunction Possess() { mixin(MGF!("mPossess", "Function Engine.Controller.Possess")()); }
			ScriptFunction UnPossess() { mixin(MGF!("mUnPossess", "Function Engine.Controller.UnPossess")()); }
			ScriptFunction PawnDied() { mixin(MGF!("mPawnDied", "Function Engine.Controller.PawnDied")()); }
			ScriptFunction GamePlayEndedState() { mixin(MGF!("mGamePlayEndedState", "Function Engine.Controller.GamePlayEndedState")()); }
			ScriptFunction NotifyPostLanded() { mixin(MGF!("mNotifyPostLanded", "Function Engine.Controller.NotifyPostLanded")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.Controller.Destroyed")()); }
			ScriptFunction CleanupPRI() { mixin(MGF!("mCleanupPRI", "Function Engine.Controller.CleanupPRI")()); }
			ScriptFunction Restart() { mixin(MGF!("mRestart", "Function Engine.Controller.Restart")()); }
			ScriptFunction BeyondFogDistance() { mixin(MGF!("mBeyondFogDistance", "Function Engine.Controller.BeyondFogDistance")()); }
			ScriptFunction EnemyJustTeleported() { mixin(MGF!("mEnemyJustTeleported", "Function Engine.Controller.EnemyJustTeleported")()); }
			ScriptFunction NotifyTakeHit() { mixin(MGF!("mNotifyTakeHit", "Function Engine.Controller.NotifyTakeHit")()); }
			ScriptFunction InitPlayerReplicationInfo() { mixin(MGF!("mInitPlayerReplicationInfo", "Function Engine.Controller.InitPlayerReplicationInfo")()); }
			ScriptFunction GetTeamNum() { mixin(MGF!("mGetTeamNum", "Function Engine.Controller.GetTeamNum")()); }
			ScriptFunction ServerRestartPlayer() { mixin(MGF!("mServerRestartPlayer", "Function Engine.Controller.ServerRestartPlayer")()); }
			ScriptFunction ServerGivePawn() { mixin(MGF!("mServerGivePawn", "Function Engine.Controller.ServerGivePawn")()); }
			ScriptFunction SetCharacter() { mixin(MGF!("mSetCharacter", "Function Engine.Controller.SetCharacter")()); }
			ScriptFunction GameHasEnded() { mixin(MGF!("mGameHasEnded", "Function Engine.Controller.GameHasEnded")()); }
			ScriptFunction NotifyKilled() { mixin(MGF!("mNotifyKilled", "Function Engine.Controller.NotifyKilled")()); }
			ScriptFunction NotifyProjLanded() { mixin(MGF!("mNotifyProjLanded", "Function Engine.Controller.NotifyProjLanded")()); }
			ScriptFunction WarnProjExplode() { mixin(MGF!("mWarnProjExplode", "Function Engine.Controller.WarnProjExplode")()); }
			ScriptFunction RatePickup() { mixin(MGF!("mRatePickup", "Function Engine.Controller.RatePickup")()); }
			ScriptFunction FireWeaponAt() { mixin(MGF!("mFireWeaponAt", "Function Engine.Controller.FireWeaponAt")()); }
			ScriptFunction StopFiring() { mixin(MGF!("mStopFiring", "Function Engine.Controller.StopFiring")()); }
			ScriptFunction RoundHasEnded() { mixin(MGF!("mRoundHasEnded", "Function Engine.Controller.RoundHasEnded")()); }
			ScriptFunction HandlePickup() { mixin(MGF!("mHandlePickup", "Function Engine.Controller.HandlePickup")()); }
			ScriptFunction GetAdjustedAimFor() { mixin(MGF!("mGetAdjustedAimFor", "Function Engine.Controller.GetAdjustedAimFor")()); }
			ScriptFunction InstantWarnTarget() { mixin(MGF!("mInstantWarnTarget", "Function Engine.Controller.InstantWarnTarget")()); }
			ScriptFunction ReceiveWarning() { mixin(MGF!("mReceiveWarning", "Function Engine.Controller.ReceiveWarning")()); }
			ScriptFunction ReceiveProjectileWarning() { mixin(MGF!("mReceiveProjectileWarning", "Function Engine.Controller.ReceiveProjectileWarning")()); }
			ScriptFunction SwitchToBestWeapon() { mixin(MGF!("mSwitchToBestWeapon", "Function Engine.Controller.SwitchToBestWeapon")()); }
			ScriptFunction ClientSwitchToBestWeapon() { mixin(MGF!("mClientSwitchToBestWeapon", "Function Engine.Controller.ClientSwitchToBestWeapon")()); }
			ScriptFunction NotifyChangedWeapon() { mixin(MGF!("mNotifyChangedWeapon", "Function Engine.Controller.NotifyChangedWeapon")()); }
			ScriptFunction LineOfSightTo() { mixin(MGF!("mLineOfSightTo", "Function Engine.Controller.LineOfSightTo")()); }
			ScriptFunction CanSee() { mixin(MGF!("mCanSee", "Function Engine.Controller.CanSee")()); }
			ScriptFunction CanSeeByPoints() { mixin(MGF!("mCanSeeByPoints", "Function Engine.Controller.CanSeeByPoints")()); }
			ScriptFunction PickTarget() { mixin(MGF!("mPickTarget", "Function Engine.Controller.PickTarget")()); }
			ScriptFunction HearNoise() { mixin(MGF!("mHearNoise", "Function Engine.Controller.HearNoise")()); }
			ScriptFunction SeePlayer() { mixin(MGF!("mSeePlayer", "Function Engine.Controller.SeePlayer")()); }
			ScriptFunction SeeMonster() { mixin(MGF!("mSeeMonster", "Function Engine.Controller.SeeMonster")()); }
			ScriptFunction EnemyNotVisible() { mixin(MGF!("mEnemyNotVisible", "Function Engine.Controller.EnemyNotVisible")()); }
			ScriptFunction MoveTo() { mixin(MGF!("mMoveTo", "Function Engine.Controller.MoveTo")()); }
			ScriptFunction MoveToDirectNonPathPos() { mixin(MGF!("mMoveToDirectNonPathPos", "Function Engine.Controller.MoveToDirectNonPathPos")()); }
			ScriptFunction MoveToward() { mixin(MGF!("mMoveToward", "Function Engine.Controller.MoveToward")()); }
			ScriptFunction SetupSpecialPathAbilities() { mixin(MGF!("mSetupSpecialPathAbilities", "Function Engine.Controller.SetupSpecialPathAbilities")()); }
			ScriptFunction FinishRotation() { mixin(MGF!("mFinishRotation", "Function Engine.Controller.FinishRotation")()); }
			ScriptFunction FindPathTo() { mixin(MGF!("mFindPathTo", "Function Engine.Controller.FindPathTo")()); }
			ScriptFunction FindPathToward() { mixin(MGF!("mFindPathToward", "Function Engine.Controller.FindPathToward")()); }
			ScriptFunction FindPathTowardNearest() { mixin(MGF!("mFindPathTowardNearest", "Function Engine.Controller.FindPathTowardNearest")()); }
			ScriptFunction FindRandomDest() { mixin(MGF!("mFindRandomDest", "Function Engine.Controller.FindRandomDest")()); }
			ScriptFunction FindPathToIntercept() { mixin(MGF!("mFindPathToIntercept", "Function Engine.Controller.FindPathToIntercept")()); }
			ScriptFunction PointReachable() { mixin(MGF!("mPointReachable", "Function Engine.Controller.PointReachable")()); }
			ScriptFunction ActorReachable() { mixin(MGF!("mActorReachable", "Function Engine.Controller.ActorReachable")()); }
			ScriptFunction MoveUnreachable() { mixin(MGF!("mMoveUnreachable", "Function Engine.Controller.MoveUnreachable")()); }
			ScriptFunction PickWallAdjust() { mixin(MGF!("mPickWallAdjust", "Function Engine.Controller.PickWallAdjust")()); }
			ScriptFunction WaitForLanding() { mixin(MGF!("mWaitForLanding", "Function Engine.Controller.WaitForLanding")()); }
			ScriptFunction LongFall() { mixin(MGF!("mLongFall", "Function Engine.Controller.LongFall")()); }
			ScriptFunction EndClimbLadder() { mixin(MGF!("mEndClimbLadder", "Function Engine.Controller.EndClimbLadder")()); }
			ScriptFunction MayFall() { mixin(MGF!("mMayFall", "Function Engine.Controller.MayFall")()); }
			ScriptFunction AllowDetourTo() { mixin(MGF!("mAllowDetourTo", "Function Engine.Controller.AllowDetourTo")()); }
			ScriptFunction WaitForMover() { mixin(MGF!("mWaitForMover", "Function Engine.Controller.WaitForMover")()); }
			ScriptFunction MoverFinished() { mixin(MGF!("mMoverFinished", "Function Engine.Controller.MoverFinished")()); }
			ScriptFunction UnderLift() { mixin(MGF!("mUnderLift", "Function Engine.Controller.UnderLift")()); }
			ScriptFunction HandlePathObstruction() { mixin(MGF!("mHandlePathObstruction", "Function Engine.Controller.HandlePathObstruction")()); }
			ScriptFunction GetPlayerViewPoint() { mixin(MGF!("mGetPlayerViewPoint", "Function Engine.Controller.GetPlayerViewPoint")()); }
			ScriptFunction GetActorEyesViewPoint() { mixin(MGF!("mGetActorEyesViewPoint", "Function Engine.Controller.GetActorEyesViewPoint")()); }
			ScriptFunction IsAimingAt() { mixin(MGF!("mIsAimingAt", "Function Engine.Controller.IsAimingAt")()); }
			ScriptFunction LandingShake() { mixin(MGF!("mLandingShake", "Function Engine.Controller.LandingShake")()); }
			ScriptFunction NotifyPhysicsVolumeChange() { mixin(MGF!("mNotifyPhysicsVolumeChange", "Function Engine.Controller.NotifyPhysicsVolumeChange")()); }
			ScriptFunction NotifyHeadVolumeChange() { mixin(MGF!("mNotifyHeadVolumeChange", "Function Engine.Controller.NotifyHeadVolumeChange")()); }
			ScriptFunction NotifyLanded() { mixin(MGF!("mNotifyLanded", "Function Engine.Controller.NotifyLanded")()); }
			ScriptFunction NotifyHitWall() { mixin(MGF!("mNotifyHitWall", "Function Engine.Controller.NotifyHitWall")()); }
			ScriptFunction NotifyFallingHitWall() { mixin(MGF!("mNotifyFallingHitWall", "Function Engine.Controller.NotifyFallingHitWall")()); }
			ScriptFunction NotifyBump() { mixin(MGF!("mNotifyBump", "Function Engine.Controller.NotifyBump")()); }
			ScriptFunction NotifyJumpApex() { mixin(MGF!("mNotifyJumpApex", "Function Engine.Controller.NotifyJumpApex")()); }
			ScriptFunction NotifyMissedJump() { mixin(MGF!("mNotifyMissedJump", "Function Engine.Controller.NotifyMissedJump")()); }
			ScriptFunction ReachedPreciseDestination() { mixin(MGF!("mReachedPreciseDestination", "Function Engine.Controller.ReachedPreciseDestination")()); }
			ScriptFunction InLatentExecution() { mixin(MGF!("mInLatentExecution", "Function Engine.Controller.InLatentExecution")()); }
			ScriptFunction StopLatentExecution() { mixin(MGF!("mStopLatentExecution", "Function Engine.Controller.StopLatentExecution")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function Engine.Controller.DisplayDebug")()); }
			ScriptFunction GetHumanReadableName() { mixin(MGF!("mGetHumanReadableName", "Function Engine.Controller.GetHumanReadableName")()); }
			ScriptFunction IsDead() { mixin(MGF!("mIsDead", "Function Engine.Controller.IsDead")()); }
			ScriptFunction OnTeleport() { mixin(MGF!("mOnTeleport", "Function Engine.Controller.OnTeleport")()); }
			ScriptFunction OnToggleGodMode() { mixin(MGF!("mOnToggleGodMode", "Function Engine.Controller.OnToggleGodMode")()); }
			ScriptFunction OnSetPhysics() { mixin(MGF!("mOnSetPhysics", "Function Engine.Controller.OnSetPhysics")()); }
			ScriptFunction OnSetVelocity() { mixin(MGF!("mOnSetVelocity", "Function Engine.Controller.OnSetVelocity")()); }
			ScriptFunction NotifyCoverDisabled() { mixin(MGF!("mNotifyCoverDisabled", "Function Engine.Controller.NotifyCoverDisabled")()); }
			ScriptFunction NotifyCoverAdjusted() { mixin(MGF!("mNotifyCoverAdjusted", "Function Engine.Controller.NotifyCoverAdjusted")()); }
			ScriptFunction NotifyCoverClaimViolation() { mixin(MGF!("mNotifyCoverClaimViolation", "Function Engine.Controller.NotifyCoverClaimViolation")()); }
			ScriptFunction OnModifyHealth() { mixin(MGF!("mOnModifyHealth", "Function Engine.Controller.OnModifyHealth")()); }
			ScriptFunction NotifyAddInventory() { mixin(MGF!("mNotifyAddInventory", "Function Engine.Controller.NotifyAddInventory")()); }
			ScriptFunction OnToggleHidden() { mixin(MGF!("mOnToggleHidden", "Function Engine.Controller.OnToggleHidden")()); }
			ScriptFunction IsSpectating() { mixin(MGF!("mIsSpectating", "Function Engine.Controller.IsSpectating")()); }
			ScriptFunction IsInCombat() { mixin(MGF!("mIsInCombat", "Function Engine.Controller.IsInCombat")()); }
			ScriptFunction CurrentLevelUnloaded() { mixin(MGF!("mCurrentLevelUnloaded", "Function Engine.Controller.CurrentLevelUnloaded")()); }
			ScriptFunction SendMessage() { mixin(MGF!("mSendMessage", "Function Engine.Controller.SendMessage")()); }
			ScriptFunction ReadyForLift() { mixin(MGF!("mReadyForLift", "Function Engine.Controller.ReadyForLift")()); }
			ScriptFunction InitNavigationHandle() { mixin(MGF!("mInitNavigationHandle", "Function Engine.Controller.InitNavigationHandle")()); }
			ScriptFunction InterpolationStarted() { mixin(MGF!("mInterpolationStarted", "Function Engine.Controller.InterpolationStarted")()); }
			ScriptFunction InterpolationFinished() { mixin(MGF!("mInterpolationFinished", "Function Engine.Controller.InterpolationFinished")()); }
			ScriptFunction GeneratePathToActor() { mixin(MGF!("mGeneratePathToActor", "Function Engine.Controller.GeneratePathToActor")()); }
			ScriptFunction GeneratePathToLocation() { mixin(MGF!("mGeneratePathToLocation", "Function Engine.Controller.GeneratePathToLocation")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Controller.VisiblePortalInfo")()); }
		@property final auto ref
		{
			Actor Destination() { mixin(MGPS!(Actor, 4)()); }
			Actor Source() { mixin(MGPS!(Actor, 0)()); }
		}
	}
	static struct Dead
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Controller.Dead")()); }
	}
	static struct RoundEnded
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.Controller.RoundEnded")()); }
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'Pawn' has the same name as a defined type!
			// WARNING: Property 'PlayerReplicationInfo' has the same name as a defined type!
			ScriptArray!(NavigationPoint) RouteCache() { mixin(MGPC!(ScriptArray!(NavigationPoint), 716)()); }
			ScriptArray!(Controller.VisiblePortalInfo) VisiblePortals() { mixin(MGPC!(ScriptArray!(Controller.VisiblePortalInfo), 860)()); }
			Vector NavMeshPath_SearchExtent_Modifier() { mixin(MGPC!(Vector, 888)()); }
			Rotator OldBasedRotation() { mixin(MGPC!(Rotator, 876)()); }
			float LaneOffset() { mixin(MGPC!(float, 872)()); }
			Pawn Enemy() { mixin(MGPC!(Pawn, 856)()); }
			float MaxMoveTowardPawnTargetTime() { mixin(MGPC!(float, 852)()); }
			int HighJumpNodeCostModifier() { mixin(MGPC!(int, 848)()); }
			float InUseNodeCostMultiplier() { mixin(MGPC!(float, 844)()); }
			float SightCounterInterval() { mixin(MGPC!(float, 840)()); }
			float SightCounter() { mixin(MGPC!(float, 836)()); }
			Vector FailedReachLocation() { mixin(MGPC!(Vector, 824)()); }
			float FailedReachTime() { mixin(MGPC!(float, 820)()); }
			Actor LastFailedReach() { mixin(MGPC!(Actor, 816)()); }
			Pawn ShotTarget() { mixin(MGPC!(Pawn, 812)()); }
			Vector ViewZ() { mixin(MGPC!(Vector, 800)()); }
			Vector ViewY() { mixin(MGPC!(Vector, 788)()); }
			Vector ViewX() { mixin(MGPC!(Vector, 776)()); }
			float GroundPitchTime() { mixin(MGPC!(float, 772)()); }
			int MoveFailureCount() { mixin(MGPC!(int, 768)()); }
			Actor FailedMoveTarget() { mixin(MGPC!(Actor, 764)()); }
			InterpActor PendingMover() { mixin(MGPC!(InterpActor, 760)()); }
			float LastRouteFind() { mixin(MGPC!(float, 756)()); }
			float RouteDist() { mixin(MGPC!(float, 752)()); }
			Actor RouteGoal() { mixin(MGPC!(Actor, 748)()); }
			Vector CurrentPathDir() { mixin(MGPC!(Vector, 736)()); }
			ReachSpec NextRoutePath() { mixin(MGPC!(ReachSpec, 732)()); }
			ReachSpec CurrentPath() { mixin(MGPC!(ReachSpec, 728)()); }
			NavigationPoint StartSpot() { mixin(MGPC!(NavigationPoint, 712)()); }
			Actor.BasedPosition AdjustPosition() { mixin(MGPC!(Actor.BasedPosition, 660)()); }
			Actor GoalList() { mixin(MGPC!(Actor, 644)()); }
			Actor Focus() { mixin(MGPC!(Actor, 640)()); }
			Actor.BasedPosition FocalPosition() { mixin(MGPC!(Actor.BasedPosition, 588)()); }
			Actor.BasedPosition DestinationPosition() { mixin(MGPC!(Actor.BasedPosition, 536)()); }
			Actor MoveTarget() { mixin(MGPC!(Actor, 532)()); }
			float MoveTimer() { mixin(MGPC!(float, 528)()); }
			Vector OverrideSearchStart() { mixin(MGPC!(Vector, 516)()); }
			// WARNING: Property 'NavigationHandle' has the same name as a defined type!
			ScriptClass NavigationHandleClass() { mixin(MGPC!(ScriptClass, 508)()); }
			float MinHitWall() { mixin(MGPC!(float, 504)()); }
			ubyte bAltFire() { mixin(MGPC!(ubyte, 501)()); }
			ubyte bFire() { mixin(MGPC!(ubyte, 500)()); }
			Controller NextController() { mixin(MGPC!(Controller, 492)()); }
			int PlayerNum() { mixin(MGPC!(int, 488)()); }
			UObject.Pointer VfTable_IInterface_NavigationHandle() { mixin(MGPC!(UObject.Pointer, 476)()); }
		}
		bool bGodMode() { mixin(MGBPC!(496, 0x2)()); }
		bool bGodMode(bool val) { mixin(MSBPC!(496, 0x2)()); }
		bool bUsingPathLanes() { mixin(MGBPC!(496, 0x20000)()); }
		bool bUsingPathLanes(bool val) { mixin(MSBPC!(496, 0x20000)()); }
		bool bSeeFriendly() { mixin(MGBPC!(496, 0x10000)()); }
		bool bSeeFriendly(bool val) { mixin(MSBPC!(496, 0x10000)()); }
		bool bPreciseDestination() { mixin(MGBPC!(496, 0x8000)()); }
		bool bPreciseDestination(bool val) { mixin(MSBPC!(496, 0x8000)()); }
		bool bNotifyFallingHitWall() { mixin(MGBPC!(496, 0x4000)()); }
		bool bNotifyFallingHitWall(bool val) { mixin(MSBPC!(496, 0x4000)()); }
		bool bSkipExtraLOSChecks() { mixin(MGBPC!(496, 0x2000)()); }
		bool bSkipExtraLOSChecks(bool val) { mixin(MSBPC!(496, 0x2000)()); }
		bool bLOSflag() { mixin(MGBPC!(496, 0x1000)()); }
		bool bLOSflag(bool val) { mixin(MSBPC!(496, 0x1000)()); }
		bool bForceStrafe() { mixin(MGBPC!(496, 0x800)()); }
		bool bForceStrafe(bool val) { mixin(MSBPC!(496, 0x800)()); }
		bool bPreparingMove() { mixin(MGBPC!(496, 0x400)()); }
		bool bPreparingMove(bool val) { mixin(MSBPC!(496, 0x400)()); }
		bool bAdjusting() { mixin(MGBPC!(496, 0x200)()); }
		bool bAdjusting(bool val) { mixin(MSBPC!(496, 0x200)()); }
		bool bCanDoSpecial() { mixin(MGBPC!(496, 0x100)()); }
		bool bCanDoSpecial(bool val) { mixin(MSBPC!(496, 0x100)()); }
		bool bAdvancedTactics() { mixin(MGBPC!(496, 0x80)()); }
		bool bAdvancedTactics(bool val) { mixin(MSBPC!(496, 0x80)()); }
		bool bOverrideSearchStart() { mixin(MGBPC!(496, 0x40)()); }
		bool bOverrideSearchStart(bool val) { mixin(MSBPC!(496, 0x40)()); }
		bool bNotifyApex() { mixin(MGBPC!(496, 0x20)()); }
		bool bNotifyApex(bool val) { mixin(MSBPC!(496, 0x20)()); }
		bool bNotifyPostLanded() { mixin(MGBPC!(496, 0x10)()); }
		bool bNotifyPostLanded(bool val) { mixin(MSBPC!(496, 0x10)()); }
		bool bSlowerZAcquire() { mixin(MGBPC!(496, 0x8)()); }
		bool bSlowerZAcquire(bool val) { mixin(MSBPC!(496, 0x8)()); }
		bool bSoaking() { mixin(MGBPC!(496, 0x4)()); }
		bool bSoaking(bool val) { mixin(MSBPC!(496, 0x4)()); }
		bool bIsPlayer() { mixin(MGBPC!(496, 0x1)()); }
		bool bIsPlayer(bool val) { mixin(MSBPC!(496, 0x1)()); }
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
	Pawn PickTarget(ScriptClass TargetClass, ref float bestAim, ref float bestDist, Vector FireDir, Vector projStart, float MaxRange)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = TargetClass;
		*cast(float*)&params[4] = bestAim;
		*cast(float*)&params[8] = bestDist;
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
	void GetPlayerViewPoint(ref Vector out_Location, ref Rotator out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = out_Location;
		*cast(Rotator*)&params[12] = out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	void GetActorEyesViewPoint(ref Vector out_Location, ref Rotator out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = out_Location;
		*cast(Rotator*)&params[12] = out_Rotation;
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
