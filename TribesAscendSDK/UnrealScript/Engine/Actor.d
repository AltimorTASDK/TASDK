module UnrealScript.Engine.Actor;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FluidSurfaceActor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.SequenceOp;
import UnrealScript.Engine.SeqAct_ChangeCollision;
import UnrealScript.Engine.SVehicle;
import UnrealScript.Engine.SeqAct_AttachToActor;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.SeqAct_ToggleHidden;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.SeqAct_Destroy;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.SkelControlLookAt;
import UnrealScript.Engine.SeqAct_SetBlockRigidBody;
import UnrealScript.Engine.SeqAct_SetVelocity;
import UnrealScript.Engine.SeqAct_SetPhysics;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.SeqAct_Teleport;
import UnrealScript.Engine.Teleporter;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_ModifyHealth;
import UnrealScript.Engine.AnimNotify_Trails;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.AnimNotify_ForceField;
import UnrealScript.Core.Property;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.AnimNotify_PlayParticleEffect;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface Actor : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Actor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mForceUpdateComponents;
			ScriptFunction mConsoleCommand;
			ScriptFunction mSleep;
			ScriptFunction mFinishAnim;
			ScriptFunction mSetCollision;
			ScriptFunction mSetCollisionSize;
			ScriptFunction mSetCollisionType;
			ScriptFunction mSetDrawScale;
			ScriptFunction mSetDrawScale3D;
			ScriptFunction mMove;
			ScriptFunction mSetLocation;
			ScriptFunction mSetRotation;
			ScriptFunction mMovingWhichWay;
			ScriptFunction mSetZone;
			ScriptFunction mSetRelativeRotation;
			ScriptFunction mSetRelativeLocation;
			ScriptFunction mSetHardAttach;
			ScriptFunction mfixedTurn;
			ScriptFunction mMoveSmooth;
			ScriptFunction mAutonomousPhysics;
			ScriptFunction mGetTerminalVelocity;
			ScriptFunction mSetBase;
			ScriptFunction mSetOwner;
			ScriptFunction mFindBase;
			ScriptFunction mIsBasedOn;
			ScriptFunction mGetBaseMost;
			ScriptFunction mIsOwnedBy;
			ScriptFunction mGetAggregateBaseVelocity;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mSetForcedInitialReplicatedProperty;
			ScriptFunction mVect2BP;
			ScriptFunction mBP2Vect;
			ScriptFunction mSetBasedPosition;
			ScriptFunction mGetBasedPosition;
			ScriptFunction mFlushPersistentDebugLines;
			ScriptFunction mDrawDebugLine;
			ScriptFunction mDrawDebugPoint;
			ScriptFunction mDrawDebugBox;
			ScriptFunction mDrawDebugStar;
			ScriptFunction mDrawDebugCoordinateSystem;
			ScriptFunction mDrawDebugSphere;
			ScriptFunction mDrawDebugCylinder;
			ScriptFunction mDrawDebugCone;
			ScriptFunction mDrawDebugString;
			ScriptFunction mDrawDebugFrustrum;
			ScriptFunction mFlushDebugStrings;
			ScriptFunction mChartData;
			ScriptFunction mSetHidden;
			ScriptFunction mSetOnlyOwnerSee;
			ScriptFunction mSetPhysics;
			ScriptFunction mClock;
			ScriptFunction mUnClock;
			ScriptFunction mAttachComponent;
			ScriptFunction mDetachComponent;
			ScriptFunction mReattachComponent;
			ScriptFunction mSetTickGroup;
			ScriptFunction mSetTickIsDisabled;
			ScriptFunction mDestroyed;
			ScriptFunction mGainedChild;
			ScriptFunction mLostChild;
			ScriptFunction mTick;
			ScriptFunction mTimer;
			ScriptFunction mHitWall;
			ScriptFunction mFalling;
			ScriptFunction mLanded;
			ScriptFunction mPhysicsVolumeChange;
			ScriptFunction mTouch;
			ScriptFunction mPostTouch;
			ScriptFunction mUnTouch;
			ScriptFunction mBump;
			ScriptFunction mBaseChange;
			ScriptFunction mAttach;
			ScriptFunction mDetach;
			ScriptFunction mSpecialHandling;
			ScriptFunction mCollisionChanged;
			ScriptFunction mEncroachingOn;
			ScriptFunction mEncroachedBy;
			ScriptFunction mRanInto;
			ScriptFunction mOnWakeRBPhysics;
			ScriptFunction mOnSleepRBPhysics;
			ScriptFunction mClampRotation;
			ScriptFunction mOverRotated;
			ScriptFunction mUsedBy;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mOutsideWorldBounds;
			ScriptFunction mVolumeBasedDestroy;
			ScriptFunction mTrace;
			ScriptFunction mTraceComponent;
			ScriptFunction mPointCheckComponent;
			ScriptFunction mFastTrace;
			ScriptFunction mTraceAllPhysicsAssetInteractions;
			ScriptFunction mFindSpot;
			ScriptFunction mContainsPoint;
			ScriptFunction mIsOverlapping;
			ScriptFunction mGetComponentsBoundingBox;
			ScriptFunction mGetBoundingCylinder;
			ScriptFunction mIsBlockedBy;
			ScriptFunction mSpawn;
			ScriptFunction mDestroy;
			ScriptFunction mTornOff;
			ScriptFunction mSetTimer;
			ScriptFunction mClearTimer;
			ScriptFunction mClearAllTimers;
			ScriptFunction mPauseTimer;
			ScriptFunction mIsTimerActive;
			ScriptFunction mGetTimerCount;
			ScriptFunction mGetTimerRate;
			ScriptFunction mGetRemainingTimeForTimer;
			ScriptFunction mModifyTimerTimeDilation;
			ScriptFunction mResetTimerTimeDilation;
			ScriptFunction mCreateAudioComponent;
			ScriptFunction mPlaySound;
			ScriptFunction mMakeNoise;
			ScriptFunction mPlayerCanSeeMe;
			ScriptFunction mSuggestTossVelocity;
			ScriptFunction mCalculateMinSpeedTrajectory;
			ScriptFunction mGetDestination;
			ScriptFunction mPreTeleport;
			ScriptFunction mPostTeleport;
			ScriptFunction mGetURLMap;
			ScriptFunction mAllActors;
			ScriptFunction mDynamicActors;
			ScriptFunction mChildActors;
			ScriptFunction mBasedActors;
			ScriptFunction mTouchingActors;
			ScriptFunction mTraceActors;
			ScriptFunction mVisibleActors;
			ScriptFunction mVisibleCollidingActors;
			ScriptFunction mCollidingActors;
			ScriptFunction mVisibleCollidingExtentActors;
			ScriptFunction mOverlappingActors;
			ScriptFunction mComponentList;
			ScriptFunction mAllOwnedComponents;
			ScriptFunction mLocalPlayerControllers;
			ScriptFunction mGetALocalPlayerController;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mBroadcastLocalizedMessage;
			ScriptFunction mBroadcastLocalizedTeamMessage;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetInitialState;
			ScriptFunction mConstraintBrokenNotify;
			ScriptFunction mNotifySkelControlBeyondLimit;
			ScriptFunction mStopsProjectile;
			ScriptFunction mHurtRadius;
			ScriptFunction mKilledBy;
			ScriptFunction mTakeDamage;
			ScriptFunction mHealDamage;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mCheckHitInfo;
			ScriptFunction mGetGravityZ;
			ScriptFunction mDebugFreezeGame;
			ScriptFunction mCheckForErrors;
			ScriptFunction mBecomeViewTarget;
			ScriptFunction mEndViewTarget;
			ScriptFunction mCalcCamera;
			ScriptFunction mGetItemName;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mReplaceText;
			ScriptFunction mGetLocalString;
			ScriptFunction mMatchStarting;
			ScriptFunction mGetDebugName;
			ScriptFunction mDisplayDebug;
			ScriptFunction mGetPhysicsName;
			ScriptFunction mModifyHearSoundComponent;
			ScriptFunction mGetFaceFXAudioComponent;
			ScriptFunction mReset;
			ScriptFunction mIsInPain;
			ScriptFunction mPlayTeleportEffect;
			ScriptFunction mCanSplash;
			ScriptFunction mApplyFluidSurfaceImpact;
			ScriptFunction mEffectIsRelevant;
			ScriptFunction mDebugMessagePlayer;
			ScriptFunction mTriggerEventClass;
			ScriptFunction mActivateEventClass;
			ScriptFunction mReceivedNewEvent;
			ScriptFunction mTriggerGlobalEventClass;
			ScriptFunction mFindEventsOfClass;
			ScriptFunction mClearLatentAction;
			ScriptFunction mOnDestroy;
			ScriptFunction mForceNetRelevant;
			ScriptFunction mSetNetUpdateTime;
			ScriptFunction mShutDown;
			ScriptFunction mPrestreamTextures;
			ScriptFunction mOnModifyHealth;
			ScriptFunction mOnTeleport;
			ScriptFunction mOnSetVelocity;
			ScriptFunction mOnSetBlockRigidBody;
			ScriptFunction mOnSetPhysics;
			ScriptFunction mOnChangeCollision;
			ScriptFunction mOnToggleHidden;
			ScriptFunction mOnAttachToActor;
			ScriptFunction mDoKismetAttachment;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mOnAnimPlay;
			ScriptFunction mBeginAnimControl;
			ScriptFunction mSetAnimPosition;
			ScriptFunction mFinishAnimControl;
			ScriptFunction mPlayActorFaceFXAnim;
			ScriptFunction mStopActorFaceFXAnim;
			ScriptFunction mSetMorphWeight;
			ScriptFunction mSetSkelControlScale;
			ScriptFunction mIsActorPlayingFaceFXAnim;
			ScriptFunction mCanActorPlayFaceFXAnim;
			ScriptFunction mGetActorFaceFXAsset;
			ScriptFunction mIsStationary;
			ScriptFunction mGetActorEyesViewPoint;
			ScriptFunction mIsPlayerOwned;
			ScriptFunction mPawnBaseDied;
			ScriptFunction mGetTeamNum;
			ScriptFunction mScriptGetTeamNum;
			ScriptFunction mNotifyLocalPlayerTeamReceived;
			ScriptFunction mFindGoodEndView;
			ScriptFunction mGetTargetLocation;
			ScriptFunction mSpawnedByKismet;
			ScriptFunction mInterpolationStarted;
			ScriptFunction mInterpolationFinished;
			ScriptFunction mInterpolationChanged;
			ScriptFunction mRigidBodyCollision;
			ScriptFunction mOnRanOver;
			ScriptFunction mSetHUDLocation;
			ScriptFunction mNativePostRenderFor;
			ScriptFunction mPostRenderFor;
			ScriptFunction mRootMotionModeChanged;
			ScriptFunction mRootMotionExtracted;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mGetPackageGuid;
			ScriptFunction mOnRigidBodySpringOverextension;
			ScriptFunction mIsInPersistentLevel;
			ScriptFunction mGetAimFrictionExtent;
			ScriptFunction mGetAimAdhesionExtent;
			ScriptFunction mPlayParticleEffect;
			ScriptFunction mCreateForceField;
			ScriptFunction mTrailsNotify;
			ScriptFunction mTrailsNotifyTick;
			ScriptFunction mTrailsNotifyEnd;
			ScriptFunction mSupportsKismetModification;
			ScriptFunction mAnimTreeUpdated;
			ScriptFunction mPostDemoRewind;
			ScriptFunction mReplicationEnded;
			ScriptFunction mGetAvoidanceVector;
			ScriptFunction mWillOverlap;
			ScriptFunction mShouldBeHiddenBySHOW_NavigationNodes;
			ScriptFunction mGetSpectatorName;
			ScriptFunction mGetSpectatorDescription;
			ScriptFunction mGetSpectatorHealthInfo;
		}
		public @property static final
		{
			ScriptFunction ForceUpdateComponents() { return mForceUpdateComponents ? mForceUpdateComponents : (mForceUpdateComponents = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ForceUpdateComponents")); }
			ScriptFunction ConsoleCommand() { return mConsoleCommand ? mConsoleCommand : (mConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ConsoleCommand")); }
			ScriptFunction Sleep() { return mSleep ? mSleep : (mSleep = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Sleep")); }
			ScriptFunction FinishAnim() { return mFinishAnim ? mFinishAnim : (mFinishAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FinishAnim")); }
			ScriptFunction SetCollision() { return mSetCollision ? mSetCollision : (mSetCollision = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetCollision")); }
			ScriptFunction SetCollisionSize() { return mSetCollisionSize ? mSetCollisionSize : (mSetCollisionSize = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetCollisionSize")); }
			ScriptFunction SetCollisionType() { return mSetCollisionType ? mSetCollisionType : (mSetCollisionType = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetCollisionType")); }
			ScriptFunction SetDrawScale() { return mSetDrawScale ? mSetDrawScale : (mSetDrawScale = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetDrawScale")); }
			ScriptFunction SetDrawScale3D() { return mSetDrawScale3D ? mSetDrawScale3D : (mSetDrawScale3D = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetDrawScale3D")); }
			ScriptFunction Move() { return mMove ? mMove : (mMove = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Move")); }
			ScriptFunction SetLocation() { return mSetLocation ? mSetLocation : (mSetLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetLocation")); }
			ScriptFunction SetRotation() { return mSetRotation ? mSetRotation : (mSetRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetRotation")); }
			ScriptFunction MovingWhichWay() { return mMovingWhichWay ? mMovingWhichWay : (mMovingWhichWay = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.MovingWhichWay")); }
			ScriptFunction SetZone() { return mSetZone ? mSetZone : (mSetZone = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetZone")); }
			ScriptFunction SetRelativeRotation() { return mSetRelativeRotation ? mSetRelativeRotation : (mSetRelativeRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetRelativeRotation")); }
			ScriptFunction SetRelativeLocation() { return mSetRelativeLocation ? mSetRelativeLocation : (mSetRelativeLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetRelativeLocation")); }
			ScriptFunction SetHardAttach() { return mSetHardAttach ? mSetHardAttach : (mSetHardAttach = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetHardAttach")); }
			ScriptFunction fixedTurn() { return mfixedTurn ? mfixedTurn : (mfixedTurn = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.fixedTurn")); }
			ScriptFunction MoveSmooth() { return mMoveSmooth ? mMoveSmooth : (mMoveSmooth = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.MoveSmooth")); }
			ScriptFunction AutonomousPhysics() { return mAutonomousPhysics ? mAutonomousPhysics : (mAutonomousPhysics = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.AutonomousPhysics")); }
			ScriptFunction GetTerminalVelocity() { return mGetTerminalVelocity ? mGetTerminalVelocity : (mGetTerminalVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetTerminalVelocity")); }
			ScriptFunction SetBase() { return mSetBase ? mSetBase : (mSetBase = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetBase")); }
			ScriptFunction SetOwner() { return mSetOwner ? mSetOwner : (mSetOwner = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetOwner")); }
			ScriptFunction FindBase() { return mFindBase ? mFindBase : (mFindBase = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FindBase")); }
			ScriptFunction IsBasedOn() { return mIsBasedOn ? mIsBasedOn : (mIsBasedOn = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsBasedOn")); }
			ScriptFunction GetBaseMost() { return mGetBaseMost ? mGetBaseMost : (mGetBaseMost = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetBaseMost")); }
			ScriptFunction IsOwnedBy() { return mIsOwnedBy ? mIsOwnedBy : (mIsOwnedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsOwnedBy")); }
			ScriptFunction GetAggregateBaseVelocity() { return mGetAggregateBaseVelocity ? mGetAggregateBaseVelocity : (mGetAggregateBaseVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetAggregateBaseVelocity")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ReplicatedEvent")); }
			ScriptFunction SetForcedInitialReplicatedProperty() { return mSetForcedInitialReplicatedProperty ? mSetForcedInitialReplicatedProperty : (mSetForcedInitialReplicatedProperty = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetForcedInitialReplicatedProperty")); }
			ScriptFunction Vect2BP() { return mVect2BP ? mVect2BP : (mVect2BP = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Vect2BP")); }
			ScriptFunction BP2Vect() { return mBP2Vect ? mBP2Vect : (mBP2Vect = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.BP2Vect")); }
			ScriptFunction SetBasedPosition() { return mSetBasedPosition ? mSetBasedPosition : (mSetBasedPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetBasedPosition")); }
			ScriptFunction GetBasedPosition() { return mGetBasedPosition ? mGetBasedPosition : (mGetBasedPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetBasedPosition")); }
			ScriptFunction FlushPersistentDebugLines() { return mFlushPersistentDebugLines ? mFlushPersistentDebugLines : (mFlushPersistentDebugLines = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FlushPersistentDebugLines")); }
			ScriptFunction DrawDebugLine() { return mDrawDebugLine ? mDrawDebugLine : (mDrawDebugLine = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugLine")); }
			ScriptFunction DrawDebugPoint() { return mDrawDebugPoint ? mDrawDebugPoint : (mDrawDebugPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugPoint")); }
			ScriptFunction DrawDebugBox() { return mDrawDebugBox ? mDrawDebugBox : (mDrawDebugBox = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugBox")); }
			ScriptFunction DrawDebugStar() { return mDrawDebugStar ? mDrawDebugStar : (mDrawDebugStar = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugStar")); }
			ScriptFunction DrawDebugCoordinateSystem() { return mDrawDebugCoordinateSystem ? mDrawDebugCoordinateSystem : (mDrawDebugCoordinateSystem = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugCoordinateSystem")); }
			ScriptFunction DrawDebugSphere() { return mDrawDebugSphere ? mDrawDebugSphere : (mDrawDebugSphere = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugSphere")); }
			ScriptFunction DrawDebugCylinder() { return mDrawDebugCylinder ? mDrawDebugCylinder : (mDrawDebugCylinder = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugCylinder")); }
			ScriptFunction DrawDebugCone() { return mDrawDebugCone ? mDrawDebugCone : (mDrawDebugCone = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugCone")); }
			ScriptFunction DrawDebugString() { return mDrawDebugString ? mDrawDebugString : (mDrawDebugString = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugString")); }
			ScriptFunction DrawDebugFrustrum() { return mDrawDebugFrustrum ? mDrawDebugFrustrum : (mDrawDebugFrustrum = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DrawDebugFrustrum")); }
			ScriptFunction FlushDebugStrings() { return mFlushDebugStrings ? mFlushDebugStrings : (mFlushDebugStrings = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FlushDebugStrings")); }
			ScriptFunction ChartData() { return mChartData ? mChartData : (mChartData = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ChartData")); }
			ScriptFunction SetHidden() { return mSetHidden ? mSetHidden : (mSetHidden = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetHidden")); }
			ScriptFunction SetOnlyOwnerSee() { return mSetOnlyOwnerSee ? mSetOnlyOwnerSee : (mSetOnlyOwnerSee = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetOnlyOwnerSee")); }
			ScriptFunction SetPhysics() { return mSetPhysics ? mSetPhysics : (mSetPhysics = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetPhysics")); }
			ScriptFunction Clock() { return mClock ? mClock : (mClock = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Clock")); }
			ScriptFunction UnClock() { return mUnClock ? mUnClock : (mUnClock = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.UnClock")); }
			ScriptFunction AttachComponent() { return mAttachComponent ? mAttachComponent : (mAttachComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.AttachComponent")); }
			ScriptFunction DetachComponent() { return mDetachComponent ? mDetachComponent : (mDetachComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DetachComponent")); }
			ScriptFunction ReattachComponent() { return mReattachComponent ? mReattachComponent : (mReattachComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ReattachComponent")); }
			ScriptFunction SetTickGroup() { return mSetTickGroup ? mSetTickGroup : (mSetTickGroup = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetTickGroup")); }
			ScriptFunction SetTickIsDisabled() { return mSetTickIsDisabled ? mSetTickIsDisabled : (mSetTickIsDisabled = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetTickIsDisabled")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Destroyed")); }
			ScriptFunction GainedChild() { return mGainedChild ? mGainedChild : (mGainedChild = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GainedChild")); }
			ScriptFunction LostChild() { return mLostChild ? mLostChild : (mLostChild = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.LostChild")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Tick")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Timer")); }
			ScriptFunction HitWall() { return mHitWall ? mHitWall : (mHitWall = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.HitWall")); }
			ScriptFunction Falling() { return mFalling ? mFalling : (mFalling = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Falling")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Landed")); }
			ScriptFunction PhysicsVolumeChange() { return mPhysicsVolumeChange ? mPhysicsVolumeChange : (mPhysicsVolumeChange = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PhysicsVolumeChange")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Touch")); }
			ScriptFunction PostTouch() { return mPostTouch ? mPostTouch : (mPostTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PostTouch")); }
			ScriptFunction UnTouch() { return mUnTouch ? mUnTouch : (mUnTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.UnTouch")); }
			ScriptFunction Bump() { return mBump ? mBump : (mBump = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Bump")); }
			ScriptFunction BaseChange() { return mBaseChange ? mBaseChange : (mBaseChange = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.BaseChange")); }
			ScriptFunction Attach() { return mAttach ? mAttach : (mAttach = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Attach")); }
			ScriptFunction Detach() { return mDetach ? mDetach : (mDetach = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Detach")); }
			ScriptFunction SpecialHandling() { return mSpecialHandling ? mSpecialHandling : (mSpecialHandling = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SpecialHandling")); }
			ScriptFunction CollisionChanged() { return mCollisionChanged ? mCollisionChanged : (mCollisionChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CollisionChanged")); }
			ScriptFunction EncroachingOn() { return mEncroachingOn ? mEncroachingOn : (mEncroachingOn = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.EncroachingOn")); }
			ScriptFunction EncroachedBy() { return mEncroachedBy ? mEncroachedBy : (mEncroachedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.EncroachedBy")); }
			ScriptFunction RanInto() { return mRanInto ? mRanInto : (mRanInto = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.RanInto")); }
			ScriptFunction OnWakeRBPhysics() { return mOnWakeRBPhysics ? mOnWakeRBPhysics : (mOnWakeRBPhysics = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnWakeRBPhysics")); }
			ScriptFunction OnSleepRBPhysics() { return mOnSleepRBPhysics ? mOnSleepRBPhysics : (mOnSleepRBPhysics = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnSleepRBPhysics")); }
			ScriptFunction ClampRotation() { return mClampRotation ? mClampRotation : (mClampRotation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ClampRotation")); }
			ScriptFunction OverRotated() { return mOverRotated ? mOverRotated : (mOverRotated = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OverRotated")); }
			ScriptFunction UsedBy() { return mUsedBy ? mUsedBy : (mUsedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.UsedBy")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FellOutOfWorld")); }
			ScriptFunction OutsideWorldBounds() { return mOutsideWorldBounds ? mOutsideWorldBounds : (mOutsideWorldBounds = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OutsideWorldBounds")); }
			ScriptFunction VolumeBasedDestroy() { return mVolumeBasedDestroy ? mVolumeBasedDestroy : (mVolumeBasedDestroy = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.VolumeBasedDestroy")); }
			ScriptFunction Trace() { return mTrace ? mTrace : (mTrace = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Trace")); }
			ScriptFunction TraceComponent() { return mTraceComponent ? mTraceComponent : (mTraceComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TraceComponent")); }
			ScriptFunction PointCheckComponent() { return mPointCheckComponent ? mPointCheckComponent : (mPointCheckComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PointCheckComponent")); }
			ScriptFunction FastTrace() { return mFastTrace ? mFastTrace : (mFastTrace = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FastTrace")); }
			ScriptFunction TraceAllPhysicsAssetInteractions() { return mTraceAllPhysicsAssetInteractions ? mTraceAllPhysicsAssetInteractions : (mTraceAllPhysicsAssetInteractions = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TraceAllPhysicsAssetInteractions")); }
			ScriptFunction FindSpot() { return mFindSpot ? mFindSpot : (mFindSpot = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FindSpot")); }
			ScriptFunction ContainsPoint() { return mContainsPoint ? mContainsPoint : (mContainsPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ContainsPoint")); }
			ScriptFunction IsOverlapping() { return mIsOverlapping ? mIsOverlapping : (mIsOverlapping = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsOverlapping")); }
			ScriptFunction GetComponentsBoundingBox() { return mGetComponentsBoundingBox ? mGetComponentsBoundingBox : (mGetComponentsBoundingBox = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetComponentsBoundingBox")); }
			ScriptFunction GetBoundingCylinder() { return mGetBoundingCylinder ? mGetBoundingCylinder : (mGetBoundingCylinder = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetBoundingCylinder")); }
			ScriptFunction IsBlockedBy() { return mIsBlockedBy ? mIsBlockedBy : (mIsBlockedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsBlockedBy")); }
			ScriptFunction Spawn() { return mSpawn ? mSpawn : (mSpawn = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Spawn")); }
			ScriptFunction Destroy() { return mDestroy ? mDestroy : (mDestroy = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Destroy")); }
			ScriptFunction TornOff() { return mTornOff ? mTornOff : (mTornOff = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TornOff")); }
			ScriptFunction SetTimer() { return mSetTimer ? mSetTimer : (mSetTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetTimer")); }
			ScriptFunction ClearTimer() { return mClearTimer ? mClearTimer : (mClearTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ClearTimer")); }
			ScriptFunction ClearAllTimers() { return mClearAllTimers ? mClearAllTimers : (mClearAllTimers = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ClearAllTimers")); }
			ScriptFunction PauseTimer() { return mPauseTimer ? mPauseTimer : (mPauseTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PauseTimer")); }
			ScriptFunction IsTimerActive() { return mIsTimerActive ? mIsTimerActive : (mIsTimerActive = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsTimerActive")); }
			ScriptFunction GetTimerCount() { return mGetTimerCount ? mGetTimerCount : (mGetTimerCount = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetTimerCount")); }
			ScriptFunction GetTimerRate() { return mGetTimerRate ? mGetTimerRate : (mGetTimerRate = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetTimerRate")); }
			ScriptFunction GetRemainingTimeForTimer() { return mGetRemainingTimeForTimer ? mGetRemainingTimeForTimer : (mGetRemainingTimeForTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetRemainingTimeForTimer")); }
			ScriptFunction ModifyTimerTimeDilation() { return mModifyTimerTimeDilation ? mModifyTimerTimeDilation : (mModifyTimerTimeDilation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ModifyTimerTimeDilation")); }
			ScriptFunction ResetTimerTimeDilation() { return mResetTimerTimeDilation ? mResetTimerTimeDilation : (mResetTimerTimeDilation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ResetTimerTimeDilation")); }
			ScriptFunction CreateAudioComponent() { return mCreateAudioComponent ? mCreateAudioComponent : (mCreateAudioComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CreateAudioComponent")); }
			ScriptFunction PlaySound() { return mPlaySound ? mPlaySound : (mPlaySound = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PlaySound")); }
			ScriptFunction MakeNoise() { return mMakeNoise ? mMakeNoise : (mMakeNoise = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.MakeNoise")); }
			ScriptFunction PlayerCanSeeMe() { return mPlayerCanSeeMe ? mPlayerCanSeeMe : (mPlayerCanSeeMe = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PlayerCanSeeMe")); }
			ScriptFunction SuggestTossVelocity() { return mSuggestTossVelocity ? mSuggestTossVelocity : (mSuggestTossVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SuggestTossVelocity")); }
			ScriptFunction CalculateMinSpeedTrajectory() { return mCalculateMinSpeedTrajectory ? mCalculateMinSpeedTrajectory : (mCalculateMinSpeedTrajectory = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CalculateMinSpeedTrajectory")); }
			ScriptFunction GetDestination() { return mGetDestination ? mGetDestination : (mGetDestination = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetDestination")); }
			ScriptFunction PreTeleport() { return mPreTeleport ? mPreTeleport : (mPreTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PreTeleport")); }
			ScriptFunction PostTeleport() { return mPostTeleport ? mPostTeleport : (mPostTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PostTeleport")); }
			ScriptFunction GetURLMap() { return mGetURLMap ? mGetURLMap : (mGetURLMap = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetURLMap")); }
			ScriptFunction AllActors() { return mAllActors ? mAllActors : (mAllActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.AllActors")); }
			ScriptFunction DynamicActors() { return mDynamicActors ? mDynamicActors : (mDynamicActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DynamicActors")); }
			ScriptFunction ChildActors() { return mChildActors ? mChildActors : (mChildActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ChildActors")); }
			ScriptFunction BasedActors() { return mBasedActors ? mBasedActors : (mBasedActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.BasedActors")); }
			ScriptFunction TouchingActors() { return mTouchingActors ? mTouchingActors : (mTouchingActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TouchingActors")); }
			ScriptFunction TraceActors() { return mTraceActors ? mTraceActors : (mTraceActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TraceActors")); }
			ScriptFunction VisibleActors() { return mVisibleActors ? mVisibleActors : (mVisibleActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.VisibleActors")); }
			ScriptFunction VisibleCollidingActors() { return mVisibleCollidingActors ? mVisibleCollidingActors : (mVisibleCollidingActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.VisibleCollidingActors")); }
			ScriptFunction CollidingActors() { return mCollidingActors ? mCollidingActors : (mCollidingActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CollidingActors")); }
			ScriptFunction VisibleCollidingExtentActors() { return mVisibleCollidingExtentActors ? mVisibleCollidingExtentActors : (mVisibleCollidingExtentActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.VisibleCollidingExtentActors")); }
			ScriptFunction OverlappingActors() { return mOverlappingActors ? mOverlappingActors : (mOverlappingActors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OverlappingActors")); }
			ScriptFunction ComponentList() { return mComponentList ? mComponentList : (mComponentList = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ComponentList")); }
			ScriptFunction AllOwnedComponents() { return mAllOwnedComponents ? mAllOwnedComponents : (mAllOwnedComponents = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.AllOwnedComponents")); }
			ScriptFunction LocalPlayerControllers() { return mLocalPlayerControllers ? mLocalPlayerControllers : (mLocalPlayerControllers = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.LocalPlayerControllers")); }
			ScriptFunction GetALocalPlayerController() { return mGetALocalPlayerController ? mGetALocalPlayerController : (mGetALocalPlayerController = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetALocalPlayerController")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PreBeginPlay")); }
			ScriptFunction BroadcastLocalizedMessage() { return mBroadcastLocalizedMessage ? mBroadcastLocalizedMessage : (mBroadcastLocalizedMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.BroadcastLocalizedMessage")); }
			ScriptFunction BroadcastLocalizedTeamMessage() { return mBroadcastLocalizedTeamMessage ? mBroadcastLocalizedTeamMessage : (mBroadcastLocalizedTeamMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.BroadcastLocalizedTeamMessage")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PostBeginPlay")); }
			ScriptFunction SetInitialState() { return mSetInitialState ? mSetInitialState : (mSetInitialState = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetInitialState")); }
			ScriptFunction ConstraintBrokenNotify() { return mConstraintBrokenNotify ? mConstraintBrokenNotify : (mConstraintBrokenNotify = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ConstraintBrokenNotify")); }
			ScriptFunction NotifySkelControlBeyondLimit() { return mNotifySkelControlBeyondLimit ? mNotifySkelControlBeyondLimit : (mNotifySkelControlBeyondLimit = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.NotifySkelControlBeyondLimit")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.StopsProjectile")); }
			ScriptFunction HurtRadius() { return mHurtRadius ? mHurtRadius : (mHurtRadius = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.HurtRadius")); }
			ScriptFunction KilledBy() { return mKilledBy ? mKilledBy : (mKilledBy = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.KilledBy")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TakeDamage")); }
			ScriptFunction HealDamage() { return mHealDamage ? mHealDamage : (mHealDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.HealDamage")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TakeRadiusDamage")); }
			ScriptFunction CheckHitInfo() { return mCheckHitInfo ? mCheckHitInfo : (mCheckHitInfo = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CheckHitInfo")); }
			ScriptFunction GetGravityZ() { return mGetGravityZ ? mGetGravityZ : (mGetGravityZ = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetGravityZ")); }
			ScriptFunction DebugFreezeGame() { return mDebugFreezeGame ? mDebugFreezeGame : (mDebugFreezeGame = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DebugFreezeGame")); }
			ScriptFunction CheckForErrors() { return mCheckForErrors ? mCheckForErrors : (mCheckForErrors = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CheckForErrors")); }
			ScriptFunction BecomeViewTarget() { return mBecomeViewTarget ? mBecomeViewTarget : (mBecomeViewTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.BecomeViewTarget")); }
			ScriptFunction EndViewTarget() { return mEndViewTarget ? mEndViewTarget : (mEndViewTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.EndViewTarget")); }
			ScriptFunction CalcCamera() { return mCalcCamera ? mCalcCamera : (mCalcCamera = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CalcCamera")); }
			ScriptFunction GetItemName() { return mGetItemName ? mGetItemName : (mGetItemName = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetItemName")); }
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetHumanReadableName")); }
			ScriptFunction ReplaceText() { return mReplaceText ? mReplaceText : (mReplaceText = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ReplaceText")); }
			ScriptFunction GetLocalString() { return mGetLocalString ? mGetLocalString : (mGetLocalString = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetLocalString")); }
			ScriptFunction MatchStarting() { return mMatchStarting ? mMatchStarting : (mMatchStarting = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.MatchStarting")); }
			ScriptFunction GetDebugName() { return mGetDebugName ? mGetDebugName : (mGetDebugName = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetDebugName")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DisplayDebug")); }
			ScriptFunction GetPhysicsName() { return mGetPhysicsName ? mGetPhysicsName : (mGetPhysicsName = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetPhysicsName")); }
			ScriptFunction ModifyHearSoundComponent() { return mModifyHearSoundComponent ? mModifyHearSoundComponent : (mModifyHearSoundComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ModifyHearSoundComponent")); }
			ScriptFunction GetFaceFXAudioComponent() { return mGetFaceFXAudioComponent ? mGetFaceFXAudioComponent : (mGetFaceFXAudioComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetFaceFXAudioComponent")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.Reset")); }
			ScriptFunction IsInPain() { return mIsInPain ? mIsInPain : (mIsInPain = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsInPain")); }
			ScriptFunction PlayTeleportEffect() { return mPlayTeleportEffect ? mPlayTeleportEffect : (mPlayTeleportEffect = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PlayTeleportEffect")); }
			ScriptFunction CanSplash() { return mCanSplash ? mCanSplash : (mCanSplash = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CanSplash")); }
			ScriptFunction ApplyFluidSurfaceImpact() { return mApplyFluidSurfaceImpact ? mApplyFluidSurfaceImpact : (mApplyFluidSurfaceImpact = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ApplyFluidSurfaceImpact")); }
			ScriptFunction EffectIsRelevant() { return mEffectIsRelevant ? mEffectIsRelevant : (mEffectIsRelevant = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.EffectIsRelevant")); }
			ScriptFunction DebugMessagePlayer() { return mDebugMessagePlayer ? mDebugMessagePlayer : (mDebugMessagePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DebugMessagePlayer")); }
			ScriptFunction TriggerEventClass() { return mTriggerEventClass ? mTriggerEventClass : (mTriggerEventClass = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TriggerEventClass")); }
			ScriptFunction ActivateEventClass() { return mActivateEventClass ? mActivateEventClass : (mActivateEventClass = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ActivateEventClass")); }
			ScriptFunction ReceivedNewEvent() { return mReceivedNewEvent ? mReceivedNewEvent : (mReceivedNewEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ReceivedNewEvent")); }
			ScriptFunction TriggerGlobalEventClass() { return mTriggerGlobalEventClass ? mTriggerGlobalEventClass : (mTriggerGlobalEventClass = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TriggerGlobalEventClass")); }
			ScriptFunction FindEventsOfClass() { return mFindEventsOfClass ? mFindEventsOfClass : (mFindEventsOfClass = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FindEventsOfClass")); }
			ScriptFunction ClearLatentAction() { return mClearLatentAction ? mClearLatentAction : (mClearLatentAction = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ClearLatentAction")); }
			ScriptFunction OnDestroy() { return mOnDestroy ? mOnDestroy : (mOnDestroy = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnDestroy")); }
			ScriptFunction ForceNetRelevant() { return mForceNetRelevant ? mForceNetRelevant : (mForceNetRelevant = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ForceNetRelevant")); }
			ScriptFunction SetNetUpdateTime() { return mSetNetUpdateTime ? mSetNetUpdateTime : (mSetNetUpdateTime = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetNetUpdateTime")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ShutDown")); }
			ScriptFunction PrestreamTextures() { return mPrestreamTextures ? mPrestreamTextures : (mPrestreamTextures = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PrestreamTextures")); }
			ScriptFunction OnModifyHealth() { return mOnModifyHealth ? mOnModifyHealth : (mOnModifyHealth = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnModifyHealth")); }
			ScriptFunction OnTeleport() { return mOnTeleport ? mOnTeleport : (mOnTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnTeleport")); }
			ScriptFunction OnSetVelocity() { return mOnSetVelocity ? mOnSetVelocity : (mOnSetVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnSetVelocity")); }
			ScriptFunction OnSetBlockRigidBody() { return mOnSetBlockRigidBody ? mOnSetBlockRigidBody : (mOnSetBlockRigidBody = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnSetBlockRigidBody")); }
			ScriptFunction OnSetPhysics() { return mOnSetPhysics ? mOnSetPhysics : (mOnSetPhysics = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnSetPhysics")); }
			ScriptFunction OnChangeCollision() { return mOnChangeCollision ? mOnChangeCollision : (mOnChangeCollision = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnChangeCollision")); }
			ScriptFunction OnToggleHidden() { return mOnToggleHidden ? mOnToggleHidden : (mOnToggleHidden = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnToggleHidden")); }
			ScriptFunction OnAttachToActor() { return mOnAttachToActor ? mOnAttachToActor : (mOnAttachToActor = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnAttachToActor")); }
			ScriptFunction DoKismetAttachment() { return mDoKismetAttachment ? mDoKismetAttachment : (mDoKismetAttachment = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.DoKismetAttachment")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnAnimEnd")); }
			ScriptFunction OnAnimPlay() { return mOnAnimPlay ? mOnAnimPlay : (mOnAnimPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnAnimPlay")); }
			ScriptFunction BeginAnimControl() { return mBeginAnimControl ? mBeginAnimControl : (mBeginAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.BeginAnimControl")); }
			ScriptFunction SetAnimPosition() { return mSetAnimPosition ? mSetAnimPosition : (mSetAnimPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetAnimPosition")); }
			ScriptFunction FinishAnimControl() { return mFinishAnimControl ? mFinishAnimControl : (mFinishAnimControl = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FinishAnimControl")); }
			ScriptFunction PlayActorFaceFXAnim() { return mPlayActorFaceFXAnim ? mPlayActorFaceFXAnim : (mPlayActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PlayActorFaceFXAnim")); }
			ScriptFunction StopActorFaceFXAnim() { return mStopActorFaceFXAnim ? mStopActorFaceFXAnim : (mStopActorFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.StopActorFaceFXAnim")); }
			ScriptFunction SetMorphWeight() { return mSetMorphWeight ? mSetMorphWeight : (mSetMorphWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetMorphWeight")); }
			ScriptFunction SetSkelControlScale() { return mSetSkelControlScale ? mSetSkelControlScale : (mSetSkelControlScale = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetSkelControlScale")); }
			ScriptFunction IsActorPlayingFaceFXAnim() { return mIsActorPlayingFaceFXAnim ? mIsActorPlayingFaceFXAnim : (mIsActorPlayingFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsActorPlayingFaceFXAnim")); }
			ScriptFunction CanActorPlayFaceFXAnim() { return mCanActorPlayFaceFXAnim ? mCanActorPlayFaceFXAnim : (mCanActorPlayFaceFXAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CanActorPlayFaceFXAnim")); }
			ScriptFunction GetActorFaceFXAsset() { return mGetActorFaceFXAsset ? mGetActorFaceFXAsset : (mGetActorFaceFXAsset = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetActorFaceFXAsset")); }
			ScriptFunction IsStationary() { return mIsStationary ? mIsStationary : (mIsStationary = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsStationary")); }
			ScriptFunction GetActorEyesViewPoint() { return mGetActorEyesViewPoint ? mGetActorEyesViewPoint : (mGetActorEyesViewPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetActorEyesViewPoint")); }
			ScriptFunction IsPlayerOwned() { return mIsPlayerOwned ? mIsPlayerOwned : (mIsPlayerOwned = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsPlayerOwned")); }
			ScriptFunction PawnBaseDied() { return mPawnBaseDied ? mPawnBaseDied : (mPawnBaseDied = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PawnBaseDied")); }
			ScriptFunction GetTeamNum() { return mGetTeamNum ? mGetTeamNum : (mGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetTeamNum")); }
			ScriptFunction ScriptGetTeamNum() { return mScriptGetTeamNum ? mScriptGetTeamNum : (mScriptGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ScriptGetTeamNum")); }
			ScriptFunction NotifyLocalPlayerTeamReceived() { return mNotifyLocalPlayerTeamReceived ? mNotifyLocalPlayerTeamReceived : (mNotifyLocalPlayerTeamReceived = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.NotifyLocalPlayerTeamReceived")); }
			ScriptFunction FindGoodEndView() { return mFindGoodEndView ? mFindGoodEndView : (mFindGoodEndView = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.FindGoodEndView")); }
			ScriptFunction GetTargetLocation() { return mGetTargetLocation ? mGetTargetLocation : (mGetTargetLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetTargetLocation")); }
			ScriptFunction SpawnedByKismet() { return mSpawnedByKismet ? mSpawnedByKismet : (mSpawnedByKismet = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SpawnedByKismet")); }
			ScriptFunction InterpolationStarted() { return mInterpolationStarted ? mInterpolationStarted : (mInterpolationStarted = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.InterpolationStarted")); }
			ScriptFunction InterpolationFinished() { return mInterpolationFinished ? mInterpolationFinished : (mInterpolationFinished = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.InterpolationFinished")); }
			ScriptFunction InterpolationChanged() { return mInterpolationChanged ? mInterpolationChanged : (mInterpolationChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.InterpolationChanged")); }
			ScriptFunction RigidBodyCollision() { return mRigidBodyCollision ? mRigidBodyCollision : (mRigidBodyCollision = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.RigidBodyCollision")); }
			ScriptFunction OnRanOver() { return mOnRanOver ? mOnRanOver : (mOnRanOver = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnRanOver")); }
			ScriptFunction SetHUDLocation() { return mSetHUDLocation ? mSetHUDLocation : (mSetHUDLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SetHUDLocation")); }
			ScriptFunction NativePostRenderFor() { return mNativePostRenderFor ? mNativePostRenderFor : (mNativePostRenderFor = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.NativePostRenderFor")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PostRenderFor")); }
			ScriptFunction RootMotionModeChanged() { return mRootMotionModeChanged ? mRootMotionModeChanged : (mRootMotionModeChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.RootMotionModeChanged")); }
			ScriptFunction RootMotionExtracted() { return mRootMotionExtracted ? mRootMotionExtracted : (mRootMotionExtracted = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.RootMotionExtracted")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PostInitAnimTree")); }
			ScriptFunction GetPackageGuid() { return mGetPackageGuid ? mGetPackageGuid : (mGetPackageGuid = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetPackageGuid")); }
			ScriptFunction OnRigidBodySpringOverextension() { return mOnRigidBodySpringOverextension ? mOnRigidBodySpringOverextension : (mOnRigidBodySpringOverextension = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.OnRigidBodySpringOverextension")); }
			ScriptFunction IsInPersistentLevel() { return mIsInPersistentLevel ? mIsInPersistentLevel : (mIsInPersistentLevel = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.IsInPersistentLevel")); }
			ScriptFunction GetAimFrictionExtent() { return mGetAimFrictionExtent ? mGetAimFrictionExtent : (mGetAimFrictionExtent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetAimFrictionExtent")); }
			ScriptFunction GetAimAdhesionExtent() { return mGetAimAdhesionExtent ? mGetAimAdhesionExtent : (mGetAimAdhesionExtent = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetAimAdhesionExtent")); }
			ScriptFunction PlayParticleEffect() { return mPlayParticleEffect ? mPlayParticleEffect : (mPlayParticleEffect = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PlayParticleEffect")); }
			ScriptFunction CreateForceField() { return mCreateForceField ? mCreateForceField : (mCreateForceField = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.CreateForceField")); }
			ScriptFunction TrailsNotify() { return mTrailsNotify ? mTrailsNotify : (mTrailsNotify = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TrailsNotify")); }
			ScriptFunction TrailsNotifyTick() { return mTrailsNotifyTick ? mTrailsNotifyTick : (mTrailsNotifyTick = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TrailsNotifyTick")); }
			ScriptFunction TrailsNotifyEnd() { return mTrailsNotifyEnd ? mTrailsNotifyEnd : (mTrailsNotifyEnd = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.TrailsNotifyEnd")); }
			ScriptFunction SupportsKismetModification() { return mSupportsKismetModification ? mSupportsKismetModification : (mSupportsKismetModification = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.SupportsKismetModification")); }
			ScriptFunction AnimTreeUpdated() { return mAnimTreeUpdated ? mAnimTreeUpdated : (mAnimTreeUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.AnimTreeUpdated")); }
			ScriptFunction PostDemoRewind() { return mPostDemoRewind ? mPostDemoRewind : (mPostDemoRewind = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.PostDemoRewind")); }
			ScriptFunction ReplicationEnded() { return mReplicationEnded ? mReplicationEnded : (mReplicationEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ReplicationEnded")); }
			ScriptFunction GetAvoidanceVector() { return mGetAvoidanceVector ? mGetAvoidanceVector : (mGetAvoidanceVector = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetAvoidanceVector")); }
			ScriptFunction WillOverlap() { return mWillOverlap ? mWillOverlap : (mWillOverlap = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.WillOverlap")); }
			ScriptFunction ShouldBeHiddenBySHOW_NavigationNodes() { return mShouldBeHiddenBySHOW_NavigationNodes ? mShouldBeHiddenBySHOW_NavigationNodes : (mShouldBeHiddenBySHOW_NavigationNodes = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.ShouldBeHiddenBySHOW_NavigationNodes")); }
			ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetSpectatorName")); }
			ScriptFunction GetSpectatorDescription() { return mGetSpectatorDescription ? mGetSpectatorDescription : (mGetSpectatorDescription = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetSpectatorDescription")); }
			ScriptFunction GetSpectatorHealthInfo() { return mGetSpectatorHealthInfo ? mGetSpectatorHealthInfo : (mGetSpectatorHealthInfo = ScriptObject.Find!(ScriptFunction)("Function Engine.Actor.GetSpectatorHealthInfo")); }
		}
	}
	static struct Constants
	{
		enum
		{
			MINFLOORZ = 0.7,
			ACTORMAXSTEPHEIGHT = 35.0,
			RBSTATE_LINVELSCALE = 10.0,
			RBSTATE_ANGVELSCALE = 1000.0,
			RB_None = 0x00,
			RB_NeedsUpdate = 0x01,
			RB_Sleeping = 0x02,
			REP_RBLOCATION_ERROR_TOLERANCE_SQ = 16.0f,
			TRACEFLAG_Blocking = 8,
			TRACEFLAG_SkipMovers = 4,
			TRACEFLAG_PhysicsVolumes = 2,
			TRACEFLAG_Bullet = 1,
		}
	}
	enum EPhysics : ubyte
	{
		PHYS_None = 0,
		PHYS_Walking = 1,
		PHYS_Falling = 2,
		PHYS_Swimming = 3,
		PHYS_Flying = 4,
		PHYS_Rotating = 5,
		PHYS_Projectile = 6,
		PHYS_Interpolating = 7,
		PHYS_Spider = 8,
		PHYS_Ladder = 9,
		PHYS_RigidBody = 10,
		PHYS_SoftBody = 11,
		PHYS_NavMeshWalking = 12,
		PHYS_Skiing = 13,
		PHYS_Unused = 14,
		PHYS_Custom = 15,
		PHYS_MAX = 16,
	}
	enum EMoveDir : ubyte
	{
		MD_Stationary = 0,
		MD_Forward = 1,
		MD_Backward = 2,
		MD_Left = 3,
		MD_Right = 4,
		MD_Up = 5,
		MD_Down = 6,
		MD_MAX = 7,
	}
	enum ECollisionType : ubyte
	{
		COLLIDE_CustomDefault = 0,
		COLLIDE_NoCollision = 1,
		COLLIDE_BlockAll = 2,
		COLLIDE_BlockWeapons = 3,
		COLLIDE_BlockVehicles = 4,
		COLLIDE_TouchAll = 5,
		COLLIDE_TouchWeapons = 6,
		COLLIDE_BlockAllButWeapons = 7,
		COLLIDE_TouchAllButWeapons = 8,
		COLLIDE_BlockWeaponsKickable = 9,
		COLLIDE_MAX = 10,
	}
	enum ETravelType : ubyte
	{
		TRAVEL_Absolute = 0,
		TRAVEL_Partial = 1,
		TRAVEL_Relative = 2,
		TRAVEL_MAX = 3,
	}
	enum EDoubleClickDir : ubyte
	{
		DCLICK_None = 0,
		DCLICK_Left = 1,
		DCLICK_Right = 2,
		DCLICK_Forward = 3,
		DCLICK_Back = 4,
		DCLICK_Active = 5,
		DCLICK_Done = 6,
		DCLICK_MAX = 7,
	}
	enum ENetRole : ubyte
	{
		ROLE_None = 0,
		ROLE_SimulatedProxy = 1,
		ROLE_AutonomousProxy = 2,
		ROLE_Authority = 3,
		ROLE_MAX = 4,
	}
	struct AnimSlotDesc
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.AnimSlotDesc")); }
		@property final auto ref
		{
			ScriptName SlotName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			int NumChannels() { return *cast(int*)(cast(size_t)&this + 8); }
		}
	}
	struct RigidBodyState
	{
		private ubyte __buffer__[57];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.RigidBodyState")); }
		@property final auto ref
		{
			ubyte bNewData() { return *cast(ubyte*)(cast(size_t)&this + 56); }
			Vector AngVel() { return *cast(Vector*)(cast(size_t)&this + 44); }
			Vector LinVel() { return *cast(Vector*)(cast(size_t)&this + 32); }
			UObject.Quat Quaternion() { return *cast(UObject.Quat*)(cast(size_t)&this + 16); }
			Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	struct RigidBodyContactInfo
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.RigidBodyContactInfo")); }
		@property final auto ref
		{
			PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)&this + 52); }
			Vector ContactVelocity() { return *cast(Vector*)(cast(size_t)&this + 28); }
			float ContactPenetration() { return *cast(float*)(cast(size_t)&this + 24); }
			Vector ContactNormal() { return *cast(Vector*)(cast(size_t)&this + 12); }
			Vector ContactPosition() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	struct CollisionImpactData
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.CollisionImpactData")); }
		@property final auto ref
		{
			ScriptArray!(Actor.RigidBodyContactInfo) ContactInfos() { return *cast(ScriptArray!(Actor.RigidBodyContactInfo)*)(cast(size_t)&this + 0); }
			Vector TotalFrictionForceVector() { return *cast(Vector*)(cast(size_t)&this + 24); }
			Vector TotalNormalForceVector() { return *cast(Vector*)(cast(size_t)&this + 12); }
		}
	}
	struct PhysEffectInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.PhysEffectInfo")); }
		@property final auto ref
		{
			SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
			ParticleSystem Effect() { return *cast(ParticleSystem*)(cast(size_t)&this + 8); }
			float ReFireDelay() { return *cast(float*)(cast(size_t)&this + 4); }
			float Threshold() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct ActorReference
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.ActorReference")); }
		@property final auto ref
		{
			// WARNING: Property 'Guid' has the same name as a defined type!
			// WARNING: Property 'Actor' has the same name as a defined type!
		}
	}
	struct NavReference
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.NavReference")); }
		@property final auto ref
		{
			// WARNING: Property 'Guid' has the same name as a defined type!
			NavigationPoint Nav() { return *cast(NavigationPoint*)(cast(size_t)&this + 0); }
		}
	}
	struct BasedPosition
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.BasedPosition")); }
		@property final auto ref
		{
			Vector CachedTransPosition() { return *cast(Vector*)(cast(size_t)&this + 40); }
			Rotator CachedBaseRotation() { return *cast(Rotator*)(cast(size_t)&this + 28); }
			Vector CachedBaseLocation() { return *cast(Vector*)(cast(size_t)&this + 16); }
			Vector Position() { return *cast(Vector*)(cast(size_t)&this + 4); }
			Actor Base() { return *cast(Actor*)(cast(size_t)&this + 0); }
		}
	}
	struct TraceHitInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.TraceHitInfo")); }
		@property final auto ref
		{
			// WARNING: Property 'Material' has the same name as a defined type!
			PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)&this + 4); }
			int Item() { return *cast(int*)(cast(size_t)&this + 8); }
			int LevelIndex() { return *cast(int*)(cast(size_t)&this + 12); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 16); }
		}
	}
	struct ImpactInfo
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.ImpactInfo")); }
		@property final auto ref
		{
			Actor HitActor() { return *cast(Actor*)(cast(size_t)&this + 0); }
			Vector HitLocation() { return *cast(Vector*)(cast(size_t)&this + 4); }
			Vector HitNormal() { return *cast(Vector*)(cast(size_t)&this + 16); }
			Vector RayDir() { return *cast(Vector*)(cast(size_t)&this + 28); }
			Vector StartTrace() { return *cast(Vector*)(cast(size_t)&this + 40); }
			Actor.TraceHitInfo HitInfo() { return *cast(Actor.TraceHitInfo*)(cast(size_t)&this + 52); }
		}
	}
	struct AnimSlotInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.AnimSlotInfo")); }
		@property final auto ref
		{
			ScriptName SlotName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptArray!(float) ChannelWeights() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 8); }
		}
	}
	struct TimerData
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Actor.TimerData")); }
		@property final
		{
			auto ref
			{
				ScriptName FuncName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
				float Rate() { return *cast(float*)(cast(size_t)&this + 12); }
				float Count() { return *cast(float*)(cast(size_t)&this + 16); }
				float TimerTimeDilation() { return *cast(float*)(cast(size_t)&this + 20); }
				UObject TimerObj() { return *cast(UObject*)(cast(size_t)&this + 24); }
			}
			bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
			bool bPaused() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) Components() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 60); }
			// WARNING: Property 'WorldInfo' has the same name as a defined type!
			ScriptName InitialState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
			Pawn Instigator() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 240); }
			ScriptArray!(SequenceEvent) GeneratedEvents() { return *cast(ScriptArray!(SequenceEvent)*)(cast(size_t)cast(void*)this + 452); }
			Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 188); }
			Rotator Rotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 84); }
			Actor.ENetRole Role() { return *cast(Actor.ENetRole*)(cast(size_t)cast(void*)this + 138); }
			Actor.ENetRole RemoteRole() { return *cast(Actor.ENetRole*)(cast(size_t)cast(void*)this + 137); }
			// WARNING: Property 'PhysicsVolume' has the same name as a defined type!
			Actor Base() { return *cast(Actor*)(cast(size_t)cast(void*)this + 148); }
			Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 388); }
			Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 400); }
			ScriptName BaseBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 368); }
			Vector Velocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 328); }
			Vector Acceleration() { return *cast(Vector*)(cast(size_t)cast(void*)this + 340); }
			Actor Owner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 144); }
			Actor.EPhysics Physics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 136); }
			float LastRenderTime() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			ScriptArray!(SeqAct_Latent) LatentActions() { return *cast(ScriptArray!(SeqAct_Latent)*)(cast(size_t)cast(void*)this + 464); }
			ScriptArray!(Actor) Attached() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 376); }
			float NetUpdateFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) AllComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 72); }
			float DrawScale() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 100); }
			Vector PrePivot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 112); }
			UObject.Color EditorIconColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 124); }
			UObject.RenderCommandFence DetachFence() { return *cast(UObject.RenderCommandFence*)(cast(size_t)cast(void*)this + 128); }
			float CustomTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			Actor.ECollisionType CollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)cast(void*)this + 139); }
			Actor.ECollisionType ReplicatedCollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)cast(void*)this + 140); }
			UObject.ETickingGroup TickGroup() { return *cast(UObject.ETickingGroup*)(cast(size_t)cast(void*)this + 141); }
			ScriptArray!(Actor.TimerData) Timers() { return *cast(ScriptArray!(Actor.TimerData)*)(cast(size_t)cast(void*)this + 152); }
			int NetTag() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
			int IndexInTickList() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
			float LastSlowRelevancyCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float NetUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			float NetPriority() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			float LastNetUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			float TimeSinceLastTick() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			float TickFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			float TickFrequencyAtEndDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
			float TickFrequencyDecreaseDistanceStart() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			float TickFrequencyDecreaseDistanceEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			float TickFrequencyLastSeenTimeBeforeForcingMaxTickFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float LifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float CreationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			ScriptName Tag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 260); }
			ScriptName Group() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 276); }
			QWord HiddenEditorViews() { return *cast(QWord*)(cast(size_t)cast(void*)this + 284); }
			ScriptArray!(Actor) Touching() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 292); }
			ScriptArray!(Actor) Children() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 304); }
			float LatentFloat() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			AnimNodeSequence LatentSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 320); }
			Vector AngularVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 352); }
			int OverlapTag() { return *cast(int*)(cast(size_t)cast(void*)this + 416); }
			Rotator RotationRate() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 420); }
			Actor PendingTouch() { return *cast(Actor*)(cast(size_t)cast(void*)this + 432); }
			ScriptClass MessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 436); }
			ScriptArray!(ScriptClass) SupportedEvents() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 440); }
		}
		bool bGameRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10000) != 0; }
		bool bGameRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10000; } return val; }
		bool bStatic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
		bool bStatic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
		bool bNoDelete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x4) != 0; }
		bool bNoDelete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x4; } return val; }
		bool bScriptInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x800000) != 0; }
		bool bScriptInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x800000; } return val; }
		bool bProjTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80000000) != 0; }
		bool bProjTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80000000; } return val; }
		bool bBlockActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40000000) != 0; }
		bool bBlockActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40000000; } return val; }
		bool bHurtEntry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8000) != 0; }
		bool bHurtEntry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8000; } return val; }
		bool bWorldGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x80) != 0; }
		bool bWorldGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x80; } return val; }
		bool bCanBeDamaged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80000) != 0; }
		bool bCanBeDamaged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80000; } return val; }
		bool bDeleteMe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x8) != 0; }
		bool bDeleteMe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x8; } return val; }
		bool bTearOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x4000000) != 0; }
		bool bTearOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x4000000; } return val; }
		bool bBounce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x200) != 0; }
		bool bBounce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x200; } return val; }
		bool bHardAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x400) != 0; }
		bool bHardAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x400; } return val; }
		bool bCollideActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8000000) != 0; }
		bool bCollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8000000; } return val; }
		bool bCollideWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10000000) != 0; }
		bool bCollideWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10000000; } return val; }
		bool bAllowFluidSurfaceInteraction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x10000000) != 0; }
		bool bAllowFluidSurfaceInteraction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x10000000; } return val; }
		bool bDebugEffectIsRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8000000) != 0; }
		bool bDebugEffectIsRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8000000; } return val; }
		bool bAlwaysRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x200000) != 0; }
		bool bAlwaysRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x200000; } return val; }
		bool bForceNetUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x100) != 0; }
		bool bForceNetUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x100; } return val; }
		bool bHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x2) != 0; }
		bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x2; } return val; }
		bool bUpdateSimulatedPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x2000000) != 0; }
		bool bUpdateSimulatedPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x2000000; } return val; }
		bool bNetDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x100000) != 0; }
		bool bNetDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x100000; } return val; }
		bool bOnlyDirtyReplication() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x8000000) != 0; }
		bool bOnlyDirtyReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x8000000; } return val; }
		bool bCanBeFrictionedTo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4000) != 0; }
		bool bCanBeFrictionedTo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4000; } return val; }
		bool bCanBeAdheredTo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2000) != 0; }
		bool bCanBeAdheredTo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2000; } return val; }
		bool bSkipActorPropertyReplication() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1000000) != 0; }
		bool bSkipActorPropertyReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1000000; } return val; }
		bool bNetInitial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x800) != 0; }
		bool bNetInitial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x800; } return val; }
		bool bReplicateMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x800000) != 0; }
		bool bReplicateMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x800000; } return val; }
		bool bReplicateInstigator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x400000) != 0; }
		bool bReplicateInstigator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x400000; } return val; }
		bool bNetOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1000) != 0; }
		bool bNetOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1000; } return val; }
		bool bTicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x10) != 0; }
		bool bTicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x10; } return val; }
		bool bOnlyOwnerSee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x20) != 0; }
		bool bOnlyOwnerSee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x20; } return val; }
		bool bTickIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x40) != 0; }
		bool bTickIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x40; } return val; }
		bool bIgnoreRigidBodyPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x100) != 0; }
		bool bIgnoreRigidBodyPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x100; } return val; }
		bool bOrientOnSlope() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x200) != 0; }
		bool bOrientOnSlope(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x200; } return val; }
		bool bIgnoreEncroachers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x400) != 0; }
		bool bIgnoreEncroachers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x400; } return val; }
		bool bPushedByEncroachers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x800) != 0; }
		bool bPushedByEncroachers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x800; } return val; }
		bool bDestroyedByInterpActor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1000) != 0; }
		bool bDestroyedByInterpActor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1000; } return val; }
		bool bRouteBeginPlayEvenIfStatic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x2000) != 0; }
		bool bRouteBeginPlayEvenIfStatic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x2000; } return val; }
		bool bIsMoving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x4000) != 0; }
		bool bIsMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x4000; } return val; }
		bool bAlwaysEncroachCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x8000) != 0; }
		bool bAlwaysEncroachCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x8000; } return val; }
		bool bHasAlternateTargetLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x10000) != 0; }
		bool bHasAlternateTargetLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x10000; } return val; }
		bool bCanStepUpOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x20000) != 0; }
		bool bCanStepUpOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x20000; } return val; }
		bool bNetTemporary() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x40000) != 0; }
		bool bNetTemporary(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x40000; } return val; }
		bool bOnlyRelevantToOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x80000) != 0; }
		bool bOnlyRelevantToOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x80000; } return val; }
		bool bDemoRecording() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x20000000) != 0; }
		bool bDemoRecording(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x20000000; } return val; }
		bool bDemoOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x40000000) != 0; }
		bool bDemoOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x40000000; } return val; }
		bool bForceDemoRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x80000000) != 0; }
		bool bForceDemoRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x80000000; } return val; }
		bool bNetInitialRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1) != 0; }
		bool bNetInitialRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1; } return val; }
		bool bReplicateRigidBodyLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2) != 0; }
		bool bReplicateRigidBodyLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2; } return val; }
		bool bKillDuringLevelTransition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4) != 0; }
		bool bKillDuringLevelTransition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4; } return val; }
		bool bExchangedRoles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8) != 0; }
		bool bExchangedRoles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8; } return val; }
		bool bConsiderAllStaticMeshComponentsForStreaming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10) != 0; }
		bool bConsiderAllStaticMeshComponentsForStreaming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10; } return val; }
		bool bDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20) != 0; }
		bool bDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20; } return val; }
		bool bPostRenderIfNotVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40) != 0; }
		bool bPostRenderIfNotVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40; } return val; }
		bool s_bThrottleNetRelevancy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80) != 0; }
		bool s_bThrottleNetRelevancy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80; } return val; }
		bool bPendingNetUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x200) != 0; }
		bool bPendingNetUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x200; } return val; }
		bool bIgnoreBaseRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x800) != 0; }
		bool bIgnoreBaseRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x800; } return val; }
		bool bShadowParented() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1000) != 0; }
		bool bShadowParented(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1000; } return val; }
		bool bMovable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20000) != 0; }
		bool bMovable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20000; } return val; }
		bool bDestroyInPainVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40000) != 0; }
		bool bDestroyInPainVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40000; } return val; }
		bool bShouldBaseAtStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x100000) != 0; }
		bool bShouldBaseAtStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x100000; } return val; }
		bool bPendingDelete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x200000) != 0; }
		bool bPendingDelete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x200000; } return val; }
		bool bCanTeleport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x400000) != 0; }
		bool bCanTeleport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x400000; } return val; }
		bool bAlwaysTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x800000) != 0; }
		bool bAlwaysTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x800000; } return val; }
		bool bBlocksNavigation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1000000) != 0; }
		bool bBlocksNavigation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1000000; } return val; }
		bool BlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2000000) != 0; }
		bool BlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2000000; } return val; }
		bool bCollideWhenPlacing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4000000) != 0; }
		bool bCollideWhenPlacing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4000000; } return val; }
		bool bCollideComplex() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20000000) != 0; }
		bool bCollideComplex(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20000000; } return val; }
		bool bBlocksTeleport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
		bool bBlocksTeleport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
		bool bMoveIgnoresDestruction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
		bool bMoveIgnoresDestruction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
		bool bNoEncroachCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4) != 0; }
		bool bNoEncroachCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4; } return val; }
		bool bCollideAsEncroacher() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8) != 0; }
		bool bCollideAsEncroacher(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8; } return val; }
		bool bPhysRigidBodyOutOfWorldCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x10) != 0; }
		bool bPhysRigidBodyOutOfWorldCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x10; } return val; }
		bool bComponentOutsideWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x20) != 0; }
		bool bComponentOutsideWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x20; } return val; }
		bool bForceOctreeSNFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x40) != 0; }
		bool bForceOctreeSNFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x40; } return val; }
		bool bRigidBodyWasAwake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x80) != 0; }
		bool bRigidBodyWasAwake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x80; } return val; }
		bool bCallRigidBodyWakeEvents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x100) != 0; }
		bool bCallRigidBodyWakeEvents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x100; } return val; }
		bool bJustTeleported() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x400) != 0; }
		bool bJustTeleported(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x400; } return val; }
		bool bHiddenEd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2000) != 0; }
		bool bHiddenEd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2000; } return val; }
		bool bEditable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4000) != 0; }
		bool bEditable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4000; } return val; }
		bool bHiddenEdGroup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8000) != 0; }
		bool bHiddenEdGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8000; } return val; }
		bool bHiddenEdCustom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x10000) != 0; }
		bool bHiddenEdCustom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x10000; } return val; }
		bool bHiddenEdTemporary() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x20000) != 0; }
		bool bHiddenEdTemporary(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x20000; } return val; }
		bool bHiddenEdLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x40000) != 0; }
		bool bHiddenEdLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x40000; } return val; }
		bool bEdShouldSnap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x80000) != 0; }
		bool bEdShouldSnap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x80000; } return val; }
		bool bTempEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x100000) != 0; }
		bool bTempEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x100000; } return val; }
		bool bPathColliding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x200000) != 0; }
		bool bPathColliding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x200000; } return val; }
		bool bPathTemp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x400000) != 0; }
		bool bPathTemp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x400000; } return val; }
		bool bLockLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1000000) != 0; }
		bool bLockLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1000000; } return val; }
		bool bForceAllowKismetModification() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2000000) != 0; }
		bool bForceAllowKismetModification(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2000000; } return val; }
		bool m_bPotentialSeekingTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4000000) != 0; }
		bool m_bPotentialSeekingTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4000000; } return val; }
	}
