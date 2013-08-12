module UnrealScript.Engine.Pawn;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_AttachToActor;
import UnrealScript.Engine.InventoryManager;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.LadderVolume;
import UnrealScript.Engine.SeqAct_AssignController;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.TeamInfo;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.AnimNodeSlot;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.SeqAct_SetVelocity;
import UnrealScript.Engine.PathGoalEvaluator;
import UnrealScript.Engine.PathConstraint;
import UnrealScript.Engine.SeqAct_Teleport;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.SeqAct_GiveInventory;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.Pylon;
import UnrealScript.Engine.SeqAct_SetMaterial;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.SeqAct_PlayFaceFXAnim;
import UnrealScript.Engine.Weapon;

extern(C++) interface Pawn : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Pawn")); }
	private static __gshared Pawn mDefaultProperties;
	@property final static Pawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Pawn)("Pawn Engine.Default__Pawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsHumanControlled;
			ScriptFunction mIsLocallyControlled;
			ScriptFunction mPlayActorFaceFXAnim;
			ScriptFunction mStopFiring;
			ScriptFunction mGetBaseAimRotation;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mDied;
			ScriptFunction mGetDefaultCameraMode;
			ScriptFunction mCanThrowWeapon;
			ScriptFunction mSetDesiredRotation;
			ScriptFunction mDoJump;
			ScriptFunction mSetRemoteViewPitch;
			ScriptFunction mCannotJumpNow;
			ScriptFunction mCheckWaterJump;
			ScriptFunction mTouchingWaterVolume;
			ScriptFunction mReachedDestination;
			ScriptFunction mSpecialMoveTo;
			ScriptFunction mSetScalarParameterInterp;
			ScriptFunction mCheatFly;
			ScriptFunction mCheatWalk;
			ScriptFunction mCheatGhost;
			ScriptFunction mIsPlayerPawn;
			ScriptFunction mFindInventoryType;
			ScriptFunction mCreateInventory;
			ScriptFunction mInGodMode;
			ScriptFunction mValidAnchor;
			ScriptFunction mGetBestAnchor;
			ScriptFunction mCreatePathGoalEvaluator;
			ScriptFunction mGetCollisionHeight;
			ScriptFunction mGetCollisionExtent;
			ScriptFunction mGetViewRotation;
			ScriptFunction mCanGrabLadder;
			ScriptFunction mLineOfSightTo;
			ScriptFunction mPickWallAdjust;
			ScriptFunction mLockDesiredRotation;
			ScriptFunction mResetDesiredRotation;
			ScriptFunction mCheckDesiredRotation;
			ScriptFunction mIsDesiredRotationInUse;
			ScriptFunction mIsDesiredRotationLocked;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mCacheAnimNodes;
			ScriptFunction mClearAnimNodes;
			ScriptFunction mUpdateAnimSetList;
			ScriptFunction mBuildScriptAnimSetList;
			ScriptFunction mAddAnimSets;
			ScriptFunction mAnimSetListUpdated;
			ScriptFunction mRestoreAnimSetsToDefault;
			ScriptFunction mBeginAnimControl;
			ScriptFunction mMAT_BeginAnimControl;
			ScriptFunction mFinishAnimControl;
			ScriptFunction mMAT_FinishAnimControl;
			ScriptFunction mSetAnimPosition;
			ScriptFunction mMAT_SetAnimPosition;
			ScriptFunction mMAT_SetAnimWeights;
			ScriptFunction mMAT_SetMorphWeight;
			ScriptFunction mMAT_SetSkelControlScale;
			ScriptFunction mInterpolationStarted;
			ScriptFunction mInterpolationFinished;
			ScriptFunction mMAT_BeginAIGroup;
			ScriptFunction mMAT_FinishAIGroup;
			ScriptFunction mStopActorFaceFXAnim;
			ScriptFunction mGetFaceFXAudioComponent;
			ScriptFunction mIsActorPlayingFaceFXAnim;
			ScriptFunction mCanActorPlayFaceFXAnim;
			ScriptFunction mOnPlayFaceFXAnim;
			ScriptFunction mFaceFXAudioFinished;
			ScriptFunction mGetActorFaceFXAsset;
			ScriptFunction mSetMorphWeight;
			ScriptFunction mSetSkelControlScale;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mIsAliveAndWell;
			ScriptFunction mAdjustDestination;
			ScriptFunction mSuggestJumpVelocity;
			ScriptFunction mGetFallDuration;
			ScriptFunction mIsValidEnemyTargetFor;
			ScriptFunction mIsInvisible;
			ScriptFunction mSetAnchor;
			ScriptFunction mReachedPoint;
			ScriptFunction mForceCrouch;
			ScriptFunction mSetPushesRigidBodies;
			ScriptFunction mReachedDesiredRotation;
			ScriptFunction mGetBoundingCylinder;
			ScriptFunction mInitRagdoll;
			ScriptFunction mTermRagdoll;
			ScriptFunction mSpecialMoveThruEdge;
			ScriptFunction mSetBaseEyeheight;
			ScriptFunction mPlayerChangedTeam;
			ScriptFunction mReset;
			ScriptFunction mStartFire;
			ScriptFunction mStopFire;
			ScriptFunction mGetWeaponFiringMode;
			ScriptFunction mSetFiringMode;
			ScriptFunction mFiringModeUpdated;
			ScriptFunction mIncrementFlashCount;
			ScriptFunction mFlashCountUpdated;
			ScriptFunction mClearFlashCount;
			ScriptFunction mSetFlashLocation;
			ScriptFunction mClearFlashLocation;
			ScriptFunction mFlashLocationUpdated;
			ScriptFunction mWeaponFired;
			ScriptFunction mWeaponStoppedFiring;
			ScriptFunction mBotFire;
			ScriptFunction mCanAttack;
			ScriptFunction mTooCloseToAttack;
			ScriptFunction mFireOnRelease;
			ScriptFunction mHasRangedAttack;
			ScriptFunction mIsFiring;
			ScriptFunction mNeedToTurn;
			ScriptFunction mPlayTeleportEffect;
			ScriptFunction mNotifyTeamChanged;
			ScriptFunction mPossessedBy;
			ScriptFunction mUpdateControllerOnPossess;
			ScriptFunction mUnPossessed;
			ScriptFunction mDropToGround;
			ScriptFunction mRecommendLongRangedAttack;
			ScriptFunction mRangedAttackTime;
			ScriptFunction mSetWalking;
			ScriptFunction mCanSplash;
			ScriptFunction mEndClimbLadder;
			ScriptFunction mClimbLadder;
			ScriptFunction mDisplayDebug;
			ScriptFunction mIsFirstPerson;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mGetActorEyesViewPoint;
			ScriptFunction mGetPawnViewLocation;
			ScriptFunction mGetWeaponStartTraceLocation;
			ScriptFunction mInFreeCam;
			ScriptFunction mGetAdjustedAimFor;
			ScriptFunction mSetViewRotation;
			ScriptFunction mSetMoveTarget;
			ScriptFunction mHandlePickup;
			ScriptFunction mClientMessage;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mOutsideWorldBounds;
			ScriptFunction mUnCrouch;
			ScriptFunction mShouldCrouch;
			ScriptFunction mEndCrouch;
			ScriptFunction mStartCrouch;
			ScriptFunction mHandleMomentum;
			ScriptFunction mAddVelocity;
			ScriptFunction mKilledBy;
			ScriptFunction mTakeFallingDamage;
			ScriptFunction mRestart;
			ScriptFunction mClientRestart;
			ScriptFunction mClientSetRotation;
			ScriptFunction mUpdatePawnRotation;
			ScriptFunction mFaceRotation;
			ScriptFunction mEncroachingOn;
			ScriptFunction mEncroachedBy;
			ScriptFunction mgibbedBy;
			ScriptFunction mJumpOffPawn;
			ScriptFunction mStuckOnPawn;
			ScriptFunction mBaseChange;
			ScriptFunction mCanBeBaseForPawn;
			ScriptFunction mCrushedBy;
			ScriptFunction mDetachFromController;
			ScriptFunction mDestroyed;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSpawnDefaultController;
			ScriptFunction mReceivedNewEvent;
			ScriptFunction mOnAssignController;
			ScriptFunction mOnGiveInventory;
			ScriptFunction mGasp;
			ScriptFunction mSetMovementPhysics;
			ScriptFunction mAdjustDamage;
			ScriptFunction mHealDamage;
			ScriptFunction mPruneDamagedBoneList;
			ScriptFunction mTakeRadiusDamageOnBones;
			ScriptFunction mNotifyTakeHit;
			ScriptFunction mSetKillInstigator;
			ScriptFunction mTakeDamage;
			ScriptFunction mGetTeamNum;
			ScriptFunction mGetTeam;
			ScriptFunction mIsSameTeam;
			ScriptFunction mThrowWeaponOnDeath;
			ScriptFunction mDelayTriggerDeath;
			ScriptFunction mFalling;
			ScriptFunction mLanded;
			ScriptFunction mTickSpecial;
			ScriptFunction mHeadVolumeChange;
			ScriptFunction mBreathTimer;
			ScriptFunction mTakeDrowningDamage;
			ScriptFunction mPlayDyingSound;
			ScriptFunction mPlayHit;
			ScriptFunction mTurnOff;
			ScriptFunction mSetDyingPhysics;
			ScriptFunction mPlayDying;
			ScriptFunction mTornOff;
			ScriptFunction mPlayFootStepSound;
			ScriptFunction mPlayLanded;
			ScriptFunction mGetVehicleBase;
			ScriptFunction mSuicide;
			ScriptFunction mStartDriving;
			ScriptFunction mStopDriving;
			ScriptFunction mAddDefaultInventory;
			ScriptFunction mDrawHUD;
			ScriptFunction mThrowActiveWeapon;
			ScriptFunction mTossInventory;
			ScriptFunction mSetActiveWeapon;
			ScriptFunction mPlayWeaponSwitch;
			ScriptFunction mGetCollisionRadius;
			ScriptFunction mIsStationary;
			ScriptFunction mSpawnedByKismet;
			ScriptFunction mDoKismetAttachment;
			ScriptFunction mGetDamageScaling;
			ScriptFunction mOnSetMaterial;
			ScriptFunction mOnTeleport;
			ScriptFunction mMessagePlayer;
			ScriptFunction mBecomeViewTarget;
			ScriptFunction mSoakPause;
			ScriptFunction mClearConstraints;
			ScriptFunction mAddPathConstraint;
			ScriptFunction mAddGoalEvaluator;
			ScriptFunction mCreatePathConstraint;
			ScriptFunction mIncrementPathStep;
			ScriptFunction mIncrementPathChild;
			ScriptFunction mDrawPathStep;
			ScriptFunction mClearPathStep;
			ScriptFunction mZeroMovementVariables;
			ScriptFunction mSetCinematicMode;
			ScriptFunction mSetRootMotionInterpCurrentTime;
			ScriptFunction mSpeak;
			ScriptFunction mOnSetVelocity;
			ScriptFunction mCheckClotheslineDamage;
		}
		public @property static final
		{
			ScriptFunction IsHumanControlled() { return mIsHumanControlled ? mIsHumanControlled : (mIsHumanControlled = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsHumanControlled")); }
			ScriptFunction IsLocallyControlled() { return mIsLocallyControlled ? mIsLocallyControlled : (mIsLocallyControlled = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsLocallyControlled")); }
			ScriptFunction PlayActorFaceFXAnim() { return mPlayActorFaceFXAnim ? mPlayActorFaceFXAnim : (mPlayActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayActorFaceFXAnim")); }
			ScriptFunction StopFiring() { return mStopFiring ? mStopFiring : (mStopFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.StopFiring")); }
			ScriptFunction GetBaseAimRotation() { return mGetBaseAimRotation ? mGetBaseAimRotation : (mGetBaseAimRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetBaseAimRotation")); }
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetHumanReadableName")); }
			ScriptFunction Died() { return mDied ? mDied : (mDied = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Died")); }
			ScriptFunction GetDefaultCameraMode() { return mGetDefaultCameraMode ? mGetDefaultCameraMode : (mGetDefaultCameraMode = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetDefaultCameraMode")); }
			ScriptFunction CanThrowWeapon() { return mCanThrowWeapon ? mCanThrowWeapon : (mCanThrowWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CanThrowWeapon")); }
			ScriptFunction SetDesiredRotation() { return mSetDesiredRotation ? mSetDesiredRotation : (mSetDesiredRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetDesiredRotation")); }
			ScriptFunction DoJump() { return mDoJump ? mDoJump : (mDoJump = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.DoJump")); }
			ScriptFunction SetRemoteViewPitch() { return mSetRemoteViewPitch ? mSetRemoteViewPitch : (mSetRemoteViewPitch = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetRemoteViewPitch")); }
			ScriptFunction CannotJumpNow() { return mCannotJumpNow ? mCannotJumpNow : (mCannotJumpNow = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CannotJumpNow")); }
			ScriptFunction CheckWaterJump() { return mCheckWaterJump ? mCheckWaterJump : (mCheckWaterJump = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CheckWaterJump")); }
			ScriptFunction TouchingWaterVolume() { return mTouchingWaterVolume ? mTouchingWaterVolume : (mTouchingWaterVolume = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TouchingWaterVolume")); }
			ScriptFunction ReachedDestination() { return mReachedDestination ? mReachedDestination : (mReachedDestination = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ReachedDestination")); }
			ScriptFunction SpecialMoveTo() { return mSpecialMoveTo ? mSpecialMoveTo : (mSpecialMoveTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SpecialMoveTo")); }
			ScriptFunction SetScalarParameterInterp() { return mSetScalarParameterInterp ? mSetScalarParameterInterp : (mSetScalarParameterInterp = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetScalarParameterInterp")); }
			ScriptFunction CheatFly() { return mCheatFly ? mCheatFly : (mCheatFly = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CheatFly")); }
			ScriptFunction CheatWalk() { return mCheatWalk ? mCheatWalk : (mCheatWalk = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CheatWalk")); }
			ScriptFunction CheatGhost() { return mCheatGhost ? mCheatGhost : (mCheatGhost = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CheatGhost")); }
			ScriptFunction IsPlayerPawn() { return mIsPlayerPawn ? mIsPlayerPawn : (mIsPlayerPawn = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsPlayerPawn")); }
			ScriptFunction FindInventoryType() { return mFindInventoryType ? mFindInventoryType : (mFindInventoryType = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FindInventoryType")); }
			ScriptFunction CreateInventory() { return mCreateInventory ? mCreateInventory : (mCreateInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CreateInventory")); }
			ScriptFunction InGodMode() { return mInGodMode ? mInGodMode : (mInGodMode = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.InGodMode")); }
			ScriptFunction ValidAnchor() { return mValidAnchor ? mValidAnchor : (mValidAnchor = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ValidAnchor")); }
			ScriptFunction GetBestAnchor() { return mGetBestAnchor ? mGetBestAnchor : (mGetBestAnchor = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetBestAnchor")); }
			ScriptFunction CreatePathGoalEvaluator() { return mCreatePathGoalEvaluator ? mCreatePathGoalEvaluator : (mCreatePathGoalEvaluator = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CreatePathGoalEvaluator")); }
			ScriptFunction GetCollisionHeight() { return mGetCollisionHeight ? mGetCollisionHeight : (mGetCollisionHeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetCollisionHeight")); }
			ScriptFunction GetCollisionExtent() { return mGetCollisionExtent ? mGetCollisionExtent : (mGetCollisionExtent = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetCollisionExtent")); }
			ScriptFunction GetViewRotation() { return mGetViewRotation ? mGetViewRotation : (mGetViewRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetViewRotation")); }
			ScriptFunction CanGrabLadder() { return mCanGrabLadder ? mCanGrabLadder : (mCanGrabLadder = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CanGrabLadder")); }
			ScriptFunction LineOfSightTo() { return mLineOfSightTo ? mLineOfSightTo : (mLineOfSightTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.LineOfSightTo")); }
			ScriptFunction PickWallAdjust() { return mPickWallAdjust ? mPickWallAdjust : (mPickWallAdjust = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PickWallAdjust")); }
			ScriptFunction LockDesiredRotation() { return mLockDesiredRotation ? mLockDesiredRotation : (mLockDesiredRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.LockDesiredRotation")); }
			ScriptFunction ResetDesiredRotation() { return mResetDesiredRotation ? mResetDesiredRotation : (mResetDesiredRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ResetDesiredRotation")); }
			ScriptFunction CheckDesiredRotation() { return mCheckDesiredRotation ? mCheckDesiredRotation : (mCheckDesiredRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CheckDesiredRotation")); }
			ScriptFunction IsDesiredRotationInUse() { return mIsDesiredRotationInUse ? mIsDesiredRotationInUse : (mIsDesiredRotationInUse = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsDesiredRotationInUse")); }
			ScriptFunction IsDesiredRotationLocked() { return mIsDesiredRotationLocked ? mIsDesiredRotationLocked : (mIsDesiredRotationLocked = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsDesiredRotationLocked")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PostInitAnimTree")); }
			ScriptFunction CacheAnimNodes() { return mCacheAnimNodes ? mCacheAnimNodes : (mCacheAnimNodes = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CacheAnimNodes")); }
			ScriptFunction ClearAnimNodes() { return mClearAnimNodes ? mClearAnimNodes : (mClearAnimNodes = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClearAnimNodes")); }
			ScriptFunction UpdateAnimSetList() { return mUpdateAnimSetList ? mUpdateAnimSetList : (mUpdateAnimSetList = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.UpdateAnimSetList")); }
			ScriptFunction BuildScriptAnimSetList() { return mBuildScriptAnimSetList ? mBuildScriptAnimSetList : (mBuildScriptAnimSetList = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.BuildScriptAnimSetList")); }
			ScriptFunction AddAnimSets() { return mAddAnimSets ? mAddAnimSets : (mAddAnimSets = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.AddAnimSets")); }
			ScriptFunction AnimSetListUpdated() { return mAnimSetListUpdated ? mAnimSetListUpdated : (mAnimSetListUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.AnimSetListUpdated")); }
			ScriptFunction RestoreAnimSetsToDefault() { return mRestoreAnimSetsToDefault ? mRestoreAnimSetsToDefault : (mRestoreAnimSetsToDefault = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.RestoreAnimSetsToDefault")); }
			ScriptFunction BeginAnimControl() { return mBeginAnimControl ? mBeginAnimControl : (mBeginAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.BeginAnimControl")); }
			ScriptFunction MAT_BeginAnimControl() { return mMAT_BeginAnimControl ? mMAT_BeginAnimControl : (mMAT_BeginAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MAT_BeginAnimControl")); }
			ScriptFunction FinishAnimControl() { return mFinishAnimControl ? mFinishAnimControl : (mFinishAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FinishAnimControl")); }
			ScriptFunction MAT_FinishAnimControl() { return mMAT_FinishAnimControl ? mMAT_FinishAnimControl : (mMAT_FinishAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MAT_FinishAnimControl")); }
			ScriptFunction SetAnimPosition() { return mSetAnimPosition ? mSetAnimPosition : (mSetAnimPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetAnimPosition")); }
			ScriptFunction MAT_SetAnimPosition() { return mMAT_SetAnimPosition ? mMAT_SetAnimPosition : (mMAT_SetAnimPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MAT_SetAnimPosition")); }
			ScriptFunction MAT_SetAnimWeights() { return mMAT_SetAnimWeights ? mMAT_SetAnimWeights : (mMAT_SetAnimWeights = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MAT_SetAnimWeights")); }
			ScriptFunction MAT_SetMorphWeight() { return mMAT_SetMorphWeight ? mMAT_SetMorphWeight : (mMAT_SetMorphWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MAT_SetMorphWeight")); }
			ScriptFunction MAT_SetSkelControlScale() { return mMAT_SetSkelControlScale ? mMAT_SetSkelControlScale : (mMAT_SetSkelControlScale = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MAT_SetSkelControlScale")); }
			ScriptFunction InterpolationStarted() { return mInterpolationStarted ? mInterpolationStarted : (mInterpolationStarted = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.InterpolationStarted")); }
			ScriptFunction InterpolationFinished() { return mInterpolationFinished ? mInterpolationFinished : (mInterpolationFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.InterpolationFinished")); }
			ScriptFunction MAT_BeginAIGroup() { return mMAT_BeginAIGroup ? mMAT_BeginAIGroup : (mMAT_BeginAIGroup = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MAT_BeginAIGroup")); }
			ScriptFunction MAT_FinishAIGroup() { return mMAT_FinishAIGroup ? mMAT_FinishAIGroup : (mMAT_FinishAIGroup = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MAT_FinishAIGroup")); }
			ScriptFunction StopActorFaceFXAnim() { return mStopActorFaceFXAnim ? mStopActorFaceFXAnim : (mStopActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.StopActorFaceFXAnim")); }
			ScriptFunction GetFaceFXAudioComponent() { return mGetFaceFXAudioComponent ? mGetFaceFXAudioComponent : (mGetFaceFXAudioComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetFaceFXAudioComponent")); }
			ScriptFunction IsActorPlayingFaceFXAnim() { return mIsActorPlayingFaceFXAnim ? mIsActorPlayingFaceFXAnim : (mIsActorPlayingFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsActorPlayingFaceFXAnim")); }
			ScriptFunction CanActorPlayFaceFXAnim() { return mCanActorPlayFaceFXAnim ? mCanActorPlayFaceFXAnim : (mCanActorPlayFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CanActorPlayFaceFXAnim")); }
			ScriptFunction OnPlayFaceFXAnim() { return mOnPlayFaceFXAnim ? mOnPlayFaceFXAnim : (mOnPlayFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.OnPlayFaceFXAnim")); }
			ScriptFunction FaceFXAudioFinished() { return mFaceFXAudioFinished ? mFaceFXAudioFinished : (mFaceFXAudioFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FaceFXAudioFinished")); }
			ScriptFunction GetActorFaceFXAsset() { return mGetActorFaceFXAsset ? mGetActorFaceFXAsset : (mGetActorFaceFXAsset = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetActorFaceFXAsset")); }
			ScriptFunction SetMorphWeight() { return mSetMorphWeight ? mSetMorphWeight : (mSetMorphWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetMorphWeight")); }
			ScriptFunction SetSkelControlScale() { return mSetSkelControlScale ? mSetSkelControlScale : (mSetSkelControlScale = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetSkelControlScale")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ReplicatedEvent")); }
			ScriptFunction IsAliveAndWell() { return mIsAliveAndWell ? mIsAliveAndWell : (mIsAliveAndWell = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsAliveAndWell")); }
			ScriptFunction AdjustDestination() { return mAdjustDestination ? mAdjustDestination : (mAdjustDestination = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.AdjustDestination")); }
			ScriptFunction SuggestJumpVelocity() { return mSuggestJumpVelocity ? mSuggestJumpVelocity : (mSuggestJumpVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SuggestJumpVelocity")); }
			ScriptFunction GetFallDuration() { return mGetFallDuration ? mGetFallDuration : (mGetFallDuration = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetFallDuration")); }
			ScriptFunction IsValidEnemyTargetFor() { return mIsValidEnemyTargetFor ? mIsValidEnemyTargetFor : (mIsValidEnemyTargetFor = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsValidEnemyTargetFor")); }
			ScriptFunction IsInvisible() { return mIsInvisible ? mIsInvisible : (mIsInvisible = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsInvisible")); }
			ScriptFunction SetAnchor() { return mSetAnchor ? mSetAnchor : (mSetAnchor = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetAnchor")); }
			ScriptFunction ReachedPoint() { return mReachedPoint ? mReachedPoint : (mReachedPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ReachedPoint")); }
			ScriptFunction ForceCrouch() { return mForceCrouch ? mForceCrouch : (mForceCrouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ForceCrouch")); }
			ScriptFunction SetPushesRigidBodies() { return mSetPushesRigidBodies ? mSetPushesRigidBodies : (mSetPushesRigidBodies = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetPushesRigidBodies")); }
			ScriptFunction ReachedDesiredRotation() { return mReachedDesiredRotation ? mReachedDesiredRotation : (mReachedDesiredRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ReachedDesiredRotation")); }
			ScriptFunction GetBoundingCylinder() { return mGetBoundingCylinder ? mGetBoundingCylinder : (mGetBoundingCylinder = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetBoundingCylinder")); }
			ScriptFunction InitRagdoll() { return mInitRagdoll ? mInitRagdoll : (mInitRagdoll = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.InitRagdoll")); }
			ScriptFunction TermRagdoll() { return mTermRagdoll ? mTermRagdoll : (mTermRagdoll = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TermRagdoll")); }
			ScriptFunction SpecialMoveThruEdge() { return mSpecialMoveThruEdge ? mSpecialMoveThruEdge : (mSpecialMoveThruEdge = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SpecialMoveThruEdge")); }
			ScriptFunction SetBaseEyeheight() { return mSetBaseEyeheight ? mSetBaseEyeheight : (mSetBaseEyeheight = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetBaseEyeheight")); }
			ScriptFunction PlayerChangedTeam() { return mPlayerChangedTeam ? mPlayerChangedTeam : (mPlayerChangedTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayerChangedTeam")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Reset")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.StartFire")); }
			ScriptFunction StopFire() { return mStopFire ? mStopFire : (mStopFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.StopFire")); }
			ScriptFunction GetWeaponFiringMode() { return mGetWeaponFiringMode ? mGetWeaponFiringMode : (mGetWeaponFiringMode = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetWeaponFiringMode")); }
			ScriptFunction SetFiringMode() { return mSetFiringMode ? mSetFiringMode : (mSetFiringMode = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetFiringMode")); }
			ScriptFunction FiringModeUpdated() { return mFiringModeUpdated ? mFiringModeUpdated : (mFiringModeUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FiringModeUpdated")); }
			ScriptFunction IncrementFlashCount() { return mIncrementFlashCount ? mIncrementFlashCount : (mIncrementFlashCount = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IncrementFlashCount")); }
			ScriptFunction FlashCountUpdated() { return mFlashCountUpdated ? mFlashCountUpdated : (mFlashCountUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FlashCountUpdated")); }
			ScriptFunction ClearFlashCount() { return mClearFlashCount ? mClearFlashCount : (mClearFlashCount = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClearFlashCount")); }
			ScriptFunction SetFlashLocation() { return mSetFlashLocation ? mSetFlashLocation : (mSetFlashLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetFlashLocation")); }
			ScriptFunction ClearFlashLocation() { return mClearFlashLocation ? mClearFlashLocation : (mClearFlashLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClearFlashLocation")); }
			ScriptFunction FlashLocationUpdated() { return mFlashLocationUpdated ? mFlashLocationUpdated : (mFlashLocationUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FlashLocationUpdated")); }
			ScriptFunction WeaponFired() { return mWeaponFired ? mWeaponFired : (mWeaponFired = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.WeaponFired")); }
			ScriptFunction WeaponStoppedFiring() { return mWeaponStoppedFiring ? mWeaponStoppedFiring : (mWeaponStoppedFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.WeaponStoppedFiring")); }
			ScriptFunction BotFire() { return mBotFire ? mBotFire : (mBotFire = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.BotFire")); }
			ScriptFunction CanAttack() { return mCanAttack ? mCanAttack : (mCanAttack = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CanAttack")); }
			ScriptFunction TooCloseToAttack() { return mTooCloseToAttack ? mTooCloseToAttack : (mTooCloseToAttack = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TooCloseToAttack")); }
			ScriptFunction FireOnRelease() { return mFireOnRelease ? mFireOnRelease : (mFireOnRelease = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FireOnRelease")); }
			ScriptFunction HasRangedAttack() { return mHasRangedAttack ? mHasRangedAttack : (mHasRangedAttack = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.HasRangedAttack")); }
			ScriptFunction IsFiring() { return mIsFiring ? mIsFiring : (mIsFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsFiring")); }
			ScriptFunction NeedToTurn() { return mNeedToTurn ? mNeedToTurn : (mNeedToTurn = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.NeedToTurn")); }
			ScriptFunction PlayTeleportEffect() { return mPlayTeleportEffect ? mPlayTeleportEffect : (mPlayTeleportEffect = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayTeleportEffect")); }
			ScriptFunction NotifyTeamChanged() { return mNotifyTeamChanged ? mNotifyTeamChanged : (mNotifyTeamChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.NotifyTeamChanged")); }
			ScriptFunction PossessedBy() { return mPossessedBy ? mPossessedBy : (mPossessedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PossessedBy")); }
			ScriptFunction UpdateControllerOnPossess() { return mUpdateControllerOnPossess ? mUpdateControllerOnPossess : (mUpdateControllerOnPossess = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.UpdateControllerOnPossess")); }
			ScriptFunction UnPossessed() { return mUnPossessed ? mUnPossessed : (mUnPossessed = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.UnPossessed")); }
			ScriptFunction DropToGround() { return mDropToGround ? mDropToGround : (mDropToGround = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.DropToGround")); }
			ScriptFunction RecommendLongRangedAttack() { return mRecommendLongRangedAttack ? mRecommendLongRangedAttack : (mRecommendLongRangedAttack = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.RecommendLongRangedAttack")); }
			ScriptFunction RangedAttackTime() { return mRangedAttackTime ? mRangedAttackTime : (mRangedAttackTime = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.RangedAttackTime")); }
			ScriptFunction SetWalking() { return mSetWalking ? mSetWalking : (mSetWalking = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetWalking")); }
			ScriptFunction CanSplash() { return mCanSplash ? mCanSplash : (mCanSplash = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CanSplash")); }
			ScriptFunction EndClimbLadder() { return mEndClimbLadder ? mEndClimbLadder : (mEndClimbLadder = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.EndClimbLadder")); }
			ScriptFunction ClimbLadder() { return mClimbLadder ? mClimbLadder : (mClimbLadder = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClimbLadder")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.DisplayDebug")); }
			ScriptFunction IsFirstPerson() { return mIsFirstPerson ? mIsFirstPerson : (mIsFirstPerson = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsFirstPerson")); }
			ScriptFunction ProcessViewRotation() { return mProcessViewRotation ? mProcessViewRotation : (mProcessViewRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ProcessViewRotation")); }
			ScriptFunction GetActorEyesViewPoint() { return mGetActorEyesViewPoint ? mGetActorEyesViewPoint : (mGetActorEyesViewPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetActorEyesViewPoint")); }
			ScriptFunction GetPawnViewLocation() { return mGetPawnViewLocation ? mGetPawnViewLocation : (mGetPawnViewLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetPawnViewLocation")); }
			ScriptFunction GetWeaponStartTraceLocation() { return mGetWeaponStartTraceLocation ? mGetWeaponStartTraceLocation : (mGetWeaponStartTraceLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetWeaponStartTraceLocation")); }
			ScriptFunction InFreeCam() { return mInFreeCam ? mInFreeCam : (mInFreeCam = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.InFreeCam")); }
			ScriptFunction GetAdjustedAimFor() { return mGetAdjustedAimFor ? mGetAdjustedAimFor : (mGetAdjustedAimFor = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetAdjustedAimFor")); }
			ScriptFunction SetViewRotation() { return mSetViewRotation ? mSetViewRotation : (mSetViewRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetViewRotation")); }
			ScriptFunction SetMoveTarget() { return mSetMoveTarget ? mSetMoveTarget : (mSetMoveTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetMoveTarget")); }
			ScriptFunction HandlePickup() { return mHandlePickup ? mHandlePickup : (mHandlePickup = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.HandlePickup")); }
			ScriptFunction ClientMessage() { return mClientMessage ? mClientMessage : (mClientMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClientMessage")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FellOutOfWorld")); }
			ScriptFunction OutsideWorldBounds() { return mOutsideWorldBounds ? mOutsideWorldBounds : (mOutsideWorldBounds = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.OutsideWorldBounds")); }
			ScriptFunction UnCrouch() { return mUnCrouch ? mUnCrouch : (mUnCrouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.UnCrouch")); }
			ScriptFunction ShouldCrouch() { return mShouldCrouch ? mShouldCrouch : (mShouldCrouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ShouldCrouch")); }
			ScriptFunction EndCrouch() { return mEndCrouch ? mEndCrouch : (mEndCrouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.EndCrouch")); }
			ScriptFunction StartCrouch() { return mStartCrouch ? mStartCrouch : (mStartCrouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.StartCrouch")); }
			ScriptFunction HandleMomentum() { return mHandleMomentum ? mHandleMomentum : (mHandleMomentum = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.HandleMomentum")); }
			ScriptFunction AddVelocity() { return mAddVelocity ? mAddVelocity : (mAddVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.AddVelocity")); }
			ScriptFunction KilledBy() { return mKilledBy ? mKilledBy : (mKilledBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.KilledBy")); }
			ScriptFunction TakeFallingDamage() { return mTakeFallingDamage ? mTakeFallingDamage : (mTakeFallingDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TakeFallingDamage")); }
			ScriptFunction Restart() { return mRestart ? mRestart : (mRestart = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Restart")); }
			ScriptFunction ClientRestart() { return mClientRestart ? mClientRestart : (mClientRestart = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClientRestart")); }
			ScriptFunction ClientSetRotation() { return mClientSetRotation ? mClientSetRotation : (mClientSetRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClientSetRotation")); }
			ScriptFunction UpdatePawnRotation() { return mUpdatePawnRotation ? mUpdatePawnRotation : (mUpdatePawnRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.UpdatePawnRotation")); }
			ScriptFunction FaceRotation() { return mFaceRotation ? mFaceRotation : (mFaceRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.FaceRotation")); }
			ScriptFunction EncroachingOn() { return mEncroachingOn ? mEncroachingOn : (mEncroachingOn = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.EncroachingOn")); }
			ScriptFunction EncroachedBy() { return mEncroachedBy ? mEncroachedBy : (mEncroachedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.EncroachedBy")); }
			ScriptFunction gibbedBy() { return mgibbedBy ? mgibbedBy : (mgibbedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.gibbedBy")); }
			ScriptFunction JumpOffPawn() { return mJumpOffPawn ? mJumpOffPawn : (mJumpOffPawn = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.JumpOffPawn")); }
			ScriptFunction StuckOnPawn() { return mStuckOnPawn ? mStuckOnPawn : (mStuckOnPawn = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.StuckOnPawn")); }
			ScriptFunction BaseChange() { return mBaseChange ? mBaseChange : (mBaseChange = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.BaseChange")); }
			ScriptFunction CanBeBaseForPawn() { return mCanBeBaseForPawn ? mCanBeBaseForPawn : (mCanBeBaseForPawn = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CanBeBaseForPawn")); }
			ScriptFunction CrushedBy() { return mCrushedBy ? mCrushedBy : (mCrushedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CrushedBy")); }
			ScriptFunction DetachFromController() { return mDetachFromController ? mDetachFromController : (mDetachFromController = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.DetachFromController")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Destroyed")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PreBeginPlay")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PostBeginPlay")); }
			ScriptFunction SpawnDefaultController() { return mSpawnDefaultController ? mSpawnDefaultController : (mSpawnDefaultController = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SpawnDefaultController")); }
			ScriptFunction ReceivedNewEvent() { return mReceivedNewEvent ? mReceivedNewEvent : (mReceivedNewEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ReceivedNewEvent")); }
			ScriptFunction OnAssignController() { return mOnAssignController ? mOnAssignController : (mOnAssignController = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.OnAssignController")); }
			ScriptFunction OnGiveInventory() { return mOnGiveInventory ? mOnGiveInventory : (mOnGiveInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.OnGiveInventory")); }
			ScriptFunction Gasp() { return mGasp ? mGasp : (mGasp = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Gasp")); }
			ScriptFunction SetMovementPhysics() { return mSetMovementPhysics ? mSetMovementPhysics : (mSetMovementPhysics = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetMovementPhysics")); }
			ScriptFunction AdjustDamage() { return mAdjustDamage ? mAdjustDamage : (mAdjustDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.AdjustDamage")); }
			ScriptFunction HealDamage() { return mHealDamage ? mHealDamage : (mHealDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.HealDamage")); }
			ScriptFunction PruneDamagedBoneList() { return mPruneDamagedBoneList ? mPruneDamagedBoneList : (mPruneDamagedBoneList = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PruneDamagedBoneList")); }
			ScriptFunction TakeRadiusDamageOnBones() { return mTakeRadiusDamageOnBones ? mTakeRadiusDamageOnBones : (mTakeRadiusDamageOnBones = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TakeRadiusDamageOnBones")); }
			ScriptFunction NotifyTakeHit() { return mNotifyTakeHit ? mNotifyTakeHit : (mNotifyTakeHit = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.NotifyTakeHit")); }
			ScriptFunction SetKillInstigator() { return mSetKillInstigator ? mSetKillInstigator : (mSetKillInstigator = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetKillInstigator")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TakeDamage")); }
			ScriptFunction GetTeamNum() { return mGetTeamNum ? mGetTeamNum : (mGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetTeamNum")); }
			ScriptFunction GetTeam() { return mGetTeam ? mGetTeam : (mGetTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetTeam")); }
			ScriptFunction IsSameTeam() { return mIsSameTeam ? mIsSameTeam : (mIsSameTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsSameTeam")); }
			ScriptFunction ThrowWeaponOnDeath() { return mThrowWeaponOnDeath ? mThrowWeaponOnDeath : (mThrowWeaponOnDeath = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ThrowWeaponOnDeath")); }
			ScriptFunction DelayTriggerDeath() { return mDelayTriggerDeath ? mDelayTriggerDeath : (mDelayTriggerDeath = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.DelayTriggerDeath")); }
			ScriptFunction Falling() { return mFalling ? mFalling : (mFalling = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Falling")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Landed")); }
			ScriptFunction TickSpecial() { return mTickSpecial ? mTickSpecial : (mTickSpecial = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TickSpecial")); }
			ScriptFunction HeadVolumeChange() { return mHeadVolumeChange ? mHeadVolumeChange : (mHeadVolumeChange = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.HeadVolumeChange")); }
			ScriptFunction BreathTimer() { return mBreathTimer ? mBreathTimer : (mBreathTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.BreathTimer")); }
			ScriptFunction TakeDrowningDamage() { return mTakeDrowningDamage ? mTakeDrowningDamage : (mTakeDrowningDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TakeDrowningDamage")); }
			ScriptFunction PlayDyingSound() { return mPlayDyingSound ? mPlayDyingSound : (mPlayDyingSound = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayDyingSound")); }
			ScriptFunction PlayHit() { return mPlayHit ? mPlayHit : (mPlayHit = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayHit")); }
			ScriptFunction TurnOff() { return mTurnOff ? mTurnOff : (mTurnOff = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TurnOff")); }
			ScriptFunction SetDyingPhysics() { return mSetDyingPhysics ? mSetDyingPhysics : (mSetDyingPhysics = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetDyingPhysics")); }
			ScriptFunction PlayDying() { return mPlayDying ? mPlayDying : (mPlayDying = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayDying")); }
			ScriptFunction TornOff() { return mTornOff ? mTornOff : (mTornOff = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TornOff")); }
			ScriptFunction PlayFootStepSound() { return mPlayFootStepSound ? mPlayFootStepSound : (mPlayFootStepSound = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayFootStepSound")); }
			ScriptFunction PlayLanded() { return mPlayLanded ? mPlayLanded : (mPlayLanded = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayLanded")); }
			ScriptFunction GetVehicleBase() { return mGetVehicleBase ? mGetVehicleBase : (mGetVehicleBase = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetVehicleBase")); }
			ScriptFunction Suicide() { return mSuicide ? mSuicide : (mSuicide = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Suicide")); }
			ScriptFunction StartDriving() { return mStartDriving ? mStartDriving : (mStartDriving = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.StartDriving")); }
			ScriptFunction StopDriving() { return mStopDriving ? mStopDriving : (mStopDriving = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.StopDriving")); }
			ScriptFunction AddDefaultInventory() { return mAddDefaultInventory ? mAddDefaultInventory : (mAddDefaultInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.AddDefaultInventory")); }
			ScriptFunction DrawHUD() { return mDrawHUD ? mDrawHUD : (mDrawHUD = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.DrawHUD")); }
			ScriptFunction ThrowActiveWeapon() { return mThrowActiveWeapon ? mThrowActiveWeapon : (mThrowActiveWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ThrowActiveWeapon")); }
			ScriptFunction TossInventory() { return mTossInventory ? mTossInventory : (mTossInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.TossInventory")); }
			ScriptFunction SetActiveWeapon() { return mSetActiveWeapon ? mSetActiveWeapon : (mSetActiveWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetActiveWeapon")); }
			ScriptFunction PlayWeaponSwitch() { return mPlayWeaponSwitch ? mPlayWeaponSwitch : (mPlayWeaponSwitch = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.PlayWeaponSwitch")); }
			ScriptFunction GetCollisionRadius() { return mGetCollisionRadius ? mGetCollisionRadius : (mGetCollisionRadius = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetCollisionRadius")); }
			ScriptFunction IsStationary() { return mIsStationary ? mIsStationary : (mIsStationary = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IsStationary")); }
			ScriptFunction SpawnedByKismet() { return mSpawnedByKismet ? mSpawnedByKismet : (mSpawnedByKismet = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SpawnedByKismet")); }
			ScriptFunction DoKismetAttachment() { return mDoKismetAttachment ? mDoKismetAttachment : (mDoKismetAttachment = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.DoKismetAttachment")); }
			ScriptFunction GetDamageScaling() { return mGetDamageScaling ? mGetDamageScaling : (mGetDamageScaling = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.GetDamageScaling")); }
			ScriptFunction OnSetMaterial() { return mOnSetMaterial ? mOnSetMaterial : (mOnSetMaterial = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.OnSetMaterial")); }
			ScriptFunction OnTeleport() { return mOnTeleport ? mOnTeleport : (mOnTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.OnTeleport")); }
			ScriptFunction MessagePlayer() { return mMessagePlayer ? mMessagePlayer : (mMessagePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.MessagePlayer")); }
			ScriptFunction BecomeViewTarget() { return mBecomeViewTarget ? mBecomeViewTarget : (mBecomeViewTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.BecomeViewTarget")); }
			ScriptFunction SoakPause() { return mSoakPause ? mSoakPause : (mSoakPause = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SoakPause")); }
			ScriptFunction ClearConstraints() { return mClearConstraints ? mClearConstraints : (mClearConstraints = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClearConstraints")); }
			ScriptFunction AddPathConstraint() { return mAddPathConstraint ? mAddPathConstraint : (mAddPathConstraint = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.AddPathConstraint")); }
			ScriptFunction AddGoalEvaluator() { return mAddGoalEvaluator ? mAddGoalEvaluator : (mAddGoalEvaluator = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.AddGoalEvaluator")); }
			ScriptFunction CreatePathConstraint() { return mCreatePathConstraint ? mCreatePathConstraint : (mCreatePathConstraint = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CreatePathConstraint")); }
			ScriptFunction IncrementPathStep() { return mIncrementPathStep ? mIncrementPathStep : (mIncrementPathStep = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IncrementPathStep")); }
			ScriptFunction IncrementPathChild() { return mIncrementPathChild ? mIncrementPathChild : (mIncrementPathChild = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.IncrementPathChild")); }
			ScriptFunction DrawPathStep() { return mDrawPathStep ? mDrawPathStep : (mDrawPathStep = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.DrawPathStep")); }
			ScriptFunction ClearPathStep() { return mClearPathStep ? mClearPathStep : (mClearPathStep = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ClearPathStep")); }
			ScriptFunction ZeroMovementVariables() { return mZeroMovementVariables ? mZeroMovementVariables : (mZeroMovementVariables = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.ZeroMovementVariables")); }
			ScriptFunction SetCinematicMode() { return mSetCinematicMode ? mSetCinematicMode : (mSetCinematicMode = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetCinematicMode")); }
			ScriptFunction SetRootMotionInterpCurrentTime() { return mSetRootMotionInterpCurrentTime ? mSetRootMotionInterpCurrentTime : (mSetRootMotionInterpCurrentTime = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.SetRootMotionInterpCurrentTime")); }
			ScriptFunction Speak() { return mSpeak ? mSpeak : (mSpeak = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.Speak")); }
			ScriptFunction OnSetVelocity() { return mOnSetVelocity ? mOnSetVelocity : (mOnSetVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.OnSetVelocity")); }
			ScriptFunction CheckClotheslineDamage() { return mCheckClotheslineDamage ? mCheckClotheslineDamage : (mCheckClotheslineDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Pawn.CheckClotheslineDamage")); }
		}
	}
	enum EPathSearchType : ubyte
	{
		PST_Default = 0,
		PST_Breadth = 1,
		PST_NewBestPathTo = 2,
		PST_Constraint = 3,
		PST_MAX = 4,
	}
	struct ScalarParameterInterpStruct
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Pawn.ScalarParameterInterpStruct")); }
		@property final auto ref
		{
			float WarmupTime() { return *cast(float*)(cast(size_t)&this + 16); }
			float InterpTime() { return *cast(float*)(cast(size_t)&this + 12); }
			float ParameterValue() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct LastHitInfoStruct
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Pawn.LastHitInfoStruct")); }
		@property final
		{
			auto ref
			{
				ScriptClass Type() { return *cast(ScriptClass*)(cast(size_t)&this + 16); }
				Actor Causer() { return *cast(Actor*)(cast(size_t)&this + 12); }
				float Distance() { return *cast(float*)(cast(size_t)&this + 8); }
				float Amount() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool bDirectHit() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bDirectHit(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'Controller' has the same name as a defined type!
			int MaxPitchLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 664); }
			// WARNING: Property 'Weapon' has the same name as a defined type!
			InventoryManager InvManager() { return *cast(InventoryManager*)(cast(size_t)cast(void*)this + 980); }
			float EyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
			float BaseEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
			int Health() { return *cast(int*)(cast(size_t)cast(void*)this + 752); }
			Vector Floor() { return *cast(Vector*)(cast(size_t)cast(void*)this + 732); }
			float CrouchHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			float MaxStepHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
			float VehicleCheckRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 944); }
			float LastStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 888); }
			PhysicsVolume HeadVolume() { return *cast(PhysicsVolume*)(cast(size_t)cast(void*)this + 748); }
			float BreathTime() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
			float UnderWaterTime() { return *cast(float*)(cast(size_t)cast(void*)this + 764); }
			ScriptName WaterMovementState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 876); }
			ScriptName LandMovementState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 868); }
			float AccelRate() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
			Actor.EPhysics WalkingPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 536); }
			LadderVolume OnLadder() { return *cast(LadderVolume*)(cast(size_t)cast(void*)this + 864); }
			float OutofWaterZ() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
			NavigationPoint Anchor() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 612); }
			ScriptArray!(AnimNodeSlot) SlotNodes() { return *cast(ScriptArray!(AnimNodeSlot)*)(cast(size_t)cast(void*)this + 1028); }
			ScriptArray!(InterpGroup) InterpGroupList() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 1040); }
			ScriptArray!(Pawn.ScalarParameterInterpStruct) ScalarParameterInterpArray() { return *cast(ScriptArray!(Pawn.ScalarParameterInterpStruct)*)(cast(size_t)cast(void*)this + 1064); }
			Pawn.LastHitInfoStruct LastHitInfo() { return *cast(Pawn.LastHitInfoStruct*)(cast(size_t)cast(void*)this + 1124); }
			Vector RootMotionInterpCurveLastValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1112); }
			float RootMotionInterpCurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1108); }
			float RootMotionInterpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
			EngineTypes.RootMotionCurve RootMotionInterpCurve() { return *cast(EngineTypes.RootMotionCurve*)(cast(size_t)cast(void*)this + 1076); }
			MaterialInstanceConstant MIC_PawnHair() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1060); }
			MaterialInstanceConstant MIC_PawnMat() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1056); }
			int FailedLandingCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1024); }
			RB_BodyInstance PhysicsPushBody() { return *cast(RB_BodyInstance*)(cast(size_t)cast(void*)this + 1020); }
			int ShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1012); }
			Vector LastFiringFlashLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1000); }
			Vector FlashLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 988); }
			ScriptClass InventoryManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 976); }
			Rotator DesiredRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 964); }
			int AllowedYawError() { return *cast(int*)(cast(size_t)cast(void*)this + 960); }
			float ViewPitchMax() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
			float ViewPitchMin() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
			Controller LastHitBy() { return *cast(Controller*)(cast(size_t)cast(void*)this + 948); }
			float AlwaysRelevantDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 940); }
			Vehicle DrivenVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 936); }
			float RBPushStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
			float RBPushRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 928); }
			Vector TearOffMomentum() { return *cast(Vector*)(cast(size_t)cast(void*)this + 908); }
			ScriptClass HitDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 904); }
			Vector TakeHitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 892); }
			PlayerStart LastStartSpot() { return *cast(PlayerStart*)(cast(size_t)cast(void*)this + 884); }
			// WARNING: Property 'PlayerReplicationInfo' has the same name as a defined type!
			ScriptClass ControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 856); }
			ScriptString MenuName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 844); }
			float DamageScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 840); }
			float SoundDampening() { return *cast(float*)(cast(size_t)cast(void*)this + 836); }
			float noise2loudness() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			Pawn noise2other() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 828); }
			float noise2time() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			Vector noise2spot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 812); }
			float noise1loudness() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
			Pawn noise1other() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 804); }
			float noise1time() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
			Vector noise1spot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
			Vector RMVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 776); }
			float KismetDeathDelayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
			float LastPainTime() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
			int HealthMax() { return *cast(int*)(cast(size_t)cast(void*)this + 756); }
			float SplashTime() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
			float AIMaxFallSpeedFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
			float MaxFallSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			float CrouchedPct() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
			float MovementSpeedModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 708); }
			float WalkingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
			float AirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			float MaxOutOfWaterStepHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			float JumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			float LadderSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 680); }
			float AirSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
			float WaterSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
			float GroundSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
			float SpawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 660); }
			float SerpentineTime() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
			float SerpentineDist() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
			Vector SerpentineDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
			float NextPathRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			float DestinationOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float LastValidAnchorTime() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
			float FindAnchorFailedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			NavigationPoint LastAnchor() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 620); }
			int AnchorItem() { return *cast(int*)(cast(size_t)cast(void*)this + 616); }
			float MeleeRange() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float Buoyancy() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			float Mass() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
			float AvgPhysicsTime() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
			float PeripheralVision() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			float SightRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
			float Alertness() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
			float HearingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			float MaxDesiredSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float DesiredSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			PathGoalEvaluator PathGoalList() { return *cast(PathGoalEvaluator*)(cast(size_t)cast(void*)this + 568); }
			PathConstraint PathConstraintList() { return *cast(PathConstraint*)(cast(size_t)cast(void*)this + 564); }
			float NonPreferredVehiclePathMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			int FullHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
			float CrouchRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float UncrouchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			ubyte FiringMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 540); }
			ubyte FlashCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 539); }
			ubyte RemoteViewPitch() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 538); }
			Pawn.EPathSearchType PathSearchType() { return *cast(Pawn.EPathSearchType*)(cast(size_t)cast(void*)this + 537); }
			UObject.Pointer VfTable_IInterface_Speaker() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
			Actor LastViewer() { return *cast(Actor*)(cast(size_t)cast(void*)this + 524); }
			PlayerController LastRealViewer() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 520); }
			float NetRelevancyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			Pawn NextPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 512); }
			Vector PartialLedgeMoveDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
			float LedgeCheckThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float WalkableFloorZ() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float MaxJumpHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bIsWalking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4) != 0; }
		bool bIsWalking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4; } return val; }
		bool bForceRMVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x100000) != 0; }
		bool bForceRMVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x100000; } return val; }
		bool bRootMotionFromInterpCurve() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8000000) != 0; }
		bool bRootMotionFromInterpCurve(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8000000; } return val; }
		bool bIsCrouched() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10) != 0; }
		bool bIsCrouched(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10; } return val; }
		bool bForceMaxAccel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20000) != 0; }
		bool bForceMaxAccel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20000; } return val; }
		bool bUpAndOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2) != 0; }
		bool bUpAndOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2; } return val; }
		bool bDebugShowCameraLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10000000) != 0; }
		bool bDebugShowCameraLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10000000; } return val; }
		bool bNeedsBaseTickedFirst() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4000000) != 0; }
		bool bNeedsBaseTickedFirst(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4000000; } return val; }
		bool bUnlockWhenReached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2000000) != 0; }
		bool bUnlockWhenReached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2000000; } return val; }
		bool bLockDesiredRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1000000) != 0; }
		bool bLockDesiredRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1000000; } return val; }
		bool bDesiredRotationSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x800000) != 0; }
		bool bDesiredRotationSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x800000; } return val; }
		bool bPlayedDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x400000) != 0; }
		bool bPlayedDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x400000; } return val; }
		bool bForceRegularVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x200000) != 0; }
		bool bForceRegularVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x200000; } return val; }
		bool bReplicateHealthToAll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80000) != 0; }
		bool bReplicateHealthToAll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80000; } return val; }
		bool bLimitFallAccel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40000) != 0; }
		bool bLimitFallAccel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40000; } return val; }
		bool bRunPhysicsWithNoController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10000) != 0; }
		bool bRunPhysicsWithNoController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10000; } return val; }
		bool bPathfindsAsVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8000) != 0; }
		bool bPathfindsAsVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8000; } return val; }
		bool bModifyNavPointDest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4000) != 0; }
		bool bModifyNavPointDest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4000; } return val; }
		bool bModifyReachSpecCost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2000) != 0; }
		bool bModifyReachSpecCost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2000; } return val; }
		bool bNoWeaponFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1000) != 0; }
		bool bNoWeaponFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1000; } return val; }
		bool bCachedRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x800) != 0; }
		bool bCachedRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x800; } return val; }
		bool bStationary() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x400) != 0; }
		bool bStationary(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x400; } return val; }
		bool bRollToDesired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x200) != 0; }
		bool bRollToDesired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x200; } return val; }
		bool bDontPossess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x100) != 0; }
		bool bDontPossess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x100; } return val; }
		bool bMuffledHearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x80) != 0; }
		bool bMuffledHearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x80; } return val; }
		bool bLOSHearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x40) != 0; }
		bool bLOSHearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x40; } return val; }
		bool bAmbientCreature() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x20) != 0; }
		bool bAmbientCreature(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x20; } return val; }
		bool bCanPickupInventory() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x10) != 0; }
		bool bCanPickupInventory(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x10; } return val; }
		bool bDisplayPathErrors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x8) != 0; }
		bool bDisplayPathErrors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x8; } return val; }
		bool bCanCoverSlip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool bCanCoverSlip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool bCanLeap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool bCanLeap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool bCanSwatTurn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bCanSwatTurn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
		bool bCanClimbCeilings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80000000) != 0; }
		bool bCanClimbCeilings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80000000; } return val; }
		bool bCanClimbUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40000000) != 0; }
		bool bCanClimbUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40000000; } return val; }
		bool bCanMantle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20000000) != 0; }
		bool bCanMantle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20000000; } return val; }
		bool bForceKeepAnchor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10000000) != 0; }
		bool bForceKeepAnchor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10000000; } return val; }
		bool bForceFloorCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8000000) != 0; }
		bool bForceFloorCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8000000; } return val; }
		bool bPushesRigidBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4000000) != 0; }
		bool bPushesRigidBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4000000; } return val; }
		bool bDirectHitWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2000000) != 0; }
		bool bDirectHitWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2000000; } return val; }
		bool bSimGravityDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1000000) != 0; }
		bool bSimGravityDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1000000; } return val; }
		bool bCanBeBaseForPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x800000) != 0; }
		bool bCanBeBaseForPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x800000; } return val; }
		bool bCanWalkOffLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x400000) != 0; }
		bool bCanWalkOffLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x400000; } return val; }
		bool bIgnoreForces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x200000) != 0; }
		bool bIgnoreForces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x200000; } return val; }
		bool bSimulateGravity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x100000) != 0; }
		bool bSimulateGravity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x100000; } return val; }
		bool bPartiallyOverLedge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80000) != 0; }
		bool bPartiallyOverLedge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80000; } return val; }
		bool bAllowLedgeOverhang() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40000) != 0; }
		bool bAllowLedgeOverhang(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40000; } return val; }
		bool bStopAtLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20000) != 0; }
		bool bStopAtLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20000; } return val; }
		bool bAvoidLedges() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x10000) != 0; }
		bool bAvoidLedges(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x10000; } return val; }
		bool bCanStrafe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8000) != 0; }
		bool bCanStrafe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8000; } return val; }
		bool bCanClimbLadders() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x4000) != 0; }
		bool bCanClimbLadders(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x4000; } return val; }
		bool bCanFly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x2000) != 0; }
		bool bCanFly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x2000; } return val; }
		bool bCanSwim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1000) != 0; }
		bool bCanSwim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1000; } return val; }
		bool bCanWalk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x800) != 0; }
		bool bCanWalk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x800; } return val; }
		bool bCanJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x400) != 0; }
		bool bCanJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x400; } return val; }
		bool bJumpCapable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x200) != 0; }
		bool bJumpCapable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x200; } return val; }
		bool bReducedSpeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x100) != 0; }
		bool bReducedSpeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x100; } return val; }
		bool bCrawler() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x80) != 0; }
		bool bCrawler(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x80; } return val; }
		bool bCanCrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x40) != 0; }
		bool bCanCrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x40; } return val; }
		bool bTryToUncrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x20) != 0; }
		bool bTryToUncrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x20; } return val; }
		bool bWantsToCrouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x8) != 0; }
		bool bWantsToCrouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x8; } return val; }
		bool bScriptTickSpecial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 528) & 0x1) != 0; }
		bool bScriptTickSpecial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 528) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 528) &= ~0x1; } return val; }
	}
final:
	bool IsHumanControlled(Controller PawnController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = PawnController;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsHumanControlled, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsLocallyControlled(Controller PawnController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = PawnController;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLocallyControlled, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	bool StopFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFiring, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetBaseAimRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBaseAimRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
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
	ScriptName GetDefaultCameraMode(PlayerController RequestedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = RequestedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDefaultCameraMode, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	bool CanThrowWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanThrowWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetDesiredRotation(Rotator TargetDesiredRotation, bool InLockDesiredRotation, bool InUnlockWhenReached, float InterpolationTime, bool bResetRotationRate)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetDesiredRotation;
		*cast(bool*)&params[12] = InLockDesiredRotation;
		*cast(bool*)&params[16] = InUnlockWhenReached;
		*cast(float*)&params[20] = InterpolationTime;
		*cast(bool*)&params[24] = bResetRotationRate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDesiredRotation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool DoJump(bool bUpdating)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bUpdating;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoJump, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetRemoteViewPitch(int NewRemoteViewPitch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewRemoteViewPitch;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRemoteViewPitch, params.ptr, cast(void*)0);
	}
	bool CannotJumpNow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CannotJumpNow, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheckWaterJump(Vector* WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = *WallNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckWaterJump, params.ptr, cast(void*)0);
		*WallNormal = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool TouchingWaterVolume()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TouchingWaterVolume, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ReachedDestination(Actor Goal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedDestination, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SpecialMoveTo(NavigationPoint Start, NavigationPoint End, Actor Next)
	{
		ubyte params[16];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = Start;
		*cast(NavigationPoint*)&params[4] = End;
		*cast(Actor*)&params[8] = Next;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialMoveTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void SetScalarParameterInterp(Pawn.ScalarParameterInterpStruct* ScalarParameterInterp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn.ScalarParameterInterpStruct*)params.ptr = *ScalarParameterInterp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScalarParameterInterp, params.ptr, cast(void*)0);
		*ScalarParameterInterp = *cast(Pawn.ScalarParameterInterpStruct*)params.ptr;
	}
	bool CheatFly()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheatFly, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheatWalk()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheatWalk, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheatGhost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheatGhost, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsPlayerPawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayerPawn, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Inventory FindInventoryType(ScriptClass DesiredClass, bool bAllowSubclass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		*cast(bool*)&params[4] = bAllowSubclass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindInventoryType, params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	Inventory CreateInventory(ScriptClass NewInvClass, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewInvClass;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateInventory, params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	bool InGodMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InGodMode, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ValidAnchor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidAnchor, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	NavigationPoint GetBestAnchor(Actor TestActor, Vector TestLocation, bool bStartPoint, bool bOnlyCheckVisible, float* out_Dist)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		*cast(Vector*)&params[4] = TestLocation;
		*cast(bool*)&params[16] = bStartPoint;
		*cast(bool*)&params[20] = bOnlyCheckVisible;
		*cast(float*)&params[24] = *out_Dist;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestAnchor, params.ptr, cast(void*)0);
		*out_Dist = *cast(float*)&params[24];
		return *cast(NavigationPoint*)&params[28];
	}
	PathGoalEvaluator CreatePathGoalEvaluator(ScriptClass GoalEvalClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GoalEvalClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreatePathGoalEvaluator, params.ptr, cast(void*)0);
		return *cast(PathGoalEvaluator*)&params[4];
	}
	float GetCollisionHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionHeight, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Vector GetCollisionExtent()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionExtent, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool CanGrabLadder()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanGrabLadder, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool LineOfSightTo(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.LineOfSightTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PickWallAdjust(Vector WallHitNormal, Actor HitActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = WallHitNormal;
		*cast(Actor*)&params[12] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickWallAdjust, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void LockDesiredRotation(bool Lock, bool InUnlockWhenReached)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = Lock;
		*cast(bool*)&params[4] = InUnlockWhenReached;
		(cast(ScriptObject)this).ProcessEvent(Functions.LockDesiredRotation, params.ptr, cast(void*)0);
	}
	void ResetDesiredRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetDesiredRotation, cast(void*)0, cast(void*)0);
	}
	void CheckDesiredRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDesiredRotation, cast(void*)0, cast(void*)0);
	}
	bool IsDesiredRotationInUse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDesiredRotationInUse, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsDesiredRotationLocked()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDesiredRotationLocked, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	void CacheAnimNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CacheAnimNodes, cast(void*)0, cast(void*)0);
	}
	void ClearAnimNodes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAnimNodes, cast(void*)0, cast(void*)0);
	}
	void UpdateAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateAnimSetList, cast(void*)0, cast(void*)0);
	}
	void BuildScriptAnimSetList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BuildScriptAnimSetList, cast(void*)0, cast(void*)0);
	}
	void AddAnimSets(ScriptArray!(AnimSet)* CustomAnimSets)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(AnimSet)*)params.ptr = *CustomAnimSets;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAnimSets, params.ptr, cast(void*)0);
		*CustomAnimSets = *cast(ScriptArray!(AnimSet)*)params.ptr;
	}
	void AnimSetListUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AnimSetListUpdated, cast(void*)0, cast(void*)0);
	}
	bool RestoreAnimSetsToDefault()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestoreAnimSetsToDefault, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginAnimControl, params.ptr, cast(void*)0);
	}
	void MAT_BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_BeginAnimControl, params.ptr, cast(void*)0);
	}
	void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishAnimControl, params.ptr, cast(void*)0);
	}
	void MAT_FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_FinishAnimControl, params.ptr, cast(void*)0);
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
	void MAT_SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
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
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_SetAnimPosition, params.ptr, cast(void*)0);
	}
	void MAT_SetAnimWeights(ScriptArray!(Actor.AnimSlotInfo) SlotInfos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Actor.AnimSlotInfo)*)params.ptr = SlotInfos;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_SetAnimWeights, params.ptr, cast(void*)0);
	}
	void MAT_SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_SetMorphWeight, params.ptr, cast(void*)0);
	}
	void MAT_SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_SetSkelControlScale, params.ptr, cast(void*)0);
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
	void MAT_BeginAIGroup(Vector StartLoc, Rotator StartRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLoc;
		*cast(Rotator*)&params[12] = StartRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_BeginAIGroup, params.ptr, cast(void*)0);
	}
	void MAT_FinishAIGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MAT_FinishAIGroup, cast(void*)0, cast(void*)0);
	}
	void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopActorFaceFXAnim, cast(void*)0, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetFaceFXAudioComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFaceFXAudioComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
	}
	bool IsActorPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsActorPlayingFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanActorPlayFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanActorPlayFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnPlayFaceFXAnim(SeqAct_PlayFaceFXAnim inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayFaceFXAnim*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayFaceFXAnim, params.ptr, cast(void*)0);
	}
	void FaceFXAudioFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceFXAudioFinished, params.ptr, cast(void*)0);
	}
	FaceFXAsset GetActorFaceFXAsset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorFaceFXAsset, params.ptr, cast(void*)0);
		return *cast(FaceFXAsset*)params.ptr;
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
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	bool IsAliveAndWell()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAliveAndWell, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector AdjustDestination(Actor GoalActor, Vector Dest)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = GoalActor;
		*cast(Vector*)&params[4] = Dest;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustDestination, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	bool SuggestJumpVelocity(Vector* JumpVelocity, Vector Destination, Vector Start, bool bRequireFallLanding)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = *JumpVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(bool*)&params[36] = bRequireFallLanding;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestJumpVelocity, params.ptr, cast(void*)0);
		*JumpVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[40];
	}
	float GetFallDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFallDuration, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsValidEnemyTargetFor(PlayerReplicationInfo PRI, bool bNoPRIisEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(bool*)&params[4] = bNoPRIisEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidEnemyTargetFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsInvisible()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInvisible, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetAnchor(NavigationPoint NewAnchor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = NewAnchor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnchor, params.ptr, cast(void*)0);
	}
	bool ReachedPoint(Vector Point, Actor NewAnchor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		*cast(Actor*)&params[12] = NewAnchor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ForceCrouch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceCrouch, cast(void*)0, cast(void*)0);
	}
	void SetPushesRigidBodies(bool NewPush)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewPush;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPushesRigidBodies, params.ptr, cast(void*)0);
	}
	bool ReachedDesiredRotation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedDesiredRotation, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundingCylinder, params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	bool InitRagdoll()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitRagdoll, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool TermRagdoll()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.TermRagdoll, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SpecialMoveThruEdge(Pylon.ENavMeshEdgeType Type, int Dir, Vector MoveStart, Vector MoveDest, Actor RelActor, int RelItem)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Pylon.ENavMeshEdgeType*)params.ptr = Type;
		*cast(int*)&params[4] = Dir;
		*cast(Vector*)&params[8] = MoveStart;
		*cast(Vector*)&params[20] = MoveDest;
		*cast(Actor*)&params[32] = RelActor;
		*cast(int*)&params[36] = RelItem;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialMoveThruEdge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	void SetBaseEyeheight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBaseEyeheight, cast(void*)0, cast(void*)0);
	}
	void PlayerChangedTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerChangedTeam, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFire, params.ptr, cast(void*)0);
	}
	ubyte GetWeaponFiringMode(Weapon InWeapon)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponFiringMode, params.ptr, cast(void*)0);
		return params[4];
	}
	void SetFiringMode(Weapon InWeapon, ubyte InFiringMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFiringMode, params.ptr, cast(void*)0);
	}
	void FiringModeUpdated(Weapon InWeapon, ubyte InFiringMode, bool bViaReplication)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.FiringModeUpdated, params.ptr, cast(void*)0);
	}
	void IncrementFlashCount(Weapon InWeapon, ubyte InFiringMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFlashCount, params.ptr, cast(void*)0);
	}
	void FlashCountUpdated(Weapon InWeapon, ubyte InFlashCount, bool bViaReplication)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFlashCount;
		*cast(bool*)&params[8] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlashCountUpdated, params.ptr, cast(void*)0);
	}
	void ClearFlashCount(Weapon InWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashCount, params.ptr, cast(void*)0);
	}
	void SetFlashLocation(Weapon InWeapon, ubyte InFiringMode, Vector NewLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		params[4] = InFiringMode;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlashLocation, params.ptr, cast(void*)0);
	}
	void ClearFlashLocation(Weapon InWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFlashLocation, params.ptr, cast(void*)0);
	}
	void FlashLocationUpdated(Weapon InWeapon, Vector InFlashLocation, bool bViaReplication)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = InFlashLocation;
		*cast(bool*)&params[16] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlashLocationUpdated, params.ptr, cast(void*)0);
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
	void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(Functions.WeaponStoppedFiring, params.ptr, cast(void*)0);
	}
	bool BotFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotFire, params.ptr, cast(void*)0);
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
	bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.TooCloseToAttack, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FireOnRelease()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireOnRelease, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasRangedAttack, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsFiring()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFiring, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool NeedToTurn(Vector targ)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = targ;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedToTurn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayTeleportEffect, params.ptr, cast(void*)0);
	}
	void NotifyTeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTeamChanged, cast(void*)0, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.PossessedBy, params.ptr, cast(void*)0);
	}
	void UpdateControllerOnPossess(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateControllerOnPossess, params.ptr, cast(void*)0);
	}
	void UnPossessed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnPossessed, cast(void*)0, cast(void*)0);
	}
	void DropToGround()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DropToGround, cast(void*)0, cast(void*)0);
	}
	bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecommendLongRangedAttack, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float RangedAttackTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RangedAttackTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetWalking(bool bNewIsWalking)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewIsWalking;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWalking, params.ptr, cast(void*)0);
	}
	bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSplash, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void EndClimbLadder(LadderVolume OldLadder)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LadderVolume*)params.ptr = OldLadder;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndClimbLadder, params.ptr, cast(void*)0);
	}
	void ClimbLadder(LadderVolume L)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LadderVolume*)params.ptr = L;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClimbLadder, params.ptr, cast(void*)0);
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
	bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFirstPerson, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnViewLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetWeaponStartTraceLocation(Weapon CurrentWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Weapon*)params.ptr = CurrentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponStartTraceLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	bool InFreeCam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InFreeCam, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	void SetViewRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewRotation, params.ptr, cast(void*)0);
	}
	void SetMoveTarget(Actor NewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMoveTarget, params.ptr, cast(void*)0);
	}
	void HandlePickup(Inventory Inv)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePickup, params.ptr, cast(void*)0);
	}
	void ClientMessage(ScriptString S, ScriptName Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(ScriptName*)&params[12] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientMessage, params.ptr, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	void OutsideWorldBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OutsideWorldBounds, cast(void*)0, cast(void*)0);
	}
	void UnCrouch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UnCrouch, cast(void*)0, cast(void*)0);
	}
	void ShouldCrouch(bool bCrouch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bCrouch;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldCrouch, params.ptr, cast(void*)0);
	}
	void EndCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndCrouch, params.ptr, cast(void*)0);
	}
	void StartCrouch(float HeightAdjust)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = HeightAdjust;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartCrouch, params.ptr, cast(void*)0);
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
	void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[28] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVelocity, params.ptr, cast(void*)0);
	}
	void KilledBy(Pawn EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.KilledBy, params.ptr, cast(void*)0);
	}
	void TakeFallingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFallingDamage, cast(void*)0, cast(void*)0);
	}
	void Restart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Restart, cast(void*)0, cast(void*)0);
	}
	void ClientRestart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRestart, cast(void*)0, cast(void*)0);
	}
	void ClientSetRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetRotation, params.ptr, cast(void*)0);
	}
	void UpdatePawnRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePawnRotation, params.ptr, cast(void*)0);
	}
	void FaceRotation(Rotator NewRotation, float DeltaTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		*cast(float*)&params[12] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.FaceRotation, params.ptr, cast(void*)0);
	}
	bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachingOn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachedBy, params.ptr, cast(void*)0);
	}
	void gibbedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.gibbedBy, params.ptr, cast(void*)0);
	}
	void JumpOffPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.JumpOffPawn, cast(void*)0, cast(void*)0);
	}
	void StuckOnPawn(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.StuckOnPawn, params.ptr, cast(void*)0);
	}
	void BaseChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BaseChange, cast(void*)0, cast(void*)0);
	}
	bool CanBeBaseForPawn(Pawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBeBaseForPawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CrushedBy(Pawn OtherPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = OtherPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.CrushedBy, params.ptr, cast(void*)0);
	}
	void DetachFromController(bool bDestroyController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyController;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachFromController, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SpawnDefaultController()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnDefaultController, cast(void*)0, cast(void*)0);
	}
	void ReceivedNewEvent(SequenceEvent Evt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SequenceEvent*)params.ptr = Evt;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedNewEvent, params.ptr, cast(void*)0);
	}
	void OnAssignController(SeqAct_AssignController inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AssignController*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAssignController, params.ptr, cast(void*)0);
	}
	void OnGiveInventory(SeqAct_GiveInventory inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_GiveInventory*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGiveInventory, params.ptr, cast(void*)0);
	}
	void Gasp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Gasp, cast(void*)0, cast(void*)0);
	}
	void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovementPhysics, cast(void*)0, cast(void*)0);
	}
	void AdjustDamage(int* InDamage, Vector* Momentum, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = *InDamage;
		*cast(Vector*)&params[4] = *Momentum;
		*cast(Controller*)&params[16] = InstigatedBy;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustDamage, params.ptr, cast(void*)0);
		*InDamage = *cast(int*)params.ptr;
		*Momentum = *cast(Vector*)&params[4];
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
	void PruneDamagedBoneList(ScriptArray!(ScriptName)* Bones)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = *Bones;
		(cast(ScriptObject)this).ProcessEvent(Functions.PruneDamagedBoneList, params.ptr, cast(void*)0);
		*Bones = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	bool TakeRadiusDamageOnBones(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, ScriptArray!(ScriptName) Bones)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(ScriptArray!(ScriptName)*)&params[40] = Bones;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamageOnBones, params.ptr, cast(void*)0);
		return *cast(bool*)&params[52];
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
	Controller SetKillInstigator(Controller InstigatedBy, ScriptClass pDamageType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(ScriptClass*)&params[4] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetKillInstigator, params.ptr, cast(void*)0);
		return *cast(Controller*)&params[8];
	}
	void TakeDamage(int Damage, Controller InstigatedBy, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
	TeamInfo GetTeam()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeam, params.ptr, cast(void*)0);
		return *cast(TeamInfo*)params.ptr;
	}
	bool IsSameTeam(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSameTeam, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ThrowWeaponOnDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrowWeaponOnDeath, cast(void*)0, cast(void*)0);
	}
	void DelayTriggerDeath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayTriggerDeath, cast(void*)0, cast(void*)0);
	}
	void Falling()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Falling, cast(void*)0, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	void TickSpecial(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickSpecial, params.ptr, cast(void*)0);
	}
	void HeadVolumeChange(PhysicsVolume newHeadVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = newHeadVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.HeadVolumeChange, params.ptr, cast(void*)0);
	}
	void BreathTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BreathTimer, cast(void*)0, cast(void*)0);
	}
	void TakeDrowningDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDrowningDamage, cast(void*)0, cast(void*)0);
	}
	void PlayDyingSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDyingSound, cast(void*)0, cast(void*)0);
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
	void TurnOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurnOff, cast(void*)0, cast(void*)0);
	}
	void SetDyingPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDyingPhysics, cast(void*)0, cast(void*)0);
	}
	void PlayDying(ScriptClass pDamageType, Vector HitLoc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = pDamageType;
		*cast(Vector*)&params[4] = HitLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDying, params.ptr, cast(void*)0);
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TornOff, cast(void*)0, cast(void*)0);
	}
	void PlayFootStepSound(int FootDown)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFootStepSound, params.ptr, cast(void*)0);
	}
	void PlayLanded(float ImpactVel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ImpactVel;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayLanded, params.ptr, cast(void*)0);
	}
	Vehicle GetVehicleBase()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVehicleBase, params.ptr, cast(void*)0);
		return *cast(Vehicle*)params.ptr;
	}
	void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Suicide, cast(void*)0, cast(void*)0);
	}
	void StartDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartDriving, params.ptr, cast(void*)0);
	}
	void StopDriving(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopDriving, params.ptr, cast(void*)0);
	}
	void AddDefaultInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDefaultInventory, cast(void*)0, cast(void*)0);
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, params.ptr, cast(void*)0);
	}
	void ThrowActiveWeapon(bool bDestroyWeap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyWeap;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrowActiveWeapon, params.ptr, cast(void*)0);
	}
	void TossInventory(Inventory Inv, Vector ForceVelocity)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		*cast(Vector*)&params[4] = ForceVelocity;
		(cast(ScriptObject)this).ProcessEvent(Functions.TossInventory, params.ptr, cast(void*)0);
	}
	void SetActiveWeapon(Weapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveWeapon, params.ptr, cast(void*)0);
	}
	void PlayWeaponSwitch(Weapon OldWeapon, Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = OldWeapon;
		*cast(Weapon*)&params[4] = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponSwitch, params.ptr, cast(void*)0);
	}
	float GetCollisionRadius()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollisionRadius, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsStationary()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsStationary, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnedByKismet, cast(void*)0, cast(void*)0);
	}
	void DoKismetAttachment(Actor pAttachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = pAttachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoKismetAttachment, params.ptr, cast(void*)0);
	}
	float GetDamageScaling()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamageScaling, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void OnSetMaterial(SeqAct_SetMaterial Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMaterial*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetMaterial, params.ptr, cast(void*)0);
	}
	void OnTeleport(SeqAct_Teleport Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTeleport, params.ptr, cast(void*)0);
	}
	void MessagePlayer(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.MessagePlayer, params.ptr, cast(void*)0);
	}
	void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.BecomeViewTarget, params.ptr, cast(void*)0);
	}
	void SoakPause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SoakPause, cast(void*)0, cast(void*)0);
	}
	void ClearConstraints()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearConstraints, cast(void*)0, cast(void*)0);
	}
	void AddPathConstraint(PathConstraint Constraint)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PathConstraint*)params.ptr = Constraint;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPathConstraint, params.ptr, cast(void*)0);
	}
	void AddGoalEvaluator(PathGoalEvaluator Evaluator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PathGoalEvaluator*)params.ptr = Evaluator;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddGoalEvaluator, params.ptr, cast(void*)0);
	}
	PathConstraint CreatePathConstraint(ScriptClass ConstraintClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ConstraintClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreatePathConstraint, params.ptr, cast(void*)0);
		return *cast(PathConstraint*)&params[4];
	}
	void IncrementPathStep(int Cnt, Canvas C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Cnt;
		*cast(Canvas*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementPathStep, params.ptr, cast(void*)0);
	}
	void IncrementPathChild(int Cnt, Canvas C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Cnt;
		*cast(Canvas*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementPathChild, params.ptr, cast(void*)0);
	}
	void DrawPathStep(Canvas C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawPathStep, params.ptr, cast(void*)0);
	}
	void ClearPathStep()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPathStep, cast(void*)0, cast(void*)0);
	}
	void ZeroMovementVariables()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ZeroMovementVariables, cast(void*)0, cast(void*)0);
	}
	void SetCinematicMode(bool bInCinematicMode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInCinematicMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCinematicMode, params.ptr, cast(void*)0);
	}
	void SetRootMotionInterpCurrentTime(float inTime, float DeltaTime, bool bUpdateSkelPose)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = inTime;
		*cast(float*)&params[4] = DeltaTime;
		*cast(bool*)&params[8] = bUpdateSkelPose;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRootMotionInterpCurrentTime, params.ptr, cast(void*)0);
	}
	void Speak(SoundCue Cue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Cue;
		(cast(ScriptObject)this).ProcessEvent(Functions.Speak, params.ptr, cast(void*)0);
	}
	void OnSetVelocity(SeqAct_SetVelocity Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetVelocity*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetVelocity, params.ptr, cast(void*)0);
	}
	bool CheckClotheslineDamage(Pawn PawnHittingMe)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = PawnHittingMe;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckClotheslineDamage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
