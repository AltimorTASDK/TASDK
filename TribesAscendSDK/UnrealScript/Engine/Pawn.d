module UnrealScript.Engine.Pawn;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Pawn")); }
	private static __gshared Pawn mDefaultProperties;
	@property final static Pawn DefaultProperties() { mixin(MGDPC("Pawn", "Pawn Engine.Default__Pawn")); }
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
			ScriptFunction IsHumanControlled() { mixin(MGF("mIsHumanControlled", "Function Engine.Pawn.IsHumanControlled")); }
			ScriptFunction IsLocallyControlled() { mixin(MGF("mIsLocallyControlled", "Function Engine.Pawn.IsLocallyControlled")); }
			ScriptFunction PlayActorFaceFXAnim() { mixin(MGF("mPlayActorFaceFXAnim", "Function Engine.Pawn.PlayActorFaceFXAnim")); }
			ScriptFunction StopFiring() { mixin(MGF("mStopFiring", "Function Engine.Pawn.StopFiring")); }
			ScriptFunction GetBaseAimRotation() { mixin(MGF("mGetBaseAimRotation", "Function Engine.Pawn.GetBaseAimRotation")); }
			ScriptFunction GetHumanReadableName() { mixin(MGF("mGetHumanReadableName", "Function Engine.Pawn.GetHumanReadableName")); }
			ScriptFunction Died() { mixin(MGF("mDied", "Function Engine.Pawn.Died")); }
			ScriptFunction GetDefaultCameraMode() { mixin(MGF("mGetDefaultCameraMode", "Function Engine.Pawn.GetDefaultCameraMode")); }
			ScriptFunction CanThrowWeapon() { mixin(MGF("mCanThrowWeapon", "Function Engine.Pawn.CanThrowWeapon")); }
			ScriptFunction SetDesiredRotation() { mixin(MGF("mSetDesiredRotation", "Function Engine.Pawn.SetDesiredRotation")); }
			ScriptFunction DoJump() { mixin(MGF("mDoJump", "Function Engine.Pawn.DoJump")); }
			ScriptFunction SetRemoteViewPitch() { mixin(MGF("mSetRemoteViewPitch", "Function Engine.Pawn.SetRemoteViewPitch")); }
			ScriptFunction CannotJumpNow() { mixin(MGF("mCannotJumpNow", "Function Engine.Pawn.CannotJumpNow")); }
			ScriptFunction CheckWaterJump() { mixin(MGF("mCheckWaterJump", "Function Engine.Pawn.CheckWaterJump")); }
			ScriptFunction TouchingWaterVolume() { mixin(MGF("mTouchingWaterVolume", "Function Engine.Pawn.TouchingWaterVolume")); }
			ScriptFunction ReachedDestination() { mixin(MGF("mReachedDestination", "Function Engine.Pawn.ReachedDestination")); }
			ScriptFunction SpecialMoveTo() { mixin(MGF("mSpecialMoveTo", "Function Engine.Pawn.SpecialMoveTo")); }
			ScriptFunction SetScalarParameterInterp() { mixin(MGF("mSetScalarParameterInterp", "Function Engine.Pawn.SetScalarParameterInterp")); }
			ScriptFunction CheatFly() { mixin(MGF("mCheatFly", "Function Engine.Pawn.CheatFly")); }
			ScriptFunction CheatWalk() { mixin(MGF("mCheatWalk", "Function Engine.Pawn.CheatWalk")); }
			ScriptFunction CheatGhost() { mixin(MGF("mCheatGhost", "Function Engine.Pawn.CheatGhost")); }
			ScriptFunction IsPlayerPawn() { mixin(MGF("mIsPlayerPawn", "Function Engine.Pawn.IsPlayerPawn")); }
			ScriptFunction FindInventoryType() { mixin(MGF("mFindInventoryType", "Function Engine.Pawn.FindInventoryType")); }
			ScriptFunction CreateInventory() { mixin(MGF("mCreateInventory", "Function Engine.Pawn.CreateInventory")); }
			ScriptFunction InGodMode() { mixin(MGF("mInGodMode", "Function Engine.Pawn.InGodMode")); }
			ScriptFunction ValidAnchor() { mixin(MGF("mValidAnchor", "Function Engine.Pawn.ValidAnchor")); }
			ScriptFunction GetBestAnchor() { mixin(MGF("mGetBestAnchor", "Function Engine.Pawn.GetBestAnchor")); }
			ScriptFunction CreatePathGoalEvaluator() { mixin(MGF("mCreatePathGoalEvaluator", "Function Engine.Pawn.CreatePathGoalEvaluator")); }
			ScriptFunction GetCollisionHeight() { mixin(MGF("mGetCollisionHeight", "Function Engine.Pawn.GetCollisionHeight")); }
			ScriptFunction GetCollisionExtent() { mixin(MGF("mGetCollisionExtent", "Function Engine.Pawn.GetCollisionExtent")); }
			ScriptFunction GetViewRotation() { mixin(MGF("mGetViewRotation", "Function Engine.Pawn.GetViewRotation")); }
			ScriptFunction CanGrabLadder() { mixin(MGF("mCanGrabLadder", "Function Engine.Pawn.CanGrabLadder")); }
			ScriptFunction LineOfSightTo() { mixin(MGF("mLineOfSightTo", "Function Engine.Pawn.LineOfSightTo")); }
			ScriptFunction PickWallAdjust() { mixin(MGF("mPickWallAdjust", "Function Engine.Pawn.PickWallAdjust")); }
			ScriptFunction LockDesiredRotation() { mixin(MGF("mLockDesiredRotation", "Function Engine.Pawn.LockDesiredRotation")); }
			ScriptFunction ResetDesiredRotation() { mixin(MGF("mResetDesiredRotation", "Function Engine.Pawn.ResetDesiredRotation")); }
			ScriptFunction CheckDesiredRotation() { mixin(MGF("mCheckDesiredRotation", "Function Engine.Pawn.CheckDesiredRotation")); }
			ScriptFunction IsDesiredRotationInUse() { mixin(MGF("mIsDesiredRotationInUse", "Function Engine.Pawn.IsDesiredRotationInUse")); }
			ScriptFunction IsDesiredRotationLocked() { mixin(MGF("mIsDesiredRotationLocked", "Function Engine.Pawn.IsDesiredRotationLocked")); }
			ScriptFunction PostInitAnimTree() { mixin(MGF("mPostInitAnimTree", "Function Engine.Pawn.PostInitAnimTree")); }
			ScriptFunction CacheAnimNodes() { mixin(MGF("mCacheAnimNodes", "Function Engine.Pawn.CacheAnimNodes")); }
			ScriptFunction ClearAnimNodes() { mixin(MGF("mClearAnimNodes", "Function Engine.Pawn.ClearAnimNodes")); }
			ScriptFunction UpdateAnimSetList() { mixin(MGF("mUpdateAnimSetList", "Function Engine.Pawn.UpdateAnimSetList")); }
			ScriptFunction BuildScriptAnimSetList() { mixin(MGF("mBuildScriptAnimSetList", "Function Engine.Pawn.BuildScriptAnimSetList")); }
			ScriptFunction AddAnimSets() { mixin(MGF("mAddAnimSets", "Function Engine.Pawn.AddAnimSets")); }
			ScriptFunction AnimSetListUpdated() { mixin(MGF("mAnimSetListUpdated", "Function Engine.Pawn.AnimSetListUpdated")); }
			ScriptFunction RestoreAnimSetsToDefault() { mixin(MGF("mRestoreAnimSetsToDefault", "Function Engine.Pawn.RestoreAnimSetsToDefault")); }
			ScriptFunction BeginAnimControl() { mixin(MGF("mBeginAnimControl", "Function Engine.Pawn.BeginAnimControl")); }
			ScriptFunction MAT_BeginAnimControl() { mixin(MGF("mMAT_BeginAnimControl", "Function Engine.Pawn.MAT_BeginAnimControl")); }
			ScriptFunction FinishAnimControl() { mixin(MGF("mFinishAnimControl", "Function Engine.Pawn.FinishAnimControl")); }
			ScriptFunction MAT_FinishAnimControl() { mixin(MGF("mMAT_FinishAnimControl", "Function Engine.Pawn.MAT_FinishAnimControl")); }
			ScriptFunction SetAnimPosition() { mixin(MGF("mSetAnimPosition", "Function Engine.Pawn.SetAnimPosition")); }
			ScriptFunction MAT_SetAnimPosition() { mixin(MGF("mMAT_SetAnimPosition", "Function Engine.Pawn.MAT_SetAnimPosition")); }
			ScriptFunction MAT_SetAnimWeights() { mixin(MGF("mMAT_SetAnimWeights", "Function Engine.Pawn.MAT_SetAnimWeights")); }
			ScriptFunction MAT_SetMorphWeight() { mixin(MGF("mMAT_SetMorphWeight", "Function Engine.Pawn.MAT_SetMorphWeight")); }
			ScriptFunction MAT_SetSkelControlScale() { mixin(MGF("mMAT_SetSkelControlScale", "Function Engine.Pawn.MAT_SetSkelControlScale")); }
			ScriptFunction InterpolationStarted() { mixin(MGF("mInterpolationStarted", "Function Engine.Pawn.InterpolationStarted")); }
			ScriptFunction InterpolationFinished() { mixin(MGF("mInterpolationFinished", "Function Engine.Pawn.InterpolationFinished")); }
			ScriptFunction MAT_BeginAIGroup() { mixin(MGF("mMAT_BeginAIGroup", "Function Engine.Pawn.MAT_BeginAIGroup")); }
			ScriptFunction MAT_FinishAIGroup() { mixin(MGF("mMAT_FinishAIGroup", "Function Engine.Pawn.MAT_FinishAIGroup")); }
			ScriptFunction StopActorFaceFXAnim() { mixin(MGF("mStopActorFaceFXAnim", "Function Engine.Pawn.StopActorFaceFXAnim")); }
			ScriptFunction GetFaceFXAudioComponent() { mixin(MGF("mGetFaceFXAudioComponent", "Function Engine.Pawn.GetFaceFXAudioComponent")); }
			ScriptFunction IsActorPlayingFaceFXAnim() { mixin(MGF("mIsActorPlayingFaceFXAnim", "Function Engine.Pawn.IsActorPlayingFaceFXAnim")); }
			ScriptFunction CanActorPlayFaceFXAnim() { mixin(MGF("mCanActorPlayFaceFXAnim", "Function Engine.Pawn.CanActorPlayFaceFXAnim")); }
			ScriptFunction OnPlayFaceFXAnim() { mixin(MGF("mOnPlayFaceFXAnim", "Function Engine.Pawn.OnPlayFaceFXAnim")); }
			ScriptFunction FaceFXAudioFinished() { mixin(MGF("mFaceFXAudioFinished", "Function Engine.Pawn.FaceFXAudioFinished")); }
			ScriptFunction GetActorFaceFXAsset() { mixin(MGF("mGetActorFaceFXAsset", "Function Engine.Pawn.GetActorFaceFXAsset")); }
			ScriptFunction SetMorphWeight() { mixin(MGF("mSetMorphWeight", "Function Engine.Pawn.SetMorphWeight")); }
			ScriptFunction SetSkelControlScale() { mixin(MGF("mSetSkelControlScale", "Function Engine.Pawn.SetSkelControlScale")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.Pawn.ReplicatedEvent")); }
			ScriptFunction IsAliveAndWell() { mixin(MGF("mIsAliveAndWell", "Function Engine.Pawn.IsAliveAndWell")); }
			ScriptFunction AdjustDestination() { mixin(MGF("mAdjustDestination", "Function Engine.Pawn.AdjustDestination")); }
			ScriptFunction SuggestJumpVelocity() { mixin(MGF("mSuggestJumpVelocity", "Function Engine.Pawn.SuggestJumpVelocity")); }
			ScriptFunction GetFallDuration() { mixin(MGF("mGetFallDuration", "Function Engine.Pawn.GetFallDuration")); }
			ScriptFunction IsValidEnemyTargetFor() { mixin(MGF("mIsValidEnemyTargetFor", "Function Engine.Pawn.IsValidEnemyTargetFor")); }
			ScriptFunction IsInvisible() { mixin(MGF("mIsInvisible", "Function Engine.Pawn.IsInvisible")); }
			ScriptFunction SetAnchor() { mixin(MGF("mSetAnchor", "Function Engine.Pawn.SetAnchor")); }
			ScriptFunction ReachedPoint() { mixin(MGF("mReachedPoint", "Function Engine.Pawn.ReachedPoint")); }
			ScriptFunction ForceCrouch() { mixin(MGF("mForceCrouch", "Function Engine.Pawn.ForceCrouch")); }
			ScriptFunction SetPushesRigidBodies() { mixin(MGF("mSetPushesRigidBodies", "Function Engine.Pawn.SetPushesRigidBodies")); }
			ScriptFunction ReachedDesiredRotation() { mixin(MGF("mReachedDesiredRotation", "Function Engine.Pawn.ReachedDesiredRotation")); }
			ScriptFunction GetBoundingCylinder() { mixin(MGF("mGetBoundingCylinder", "Function Engine.Pawn.GetBoundingCylinder")); }
			ScriptFunction InitRagdoll() { mixin(MGF("mInitRagdoll", "Function Engine.Pawn.InitRagdoll")); }
			ScriptFunction TermRagdoll() { mixin(MGF("mTermRagdoll", "Function Engine.Pawn.TermRagdoll")); }
			ScriptFunction SpecialMoveThruEdge() { mixin(MGF("mSpecialMoveThruEdge", "Function Engine.Pawn.SpecialMoveThruEdge")); }
			ScriptFunction SetBaseEyeheight() { mixin(MGF("mSetBaseEyeheight", "Function Engine.Pawn.SetBaseEyeheight")); }
			ScriptFunction PlayerChangedTeam() { mixin(MGF("mPlayerChangedTeam", "Function Engine.Pawn.PlayerChangedTeam")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function Engine.Pawn.Reset")); }
			ScriptFunction StartFire() { mixin(MGF("mStartFire", "Function Engine.Pawn.StartFire")); }
			ScriptFunction StopFire() { mixin(MGF("mStopFire", "Function Engine.Pawn.StopFire")); }
			ScriptFunction GetWeaponFiringMode() { mixin(MGF("mGetWeaponFiringMode", "Function Engine.Pawn.GetWeaponFiringMode")); }
			ScriptFunction SetFiringMode() { mixin(MGF("mSetFiringMode", "Function Engine.Pawn.SetFiringMode")); }
			ScriptFunction FiringModeUpdated() { mixin(MGF("mFiringModeUpdated", "Function Engine.Pawn.FiringModeUpdated")); }
			ScriptFunction IncrementFlashCount() { mixin(MGF("mIncrementFlashCount", "Function Engine.Pawn.IncrementFlashCount")); }
			ScriptFunction FlashCountUpdated() { mixin(MGF("mFlashCountUpdated", "Function Engine.Pawn.FlashCountUpdated")); }
			ScriptFunction ClearFlashCount() { mixin(MGF("mClearFlashCount", "Function Engine.Pawn.ClearFlashCount")); }
			ScriptFunction SetFlashLocation() { mixin(MGF("mSetFlashLocation", "Function Engine.Pawn.SetFlashLocation")); }
			ScriptFunction ClearFlashLocation() { mixin(MGF("mClearFlashLocation", "Function Engine.Pawn.ClearFlashLocation")); }
			ScriptFunction FlashLocationUpdated() { mixin(MGF("mFlashLocationUpdated", "Function Engine.Pawn.FlashLocationUpdated")); }
			ScriptFunction WeaponFired() { mixin(MGF("mWeaponFired", "Function Engine.Pawn.WeaponFired")); }
			ScriptFunction WeaponStoppedFiring() { mixin(MGF("mWeaponStoppedFiring", "Function Engine.Pawn.WeaponStoppedFiring")); }
			ScriptFunction BotFire() { mixin(MGF("mBotFire", "Function Engine.Pawn.BotFire")); }
			ScriptFunction CanAttack() { mixin(MGF("mCanAttack", "Function Engine.Pawn.CanAttack")); }
			ScriptFunction TooCloseToAttack() { mixin(MGF("mTooCloseToAttack", "Function Engine.Pawn.TooCloseToAttack")); }
			ScriptFunction FireOnRelease() { mixin(MGF("mFireOnRelease", "Function Engine.Pawn.FireOnRelease")); }
			ScriptFunction HasRangedAttack() { mixin(MGF("mHasRangedAttack", "Function Engine.Pawn.HasRangedAttack")); }
			ScriptFunction IsFiring() { mixin(MGF("mIsFiring", "Function Engine.Pawn.IsFiring")); }
			ScriptFunction NeedToTurn() { mixin(MGF("mNeedToTurn", "Function Engine.Pawn.NeedToTurn")); }
			ScriptFunction PlayTeleportEffect() { mixin(MGF("mPlayTeleportEffect", "Function Engine.Pawn.PlayTeleportEffect")); }
			ScriptFunction NotifyTeamChanged() { mixin(MGF("mNotifyTeamChanged", "Function Engine.Pawn.NotifyTeamChanged")); }
			ScriptFunction PossessedBy() { mixin(MGF("mPossessedBy", "Function Engine.Pawn.PossessedBy")); }
			ScriptFunction UpdateControllerOnPossess() { mixin(MGF("mUpdateControllerOnPossess", "Function Engine.Pawn.UpdateControllerOnPossess")); }
			ScriptFunction UnPossessed() { mixin(MGF("mUnPossessed", "Function Engine.Pawn.UnPossessed")); }
			ScriptFunction DropToGround() { mixin(MGF("mDropToGround", "Function Engine.Pawn.DropToGround")); }
			ScriptFunction RecommendLongRangedAttack() { mixin(MGF("mRecommendLongRangedAttack", "Function Engine.Pawn.RecommendLongRangedAttack")); }
			ScriptFunction RangedAttackTime() { mixin(MGF("mRangedAttackTime", "Function Engine.Pawn.RangedAttackTime")); }
			ScriptFunction SetWalking() { mixin(MGF("mSetWalking", "Function Engine.Pawn.SetWalking")); }
			ScriptFunction CanSplash() { mixin(MGF("mCanSplash", "Function Engine.Pawn.CanSplash")); }
			ScriptFunction EndClimbLadder() { mixin(MGF("mEndClimbLadder", "Function Engine.Pawn.EndClimbLadder")); }
			ScriptFunction ClimbLadder() { mixin(MGF("mClimbLadder", "Function Engine.Pawn.ClimbLadder")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function Engine.Pawn.DisplayDebug")); }
			ScriptFunction IsFirstPerson() { mixin(MGF("mIsFirstPerson", "Function Engine.Pawn.IsFirstPerson")); }
			ScriptFunction ProcessViewRotation() { mixin(MGF("mProcessViewRotation", "Function Engine.Pawn.ProcessViewRotation")); }
			ScriptFunction GetActorEyesViewPoint() { mixin(MGF("mGetActorEyesViewPoint", "Function Engine.Pawn.GetActorEyesViewPoint")); }
			ScriptFunction GetPawnViewLocation() { mixin(MGF("mGetPawnViewLocation", "Function Engine.Pawn.GetPawnViewLocation")); }
			ScriptFunction GetWeaponStartTraceLocation() { mixin(MGF("mGetWeaponStartTraceLocation", "Function Engine.Pawn.GetWeaponStartTraceLocation")); }
			ScriptFunction InFreeCam() { mixin(MGF("mInFreeCam", "Function Engine.Pawn.InFreeCam")); }
			ScriptFunction GetAdjustedAimFor() { mixin(MGF("mGetAdjustedAimFor", "Function Engine.Pawn.GetAdjustedAimFor")); }
			ScriptFunction SetViewRotation() { mixin(MGF("mSetViewRotation", "Function Engine.Pawn.SetViewRotation")); }
			ScriptFunction SetMoveTarget() { mixin(MGF("mSetMoveTarget", "Function Engine.Pawn.SetMoveTarget")); }
			ScriptFunction HandlePickup() { mixin(MGF("mHandlePickup", "Function Engine.Pawn.HandlePickup")); }
			ScriptFunction ClientMessage() { mixin(MGF("mClientMessage", "Function Engine.Pawn.ClientMessage")); }
			ScriptFunction FellOutOfWorld() { mixin(MGF("mFellOutOfWorld", "Function Engine.Pawn.FellOutOfWorld")); }
			ScriptFunction OutsideWorldBounds() { mixin(MGF("mOutsideWorldBounds", "Function Engine.Pawn.OutsideWorldBounds")); }
			ScriptFunction UnCrouch() { mixin(MGF("mUnCrouch", "Function Engine.Pawn.UnCrouch")); }
			ScriptFunction ShouldCrouch() { mixin(MGF("mShouldCrouch", "Function Engine.Pawn.ShouldCrouch")); }
			ScriptFunction EndCrouch() { mixin(MGF("mEndCrouch", "Function Engine.Pawn.EndCrouch")); }
			ScriptFunction StartCrouch() { mixin(MGF("mStartCrouch", "Function Engine.Pawn.StartCrouch")); }
			ScriptFunction HandleMomentum() { mixin(MGF("mHandleMomentum", "Function Engine.Pawn.HandleMomentum")); }
			ScriptFunction AddVelocity() { mixin(MGF("mAddVelocity", "Function Engine.Pawn.AddVelocity")); }
			ScriptFunction KilledBy() { mixin(MGF("mKilledBy", "Function Engine.Pawn.KilledBy")); }
			ScriptFunction TakeFallingDamage() { mixin(MGF("mTakeFallingDamage", "Function Engine.Pawn.TakeFallingDamage")); }
			ScriptFunction Restart() { mixin(MGF("mRestart", "Function Engine.Pawn.Restart")); }
			ScriptFunction ClientRestart() { mixin(MGF("mClientRestart", "Function Engine.Pawn.ClientRestart")); }
			ScriptFunction ClientSetRotation() { mixin(MGF("mClientSetRotation", "Function Engine.Pawn.ClientSetRotation")); }
			ScriptFunction UpdatePawnRotation() { mixin(MGF("mUpdatePawnRotation", "Function Engine.Pawn.UpdatePawnRotation")); }
			ScriptFunction FaceRotation() { mixin(MGF("mFaceRotation", "Function Engine.Pawn.FaceRotation")); }
			ScriptFunction EncroachingOn() { mixin(MGF("mEncroachingOn", "Function Engine.Pawn.EncroachingOn")); }
			ScriptFunction EncroachedBy() { mixin(MGF("mEncroachedBy", "Function Engine.Pawn.EncroachedBy")); }
			ScriptFunction gibbedBy() { mixin(MGF("mgibbedBy", "Function Engine.Pawn.gibbedBy")); }
			ScriptFunction JumpOffPawn() { mixin(MGF("mJumpOffPawn", "Function Engine.Pawn.JumpOffPawn")); }
			ScriptFunction StuckOnPawn() { mixin(MGF("mStuckOnPawn", "Function Engine.Pawn.StuckOnPawn")); }
			ScriptFunction BaseChange() { mixin(MGF("mBaseChange", "Function Engine.Pawn.BaseChange")); }
			ScriptFunction CanBeBaseForPawn() { mixin(MGF("mCanBeBaseForPawn", "Function Engine.Pawn.CanBeBaseForPawn")); }
			ScriptFunction CrushedBy() { mixin(MGF("mCrushedBy", "Function Engine.Pawn.CrushedBy")); }
			ScriptFunction DetachFromController() { mixin(MGF("mDetachFromController", "Function Engine.Pawn.DetachFromController")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function Engine.Pawn.Destroyed")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.Pawn.PreBeginPlay")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.Pawn.PostBeginPlay")); }
			ScriptFunction SpawnDefaultController() { mixin(MGF("mSpawnDefaultController", "Function Engine.Pawn.SpawnDefaultController")); }
			ScriptFunction ReceivedNewEvent() { mixin(MGF("mReceivedNewEvent", "Function Engine.Pawn.ReceivedNewEvent")); }
			ScriptFunction OnAssignController() { mixin(MGF("mOnAssignController", "Function Engine.Pawn.OnAssignController")); }
			ScriptFunction OnGiveInventory() { mixin(MGF("mOnGiveInventory", "Function Engine.Pawn.OnGiveInventory")); }
			ScriptFunction Gasp() { mixin(MGF("mGasp", "Function Engine.Pawn.Gasp")); }
			ScriptFunction SetMovementPhysics() { mixin(MGF("mSetMovementPhysics", "Function Engine.Pawn.SetMovementPhysics")); }
			ScriptFunction AdjustDamage() { mixin(MGF("mAdjustDamage", "Function Engine.Pawn.AdjustDamage")); }
			ScriptFunction HealDamage() { mixin(MGF("mHealDamage", "Function Engine.Pawn.HealDamage")); }
			ScriptFunction PruneDamagedBoneList() { mixin(MGF("mPruneDamagedBoneList", "Function Engine.Pawn.PruneDamagedBoneList")); }
			ScriptFunction TakeRadiusDamageOnBones() { mixin(MGF("mTakeRadiusDamageOnBones", "Function Engine.Pawn.TakeRadiusDamageOnBones")); }
			ScriptFunction NotifyTakeHit() { mixin(MGF("mNotifyTakeHit", "Function Engine.Pawn.NotifyTakeHit")); }
			ScriptFunction SetKillInstigator() { mixin(MGF("mSetKillInstigator", "Function Engine.Pawn.SetKillInstigator")); }
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function Engine.Pawn.TakeDamage")); }
			ScriptFunction GetTeamNum() { mixin(MGF("mGetTeamNum", "Function Engine.Pawn.GetTeamNum")); }
			ScriptFunction GetTeam() { mixin(MGF("mGetTeam", "Function Engine.Pawn.GetTeam")); }
			ScriptFunction IsSameTeam() { mixin(MGF("mIsSameTeam", "Function Engine.Pawn.IsSameTeam")); }
			ScriptFunction ThrowWeaponOnDeath() { mixin(MGF("mThrowWeaponOnDeath", "Function Engine.Pawn.ThrowWeaponOnDeath")); }
			ScriptFunction DelayTriggerDeath() { mixin(MGF("mDelayTriggerDeath", "Function Engine.Pawn.DelayTriggerDeath")); }
			ScriptFunction Falling() { mixin(MGF("mFalling", "Function Engine.Pawn.Falling")); }
			ScriptFunction Landed() { mixin(MGF("mLanded", "Function Engine.Pawn.Landed")); }
			ScriptFunction TickSpecial() { mixin(MGF("mTickSpecial", "Function Engine.Pawn.TickSpecial")); }
			ScriptFunction HeadVolumeChange() { mixin(MGF("mHeadVolumeChange", "Function Engine.Pawn.HeadVolumeChange")); }
			ScriptFunction BreathTimer() { mixin(MGF("mBreathTimer", "Function Engine.Pawn.BreathTimer")); }
			ScriptFunction TakeDrowningDamage() { mixin(MGF("mTakeDrowningDamage", "Function Engine.Pawn.TakeDrowningDamage")); }
			ScriptFunction PlayDyingSound() { mixin(MGF("mPlayDyingSound", "Function Engine.Pawn.PlayDyingSound")); }
			ScriptFunction PlayHit() { mixin(MGF("mPlayHit", "Function Engine.Pawn.PlayHit")); }
			ScriptFunction TurnOff() { mixin(MGF("mTurnOff", "Function Engine.Pawn.TurnOff")); }
			ScriptFunction SetDyingPhysics() { mixin(MGF("mSetDyingPhysics", "Function Engine.Pawn.SetDyingPhysics")); }
			ScriptFunction PlayDying() { mixin(MGF("mPlayDying", "Function Engine.Pawn.PlayDying")); }
			ScriptFunction TornOff() { mixin(MGF("mTornOff", "Function Engine.Pawn.TornOff")); }
			ScriptFunction PlayFootStepSound() { mixin(MGF("mPlayFootStepSound", "Function Engine.Pawn.PlayFootStepSound")); }
			ScriptFunction PlayLanded() { mixin(MGF("mPlayLanded", "Function Engine.Pawn.PlayLanded")); }
			ScriptFunction GetVehicleBase() { mixin(MGF("mGetVehicleBase", "Function Engine.Pawn.GetVehicleBase")); }
			ScriptFunction Suicide() { mixin(MGF("mSuicide", "Function Engine.Pawn.Suicide")); }
			ScriptFunction StartDriving() { mixin(MGF("mStartDriving", "Function Engine.Pawn.StartDriving")); }
			ScriptFunction StopDriving() { mixin(MGF("mStopDriving", "Function Engine.Pawn.StopDriving")); }
			ScriptFunction AddDefaultInventory() { mixin(MGF("mAddDefaultInventory", "Function Engine.Pawn.AddDefaultInventory")); }
			ScriptFunction DrawHUD() { mixin(MGF("mDrawHUD", "Function Engine.Pawn.DrawHUD")); }
			ScriptFunction ThrowActiveWeapon() { mixin(MGF("mThrowActiveWeapon", "Function Engine.Pawn.ThrowActiveWeapon")); }
			ScriptFunction TossInventory() { mixin(MGF("mTossInventory", "Function Engine.Pawn.TossInventory")); }
			ScriptFunction SetActiveWeapon() { mixin(MGF("mSetActiveWeapon", "Function Engine.Pawn.SetActiveWeapon")); }
			ScriptFunction PlayWeaponSwitch() { mixin(MGF("mPlayWeaponSwitch", "Function Engine.Pawn.PlayWeaponSwitch")); }
			ScriptFunction GetCollisionRadius() { mixin(MGF("mGetCollisionRadius", "Function Engine.Pawn.GetCollisionRadius")); }
			ScriptFunction IsStationary() { mixin(MGF("mIsStationary", "Function Engine.Pawn.IsStationary")); }
			ScriptFunction SpawnedByKismet() { mixin(MGF("mSpawnedByKismet", "Function Engine.Pawn.SpawnedByKismet")); }
			ScriptFunction DoKismetAttachment() { mixin(MGF("mDoKismetAttachment", "Function Engine.Pawn.DoKismetAttachment")); }
			ScriptFunction GetDamageScaling() { mixin(MGF("mGetDamageScaling", "Function Engine.Pawn.GetDamageScaling")); }
			ScriptFunction OnSetMaterial() { mixin(MGF("mOnSetMaterial", "Function Engine.Pawn.OnSetMaterial")); }
			ScriptFunction OnTeleport() { mixin(MGF("mOnTeleport", "Function Engine.Pawn.OnTeleport")); }
			ScriptFunction MessagePlayer() { mixin(MGF("mMessagePlayer", "Function Engine.Pawn.MessagePlayer")); }
			ScriptFunction BecomeViewTarget() { mixin(MGF("mBecomeViewTarget", "Function Engine.Pawn.BecomeViewTarget")); }
			ScriptFunction SoakPause() { mixin(MGF("mSoakPause", "Function Engine.Pawn.SoakPause")); }
			ScriptFunction ClearConstraints() { mixin(MGF("mClearConstraints", "Function Engine.Pawn.ClearConstraints")); }
			ScriptFunction AddPathConstraint() { mixin(MGF("mAddPathConstraint", "Function Engine.Pawn.AddPathConstraint")); }
			ScriptFunction AddGoalEvaluator() { mixin(MGF("mAddGoalEvaluator", "Function Engine.Pawn.AddGoalEvaluator")); }
			ScriptFunction CreatePathConstraint() { mixin(MGF("mCreatePathConstraint", "Function Engine.Pawn.CreatePathConstraint")); }
			ScriptFunction IncrementPathStep() { mixin(MGF("mIncrementPathStep", "Function Engine.Pawn.IncrementPathStep")); }
			ScriptFunction IncrementPathChild() { mixin(MGF("mIncrementPathChild", "Function Engine.Pawn.IncrementPathChild")); }
			ScriptFunction DrawPathStep() { mixin(MGF("mDrawPathStep", "Function Engine.Pawn.DrawPathStep")); }
			ScriptFunction ClearPathStep() { mixin(MGF("mClearPathStep", "Function Engine.Pawn.ClearPathStep")); }
			ScriptFunction ZeroMovementVariables() { mixin(MGF("mZeroMovementVariables", "Function Engine.Pawn.ZeroMovementVariables")); }
			ScriptFunction SetCinematicMode() { mixin(MGF("mSetCinematicMode", "Function Engine.Pawn.SetCinematicMode")); }
			ScriptFunction SetRootMotionInterpCurrentTime() { mixin(MGF("mSetRootMotionInterpCurrentTime", "Function Engine.Pawn.SetRootMotionInterpCurrentTime")); }
			ScriptFunction Speak() { mixin(MGF("mSpeak", "Function Engine.Pawn.Speak")); }
			ScriptFunction OnSetVelocity() { mixin(MGF("mOnSetVelocity", "Function Engine.Pawn.OnSetVelocity")); }
			ScriptFunction CheckClotheslineDamage() { mixin(MGF("mCheckClotheslineDamage", "Function Engine.Pawn.CheckClotheslineDamage")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Pawn.ScalarParameterInterpStruct")); }
		@property final auto ref
		{
			float WarmupTime() { mixin(MGPS("float", 16)); }
			float InterpTime() { mixin(MGPS("float", 12)); }
			float ParameterValue() { mixin(MGPS("float", 8)); }
			ScriptName ParameterName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct LastHitInfoStruct
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Pawn.LastHitInfoStruct")); }
		@property final
		{
			auto ref
			{
				ScriptClass Type() { mixin(MGPS("ScriptClass", 16)); }
				Actor Causer() { mixin(MGPS("Actor", 12)); }
				float Distance() { mixin(MGPS("float", 8)); }
				float Amount() { mixin(MGPS("float", 4)); }
			}
			bool bDirectHit() { mixin(MGBPS(0, 0x1)); }
			bool bDirectHit(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	static struct Dying
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.Pawn.Dying")); }
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'Controller' has the same name as a defined type!
			int MaxPitchLimit() { mixin(MGPC("int", 664)); }
			// WARNING: Property 'Weapon' has the same name as a defined type!
			InventoryManager InvManager() { mixin(MGPC("InventoryManager", 980)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Mesh'!
			float EyeHeight() { mixin(MGPC("float", 728)); }
			float BaseEyeHeight() { mixin(MGPC("float", 724)); }
			int Health() { mixin(MGPC("int", 752)); }
			Vector Floor() { mixin(MGPC("Vector", 732)); }
			// WARNING: Property 'CylinderComponent' has the same name as a defined type!
			float CrouchHeight() { mixin(MGPC("float", 548)); }
			float MaxStepHeight() { mixin(MGPC("float", 480)); }
			float VehicleCheckRadius() { mixin(MGPC("float", 944)); }
			float LastStartTime() { mixin(MGPC("float", 888)); }
			PhysicsVolume HeadVolume() { mixin(MGPC("PhysicsVolume", 748)); }
			float BreathTime() { mixin(MGPC("float", 760)); }
			float UnderWaterTime() { mixin(MGPC("float", 764)); }
			ScriptName WaterMovementState() { mixin(MGPC("ScriptName", 876)); }
			ScriptName LandMovementState() { mixin(MGPC("ScriptName", 868)); }
			float AccelRate() { mixin(MGPC("float", 684)); }
			Actor.EPhysics WalkingPhysics() { mixin(MGPC("Actor.EPhysics", 536)); }
			LadderVolume OnLadder() { mixin(MGPC("LadderVolume", 864)); }
			float OutofWaterZ() { mixin(MGPC("float", 692)); }
			NavigationPoint Anchor() { mixin(MGPC("NavigationPoint", 612)); }
			ScriptArray!(AnimNodeSlot) SlotNodes() { mixin(MGPC("ScriptArray!(AnimNodeSlot)", 1028)); }
			ScriptArray!(InterpGroup) InterpGroupList() { mixin(MGPC("ScriptArray!(InterpGroup)", 1040)); }
			ScriptArray!(Pawn.ScalarParameterInterpStruct) ScalarParameterInterpArray() { mixin(MGPC("ScriptArray!(Pawn.ScalarParameterInterpStruct)", 1064)); }
			Pawn.LastHitInfoStruct LastHitInfo() { mixin(MGPC("Pawn.LastHitInfoStruct", 1124)); }
			Vector RootMotionInterpCurveLastValue() { mixin(MGPC("Vector", 1112)); }
			float RootMotionInterpCurrentTime() { mixin(MGPC("float", 1108)); }
			float RootMotionInterpRate() { mixin(MGPC("float", 1104)); }
			EngineTypes.RootMotionCurve RootMotionInterpCurve() { mixin(MGPC("EngineTypes.RootMotionCurve", 1076)); }
			MaterialInstanceConstant MIC_PawnHair() { mixin(MGPC("MaterialInstanceConstant", 1060)); }
			MaterialInstanceConstant MIC_PawnMat() { mixin(MGPC("MaterialInstanceConstant", 1056)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FacialAudioComp'!
			int FailedLandingCount() { mixin(MGPC("int", 1024)); }
			RB_BodyInstance PhysicsPushBody() { mixin(MGPC("RB_BodyInstance", 1020)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreRagdollCollisionComponent'!
			int ShotCount() { mixin(MGPC("int", 1012)); }
			Vector LastFiringFlashLocation() { mixin(MGPC("Vector", 1000)); }
			Vector FlashLocation() { mixin(MGPC("Vector", 988)); }
			ScriptClass InventoryManagerClass() { mixin(MGPC("ScriptClass", 976)); }
			Rotator DesiredRotation() { mixin(MGPC("Rotator", 964)); }
			int AllowedYawError() { mixin(MGPC("int", 960)); }
			float ViewPitchMax() { mixin(MGPC("float", 956)); }
			float ViewPitchMin() { mixin(MGPC("float", 952)); }
			Controller LastHitBy() { mixin(MGPC("Controller", 948)); }
			float AlwaysRelevantDistanceSquared() { mixin(MGPC("float", 940)); }
			Vehicle DrivenVehicle() { mixin(MGPC("Vehicle", 936)); }
			float RBPushStrength() { mixin(MGPC("float", 932)); }
			float RBPushRadius() { mixin(MGPC("float", 928)); }
			Vector TearOffMomentum() { mixin(MGPC("Vector", 908)); }
			ScriptClass HitDamageType() { mixin(MGPC("ScriptClass", 904)); }
			Vector TakeHitLocation() { mixin(MGPC("Vector", 892)); }
			PlayerStart LastStartSpot() { mixin(MGPC("PlayerStart", 884)); }
			// WARNING: Property 'PlayerReplicationInfo' has the same name as a defined type!
			ScriptClass ControllerClass() { mixin(MGPC("ScriptClass", 856)); }
			ScriptString MenuName() { mixin(MGPC("ScriptString", 844)); }
			float DamageScaling() { mixin(MGPC("float", 840)); }
			float SoundDampening() { mixin(MGPC("float", 836)); }
			float noise2loudness() { mixin(MGPC("float", 832)); }
			Pawn noise2other() { mixin(MGPC("Pawn", 828)); }
			float noise2time() { mixin(MGPC("float", 824)); }
			Vector noise2spot() { mixin(MGPC("Vector", 812)); }
			float noise1loudness() { mixin(MGPC("float", 808)); }
			Pawn noise1other() { mixin(MGPC("Pawn", 804)); }
			float noise1time() { mixin(MGPC("float", 800)); }
			Vector noise1spot() { mixin(MGPC("Vector", 788)); }
			Vector RMVelocity() { mixin(MGPC("Vector", 776)); }
			float KismetDeathDelayTime() { mixin(MGPC("float", 772)); }
			float LastPainTime() { mixin(MGPC("float", 768)); }
			int HealthMax() { mixin(MGPC("int", 756)); }
			float SplashTime() { mixin(MGPC("float", 744)); }
			float AIMaxFallSpeedFactor() { mixin(MGPC("float", 720)); }
			float MaxFallSpeed() { mixin(MGPC("float", 716)); }
			float CrouchedPct() { mixin(MGPC("float", 712)); }
			float MovementSpeedModifier() { mixin(MGPC("float", 708)); }
			float WalkingPct() { mixin(MGPC("float", 704)); }
			float AirControl() { mixin(MGPC("float", 700)); }
			float MaxOutOfWaterStepHeight() { mixin(MGPC("float", 696)); }
			float JumpZ() { mixin(MGPC("float", 688)); }
			float LadderSpeed() { mixin(MGPC("float", 680)); }
			float AirSpeed() { mixin(MGPC("float", 676)); }
			float WaterSpeed() { mixin(MGPC("float", 672)); }
			float GroundSpeed() { mixin(MGPC("float", 668)); }
			float SpawnTime() { mixin(MGPC("float", 660)); }
			float SerpentineTime() { mixin(MGPC("float", 656)); }
			float SerpentineDist() { mixin(MGPC("float", 652)); }
			Vector SerpentineDir() { mixin(MGPC("Vector", 640)); }
			float NextPathRadius() { mixin(MGPC("float", 636)); }
			float DestinationOffset() { mixin(MGPC("float", 632)); }
			float LastValidAnchorTime() { mixin(MGPC("float", 628)); }
			float FindAnchorFailedTime() { mixin(MGPC("float", 624)); }
			NavigationPoint LastAnchor() { mixin(MGPC("NavigationPoint", 620)); }
			int AnchorItem() { mixin(MGPC("int", 616)); }
			float MeleeRange() { mixin(MGPC("float", 608)); }
			float Buoyancy() { mixin(MGPC("float", 604)); }
			float Mass() { mixin(MGPC("float", 600)); }
			float AvgPhysicsTime() { mixin(MGPC("float", 596)); }
			float PeripheralVision() { mixin(MGPC("float", 592)); }
			float SightRadius() { mixin(MGPC("float", 588)); }
			float Alertness() { mixin(MGPC("float", 584)); }
			float HearingThreshold() { mixin(MGPC("float", 580)); }
			float MaxDesiredSpeed() { mixin(MGPC("float", 576)); }
			float DesiredSpeed() { mixin(MGPC("float", 572)); }
			PathGoalEvaluator PathGoalList() { mixin(MGPC("PathGoalEvaluator", 568)); }
			PathConstraint PathConstraintList() { mixin(MGPC("PathConstraint", 564)); }
			float NonPreferredVehiclePathMultiplier() { mixin(MGPC("float", 560)); }
			int FullHeight() { mixin(MGPC("int", 556)); }
			float CrouchRadius() { mixin(MGPC("float", 552)); }
			float UncrouchTime() { mixin(MGPC("float", 544)); }
			ubyte FiringMode() { mixin(MGPC("ubyte", 540)); }
			ubyte FlashCount() { mixin(MGPC("ubyte", 539)); }
			ubyte RemoteViewPitch() { mixin(MGPC("ubyte", 538)); }
			Pawn.EPathSearchType PathSearchType() { mixin(MGPC("Pawn.EPathSearchType", 537)); }
			UObject.Pointer VfTable_IInterface_Speaker() { mixin(MGPC("UObject.Pointer", 476)); }
			Actor LastViewer() { mixin(MGPC("Actor", 524)); }
			PlayerController LastRealViewer() { mixin(MGPC("PlayerController", 520)); }
			float NetRelevancyTime() { mixin(MGPC("float", 516)); }
			Pawn NextPawn() { mixin(MGPC("Pawn", 512)); }
			Vector PartialLedgeMoveDir() { mixin(MGPC("Vector", 496)); }
			float LedgeCheckThreshold() { mixin(MGPC("float", 492)); }
			float WalkableFloorZ() { mixin(MGPC("float", 488)); }
			float MaxJumpHeight() { mixin(MGPC("float", 484)); }
		}
		bool bIsWalking() { mixin(MGBPC(528, 0x4)); }
		bool bIsWalking(bool val) { mixin(MSBPC(528, 0x4)); }
		bool bForceRMVelocity() { mixin(MGBPC(532, 0x100000)); }
		bool bForceRMVelocity(bool val) { mixin(MSBPC(532, 0x100000)); }
		bool bRootMotionFromInterpCurve() { mixin(MGBPC(532, 0x8000000)); }
		bool bRootMotionFromInterpCurve(bool val) { mixin(MSBPC(532, 0x8000000)); }
		bool bIsCrouched() { mixin(MGBPC(528, 0x10)); }
		bool bIsCrouched(bool val) { mixin(MSBPC(528, 0x10)); }
		bool bForceMaxAccel() { mixin(MGBPC(532, 0x20000)); }
		bool bForceMaxAccel(bool val) { mixin(MSBPC(532, 0x20000)); }
		bool bUpAndOut() { mixin(MGBPC(528, 0x2)); }
		bool bUpAndOut(bool val) { mixin(MSBPC(528, 0x2)); }
		bool bDebugShowCameraLocation() { mixin(MGBPC(532, 0x10000000)); }
		bool bDebugShowCameraLocation(bool val) { mixin(MSBPC(532, 0x10000000)); }
		bool bNeedsBaseTickedFirst() { mixin(MGBPC(532, 0x4000000)); }
		bool bNeedsBaseTickedFirst(bool val) { mixin(MSBPC(532, 0x4000000)); }
		bool bUnlockWhenReached() { mixin(MGBPC(532, 0x2000000)); }
		bool bUnlockWhenReached(bool val) { mixin(MSBPC(532, 0x2000000)); }
		bool bLockDesiredRotation() { mixin(MGBPC(532, 0x1000000)); }
		bool bLockDesiredRotation(bool val) { mixin(MSBPC(532, 0x1000000)); }
		bool bDesiredRotationSet() { mixin(MGBPC(532, 0x800000)); }
		bool bDesiredRotationSet(bool val) { mixin(MSBPC(532, 0x800000)); }
		bool bPlayedDeath() { mixin(MGBPC(532, 0x400000)); }
		bool bPlayedDeath(bool val) { mixin(MSBPC(532, 0x400000)); }
		bool bForceRegularVelocity() { mixin(MGBPC(532, 0x200000)); }
		bool bForceRegularVelocity(bool val) { mixin(MSBPC(532, 0x200000)); }
		bool bReplicateHealthToAll() { mixin(MGBPC(532, 0x80000)); }
		bool bReplicateHealthToAll(bool val) { mixin(MSBPC(532, 0x80000)); }
		bool bLimitFallAccel() { mixin(MGBPC(532, 0x40000)); }
		bool bLimitFallAccel(bool val) { mixin(MSBPC(532, 0x40000)); }
		bool bRunPhysicsWithNoController() { mixin(MGBPC(532, 0x10000)); }
		bool bRunPhysicsWithNoController(bool val) { mixin(MSBPC(532, 0x10000)); }
		bool bPathfindsAsVehicle() { mixin(MGBPC(532, 0x8000)); }
		bool bPathfindsAsVehicle(bool val) { mixin(MSBPC(532, 0x8000)); }
		bool bModifyNavPointDest() { mixin(MGBPC(532, 0x4000)); }
		bool bModifyNavPointDest(bool val) { mixin(MSBPC(532, 0x4000)); }
		bool bModifyReachSpecCost() { mixin(MGBPC(532, 0x2000)); }
		bool bModifyReachSpecCost(bool val) { mixin(MSBPC(532, 0x2000)); }
		bool bNoWeaponFiring() { mixin(MGBPC(532, 0x1000)); }
		bool bNoWeaponFiring(bool val) { mixin(MSBPC(532, 0x1000)); }
		bool bCachedRelevant() { mixin(MGBPC(532, 0x800)); }
		bool bCachedRelevant(bool val) { mixin(MSBPC(532, 0x800)); }
		bool bStationary() { mixin(MGBPC(532, 0x400)); }
		bool bStationary(bool val) { mixin(MSBPC(532, 0x400)); }
		bool bRollToDesired() { mixin(MGBPC(532, 0x200)); }
		bool bRollToDesired(bool val) { mixin(MSBPC(532, 0x200)); }
		bool bDontPossess() { mixin(MGBPC(532, 0x100)); }
		bool bDontPossess(bool val) { mixin(MSBPC(532, 0x100)); }
		bool bMuffledHearing() { mixin(MGBPC(532, 0x80)); }
		bool bMuffledHearing(bool val) { mixin(MSBPC(532, 0x80)); }
		bool bLOSHearing() { mixin(MGBPC(532, 0x40)); }
		bool bLOSHearing(bool val) { mixin(MSBPC(532, 0x40)); }
		bool bAmbientCreature() { mixin(MGBPC(532, 0x20)); }
		bool bAmbientCreature(bool val) { mixin(MSBPC(532, 0x20)); }
		bool bCanPickupInventory() { mixin(MGBPC(532, 0x10)); }
		bool bCanPickupInventory(bool val) { mixin(MSBPC(532, 0x10)); }
		bool bDisplayPathErrors() { mixin(MGBPC(532, 0x8)); }
		bool bDisplayPathErrors(bool val) { mixin(MSBPC(532, 0x8)); }
		bool bCanCoverSlip() { mixin(MGBPC(532, 0x4)); }
		bool bCanCoverSlip(bool val) { mixin(MSBPC(532, 0x4)); }
		bool bCanLeap() { mixin(MGBPC(532, 0x2)); }
		bool bCanLeap(bool val) { mixin(MSBPC(532, 0x2)); }
		bool bCanSwatTurn() { mixin(MGBPC(532, 0x1)); }
		bool bCanSwatTurn(bool val) { mixin(MSBPC(532, 0x1)); }
		bool bCanClimbCeilings() { mixin(MGBPC(528, 0x80000000)); }
		bool bCanClimbCeilings(bool val) { mixin(MSBPC(528, 0x80000000)); }
		bool bCanClimbUp() { mixin(MGBPC(528, 0x40000000)); }
		bool bCanClimbUp(bool val) { mixin(MSBPC(528, 0x40000000)); }
		bool bCanMantle() { mixin(MGBPC(528, 0x20000000)); }
		bool bCanMantle(bool val) { mixin(MSBPC(528, 0x20000000)); }
		bool bForceKeepAnchor() { mixin(MGBPC(528, 0x10000000)); }
		bool bForceKeepAnchor(bool val) { mixin(MSBPC(528, 0x10000000)); }
		bool bForceFloorCheck() { mixin(MGBPC(528, 0x8000000)); }
		bool bForceFloorCheck(bool val) { mixin(MSBPC(528, 0x8000000)); }
		bool bPushesRigidBodies() { mixin(MGBPC(528, 0x4000000)); }
		bool bPushesRigidBodies(bool val) { mixin(MSBPC(528, 0x4000000)); }
		bool bDirectHitWall() { mixin(MGBPC(528, 0x2000000)); }
		bool bDirectHitWall(bool val) { mixin(MSBPC(528, 0x2000000)); }
		bool bSimGravityDisabled() { mixin(MGBPC(528, 0x1000000)); }
		bool bSimGravityDisabled(bool val) { mixin(MSBPC(528, 0x1000000)); }
		bool bCanBeBaseForPawns() { mixin(MGBPC(528, 0x800000)); }
		bool bCanBeBaseForPawns(bool val) { mixin(MSBPC(528, 0x800000)); }
		bool bCanWalkOffLedges() { mixin(MGBPC(528, 0x400000)); }
		bool bCanWalkOffLedges(bool val) { mixin(MSBPC(528, 0x400000)); }
		bool bIgnoreForces() { mixin(MGBPC(528, 0x200000)); }
		bool bIgnoreForces(bool val) { mixin(MSBPC(528, 0x200000)); }
		bool bSimulateGravity() { mixin(MGBPC(528, 0x100000)); }
		bool bSimulateGravity(bool val) { mixin(MSBPC(528, 0x100000)); }
		bool bPartiallyOverLedge() { mixin(MGBPC(528, 0x80000)); }
		bool bPartiallyOverLedge(bool val) { mixin(MSBPC(528, 0x80000)); }
		bool bAllowLedgeOverhang() { mixin(MGBPC(528, 0x40000)); }
		bool bAllowLedgeOverhang(bool val) { mixin(MSBPC(528, 0x40000)); }
		bool bStopAtLedges() { mixin(MGBPC(528, 0x20000)); }
		bool bStopAtLedges(bool val) { mixin(MSBPC(528, 0x20000)); }
		bool bAvoidLedges() { mixin(MGBPC(528, 0x10000)); }
		bool bAvoidLedges(bool val) { mixin(MSBPC(528, 0x10000)); }
		bool bCanStrafe() { mixin(MGBPC(528, 0x8000)); }
		bool bCanStrafe(bool val) { mixin(MSBPC(528, 0x8000)); }
		bool bCanClimbLadders() { mixin(MGBPC(528, 0x4000)); }
		bool bCanClimbLadders(bool val) { mixin(MSBPC(528, 0x4000)); }
		bool bCanFly() { mixin(MGBPC(528, 0x2000)); }
		bool bCanFly(bool val) { mixin(MSBPC(528, 0x2000)); }
		bool bCanSwim() { mixin(MGBPC(528, 0x1000)); }
		bool bCanSwim(bool val) { mixin(MSBPC(528, 0x1000)); }
		bool bCanWalk() { mixin(MGBPC(528, 0x800)); }
		bool bCanWalk(bool val) { mixin(MSBPC(528, 0x800)); }
		bool bCanJump() { mixin(MGBPC(528, 0x400)); }
		bool bCanJump(bool val) { mixin(MSBPC(528, 0x400)); }
		bool bJumpCapable() { mixin(MGBPC(528, 0x200)); }
		bool bJumpCapable(bool val) { mixin(MSBPC(528, 0x200)); }
		bool bReducedSpeed() { mixin(MGBPC(528, 0x100)); }
		bool bReducedSpeed(bool val) { mixin(MSBPC(528, 0x100)); }
		bool bCrawler() { mixin(MGBPC(528, 0x80)); }
		bool bCrawler(bool val) { mixin(MSBPC(528, 0x80)); }
		bool bCanCrouch() { mixin(MGBPC(528, 0x40)); }
		bool bCanCrouch(bool val) { mixin(MSBPC(528, 0x40)); }
		bool bTryToUncrouch() { mixin(MGBPC(528, 0x20)); }
		bool bTryToUncrouch(bool val) { mixin(MSBPC(528, 0x20)); }
		bool bWantsToCrouch() { mixin(MGBPC(528, 0x8)); }
		bool bWantsToCrouch(bool val) { mixin(MSBPC(528, 0x8)); }
		bool bScriptTickSpecial() { mixin(MGBPC(528, 0x1)); }
		bool bScriptTickSpecial(bool val) { mixin(MSBPC(528, 0x1)); }
	}
final:
	bool IsHumanControlled(Controller* PawnController = null)
	{
		ubyte params[8];
		params[] = 0;
		if (PawnController !is null)
			*cast(Controller*)params.ptr = *PawnController;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsHumanControlled, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsLocallyControlled(Controller* PawnController = null)
	{
		ubyte params[8];
		params[] = 0;
		if (PawnController !is null)
			*cast(Controller*)params.ptr = *PawnController;
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
	bool SetDesiredRotation(Rotator TargetDesiredRotation, bool* InLockDesiredRotation = null, bool* InUnlockWhenReached = null, float* InterpolationTime = null, bool* bResetRotationRate = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetDesiredRotation;
		if (InLockDesiredRotation !is null)
			*cast(bool*)&params[12] = *InLockDesiredRotation;
		if (InUnlockWhenReached !is null)
			*cast(bool*)&params[16] = *InUnlockWhenReached;
		if (InterpolationTime !is null)
			*cast(float*)&params[20] = *InterpolationTime;
		if (bResetRotationRate !is null)
			*cast(bool*)&params[24] = *bResetRotationRate;
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
	bool CheckWaterJump(ref Vector WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = WallNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckWaterJump, params.ptr, cast(void*)0);
		WallNormal = *cast(Vector*)params.ptr;
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
	void SetScalarParameterInterp(ref in Pawn.ScalarParameterInterpStruct ScalarParameterInterp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn.ScalarParameterInterpStruct*)params.ptr = cast(Pawn.ScalarParameterInterpStruct)ScalarParameterInterp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScalarParameterInterp, params.ptr, cast(void*)0);
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
	Inventory FindInventoryType(ScriptClass DesiredClass, bool* bAllowSubclass = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		if (bAllowSubclass !is null)
			*cast(bool*)&params[4] = *bAllowSubclass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindInventoryType, params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	Inventory CreateInventory(ScriptClass NewInvClass, bool* bDoNotActivate = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewInvClass;
		if (bDoNotActivate !is null)
			*cast(bool*)&params[4] = *bDoNotActivate;
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
	NavigationPoint GetBestAnchor(Actor TestActor, Vector TestLocation, bool bStartPoint, bool bOnlyCheckVisible, ref float out_Dist)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		*cast(Vector*)&params[4] = TestLocation;
		*cast(bool*)&params[16] = bStartPoint;
		*cast(bool*)&params[20] = bOnlyCheckVisible;
		*cast(float*)&params[24] = out_Dist;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestAnchor, params.ptr, cast(void*)0);
		out_Dist = *cast(float*)&params[24];
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
	void LockDesiredRotation(bool Lock, bool* InUnlockWhenReached = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = Lock;
		if (InUnlockWhenReached !is null)
			*cast(bool*)&params[4] = *InUnlockWhenReached;
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
	void AddAnimSets(ref in ScriptArray!(AnimSet) CustomAnimSets)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(AnimSet)*)params.ptr = cast(ScriptArray!(AnimSet))CustomAnimSets;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAnimSets, params.ptr, cast(void*)0);
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
	Vector AdjustDestination(Actor GoalActor, Vector* Dest = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = GoalActor;
		if (Dest !is null)
			*cast(Vector*)&params[4] = *Dest;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustDestination, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[16];
	}
	bool SuggestJumpVelocity(ref Vector JumpVelocity, Vector Destination, Vector Start, bool* bRequireFallLanding = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = JumpVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		if (bRequireFallLanding !is null)
			*cast(bool*)&params[36] = *bRequireFallLanding;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestJumpVelocity, params.ptr, cast(void*)0);
		JumpVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[40];
	}
	float GetFallDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFallDuration, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsValidEnemyTargetFor(in PlayerReplicationInfo PRI, bool bNoPRIisEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = cast(PlayerReplicationInfo)PRI;
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
	void GetBoundingCylinder(ref float CollisionRadius, ref float CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = CollisionRadius;
		*cast(float*)&params[4] = CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundingCylinder, params.ptr, cast(void*)0);
		CollisionRadius = *cast(float*)params.ptr;
		CollisionHeight = *cast(float*)&params[4];
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
	bool SpecialMoveThruEdge(Pylon.ENavMeshEdgeType Type, int Dir, Vector MoveStart, Vector MoveDest, Actor* RelActor = null, int* RelItem = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Pylon.ENavMeshEdgeType*)params.ptr = Type;
		*cast(int*)&params[4] = Dir;
		*cast(Vector*)&params[8] = MoveStart;
		*cast(Vector*)&params[20] = MoveDest;
		if (RelActor !is null)
			*cast(Actor*)&params[32] = *RelActor;
		if (RelItem !is null)
			*cast(int*)&params[36] = *RelItem;
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
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector* HitLocation = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		if (HitLocation !is null)
			*cast(Vector*)&params[8] = *HitLocation;
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
	bool IsFirstPerson()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFirstPerson, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ProcessViewRotation(float DeltaTime, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = out_ViewRotation;
		*cast(Rotator*)&params[16] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		out_ViewRotation = *cast(Rotator*)&params[4];
		out_DeltaRot = *cast(Rotator*)&params[16];
	}
	void GetActorEyesViewPoint(ref Vector out_Location, ref Rotator out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = out_Location;
		*cast(Rotator*)&params[12] = out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorEyesViewPoint, params.ptr, cast(void*)0);
		out_Location = *cast(Vector*)params.ptr;
		out_Rotation = *cast(Rotator*)&params[12];
	}
	Vector GetPawnViewLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnViewLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetWeaponStartTraceLocation(Weapon* CurrentWeapon = null)
	{
		ubyte params[16];
		params[] = 0;
		if (CurrentWeapon !is null)
			*cast(Weapon*)params.ptr = *CurrentWeapon;
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
	void ClientMessage(ScriptString S, ScriptName* Type = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		if (Type !is null)
			*cast(ScriptName*)&params[12] = *Type;
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
	void HandleMomentum(Vector Momentum, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = Momentum;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[28] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleMomentum, params.ptr, cast(void*)0);
	}
	void AddVelocity(Vector NewVelocity, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVelocity;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptClass*)&params[24] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[28] = *HitInfo;
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
	void DetachFromController(bool* bDestroyController = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bDestroyController !is null)
			*cast(bool*)params.ptr = *bDestroyController;
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
	void AdjustDamage(ref int InDamage, ref Vector Momentum, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = InDamage;
		*cast(Vector*)&params[4] = Momentum;
		*cast(Controller*)&params[16] = InstigatedBy;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustDamage, params.ptr, cast(void*)0);
		InDamage = *cast(int*)params.ptr;
		Momentum = *cast(Vector*)&params[4];
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
	void PruneDamagedBoneList(ref ScriptArray!(ScriptName) Bones)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = Bones;
		(cast(ScriptObject)this).ProcessEvent(Functions.PruneDamagedBoneList, params.ptr, cast(void*)0);
		Bones = *cast(ScriptArray!(ScriptName)*)params.ptr;
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
	void TakeDamage(int Damage, Controller InstigatedBy, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
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
	void ThrowActiveWeapon(bool* bDestroyWeap = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bDestroyWeap !is null)
			*cast(bool*)params.ptr = *bDestroyWeap;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThrowActiveWeapon, params.ptr, cast(void*)0);
	}
	void TossInventory(Inventory Inv, Vector* ForceVelocity = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		if (ForceVelocity !is null)
			*cast(Vector*)&params[4] = *ForceVelocity;
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
	void SetRootMotionInterpCurrentTime(float inTime, float* DeltaTime = null, bool* bUpdateSkelPose = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = inTime;
		if (DeltaTime !is null)
			*cast(float*)&params[4] = *DeltaTime;
		if (bUpdateSkelPose !is null)
			*cast(bool*)&params[8] = *bUpdateSkelPose;
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