final:
	void ForceUpdateComponents(bool bCollisionUpdate, bool bTransformOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCollisionUpdate;
		*cast(bool*)&params[4] = bTransformOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceUpdateComponents, params.ptr, cast(void*)0);
	}
	ScriptString ConsoleCommand(ScriptString Command, bool bWriteToLog)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	void Sleep(float Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.Sleep, params.ptr, cast(void*)0);
	}
	void FinishAnim(AnimNodeSequence SeqNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishAnim, params.ptr, cast(void*)0);
	}
	void SetCollision(bool bNewColActors, bool bNewBlockActors, bool bNewIgnoreEncroachers)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bNewColActors;
		*cast(bool*)&params[4] = bNewBlockActors;
		*cast(bool*)&params[8] = bNewIgnoreEncroachers;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCollision, params.ptr, cast(void*)0);
	}
	void SetCollisionSize(float NewRadius, float NewHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewRadius;
		*cast(float*)&params[4] = NewHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCollisionSize, params.ptr, cast(void*)0);
	}
	void SetCollisionType(Actor.ECollisionType NewCollisionType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(Actor.ECollisionType*)params.ptr = NewCollisionType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCollisionType, params.ptr, cast(void*)0);
	}
	void SetDrawScale(float NewScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDrawScale, params.ptr, cast(void*)0);
	}
	void SetDrawScale3D(Vector NewScale3D)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewScale3D;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDrawScale3D, params.ptr, cast(void*)0);
	}
	bool Move(Vector Delta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(Functions.Move, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool SetLocation(Vector NewLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLocation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool SetRotation(Rotator NewRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRotation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	Actor.EMoveDir MovingWhichWay(float* Amount)
	{
		ubyte params[5];
		params[] = 0;
		*cast(float*)params.ptr = *Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.MovingWhichWay, params.ptr, cast(void*)0);
		*Amount = *cast(float*)params.ptr;
		return *cast(Actor.EMoveDir*)&params[4];
	}
	void SetZone(bool bForceRefresh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceRefresh;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetZone, params.ptr, cast(void*)0);
	}
	bool SetRelativeRotation(Rotator NewRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRelativeRotation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool SetRelativeLocation(Vector NewLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRelativeLocation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void SetHardAttach(bool bNewHardAttach)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewHardAttach;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHardAttach, params.ptr, cast(void*)0);
	}
	int fixedTurn(int Current, int Desired, int DeltaRate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Current;
		*cast(int*)&params[4] = Desired;
		*cast(int*)&params[8] = DeltaRate;
		(cast(ScriptObject)this).ProcessEvent(Functions.fixedTurn, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	bool MoveSmooth(Vector Delta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveSmooth, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AutonomousPhysics(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.AutonomousPhysics, params.ptr, cast(void*)0);
	}
	float GetTerminalVelocity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTerminalVelocity, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetBase(Actor NewBase, Vector NewFloor, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp, ScriptName AttachName)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = NewBase;
		*cast(Vector*)&params[4] = NewFloor;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = SkelComp;
		*cast(ScriptName*)&params[20] = AttachName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBase, params.ptr, cast(void*)0);
	}
	void SetOwner(Actor NewOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOwner, params.ptr, cast(void*)0);
	}
	void FindBase()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBase, cast(void*)0, cast(void*)0);
	}
	bool IsBasedOn(Actor TestActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBasedOn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Actor GetBaseMost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBaseMost, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool IsOwnedBy(Actor TestActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsOwnedBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Vector GetAggregateBaseVelocity(Actor TestBase)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = TestBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAggregateBaseVelocity, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void SetForcedInitialReplicatedProperty(Property PropToReplicate, bool bAdd)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Property*)params.ptr = PropToReplicate;
		*cast(bool*)&params[4] = bAdd;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetForcedInitialReplicatedProperty, params.ptr, cast(void*)0);
	}
	static void Vect2BP(Actor.BasedPosition* BP, Vector pos, Actor ForcedBase)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = *BP;
		*cast(Vector*)&params[52] = pos;
		*cast(Actor*)&params[64] = ForcedBase;
		StaticClass.ProcessEvent(Functions.Vect2BP, params.ptr, cast(void*)0);
		*BP = *cast(Actor.BasedPosition*)params.ptr;
	}
	static Vector BP2Vect(Actor.BasedPosition BP)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = BP;
		StaticClass.ProcessEvent(Functions.BP2Vect, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[52];
	}
	static void SetBasedPosition(Actor.BasedPosition* BP, Vector pos, Actor ForcedBase)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = *BP;
		*cast(Vector*)&params[52] = pos;
		*cast(Actor*)&params[64] = ForcedBase;
		StaticClass.ProcessEvent(Functions.SetBasedPosition, params.ptr, cast(void*)0);
		*BP = *cast(Actor.BasedPosition*)params.ptr;
	}
	static Vector GetBasedPosition(Actor.BasedPosition BP)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = BP;
		StaticClass.ProcessEvent(Functions.GetBasedPosition, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[52];
	}
	static void FlushPersistentDebugLines()
	{
		StaticClass.ProcessEvent(Functions.FlushPersistentDebugLines, cast(void*)0, cast(void*)0);
	}
	static void DrawDebugLine(Vector LineStart, Vector LineEnd, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = LineStart;
		*cast(Vector*)&params[12] = LineEnd;
		params[24] = R;
		params[25] = G;
		params[26] = B;
		*cast(bool*)&params[28] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugLine, params.ptr, cast(void*)0);
	}
	static void DrawDebugPoint(Vector Position, float Size, UObject.LinearColor PointColor, bool bPersistentLines)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Position;
		*cast(float*)&params[12] = Size;
		*cast(UObject.LinearColor*)&params[16] = PointColor;
		*cast(bool*)&params[32] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugPoint, params.ptr, cast(void*)0);
	}
	static void DrawDebugBox(Vector Center, Vector Extent, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Center;
		*cast(Vector*)&params[12] = Extent;
		params[24] = R;
		params[25] = G;
		params[26] = B;
		*cast(bool*)&params[28] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugBox, params.ptr, cast(void*)0);
	}
	static void DrawDebugStar(Vector Position, float Size, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Position;
		*cast(float*)&params[12] = Size;
		params[16] = R;
		params[17] = G;
		params[18] = B;
		*cast(bool*)&params[20] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugStar, params.ptr, cast(void*)0);
	}
	static void DrawDebugCoordinateSystem(Vector AxisLoc, Rotator AxisRot, float Scale, bool bPersistentLines)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = AxisLoc;
		*cast(Rotator*)&params[12] = AxisRot;
		*cast(float*)&params[24] = Scale;
		*cast(bool*)&params[28] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugCoordinateSystem, params.ptr, cast(void*)0);
	}
	static void DrawDebugSphere(Vector Center, float Radius, int Segments, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Center;
		*cast(float*)&params[12] = Radius;
		*cast(int*)&params[16] = Segments;
		params[20] = R;
		params[21] = G;
		params[22] = B;
		*cast(bool*)&params[24] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugSphere, params.ptr, cast(void*)0);
	}
	static void DrawDebugCylinder(Vector Start, Vector End, float Radius, int Segments, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(float*)&params[24] = Radius;
		*cast(int*)&params[28] = Segments;
		params[32] = R;
		params[33] = G;
		params[34] = B;
		*cast(bool*)&params[36] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugCylinder, params.ptr, cast(void*)0);
	}
	static void DrawDebugCone(Vector Origin, Vector Direction, float Length, float AngleWidth, float AngleHeight, int NumSides, UObject.Color DrawColor, bool bPersistentLines)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(Vector*)&params[12] = Direction;
		*cast(float*)&params[24] = Length;
		*cast(float*)&params[28] = AngleWidth;
		*cast(float*)&params[32] = AngleHeight;
		*cast(int*)&params[36] = NumSides;
		*cast(UObject.Color*)&params[40] = DrawColor;
		*cast(bool*)&params[44] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugCone, params.ptr, cast(void*)0);
	}
	static void DrawDebugString(Vector TextLocation, ScriptString Text, Actor TestBaseActor, UObject.Color TextColor, float Duration)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = TextLocation;
		*cast(ScriptString*)&params[12] = Text;
		*cast(Actor*)&params[24] = TestBaseActor;
		*cast(UObject.Color*)&params[28] = TextColor;
		*cast(float*)&params[32] = Duration;
		StaticClass.ProcessEvent(Functions.DrawDebugString, params.ptr, cast(void*)0);
	}
	static void DrawDebugFrustrum(UObject.Matrix* FrustumToWorld, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[72];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *FrustumToWorld;
		params[64] = R;
		params[65] = G;
		params[66] = B;
		*cast(bool*)&params[68] = bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugFrustrum, params.ptr, cast(void*)0);
		*FrustumToWorld = *cast(UObject.Matrix*)params.ptr;
	}
	static void FlushDebugStrings()
	{
		StaticClass.ProcessEvent(Functions.FlushDebugStrings, cast(void*)0, cast(void*)0);
	}
	void ChartData(ScriptString DataName, float DataValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DataName;
		*cast(float*)&params[12] = DataValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChartData, params.ptr, cast(void*)0);
	}
	void SetHidden(bool bNewHidden)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewHidden;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHidden, params.ptr, cast(void*)0);
	}
	void SetOnlyOwnerSee(bool bNewOnlyOwnerSee)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewOnlyOwnerSee;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOnlyOwnerSee, params.ptr, cast(void*)0);
	}
	void SetPhysics(Actor.EPhysics newPhysics)
	{
		ubyte params[1];
		params[] = 0;
		*cast(Actor.EPhysics*)params.ptr = newPhysics;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPhysics, params.ptr, cast(void*)0);
	}
	void Clock(float* Time)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = *Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.Clock, params.ptr, cast(void*)0);
		*Time = *cast(float*)params.ptr;
	}
	void UnClock(float* Time)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = *Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnClock, params.ptr, cast(void*)0);
		*Time = *cast(float*)params.ptr;
	}
	void AttachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewComponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachComponent, params.ptr, cast(void*)0);
	}
	void DetachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* ExComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = ExComponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachComponent, params.ptr, cast(void*)0);
	}
	void ReattachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* ComponentToReattach)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = ComponentToReattach;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReattachComponent, params.ptr, cast(void*)0);
	}
	void SetTickGroup(UObject.ETickingGroup NewTickGroup)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UObject.ETickingGroup*)params.ptr = NewTickGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTickGroup, params.ptr, cast(void*)0);
	}
	void SetTickIsDisabled(bool bInDisabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInDisabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTickIsDisabled, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void GainedChild(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.GainedChild, params.ptr, cast(void*)0);
	}
	void LostChild(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.LostChild, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.HitWall, params.ptr, cast(void*)0);
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
	void PhysicsVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.PhysicsVolumeChange, params.ptr, cast(void*)0);
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void PostTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostTouch, params.ptr, cast(void*)0);
	}
	void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTouch, params.ptr, cast(void*)0);
	}
	void Bump(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitNormal)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Bump, params.ptr, cast(void*)0);
	}
	void BaseChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BaseChange, cast(void*)0, cast(void*)0);
	}
	void Attach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.Attach, params.ptr, cast(void*)0);
	}
	void Detach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.Detach, params.ptr, cast(void*)0);
	}
	Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialHandling, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	void CollisionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CollisionChanged, cast(void*)0, cast(void*)0);
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
	void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RanInto, params.ptr, cast(void*)0);
	}
	void OnWakeRBPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnWakeRBPhysics, cast(void*)0, cast(void*)0);
	}
	void OnSleepRBPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSleepRBPhysics, cast(void*)0, cast(void*)0);
	}
	bool ClampRotation(Rotator* out_Rot, Rotator rBase, Rotator rUpperLimits, Rotator rLowerLimits)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_Rot;
		*cast(Rotator*)&params[12] = rBase;
		*cast(Rotator*)&params[24] = rUpperLimits;
		*cast(Rotator*)&params[36] = rLowerLimits;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClampRotation, params.ptr, cast(void*)0);
		*out_Rot = *cast(Rotator*)params.ptr;
		return *cast(bool*)&params[48];
	}
	bool OverRotated(Rotator* out_Desired, Rotator* out_Actual)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_Desired;
		*cast(Rotator*)&params[12] = *out_Actual;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverRotated, params.ptr, cast(void*)0);
		*out_Desired = *cast(Rotator*)params.ptr;
		*out_Actual = *cast(Rotator*)&params[12];
		return *cast(bool*)&params[24];
	}
	bool UsedBy(Pawn User)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = User;
		(cast(ScriptObject)this).ProcessEvent(Functions.UsedBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	void VolumeBasedDestroy(PhysicsVolume PV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = PV;
		(cast(ScriptObject)this).ProcessEvent(Functions.VolumeBasedDestroy, params.ptr, cast(void*)0);
	}
	Actor Trace(Vector* HitLocation, Vector* HitNormal, Vector TraceEnd, Vector TraceStart, bool bTraceActors, Vector Extent, Actor.TraceHitInfo* HitInfo, int ExtraTraceFlags)
	{
		ubyte params[100];
		params[] = 0;
		*cast(Vector*)params.ptr = *HitLocation;
		*cast(Vector*)&params[12] = *HitNormal;
		*cast(Vector*)&params[24] = TraceEnd;
		*cast(Vector*)&params[36] = TraceStart;
		*cast(bool*)&params[48] = bTraceActors;
		*cast(Vector*)&params[52] = Extent;
		*cast(Actor.TraceHitInfo*)&params[64] = *HitInfo;
		*cast(int*)&params[92] = ExtraTraceFlags;
		(cast(ScriptObject)this).ProcessEvent(Functions.Trace, params.ptr, cast(void*)0);
		*HitLocation = *cast(Vector*)params.ptr;
		*HitNormal = *cast(Vector*)&params[12];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[64];
		return *cast(Actor*)&params[96];
	}
	bool TraceComponent(Vector* HitLocation, Vector* HitNormal, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InComponent, Vector TraceEnd, Vector TraceStart, Vector Extent, Actor.TraceHitInfo* HitInfo, bool bComplexCollision)
	{
		ubyte params[100];
		params[] = 0;
		*cast(Vector*)params.ptr = *HitLocation;
		*cast(Vector*)&params[12] = *HitNormal;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[24] = InComponent;
		*cast(Vector*)&params[28] = TraceEnd;
		*cast(Vector*)&params[40] = TraceStart;
		*cast(Vector*)&params[52] = Extent;
		*cast(Actor.TraceHitInfo*)&params[64] = *HitInfo;
		*cast(bool*)&params[92] = bComplexCollision;
		(cast(ScriptObject)this).ProcessEvent(Functions.TraceComponent, params.ptr, cast(void*)0);
		*HitLocation = *cast(Vector*)params.ptr;
		*HitNormal = *cast(Vector*)&params[12];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[64];
		return *cast(bool*)&params[96];
	}
	bool PointCheckComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InComponent, Vector PointLocation, Vector PointExtent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = InComponent;
		*cast(Vector*)&params[4] = PointLocation;
		*cast(Vector*)&params[16] = PointExtent;
		(cast(ScriptObject)this).ProcessEvent(Functions.PointCheckComponent, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool FastTrace(Vector TraceEnd, Vector TraceStart, Vector BoxExtent, bool bTraceBullet)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = TraceEnd;
		*cast(Vector*)&params[12] = TraceStart;
		*cast(Vector*)&params[24] = BoxExtent;
		*cast(bool*)&params[36] = bTraceBullet;
		(cast(ScriptObject)this).ProcessEvent(Functions.FastTrace, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	bool TraceAllPhysicsAssetInteractions(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp, Vector EndTrace, Vector StartTrace, ScriptArray!(Actor.ImpactInfo)* out_Hits, Vector Extent)
	{
		ubyte params[56];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelMeshComp;
		*cast(Vector*)&params[4] = EndTrace;
		*cast(Vector*)&params[16] = StartTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[28] = *out_Hits;
		*cast(Vector*)&params[40] = Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TraceAllPhysicsAssetInteractions, params.ptr, cast(void*)0);
		*out_Hits = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[28];
		return *cast(bool*)&params[52];
	}
	bool FindSpot(Vector BoxExtent, Vector* SpotLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = BoxExtent;
		*cast(Vector*)&params[12] = *SpotLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSpot, params.ptr, cast(void*)0);
		*SpotLocation = *cast(Vector*)&params[12];
		return *cast(bool*)&params[24];
	}
	bool ContainsPoint(Vector Spot)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Spot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ContainsPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool IsOverlapping(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsOverlapping, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetComponentsBoundingBox(UObject.Box* ActorBox)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.Box*)params.ptr = *ActorBox;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetComponentsBoundingBox, params.ptr, cast(void*)0);
		*ActorBox = *cast(UObject.Box*)params.ptr;
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
	bool IsBlockedBy(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBlockedBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Actor Spawn(ScriptClass SpawnClass, Actor SpawnOwner, ScriptName SpawnTag, Vector SpawnLocation, Rotator SpawnRotation, Actor ActorTemplate, bool bNoCollisionFail)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SpawnClass;
		*cast(Actor*)&params[4] = SpawnOwner;
		*cast(ScriptName*)&params[8] = SpawnTag;
		*cast(Vector*)&params[16] = SpawnLocation;
		*cast(Rotator*)&params[28] = SpawnRotation;
		*cast(Actor*)&params[40] = ActorTemplate;
		*cast(bool*)&params[44] = bNoCollisionFail;
		(cast(ScriptObject)this).ProcessEvent(Functions.Spawn, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[48];
	}
	bool Destroy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroy, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TornOff, cast(void*)0, cast(void*)0);
	}
	void SetTimer(float InRate, bool inbLoop, ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = InRate;
		*cast(bool*)&params[4] = inbLoop;
		*cast(ScriptName*)&params[8] = inTimerFunc;
		*cast(UObject*)&params[16] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTimer, params.ptr, cast(void*)0);
	}
	void ClearTimer(ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = inTimerFunc;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearTimer, params.ptr, cast(void*)0);
	}
	void ClearAllTimers(UObject inObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAllTimers, params.ptr, cast(void*)0);
	}
	void PauseTimer(bool bPause, ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		*cast(ScriptName*)&params[4] = inTimerFunc;
		*cast(UObject*)&params[12] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PauseTimer, params.ptr, cast(void*)0);
	}
	bool IsTimerActive(ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = inTimerFunc;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsTimerActive, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	float GetTimerCount(ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = inTimerFunc;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTimerCount, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float GetTimerRate(ScriptName TimerFuncName, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TimerFuncName;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTimerRate, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float GetRemainingTimeForTimer(ScriptName TimerFuncName, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TimerFuncName;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRemainingTimeForTimer, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void ModifyTimerTimeDilation(ScriptName TimerName, float InTimerTimeDilation, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TimerName;
		*cast(float*)&params[8] = InTimerTimeDilation;
		*cast(UObject*)&params[12] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyTimerTimeDilation, params.ptr, cast(void*)0);
	}
	void ResetTimerTimeDilation(ScriptName TimerName, UObject inObj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TimerName;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetTimerTimeDilation, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* CreateAudioComponent(SoundCue InSoundCue, bool bPlay, bool bStopWhenOwnerDestroyed, bool bUseLocation, Vector SourceLocation, bool bAttachToSelf)
	{
		ubyte params[36];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSoundCue;
		*cast(bool*)&params[4] = bPlay;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		*cast(bool*)&params[12] = bUseLocation;
		*cast(Vector*)&params[16] = SourceLocation;
		*cast(bool*)&params[28] = bAttachToSelf;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateAudioComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[32];
	}
	void PlaySound(SoundCue InSoundCue, bool bNotReplicated, bool bNoRepToOwner, bool bStopWhenOwnerDestroyed, Vector SoundLocation, bool bNoRepToRelevant)
	{
		ubyte params[32];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSoundCue;
		*cast(bool*)&params[4] = bNotReplicated;
		*cast(bool*)&params[8] = bNoRepToOwner;
		*cast(bool*)&params[12] = bStopWhenOwnerDestroyed;
		*cast(Vector*)&params[16] = SoundLocation;
		*cast(bool*)&params[28] = bNoRepToRelevant;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySound, params.ptr, cast(void*)0);
	}
	void MakeNoise(float Loudness, ScriptName NoiseType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Loudness;
		*cast(ScriptName*)&params[4] = NoiseType;
		(cast(ScriptObject)this).ProcessEvent(Functions.MakeNoise, params.ptr, cast(void*)0);
	}
	bool PlayerCanSeeMe(bool bForceLOSCheck)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLOSCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerCanSeeMe, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SuggestTossVelocity(Vector* TossVelocity, Vector Destination, Vector Start, float TossSpeed, float BaseTossZ, float DesiredZPct, Vector CollisionSize, float TerminalVelocity, float OverrideGravityZ, bool bOnlyTraceUp)
	{
		ubyte params[76];
		params[] = 0;
		*cast(Vector*)params.ptr = *TossVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(float*)&params[36] = TossSpeed;
		*cast(float*)&params[40] = BaseTossZ;
		*cast(float*)&params[44] = DesiredZPct;
		*cast(Vector*)&params[48] = CollisionSize;
		*cast(float*)&params[60] = TerminalVelocity;
		*cast(float*)&params[64] = OverrideGravityZ;
		*cast(bool*)&params[68] = bOnlyTraceUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestTossVelocity, params.ptr, cast(void*)0);
		*TossVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[72];
	}
	bool CalculateMinSpeedTrajectory(Vector* out_Velocity, Vector End, Vector Start, float MaxTossSpeed, float MinTossSpeed, Vector CollisionSize, float TerminalVelocity, float GravityZ, bool bOnlyTraceUp)
	{
		ubyte params[72];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Velocity;
		*cast(Vector*)&params[12] = End;
		*cast(Vector*)&params[24] = Start;
		*cast(float*)&params[36] = MaxTossSpeed;
		*cast(float*)&params[40] = MinTossSpeed;
		*cast(Vector*)&params[44] = CollisionSize;
		*cast(float*)&params[56] = TerminalVelocity;
		*cast(float*)&params[60] = GravityZ;
		*cast(bool*)&params[64] = bOnlyTraceUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateMinSpeedTrajectory, params.ptr, cast(void*)0);
		*out_Velocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[68];
	}
	Vector GetDestination(Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDestination, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	bool PreTeleport(Teleporter InTeleporter)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Teleporter*)params.ptr = InTeleporter;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreTeleport, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostTeleport(Teleporter OutTeleporter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Teleporter*)params.ptr = OutTeleporter;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostTeleport, params.ptr, cast(void*)0);
	}
	ScriptString GetURLMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetURLMap, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void AllActors(ScriptClass BaseClass, Actor* pActor, ScriptClass InterfaceClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(ScriptClass*)&params[8] = InterfaceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	void DynamicActors(ScriptClass BaseClass, Actor* pActor, ScriptClass InterfaceClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(ScriptClass*)&params[8] = InterfaceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.DynamicActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	void ChildActors(ScriptClass BaseClass, Actor* pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChildActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	void BasedActors(ScriptClass BaseClass, Actor* pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.BasedActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	void TouchingActors(ScriptClass BaseClass, Actor* pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.TouchingActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	void TraceActors(ScriptClass BaseClass, Actor* pActor, Vector* HitLoc, Vector* HitNorm, Vector End, Vector Start, Vector Extent, Actor.TraceHitInfo* HitInfo, int ExtraTraceFlags)
	{
		ubyte params[100];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(Vector*)&params[8] = *HitLoc;
		*cast(Vector*)&params[20] = *HitNorm;
		*cast(Vector*)&params[32] = End;
		*cast(Vector*)&params[44] = Start;
		*cast(Vector*)&params[56] = Extent;
		*cast(Actor.TraceHitInfo*)&params[68] = *HitInfo;
		*cast(int*)&params[96] = ExtraTraceFlags;
		(cast(ScriptObject)this).ProcessEvent(Functions.TraceActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
		*HitLoc = *cast(Vector*)&params[8];
		*HitNorm = *cast(Vector*)&params[20];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[68];
	}
	void VisibleActors(ScriptClass BaseClass, Actor* pActor, float Radius, Vector Loc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		(cast(ScriptObject)this).ProcessEvent(Functions.VisibleActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	void VisibleCollidingActors(ScriptClass BaseClass, Actor* pActor, float Radius, Vector Loc, bool bIgnoreHidden, Vector Extent, bool bTraceActors, ScriptClass InterfaceClass, Actor.TraceHitInfo* HitInfo)
	{
		ubyte params[76];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		*cast(bool*)&params[24] = bIgnoreHidden;
		*cast(Vector*)&params[28] = Extent;
		*cast(bool*)&params[40] = bTraceActors;
		*cast(ScriptClass*)&params[44] = InterfaceClass;
		*cast(Actor.TraceHitInfo*)&params[48] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.VisibleCollidingActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[48];
	}
	void CollidingActors(ScriptClass BaseClass, Actor* pActor, float Radius, Vector Loc, bool bUseOverlapCheck, ScriptClass InterfaceClass, Actor.TraceHitInfo* HitInfo)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		*cast(bool*)&params[24] = bUseOverlapCheck;
		*cast(ScriptClass*)&params[28] = InterfaceClass;
		*cast(Actor.TraceHitInfo*)&params[32] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.CollidingActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[32];
	}
	void VisibleCollidingExtentActors(ScriptClass BaseClass, Actor* pActor, float Radius, Vector Loc, Vector AltLoc, bool bIgnoreHidden, Vector Extent, bool bTraceActors, ScriptClass InterfaceClass, Actor.TraceHitInfo* HitInfo, float XYCheckRadius)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		*cast(Vector*)&params[24] = AltLoc;
		*cast(bool*)&params[36] = bIgnoreHidden;
		*cast(Vector*)&params[40] = Extent;
		*cast(bool*)&params[52] = bTraceActors;
		*cast(ScriptClass*)&params[56] = InterfaceClass;
		*cast(Actor.TraceHitInfo*)&params[60] = *HitInfo;
		*cast(float*)&params[88] = XYCheckRadius;
		(cast(ScriptObject)this).ProcessEvent(Functions.VisibleCollidingExtentActors, params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[60];
	}
	void OverlappingActors(ScriptClass BaseClass, Actor* out_Actor, float Radius, Vector Loc, bool bIgnoreHidden)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *out_Actor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		*cast(bool*)&params[24] = bIgnoreHidden;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverlappingActors, params.ptr, cast(void*)0);
		*out_Actor = *cast(Actor*)&params[4];
	}
	void ComponentList(ScriptClass BaseClass, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** out_Component)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = *out_Component;
		(cast(ScriptObject)this).ProcessEvent(Functions.ComponentList, params.ptr, cast(void*)0);
		*out_Component = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void AllOwnedComponents(ScriptClass BaseClass, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** OutComponent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = *OutComponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllOwnedComponents, params.ptr, cast(void*)0);
		*OutComponent = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void LocalPlayerControllers(ScriptClass BaseClass, PlayerController* PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(PlayerController*)&params[4] = *PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.LocalPlayerControllers, params.ptr, cast(void*)0);
		*PC = *cast(PlayerController*)&params[4];
	}
	PlayerController GetALocalPlayerController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetALocalPlayerController, params.ptr, cast(void*)0);
		return *cast(PlayerController*)params.ptr;
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void BroadcastLocalizedMessage(ScriptClass InMessageClass, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastLocalizedMessage, params.ptr, cast(void*)0);
	}
	void BroadcastLocalizedTeamMessage(int TeamIndex, ScriptClass InMessageClass, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(ScriptClass*)&params[4] = InMessageClass;
		*cast(int*)&params[8] = Switch;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_2;
		*cast(UObject*)&params[20] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastLocalizedTeamMessage, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInitialState, cast(void*)0, cast(void*)0);
	}
	void ConstraintBrokenNotify(Actor ConOwner, RB_ConstraintSetup ConSetup, RB_ConstraintInstance ConInstance)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = ConOwner;
		*cast(RB_ConstraintSetup*)&params[4] = ConSetup;
		*cast(RB_ConstraintInstance*)&params[8] = ConInstance;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConstraintBrokenNotify, params.ptr, cast(void*)0);
	}
	void NotifySkelControlBeyondLimit(SkelControlLookAt LookAt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SkelControlLookAt*)params.ptr = LookAt;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifySkelControlBeyondLimit, params.ptr, cast(void*)0);
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HurtRadius(float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, Actor IgnoredActor, Controller InstigatedByController, bool bDoFullDamage)
	{
		ubyte params[44];
		params[] = 0;
		*cast(float*)params.ptr = BaseDamage;
		*cast(float*)&params[4] = DamageRadius;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		*cast(Actor*)&params[28] = IgnoredActor;
		*cast(Controller*)&params[32] = InstigatedByController;
		*cast(bool*)&params[36] = bDoFullDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.HurtRadius, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	void KilledBy(Pawn EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.KilledBy, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
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
	void CheckHitInfo(Actor.TraceHitInfo* HitInfo, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* FallBackComponent, Vector Dir, Vector* out_HitLocation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Actor.TraceHitInfo*)params.ptr = *HitInfo;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[28] = FallBackComponent;
		*cast(Vector*)&params[32] = Dir;
		*cast(Vector*)&params[44] = *out_HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckHitInfo, params.ptr, cast(void*)0);
		*HitInfo = *cast(Actor.TraceHitInfo*)params.ptr;
		*out_HitLocation = *cast(Vector*)&params[44];
	}
	float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGravityZ, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void DebugFreezeGame(Actor pActorToLookAt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = pActorToLookAt;
		(cast(ScriptObject)this).ProcessEvent(Functions.DebugFreezeGame, params.ptr, cast(void*)0);
	}
	bool CheckForErrors()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForErrors, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.BecomeViewTarget, params.ptr, cast(void*)0);
	}
	void EndViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndViewTarget, params.ptr, cast(void*)0);
	}
	bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	ScriptString GetItemName(ScriptString FullName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FullName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetItemName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	static void ReplaceText(ScriptString* Text, ScriptString Replace, ScriptString With)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Text;
		*cast(ScriptString*)&params[12] = Replace;
		*cast(ScriptString*)&params[24] = With;
		StaticClass.ProcessEvent(Functions.ReplaceText, params.ptr, cast(void*)0);
		*Text = *cast(ScriptString*)params.ptr;
	}
	static ScriptString GetLocalString(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		StaticClass.ProcessEvent(Functions.GetLocalString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void MatchStarting()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchStarting, cast(void*)0, cast(void*)0);
	}
	ScriptString GetDebugName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
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
	ScriptString GetPhysicsName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicsName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ModifyHearSoundComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyHearSoundComponent, params.ptr, cast(void*)0);
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
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	bool IsInPain()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInPain, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayTeleportEffect, params.ptr, cast(void*)0);
	}
	bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSplash, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ApplyFluidSurfaceImpact(FluidSurfaceActor Fluid, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(FluidSurfaceActor*)params.ptr = Fluid;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyFluidSurfaceImpact, params.ptr, cast(void*)0);
	}
	bool EffectIsRelevant(Vector SpawnLocation, bool bForceDedicated, float VisibleCullDistance, float HiddenCullDistance)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(bool*)&params[12] = bForceDedicated;
		*cast(float*)&params[16] = VisibleCullDistance;
		*cast(float*)&params[20] = HiddenCullDistance;
		(cast(ScriptObject)this).ProcessEvent(Functions.EffectIsRelevant, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void DebugMessagePlayer(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.DebugMessagePlayer, params.ptr, cast(void*)0);
	}
	bool TriggerEventClass(ScriptClass InEventClass, Actor InInstigator, int ActivateIndex, bool bTest, ScriptArray!(SequenceEvent)* ActivatedEvents)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InEventClass;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(int*)&params[8] = ActivateIndex;
		*cast(bool*)&params[12] = bTest;
		*cast(ScriptArray!(SequenceEvent)*)&params[16] = *ActivatedEvents;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerEventClass, params.ptr, cast(void*)0);
		*ActivatedEvents = *cast(ScriptArray!(SequenceEvent)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool ActivateEventClass(ScriptClass InClass, Actor InInstigator, ScriptArray!(SequenceEvent)* EventList, ScriptArray!(int)* ActivateIndices, bool bTest, ScriptArray!(SequenceEvent)* ActivatedEvents)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InClass;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(ScriptArray!(SequenceEvent)*)&params[8] = *EventList;
		*cast(ScriptArray!(int)*)&params[20] = *ActivateIndices;
		*cast(bool*)&params[32] = bTest;
		*cast(ScriptArray!(SequenceEvent)*)&params[36] = *ActivatedEvents;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateEventClass, params.ptr, cast(void*)0);
		*EventList = *cast(ScriptArray!(SequenceEvent)*)&params[8];
		*ActivateIndices = *cast(ScriptArray!(int)*)&params[20];
		*ActivatedEvents = *cast(ScriptArray!(SequenceEvent)*)&params[36];
		return *cast(bool*)&params[48];
	}
	void ReceivedNewEvent(SequenceEvent Evt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SequenceEvent*)params.ptr = Evt;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedNewEvent, params.ptr, cast(void*)0);
	}
	bool TriggerGlobalEventClass(ScriptClass InEventClass, Actor InInstigator, int ActivateIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InEventClass;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(int*)&params[8] = ActivateIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerGlobalEventClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool FindEventsOfClass(ScriptClass EventClass, ScriptArray!(SequenceEvent)* out_EventList, bool bIncludeDisabled)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = EventClass;
		*cast(ScriptArray!(SequenceEvent)*)&params[4] = *out_EventList;
		*cast(bool*)&params[16] = bIncludeDisabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindEventsOfClass, params.ptr, cast(void*)0);
		*out_EventList = *cast(ScriptArray!(SequenceEvent)*)&params[4];
		return *cast(bool*)&params[20];
	}
	void ClearLatentAction(ScriptClass actionClass, bool bAborted, SeqAct_Latent exceptionAction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = actionClass;
		*cast(bool*)&params[4] = bAborted;
		*cast(SeqAct_Latent*)&params[8] = exceptionAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLatentAction, params.ptr, cast(void*)0);
	}
	void OnDestroy(SeqAct_Destroy Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Destroy*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDestroy, params.ptr, cast(void*)0);
	}
	void ForceNetRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceNetRelevant, cast(void*)0, cast(void*)0);
	}
	void SetNetUpdateTime(float NewUpdateTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewUpdateTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNetUpdateTime, params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	void PrestreamTextures(float Seconds, bool bEnableStreaming, int CinematicTextureGroups)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		*cast(bool*)&params[4] = bEnableStreaming;
		*cast(int*)&params[8] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrestreamTextures, params.ptr, cast(void*)0);
	}
	void OnModifyHealth(SeqAct_ModifyHealth Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyHealth*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnModifyHealth, params.ptr, cast(void*)0);
	}
	void OnTeleport(SeqAct_Teleport Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTeleport, params.ptr, cast(void*)0);
	}
	void OnSetVelocity(SeqAct_SetVelocity Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetVelocity*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetVelocity, params.ptr, cast(void*)0);
	}
	void OnSetBlockRigidBody(SeqAct_SetBlockRigidBody Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetBlockRigidBody*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetBlockRigidBody, params.ptr, cast(void*)0);
	}
	void OnSetPhysics(SeqAct_SetPhysics Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetPhysics*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetPhysics, params.ptr, cast(void*)0);
	}
	void OnChangeCollision(SeqAct_ChangeCollision Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ChangeCollision*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnChangeCollision, params.ptr, cast(void*)0);
	}
	void OnToggleHidden(SeqAct_ToggleHidden Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHidden*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggleHidden, params.ptr, cast(void*)0);
	}
	void OnAttachToActor(SeqAct_AttachToActor Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AttachToActor*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAttachToActor, params.ptr, cast(void*)0);
	}
	void DoKismetAttachment(Actor pAttachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = pAttachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoKismetAttachment, params.ptr, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	void OnAnimPlay(AnimNodeSequence SeqNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimPlay, params.ptr, cast(void*)0);
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
	FaceFXAsset GetActorFaceFXAsset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorFaceFXAsset, params.ptr, cast(void*)0);
		return *cast(FaceFXAsset*)params.ptr;
	}
	bool IsStationary()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsStationary, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	bool IsPlayerOwned()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayerOwned, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PawnBaseDied()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnBaseDied, cast(void*)0, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
	ubyte ScriptGetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScriptGetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
	void NotifyLocalPlayerTeamReceived()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLocalPlayerTeamReceived, cast(void*)0, cast(void*)0);
	}
	void FindGoodEndView(PlayerController PC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGoodEndView, params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTargetLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnedByKismet, cast(void*)0, cast(void*)0);
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
	void InterpolationChanged(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.InterpolationChanged, params.ptr, cast(void*)0);
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, Actor.CollisionImpactData* RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyCollision, params.ptr, cast(void*)0);
		*RigidCollisionData = *cast(Actor.CollisionImpactData*)&params[8];
	}
	void OnRanOver(SVehicle pVehicle, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* RunOverComponent, int WheelIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SVehicle*)params.ptr = pVehicle;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = RunOverComponent;
		*cast(int*)&params[8] = WheelIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRanOver, params.ptr, cast(void*)0);
	}
	void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHUDLocation, params.ptr, cast(void*)0);
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
	void RootMotionModeChanged(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.RootMotionModeChanged, params.ptr, cast(void*)0);
	}
	void RootMotionExtracted(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp, UObject.BoneAtom* ExtractedRootMotionDelta)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		*cast(UObject.BoneAtom*)&params[16] = *ExtractedRootMotionDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.RootMotionExtracted, params.ptr, cast(void*)0);
		*ExtractedRootMotionDelta = *cast(UObject.BoneAtom*)&params[16];
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
	static UObject.Guid GetPackageGuid(ScriptName PackageName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PackageName;
		StaticClass.ProcessEvent(Functions.GetPackageGuid, params.ptr, cast(void*)0);
		return *cast(UObject.Guid*)&params[8];
	}
	void OnRigidBodySpringOverextension(RB_BodyInstance BodyInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(RB_BodyInstance*)params.ptr = BodyInstance;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRigidBodySpringOverextension, params.ptr, cast(void*)0);
	}
	bool IsInPersistentLevel(bool bIncludeLevelStreamingPersistent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIncludeLevelStreamingPersistent;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInPersistentLevel, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetAimFrictionExtent(float* Width, float* Height, Vector* Center)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = *Width;
		*cast(float*)&params[4] = *Height;
		*cast(Vector*)&params[8] = *Center;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAimFrictionExtent, params.ptr, cast(void*)0);
		*Width = *cast(float*)params.ptr;
		*Height = *cast(float*)&params[4];
		*Center = *cast(Vector*)&params[8];
	}
	void GetAimAdhesionExtent(float* Width, float* Height, Vector* Center)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = *Width;
		*cast(float*)&params[4] = *Height;
		*cast(Vector*)&params[8] = *Center;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAimAdhesionExtent, params.ptr, cast(void*)0);
		*Width = *cast(float*)params.ptr;
		*Height = *cast(float*)&params[4];
		*Center = *cast(Vector*)&params[8];
	}
	bool PlayParticleEffect(AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayParticleEffect, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CreateForceField(AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateForceField, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void TrailsNotify(AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrailsNotify, params.ptr, cast(void*)0);
	}
	void TrailsNotifyTick(AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrailsNotifyTick, params.ptr, cast(void*)0);
	}
	void TrailsNotifyEnd(AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrailsNotifyEnd, params.ptr, cast(void*)0);
	}
	bool SupportsKismetModification(SequenceOp AskingOp, ScriptString* Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SequenceOp*)params.ptr = AskingOp;
		*cast(ScriptString*)&params[4] = *Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.SupportsKismetModification, params.ptr, cast(void*)0);
		*Reason = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	void AnimTreeUpdated(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnimTreeUpdated, params.ptr, cast(void*)0);
	}
	void PostDemoRewind()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostDemoRewind, cast(void*)0, cast(void*)0);
	}
	void ReplicationEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicationEnded, cast(void*)0, cast(void*)0);
	}
	Vector GetAvoidanceVector(ScriptArray!(Actor)* Obstacles, Vector GoalLocation, float CollisionRadius, float MaxSpeed, int NumSamples, float VelocityStepRate, float MaxTimeTilOverlap)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptArray!(Actor)*)params.ptr = *Obstacles;
		*cast(Vector*)&params[12] = GoalLocation;
		*cast(float*)&params[24] = CollisionRadius;
		*cast(float*)&params[28] = MaxSpeed;
		*cast(int*)&params[32] = NumSamples;
		*cast(float*)&params[36] = VelocityStepRate;
		*cast(float*)&params[40] = MaxTimeTilOverlap;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAvoidanceVector, params.ptr, cast(void*)0);
		*Obstacles = *cast(ScriptArray!(Actor)*)params.ptr;
		return *cast(Vector*)&params[44];
	}
	bool WillOverlap(Vector PosA, Vector VelA, Vector PosB, Vector VelB, float StepSize, float Radius, float* Time)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = PosA;
		*cast(Vector*)&params[12] = VelA;
		*cast(Vector*)&params[24] = PosB;
		*cast(Vector*)&params[36] = VelB;
		*cast(float*)&params[48] = StepSize;
		*cast(float*)&params[52] = Radius;
		*cast(float*)&params[56] = *Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.WillOverlap, params.ptr, cast(void*)0);
		*Time = *cast(float*)&params[56];
		return *cast(bool*)&params[60];
	}
	bool ShouldBeHiddenBySHOW_NavigationNodes()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeHiddenBySHOW_NavigationNodes, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetSpectatorDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorDescription, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void GetSpectatorHealthInfo(int* Health, int* MaxHealth)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *Health;
		*cast(int*)&params[4] = *MaxHealth;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorHealthInfo, params.ptr, cast(void*)0);
		*Health = *cast(int*)params.ptr;
		*MaxHealth = *cast(int*)&params[4];
	}
}
