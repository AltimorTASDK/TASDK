module UnrealScript.Engine.Actor;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Actor")); }
	private static __gshared Actor mDefaultProperties;
	@property final static Actor DefaultProperties() { mixin(MGDPC("Actor", "Actor Engine.Default__Actor")); }
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
			ScriptFunction ForceUpdateComponents() { mixin(MGF("mForceUpdateComponents", "Function Engine.Actor.ForceUpdateComponents")); }
			ScriptFunction ConsoleCommand() { mixin(MGF("mConsoleCommand", "Function Engine.Actor.ConsoleCommand")); }
			ScriptFunction Sleep() { mixin(MGF("mSleep", "Function Engine.Actor.Sleep")); }
			ScriptFunction FinishAnim() { mixin(MGF("mFinishAnim", "Function Engine.Actor.FinishAnim")); }
			ScriptFunction SetCollision() { mixin(MGF("mSetCollision", "Function Engine.Actor.SetCollision")); }
			ScriptFunction SetCollisionSize() { mixin(MGF("mSetCollisionSize", "Function Engine.Actor.SetCollisionSize")); }
			ScriptFunction SetCollisionType() { mixin(MGF("mSetCollisionType", "Function Engine.Actor.SetCollisionType")); }
			ScriptFunction SetDrawScale() { mixin(MGF("mSetDrawScale", "Function Engine.Actor.SetDrawScale")); }
			ScriptFunction SetDrawScale3D() { mixin(MGF("mSetDrawScale3D", "Function Engine.Actor.SetDrawScale3D")); }
			ScriptFunction Move() { mixin(MGF("mMove", "Function Engine.Actor.Move")); }
			ScriptFunction SetLocation() { mixin(MGF("mSetLocation", "Function Engine.Actor.SetLocation")); }
			ScriptFunction SetRotation() { mixin(MGF("mSetRotation", "Function Engine.Actor.SetRotation")); }
			ScriptFunction MovingWhichWay() { mixin(MGF("mMovingWhichWay", "Function Engine.Actor.MovingWhichWay")); }
			ScriptFunction SetZone() { mixin(MGF("mSetZone", "Function Engine.Actor.SetZone")); }
			ScriptFunction SetRelativeRotation() { mixin(MGF("mSetRelativeRotation", "Function Engine.Actor.SetRelativeRotation")); }
			ScriptFunction SetRelativeLocation() { mixin(MGF("mSetRelativeLocation", "Function Engine.Actor.SetRelativeLocation")); }
			ScriptFunction SetHardAttach() { mixin(MGF("mSetHardAttach", "Function Engine.Actor.SetHardAttach")); }
			ScriptFunction fixedTurn() { mixin(MGF("mfixedTurn", "Function Engine.Actor.fixedTurn")); }
			ScriptFunction MoveSmooth() { mixin(MGF("mMoveSmooth", "Function Engine.Actor.MoveSmooth")); }
			ScriptFunction AutonomousPhysics() { mixin(MGF("mAutonomousPhysics", "Function Engine.Actor.AutonomousPhysics")); }
			ScriptFunction GetTerminalVelocity() { mixin(MGF("mGetTerminalVelocity", "Function Engine.Actor.GetTerminalVelocity")); }
			ScriptFunction SetBase() { mixin(MGF("mSetBase", "Function Engine.Actor.SetBase")); }
			ScriptFunction SetOwner() { mixin(MGF("mSetOwner", "Function Engine.Actor.SetOwner")); }
			ScriptFunction FindBase() { mixin(MGF("mFindBase", "Function Engine.Actor.FindBase")); }
			ScriptFunction IsBasedOn() { mixin(MGF("mIsBasedOn", "Function Engine.Actor.IsBasedOn")); }
			ScriptFunction GetBaseMost() { mixin(MGF("mGetBaseMost", "Function Engine.Actor.GetBaseMost")); }
			ScriptFunction IsOwnedBy() { mixin(MGF("mIsOwnedBy", "Function Engine.Actor.IsOwnedBy")); }
			ScriptFunction GetAggregateBaseVelocity() { mixin(MGF("mGetAggregateBaseVelocity", "Function Engine.Actor.GetAggregateBaseVelocity")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.Actor.ReplicatedEvent")); }
			ScriptFunction SetForcedInitialReplicatedProperty() { mixin(MGF("mSetForcedInitialReplicatedProperty", "Function Engine.Actor.SetForcedInitialReplicatedProperty")); }
			ScriptFunction Vect2BP() { mixin(MGF("mVect2BP", "Function Engine.Actor.Vect2BP")); }
			ScriptFunction BP2Vect() { mixin(MGF("mBP2Vect", "Function Engine.Actor.BP2Vect")); }
			ScriptFunction SetBasedPosition() { mixin(MGF("mSetBasedPosition", "Function Engine.Actor.SetBasedPosition")); }
			ScriptFunction GetBasedPosition() { mixin(MGF("mGetBasedPosition", "Function Engine.Actor.GetBasedPosition")); }
			ScriptFunction FlushPersistentDebugLines() { mixin(MGF("mFlushPersistentDebugLines", "Function Engine.Actor.FlushPersistentDebugLines")); }
			ScriptFunction DrawDebugLine() { mixin(MGF("mDrawDebugLine", "Function Engine.Actor.DrawDebugLine")); }
			ScriptFunction DrawDebugPoint() { mixin(MGF("mDrawDebugPoint", "Function Engine.Actor.DrawDebugPoint")); }
			ScriptFunction DrawDebugBox() { mixin(MGF("mDrawDebugBox", "Function Engine.Actor.DrawDebugBox")); }
			ScriptFunction DrawDebugStar() { mixin(MGF("mDrawDebugStar", "Function Engine.Actor.DrawDebugStar")); }
			ScriptFunction DrawDebugCoordinateSystem() { mixin(MGF("mDrawDebugCoordinateSystem", "Function Engine.Actor.DrawDebugCoordinateSystem")); }
			ScriptFunction DrawDebugSphere() { mixin(MGF("mDrawDebugSphere", "Function Engine.Actor.DrawDebugSphere")); }
			ScriptFunction DrawDebugCylinder() { mixin(MGF("mDrawDebugCylinder", "Function Engine.Actor.DrawDebugCylinder")); }
			ScriptFunction DrawDebugCone() { mixin(MGF("mDrawDebugCone", "Function Engine.Actor.DrawDebugCone")); }
			ScriptFunction DrawDebugString() { mixin(MGF("mDrawDebugString", "Function Engine.Actor.DrawDebugString")); }
			ScriptFunction DrawDebugFrustrum() { mixin(MGF("mDrawDebugFrustrum", "Function Engine.Actor.DrawDebugFrustrum")); }
			ScriptFunction FlushDebugStrings() { mixin(MGF("mFlushDebugStrings", "Function Engine.Actor.FlushDebugStrings")); }
			ScriptFunction ChartData() { mixin(MGF("mChartData", "Function Engine.Actor.ChartData")); }
			ScriptFunction SetHidden() { mixin(MGF("mSetHidden", "Function Engine.Actor.SetHidden")); }
			ScriptFunction SetOnlyOwnerSee() { mixin(MGF("mSetOnlyOwnerSee", "Function Engine.Actor.SetOnlyOwnerSee")); }
			ScriptFunction SetPhysics() { mixin(MGF("mSetPhysics", "Function Engine.Actor.SetPhysics")); }
			ScriptFunction Clock() { mixin(MGF("mClock", "Function Engine.Actor.Clock")); }
			ScriptFunction UnClock() { mixin(MGF("mUnClock", "Function Engine.Actor.UnClock")); }
			ScriptFunction AttachComponent() { mixin(MGF("mAttachComponent", "Function Engine.Actor.AttachComponent")); }
			ScriptFunction DetachComponent() { mixin(MGF("mDetachComponent", "Function Engine.Actor.DetachComponent")); }
			ScriptFunction ReattachComponent() { mixin(MGF("mReattachComponent", "Function Engine.Actor.ReattachComponent")); }
			ScriptFunction SetTickGroup() { mixin(MGF("mSetTickGroup", "Function Engine.Actor.SetTickGroup")); }
			ScriptFunction SetTickIsDisabled() { mixin(MGF("mSetTickIsDisabled", "Function Engine.Actor.SetTickIsDisabled")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function Engine.Actor.Destroyed")); }
			ScriptFunction GainedChild() { mixin(MGF("mGainedChild", "Function Engine.Actor.GainedChild")); }
			ScriptFunction LostChild() { mixin(MGF("mLostChild", "Function Engine.Actor.LostChild")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function Engine.Actor.Tick")); }
			ScriptFunction Timer() { mixin(MGF("mTimer", "Function Engine.Actor.Timer")); }
			ScriptFunction HitWall() { mixin(MGF("mHitWall", "Function Engine.Actor.HitWall")); }
			ScriptFunction Falling() { mixin(MGF("mFalling", "Function Engine.Actor.Falling")); }
			ScriptFunction Landed() { mixin(MGF("mLanded", "Function Engine.Actor.Landed")); }
			ScriptFunction PhysicsVolumeChange() { mixin(MGF("mPhysicsVolumeChange", "Function Engine.Actor.PhysicsVolumeChange")); }
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function Engine.Actor.Touch")); }
			ScriptFunction PostTouch() { mixin(MGF("mPostTouch", "Function Engine.Actor.PostTouch")); }
			ScriptFunction UnTouch() { mixin(MGF("mUnTouch", "Function Engine.Actor.UnTouch")); }
			ScriptFunction Bump() { mixin(MGF("mBump", "Function Engine.Actor.Bump")); }
			ScriptFunction BaseChange() { mixin(MGF("mBaseChange", "Function Engine.Actor.BaseChange")); }
			ScriptFunction Attach() { mixin(MGF("mAttach", "Function Engine.Actor.Attach")); }
			ScriptFunction Detach() { mixin(MGF("mDetach", "Function Engine.Actor.Detach")); }
			ScriptFunction SpecialHandling() { mixin(MGF("mSpecialHandling", "Function Engine.Actor.SpecialHandling")); }
			ScriptFunction CollisionChanged() { mixin(MGF("mCollisionChanged", "Function Engine.Actor.CollisionChanged")); }
			ScriptFunction EncroachingOn() { mixin(MGF("mEncroachingOn", "Function Engine.Actor.EncroachingOn")); }
			ScriptFunction EncroachedBy() { mixin(MGF("mEncroachedBy", "Function Engine.Actor.EncroachedBy")); }
			ScriptFunction RanInto() { mixin(MGF("mRanInto", "Function Engine.Actor.RanInto")); }
			ScriptFunction OnWakeRBPhysics() { mixin(MGF("mOnWakeRBPhysics", "Function Engine.Actor.OnWakeRBPhysics")); }
			ScriptFunction OnSleepRBPhysics() { mixin(MGF("mOnSleepRBPhysics", "Function Engine.Actor.OnSleepRBPhysics")); }
			ScriptFunction ClampRotation() { mixin(MGF("mClampRotation", "Function Engine.Actor.ClampRotation")); }
			ScriptFunction OverRotated() { mixin(MGF("mOverRotated", "Function Engine.Actor.OverRotated")); }
			ScriptFunction UsedBy() { mixin(MGF("mUsedBy", "Function Engine.Actor.UsedBy")); }
			ScriptFunction FellOutOfWorld() { mixin(MGF("mFellOutOfWorld", "Function Engine.Actor.FellOutOfWorld")); }
			ScriptFunction OutsideWorldBounds() { mixin(MGF("mOutsideWorldBounds", "Function Engine.Actor.OutsideWorldBounds")); }
			ScriptFunction VolumeBasedDestroy() { mixin(MGF("mVolumeBasedDestroy", "Function Engine.Actor.VolumeBasedDestroy")); }
			ScriptFunction Trace() { mixin(MGF("mTrace", "Function Engine.Actor.Trace")); }
			ScriptFunction TraceComponent() { mixin(MGF("mTraceComponent", "Function Engine.Actor.TraceComponent")); }
			ScriptFunction PointCheckComponent() { mixin(MGF("mPointCheckComponent", "Function Engine.Actor.PointCheckComponent")); }
			ScriptFunction FastTrace() { mixin(MGF("mFastTrace", "Function Engine.Actor.FastTrace")); }
			ScriptFunction TraceAllPhysicsAssetInteractions() { mixin(MGF("mTraceAllPhysicsAssetInteractions", "Function Engine.Actor.TraceAllPhysicsAssetInteractions")); }
			ScriptFunction FindSpot() { mixin(MGF("mFindSpot", "Function Engine.Actor.FindSpot")); }
			ScriptFunction ContainsPoint() { mixin(MGF("mContainsPoint", "Function Engine.Actor.ContainsPoint")); }
			ScriptFunction IsOverlapping() { mixin(MGF("mIsOverlapping", "Function Engine.Actor.IsOverlapping")); }
			ScriptFunction GetComponentsBoundingBox() { mixin(MGF("mGetComponentsBoundingBox", "Function Engine.Actor.GetComponentsBoundingBox")); }
			ScriptFunction GetBoundingCylinder() { mixin(MGF("mGetBoundingCylinder", "Function Engine.Actor.GetBoundingCylinder")); }
			ScriptFunction IsBlockedBy() { mixin(MGF("mIsBlockedBy", "Function Engine.Actor.IsBlockedBy")); }
			ScriptFunction Spawn() { mixin(MGF("mSpawn", "Function Engine.Actor.Spawn")); }
			ScriptFunction Destroy() { mixin(MGF("mDestroy", "Function Engine.Actor.Destroy")); }
			ScriptFunction TornOff() { mixin(MGF("mTornOff", "Function Engine.Actor.TornOff")); }
			ScriptFunction SetTimer() { mixin(MGF("mSetTimer", "Function Engine.Actor.SetTimer")); }
			ScriptFunction ClearTimer() { mixin(MGF("mClearTimer", "Function Engine.Actor.ClearTimer")); }
			ScriptFunction ClearAllTimers() { mixin(MGF("mClearAllTimers", "Function Engine.Actor.ClearAllTimers")); }
			ScriptFunction PauseTimer() { mixin(MGF("mPauseTimer", "Function Engine.Actor.PauseTimer")); }
			ScriptFunction IsTimerActive() { mixin(MGF("mIsTimerActive", "Function Engine.Actor.IsTimerActive")); }
			ScriptFunction GetTimerCount() { mixin(MGF("mGetTimerCount", "Function Engine.Actor.GetTimerCount")); }
			ScriptFunction GetTimerRate() { mixin(MGF("mGetTimerRate", "Function Engine.Actor.GetTimerRate")); }
			ScriptFunction GetRemainingTimeForTimer() { mixin(MGF("mGetRemainingTimeForTimer", "Function Engine.Actor.GetRemainingTimeForTimer")); }
			ScriptFunction ModifyTimerTimeDilation() { mixin(MGF("mModifyTimerTimeDilation", "Function Engine.Actor.ModifyTimerTimeDilation")); }
			ScriptFunction ResetTimerTimeDilation() { mixin(MGF("mResetTimerTimeDilation", "Function Engine.Actor.ResetTimerTimeDilation")); }
			ScriptFunction CreateAudioComponent() { mixin(MGF("mCreateAudioComponent", "Function Engine.Actor.CreateAudioComponent")); }
			ScriptFunction PlaySound() { mixin(MGF("mPlaySound", "Function Engine.Actor.PlaySound")); }
			ScriptFunction MakeNoise() { mixin(MGF("mMakeNoise", "Function Engine.Actor.MakeNoise")); }
			ScriptFunction PlayerCanSeeMe() { mixin(MGF("mPlayerCanSeeMe", "Function Engine.Actor.PlayerCanSeeMe")); }
			ScriptFunction SuggestTossVelocity() { mixin(MGF("mSuggestTossVelocity", "Function Engine.Actor.SuggestTossVelocity")); }
			ScriptFunction CalculateMinSpeedTrajectory() { mixin(MGF("mCalculateMinSpeedTrajectory", "Function Engine.Actor.CalculateMinSpeedTrajectory")); }
			ScriptFunction GetDestination() { mixin(MGF("mGetDestination", "Function Engine.Actor.GetDestination")); }
			ScriptFunction PreTeleport() { mixin(MGF("mPreTeleport", "Function Engine.Actor.PreTeleport")); }
			ScriptFunction PostTeleport() { mixin(MGF("mPostTeleport", "Function Engine.Actor.PostTeleport")); }
			ScriptFunction GetURLMap() { mixin(MGF("mGetURLMap", "Function Engine.Actor.GetURLMap")); }
			ScriptFunction AllActors() { mixin(MGF("mAllActors", "Function Engine.Actor.AllActors")); }
			ScriptFunction DynamicActors() { mixin(MGF("mDynamicActors", "Function Engine.Actor.DynamicActors")); }
			ScriptFunction ChildActors() { mixin(MGF("mChildActors", "Function Engine.Actor.ChildActors")); }
			ScriptFunction BasedActors() { mixin(MGF("mBasedActors", "Function Engine.Actor.BasedActors")); }
			ScriptFunction TouchingActors() { mixin(MGF("mTouchingActors", "Function Engine.Actor.TouchingActors")); }
			ScriptFunction TraceActors() { mixin(MGF("mTraceActors", "Function Engine.Actor.TraceActors")); }
			ScriptFunction VisibleActors() { mixin(MGF("mVisibleActors", "Function Engine.Actor.VisibleActors")); }
			ScriptFunction VisibleCollidingActors() { mixin(MGF("mVisibleCollidingActors", "Function Engine.Actor.VisibleCollidingActors")); }
			ScriptFunction CollidingActors() { mixin(MGF("mCollidingActors", "Function Engine.Actor.CollidingActors")); }
			ScriptFunction VisibleCollidingExtentActors() { mixin(MGF("mVisibleCollidingExtentActors", "Function Engine.Actor.VisibleCollidingExtentActors")); }
			ScriptFunction OverlappingActors() { mixin(MGF("mOverlappingActors", "Function Engine.Actor.OverlappingActors")); }
			ScriptFunction ComponentList() { mixin(MGF("mComponentList", "Function Engine.Actor.ComponentList")); }
			ScriptFunction AllOwnedComponents() { mixin(MGF("mAllOwnedComponents", "Function Engine.Actor.AllOwnedComponents")); }
			ScriptFunction LocalPlayerControllers() { mixin(MGF("mLocalPlayerControllers", "Function Engine.Actor.LocalPlayerControllers")); }
			ScriptFunction GetALocalPlayerController() { mixin(MGF("mGetALocalPlayerController", "Function Engine.Actor.GetALocalPlayerController")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.Actor.PreBeginPlay")); }
			ScriptFunction BroadcastLocalizedMessage() { mixin(MGF("mBroadcastLocalizedMessage", "Function Engine.Actor.BroadcastLocalizedMessage")); }
			ScriptFunction BroadcastLocalizedTeamMessage() { mixin(MGF("mBroadcastLocalizedTeamMessage", "Function Engine.Actor.BroadcastLocalizedTeamMessage")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.Actor.PostBeginPlay")); }
			ScriptFunction SetInitialState() { mixin(MGF("mSetInitialState", "Function Engine.Actor.SetInitialState")); }
			ScriptFunction ConstraintBrokenNotify() { mixin(MGF("mConstraintBrokenNotify", "Function Engine.Actor.ConstraintBrokenNotify")); }
			ScriptFunction NotifySkelControlBeyondLimit() { mixin(MGF("mNotifySkelControlBeyondLimit", "Function Engine.Actor.NotifySkelControlBeyondLimit")); }
			ScriptFunction StopsProjectile() { mixin(MGF("mStopsProjectile", "Function Engine.Actor.StopsProjectile")); }
			ScriptFunction HurtRadius() { mixin(MGF("mHurtRadius", "Function Engine.Actor.HurtRadius")); }
			ScriptFunction KilledBy() { mixin(MGF("mKilledBy", "Function Engine.Actor.KilledBy")); }
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function Engine.Actor.TakeDamage")); }
			ScriptFunction HealDamage() { mixin(MGF("mHealDamage", "Function Engine.Actor.HealDamage")); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF("mTakeRadiusDamage", "Function Engine.Actor.TakeRadiusDamage")); }
			ScriptFunction CheckHitInfo() { mixin(MGF("mCheckHitInfo", "Function Engine.Actor.CheckHitInfo")); }
			ScriptFunction GetGravityZ() { mixin(MGF("mGetGravityZ", "Function Engine.Actor.GetGravityZ")); }
			ScriptFunction DebugFreezeGame() { mixin(MGF("mDebugFreezeGame", "Function Engine.Actor.DebugFreezeGame")); }
			ScriptFunction CheckForErrors() { mixin(MGF("mCheckForErrors", "Function Engine.Actor.CheckForErrors")); }
			ScriptFunction BecomeViewTarget() { mixin(MGF("mBecomeViewTarget", "Function Engine.Actor.BecomeViewTarget")); }
			ScriptFunction EndViewTarget() { mixin(MGF("mEndViewTarget", "Function Engine.Actor.EndViewTarget")); }
			ScriptFunction CalcCamera() { mixin(MGF("mCalcCamera", "Function Engine.Actor.CalcCamera")); }
			ScriptFunction GetItemName() { mixin(MGF("mGetItemName", "Function Engine.Actor.GetItemName")); }
			ScriptFunction GetHumanReadableName() { mixin(MGF("mGetHumanReadableName", "Function Engine.Actor.GetHumanReadableName")); }
			ScriptFunction ReplaceText() { mixin(MGF("mReplaceText", "Function Engine.Actor.ReplaceText")); }
			ScriptFunction GetLocalString() { mixin(MGF("mGetLocalString", "Function Engine.Actor.GetLocalString")); }
			ScriptFunction MatchStarting() { mixin(MGF("mMatchStarting", "Function Engine.Actor.MatchStarting")); }
			ScriptFunction GetDebugName() { mixin(MGF("mGetDebugName", "Function Engine.Actor.GetDebugName")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function Engine.Actor.DisplayDebug")); }
			ScriptFunction GetPhysicsName() { mixin(MGF("mGetPhysicsName", "Function Engine.Actor.GetPhysicsName")); }
			ScriptFunction ModifyHearSoundComponent() { mixin(MGF("mModifyHearSoundComponent", "Function Engine.Actor.ModifyHearSoundComponent")); }
			ScriptFunction GetFaceFXAudioComponent() { mixin(MGF("mGetFaceFXAudioComponent", "Function Engine.Actor.GetFaceFXAudioComponent")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function Engine.Actor.Reset")); }
			ScriptFunction IsInPain() { mixin(MGF("mIsInPain", "Function Engine.Actor.IsInPain")); }
			ScriptFunction PlayTeleportEffect() { mixin(MGF("mPlayTeleportEffect", "Function Engine.Actor.PlayTeleportEffect")); }
			ScriptFunction CanSplash() { mixin(MGF("mCanSplash", "Function Engine.Actor.CanSplash")); }
			ScriptFunction ApplyFluidSurfaceImpact() { mixin(MGF("mApplyFluidSurfaceImpact", "Function Engine.Actor.ApplyFluidSurfaceImpact")); }
			ScriptFunction EffectIsRelevant() { mixin(MGF("mEffectIsRelevant", "Function Engine.Actor.EffectIsRelevant")); }
			ScriptFunction DebugMessagePlayer() { mixin(MGF("mDebugMessagePlayer", "Function Engine.Actor.DebugMessagePlayer")); }
			ScriptFunction TriggerEventClass() { mixin(MGF("mTriggerEventClass", "Function Engine.Actor.TriggerEventClass")); }
			ScriptFunction ActivateEventClass() { mixin(MGF("mActivateEventClass", "Function Engine.Actor.ActivateEventClass")); }
			ScriptFunction ReceivedNewEvent() { mixin(MGF("mReceivedNewEvent", "Function Engine.Actor.ReceivedNewEvent")); }
			ScriptFunction TriggerGlobalEventClass() { mixin(MGF("mTriggerGlobalEventClass", "Function Engine.Actor.TriggerGlobalEventClass")); }
			ScriptFunction FindEventsOfClass() { mixin(MGF("mFindEventsOfClass", "Function Engine.Actor.FindEventsOfClass")); }
			ScriptFunction ClearLatentAction() { mixin(MGF("mClearLatentAction", "Function Engine.Actor.ClearLatentAction")); }
			ScriptFunction OnDestroy() { mixin(MGF("mOnDestroy", "Function Engine.Actor.OnDestroy")); }
			ScriptFunction ForceNetRelevant() { mixin(MGF("mForceNetRelevant", "Function Engine.Actor.ForceNetRelevant")); }
			ScriptFunction SetNetUpdateTime() { mixin(MGF("mSetNetUpdateTime", "Function Engine.Actor.SetNetUpdateTime")); }
			ScriptFunction ShutDown() { mixin(MGF("mShutDown", "Function Engine.Actor.ShutDown")); }
			ScriptFunction PrestreamTextures() { mixin(MGF("mPrestreamTextures", "Function Engine.Actor.PrestreamTextures")); }
			ScriptFunction OnModifyHealth() { mixin(MGF("mOnModifyHealth", "Function Engine.Actor.OnModifyHealth")); }
			ScriptFunction OnTeleport() { mixin(MGF("mOnTeleport", "Function Engine.Actor.OnTeleport")); }
			ScriptFunction OnSetVelocity() { mixin(MGF("mOnSetVelocity", "Function Engine.Actor.OnSetVelocity")); }
			ScriptFunction OnSetBlockRigidBody() { mixin(MGF("mOnSetBlockRigidBody", "Function Engine.Actor.OnSetBlockRigidBody")); }
			ScriptFunction OnSetPhysics() { mixin(MGF("mOnSetPhysics", "Function Engine.Actor.OnSetPhysics")); }
			ScriptFunction OnChangeCollision() { mixin(MGF("mOnChangeCollision", "Function Engine.Actor.OnChangeCollision")); }
			ScriptFunction OnToggleHidden() { mixin(MGF("mOnToggleHidden", "Function Engine.Actor.OnToggleHidden")); }
			ScriptFunction OnAttachToActor() { mixin(MGF("mOnAttachToActor", "Function Engine.Actor.OnAttachToActor")); }
			ScriptFunction DoKismetAttachment() { mixin(MGF("mDoKismetAttachment", "Function Engine.Actor.DoKismetAttachment")); }
			ScriptFunction OnAnimEnd() { mixin(MGF("mOnAnimEnd", "Function Engine.Actor.OnAnimEnd")); }
			ScriptFunction OnAnimPlay() { mixin(MGF("mOnAnimPlay", "Function Engine.Actor.OnAnimPlay")); }
			ScriptFunction BeginAnimControl() { mixin(MGF("mBeginAnimControl", "Function Engine.Actor.BeginAnimControl")); }
			ScriptFunction SetAnimPosition() { mixin(MGF("mSetAnimPosition", "Function Engine.Actor.SetAnimPosition")); }
			ScriptFunction FinishAnimControl() { mixin(MGF("mFinishAnimControl", "Function Engine.Actor.FinishAnimControl")); }
			ScriptFunction PlayActorFaceFXAnim() { mixin(MGF("mPlayActorFaceFXAnim", "Function Engine.Actor.PlayActorFaceFXAnim")); }
			ScriptFunction StopActorFaceFXAnim() { mixin(MGF("mStopActorFaceFXAnim", "Function Engine.Actor.StopActorFaceFXAnim")); }
			ScriptFunction SetMorphWeight() { mixin(MGF("mSetMorphWeight", "Function Engine.Actor.SetMorphWeight")); }
			ScriptFunction SetSkelControlScale() { mixin(MGF("mSetSkelControlScale", "Function Engine.Actor.SetSkelControlScale")); }
			ScriptFunction IsActorPlayingFaceFXAnim() { mixin(MGF("mIsActorPlayingFaceFXAnim", "Function Engine.Actor.IsActorPlayingFaceFXAnim")); }
			ScriptFunction CanActorPlayFaceFXAnim() { mixin(MGF("mCanActorPlayFaceFXAnim", "Function Engine.Actor.CanActorPlayFaceFXAnim")); }
			ScriptFunction GetActorFaceFXAsset() { mixin(MGF("mGetActorFaceFXAsset", "Function Engine.Actor.GetActorFaceFXAsset")); }
			ScriptFunction IsStationary() { mixin(MGF("mIsStationary", "Function Engine.Actor.IsStationary")); }
			ScriptFunction GetActorEyesViewPoint() { mixin(MGF("mGetActorEyesViewPoint", "Function Engine.Actor.GetActorEyesViewPoint")); }
			ScriptFunction IsPlayerOwned() { mixin(MGF("mIsPlayerOwned", "Function Engine.Actor.IsPlayerOwned")); }
			ScriptFunction PawnBaseDied() { mixin(MGF("mPawnBaseDied", "Function Engine.Actor.PawnBaseDied")); }
			ScriptFunction GetTeamNum() { mixin(MGF("mGetTeamNum", "Function Engine.Actor.GetTeamNum")); }
			ScriptFunction ScriptGetTeamNum() { mixin(MGF("mScriptGetTeamNum", "Function Engine.Actor.ScriptGetTeamNum")); }
			ScriptFunction NotifyLocalPlayerTeamReceived() { mixin(MGF("mNotifyLocalPlayerTeamReceived", "Function Engine.Actor.NotifyLocalPlayerTeamReceived")); }
			ScriptFunction FindGoodEndView() { mixin(MGF("mFindGoodEndView", "Function Engine.Actor.FindGoodEndView")); }
			ScriptFunction GetTargetLocation() { mixin(MGF("mGetTargetLocation", "Function Engine.Actor.GetTargetLocation")); }
			ScriptFunction SpawnedByKismet() { mixin(MGF("mSpawnedByKismet", "Function Engine.Actor.SpawnedByKismet")); }
			ScriptFunction InterpolationStarted() { mixin(MGF("mInterpolationStarted", "Function Engine.Actor.InterpolationStarted")); }
			ScriptFunction InterpolationFinished() { mixin(MGF("mInterpolationFinished", "Function Engine.Actor.InterpolationFinished")); }
			ScriptFunction InterpolationChanged() { mixin(MGF("mInterpolationChanged", "Function Engine.Actor.InterpolationChanged")); }
			ScriptFunction RigidBodyCollision() { mixin(MGF("mRigidBodyCollision", "Function Engine.Actor.RigidBodyCollision")); }
			ScriptFunction OnRanOver() { mixin(MGF("mOnRanOver", "Function Engine.Actor.OnRanOver")); }
			ScriptFunction SetHUDLocation() { mixin(MGF("mSetHUDLocation", "Function Engine.Actor.SetHUDLocation")); }
			ScriptFunction NativePostRenderFor() { mixin(MGF("mNativePostRenderFor", "Function Engine.Actor.NativePostRenderFor")); }
			ScriptFunction PostRenderFor() { mixin(MGF("mPostRenderFor", "Function Engine.Actor.PostRenderFor")); }
			ScriptFunction RootMotionModeChanged() { mixin(MGF("mRootMotionModeChanged", "Function Engine.Actor.RootMotionModeChanged")); }
			ScriptFunction RootMotionExtracted() { mixin(MGF("mRootMotionExtracted", "Function Engine.Actor.RootMotionExtracted")); }
			ScriptFunction PostInitAnimTree() { mixin(MGF("mPostInitAnimTree", "Function Engine.Actor.PostInitAnimTree")); }
			ScriptFunction GetPackageGuid() { mixin(MGF("mGetPackageGuid", "Function Engine.Actor.GetPackageGuid")); }
			ScriptFunction OnRigidBodySpringOverextension() { mixin(MGF("mOnRigidBodySpringOverextension", "Function Engine.Actor.OnRigidBodySpringOverextension")); }
			ScriptFunction IsInPersistentLevel() { mixin(MGF("mIsInPersistentLevel", "Function Engine.Actor.IsInPersistentLevel")); }
			ScriptFunction GetAimFrictionExtent() { mixin(MGF("mGetAimFrictionExtent", "Function Engine.Actor.GetAimFrictionExtent")); }
			ScriptFunction GetAimAdhesionExtent() { mixin(MGF("mGetAimAdhesionExtent", "Function Engine.Actor.GetAimAdhesionExtent")); }
			ScriptFunction PlayParticleEffect() { mixin(MGF("mPlayParticleEffect", "Function Engine.Actor.PlayParticleEffect")); }
			ScriptFunction CreateForceField() { mixin(MGF("mCreateForceField", "Function Engine.Actor.CreateForceField")); }
			ScriptFunction TrailsNotify() { mixin(MGF("mTrailsNotify", "Function Engine.Actor.TrailsNotify")); }
			ScriptFunction TrailsNotifyTick() { mixin(MGF("mTrailsNotifyTick", "Function Engine.Actor.TrailsNotifyTick")); }
			ScriptFunction TrailsNotifyEnd() { mixin(MGF("mTrailsNotifyEnd", "Function Engine.Actor.TrailsNotifyEnd")); }
			ScriptFunction SupportsKismetModification() { mixin(MGF("mSupportsKismetModification", "Function Engine.Actor.SupportsKismetModification")); }
			ScriptFunction AnimTreeUpdated() { mixin(MGF("mAnimTreeUpdated", "Function Engine.Actor.AnimTreeUpdated")); }
			ScriptFunction PostDemoRewind() { mixin(MGF("mPostDemoRewind", "Function Engine.Actor.PostDemoRewind")); }
			ScriptFunction ReplicationEnded() { mixin(MGF("mReplicationEnded", "Function Engine.Actor.ReplicationEnded")); }
			ScriptFunction GetAvoidanceVector() { mixin(MGF("mGetAvoidanceVector", "Function Engine.Actor.GetAvoidanceVector")); }
			ScriptFunction WillOverlap() { mixin(MGF("mWillOverlap", "Function Engine.Actor.WillOverlap")); }
			ScriptFunction ShouldBeHiddenBySHOW_NavigationNodes() { mixin(MGF("mShouldBeHiddenBySHOW_NavigationNodes", "Function Engine.Actor.ShouldBeHiddenBySHOW_NavigationNodes")); }
			ScriptFunction GetSpectatorName() { mixin(MGF("mGetSpectatorName", "Function Engine.Actor.GetSpectatorName")); }
			ScriptFunction GetSpectatorDescription() { mixin(MGF("mGetSpectatorDescription", "Function Engine.Actor.GetSpectatorDescription")); }
			ScriptFunction GetSpectatorHealthInfo() { mixin(MGF("mGetSpectatorHealthInfo", "Function Engine.Actor.GetSpectatorHealthInfo")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.AnimSlotDesc")); }
		@property final auto ref
		{
			ScriptName SlotName() { mixin(MGPS("ScriptName", 0)); }
			int NumChannels() { mixin(MGPS("int", 8)); }
		}
	}
	struct RigidBodyState
	{
		private ubyte __buffer__[57];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.RigidBodyState")); }
		@property final auto ref
		{
			ubyte bNewData() { mixin(MGPS("ubyte", 56)); }
			Vector AngVel() { mixin(MGPS("Vector", 44)); }
			Vector LinVel() { mixin(MGPS("Vector", 32)); }
			UObject.Quat Quaternion() { mixin(MGPS("UObject.Quat", 16)); }
			Vector Position() { mixin(MGPS("Vector", 0)); }
		}
	}
	struct RigidBodyContactInfo
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.RigidBodyContactInfo")); }
		@property final auto ref
		{
			PhysicalMaterial PhysMaterial() { mixin(MGPS("PhysicalMaterial", 52)); }
			Vector ContactVelocity() { mixin(MGPS("Vector", 28)); }
			float ContactPenetration() { mixin(MGPS("float", 24)); }
			Vector ContactNormal() { mixin(MGPS("Vector", 12)); }
			Vector ContactPosition() { mixin(MGPS("Vector", 0)); }
		}
	}
	struct CollisionImpactData
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.CollisionImpactData")); }
		@property final auto ref
		{
			ScriptArray!(Actor.RigidBodyContactInfo) ContactInfos() { mixin(MGPS("ScriptArray!(Actor.RigidBodyContactInfo)", 0)); }
			Vector TotalFrictionForceVector() { mixin(MGPS("Vector", 24)); }
			Vector TotalNormalForceVector() { mixin(MGPS("Vector", 12)); }
		}
	}
	struct PhysEffectInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.PhysEffectInfo")); }
		@property final auto ref
		{
			SoundCue Sound() { mixin(MGPS("SoundCue", 12)); }
			ParticleSystem Effect() { mixin(MGPS("ParticleSystem", 8)); }
			float ReFireDelay() { mixin(MGPS("float", 4)); }
			float Threshold() { mixin(MGPS("float", 0)); }
		}
	}
	struct ActorReference
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.ActorReference")); }
		@property final auto ref
		{
			UObject.Guid GuidVar() { mixin(MGPS("UObject.Guid", 4)); }
			Actor ActorVar() { mixin(MGPS("Actor", 0)); }
		}
	}
	struct NavReference
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.NavReference")); }
		@property final auto ref
		{
			UObject.Guid GuidVar() { mixin(MGPS("UObject.Guid", 4)); }
			NavigationPoint Nav() { mixin(MGPS("NavigationPoint", 0)); }
		}
	}
	struct BasedPosition
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.BasedPosition")); }
		@property final auto ref
		{
			Vector CachedTransPosition() { mixin(MGPS("Vector", 40)); }
			Rotator CachedBaseRotation() { mixin(MGPS("Rotator", 28)); }
			Vector CachedBaseLocation() { mixin(MGPS("Vector", 16)); }
			Vector Position() { mixin(MGPS("Vector", 4)); }
			Actor Base() { mixin(MGPS("Actor", 0)); }
		}
	}
	struct TraceHitInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.TraceHitInfo")); }
		@property final auto ref
		{
			Material MaterialVar() { mixin(MGPS("Material", 0)); }
			PhysicalMaterial PhysMaterial() { mixin(MGPS("PhysicalMaterial", 4)); }
			int Item() { mixin(MGPS("int", 8)); }
			int LevelIndex() { mixin(MGPS("int", 12)); }
			ScriptName BoneName() { mixin(MGPS("ScriptName", 16)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'HitComponent'!
		}
	}
	struct ImpactInfo
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.ImpactInfo")); }
		@property final auto ref
		{
			Actor HitActor() { mixin(MGPS("Actor", 0)); }
			Vector HitLocation() { mixin(MGPS("Vector", 4)); }
			Vector HitNormal() { mixin(MGPS("Vector", 16)); }
			Vector RayDir() { mixin(MGPS("Vector", 28)); }
			Vector StartTrace() { mixin(MGPS("Vector", 40)); }
			Actor.TraceHitInfo HitInfo() { mixin(MGPS("Actor.TraceHitInfo", 52)); }
		}
	}
	struct AnimSlotInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.AnimSlotInfo")); }
		@property final auto ref
		{
			ScriptName SlotName() { mixin(MGPS("ScriptName", 0)); }
			ScriptArray!(float) ChannelWeights() { mixin(MGPS("ScriptArray!(float)", 8)); }
		}
	}
	struct TimerData
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Actor.TimerData")); }
		@property final
		{
			auto ref
			{
				ScriptName FuncName() { mixin(MGPS("ScriptName", 4)); }
				float Rate() { mixin(MGPS("float", 12)); }
				float Count() { mixin(MGPS("float", 16)); }
				float TimerTimeDilation() { mixin(MGPS("float", 20)); }
				UObject TimerObj() { mixin(MGPS("UObject", 24)); }
			}
			bool bLoop() { mixin(MGBPS(0, 0x1)); }
			bool bLoop(bool val) { mixin(MSBPS(0, 0x1)); }
			bool bPaused() { mixin(MGBPS(0, 0x2)); }
			bool bPaused(bool val) { mixin(MSBPS(0, 0x2)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) Components() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 60)); }
			WorldInfo WorldInfoVar() { mixin(MGPC("WorldInfo", 244)); }
			ScriptName InitialState() { mixin(MGPC("ScriptName", 268)); }
			Pawn Instigator() { mixin(MGPC("Pawn", 240)); }
			ScriptArray!(SequenceEvent) GeneratedEvents() { mixin(MGPC("ScriptArray!(SequenceEvent)", 452)); }
			Vector Location() { mixin(MGPC("Vector", 188)); }
			Rotator Rotation() { mixin(MGPC("Rotator", 84)); }
			Actor.ENetRole Role() { mixin(MGPC("Actor.ENetRole", 138)); }
			Actor.ENetRole RemoteRole() { mixin(MGPC("Actor.ENetRole", 137)); }
			PhysicsVolume PhysicsVolumeVar() { mixin(MGPC("PhysicsVolume", 324)); }
			Actor Base() { mixin(MGPC("Actor", 148)); }
			Vector RelativeLocation() { mixin(MGPC("Vector", 388)); }
			Rotator RelativeRotation() { mixin(MGPC("Rotator", 400)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BaseSkelComponent'!
			ScriptName BaseBoneName() { mixin(MGPC("ScriptName", 368)); }
			Vector Velocity() { mixin(MGPC("Vector", 328)); }
			Vector Acceleration() { mixin(MGPC("Vector", 340)); }
			Actor Owner() { mixin(MGPC("Actor", 144)); }
			Actor.EPhysics Physics() { mixin(MGPC("Actor.EPhysics", 136)); }
			float LastRenderTime() { mixin(MGPC("float", 256)); }
			ScriptArray!(SeqAct_Latent) LatentActions() { mixin(MGPC("ScriptArray!(SeqAct_Latent)", 464)); }
			ScriptArray!(Actor) Attached() { mixin(MGPC("ScriptArray!(Actor)", 376)); }
			float NetUpdateFrequency() { mixin(MGPC("float", 204)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'CollisionComponent'!
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) AllComponents() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 72)); }
			float DrawScale() { mixin(MGPC("float", 96)); }
			Vector DrawScale3D() { mixin(MGPC("Vector", 100)); }
			Vector PrePivot() { mixin(MGPC("Vector", 112)); }
			UObject.Color EditorIconColor() { mixin(MGPC("UObject.Color", 124)); }
			UObject.RenderCommandFence DetachFence() { mixin(MGPC("UObject.RenderCommandFence", 128)); }
			float CustomTimeDilation() { mixin(MGPC("float", 132)); }
			Actor.ECollisionType CollisionType() { mixin(MGPC("Actor.ECollisionType", 139)); }
			Actor.ECollisionType ReplicatedCollisionType() { mixin(MGPC("Actor.ECollisionType", 140)); }
			UObject.ETickingGroup TickGroup() { mixin(MGPC("UObject.ETickingGroup", 141)); }
			ScriptArray!(Actor.TimerData) Timers() { mixin(MGPC("ScriptArray!(Actor.TimerData)", 152)); }
			int NetTag() { mixin(MGPC("int", 176)); }
			int IndexInTickList() { mixin(MGPC("int", 180)); }
			float LastSlowRelevancyCheckTime() { mixin(MGPC("float", 184)); }
			float NetUpdateTime() { mixin(MGPC("float", 200)); }
			float NetPriority() { mixin(MGPC("float", 208)); }
			float LastNetUpdateTime() { mixin(MGPC("float", 212)); }
			float TimeSinceLastTick() { mixin(MGPC("float", 216)); }
			float TickFrequency() { mixin(MGPC("float", 220)); }
			float TickFrequencyAtEndDistance() { mixin(MGPC("float", 224)); }
			float TickFrequencyDecreaseDistanceStart() { mixin(MGPC("float", 228)); }
			float TickFrequencyDecreaseDistanceEnd() { mixin(MGPC("float", 232)); }
			float TickFrequencyLastSeenTimeBeforeForcingMaxTickFrequency() { mixin(MGPC("float", 236)); }
			float LifeSpan() { mixin(MGPC("float", 248)); }
			float CreationTime() { mixin(MGPC("float", 252)); }
			ScriptName Tag() { mixin(MGPC("ScriptName", 260)); }
			ScriptName Group() { mixin(MGPC("ScriptName", 276)); }
			QWord HiddenEditorViews() { mixin(MGPC("QWord", 284)); }
			ScriptArray!(Actor) Touching() { mixin(MGPC("ScriptArray!(Actor)", 292)); }
			ScriptArray!(Actor) Children() { mixin(MGPC("ScriptArray!(Actor)", 304)); }
			float LatentFloat() { mixin(MGPC("float", 316)); }
			AnimNodeSequence LatentSeqNode() { mixin(MGPC("AnimNodeSequence", 320)); }
			Vector AngularVelocity() { mixin(MGPC("Vector", 352)); }
			int OverlapTag() { mixin(MGPC("int", 416)); }
			Rotator RotationRate() { mixin(MGPC("Rotator", 420)); }
			Actor PendingTouch() { mixin(MGPC("Actor", 432)); }
			ScriptClass MessageClass() { mixin(MGPC("ScriptClass", 436)); }
			ScriptArray!(ScriptClass) SupportedEvents() { mixin(MGPC("ScriptArray!(ScriptClass)", 440)); }
		}
		bool bGameRelevant() { mixin(MGBPC(168, 0x10000)); }
		bool bGameRelevant(bool val) { mixin(MSBPC(168, 0x10000)); }
		bool bStatic() { mixin(MGBPC(164, 0x1)); }
		bool bStatic(bool val) { mixin(MSBPC(164, 0x1)); }
		bool bNoDelete() { mixin(MGBPC(164, 0x4)); }
		bool bNoDelete(bool val) { mixin(MSBPC(164, 0x4)); }
		bool bScriptInitialized() { mixin(MGBPC(172, 0x800000)); }
		bool bScriptInitialized(bool val) { mixin(MSBPC(172, 0x800000)); }
		bool bProjTarget() { mixin(MGBPC(168, 0x80000000)); }
		bool bProjTarget(bool val) { mixin(MSBPC(168, 0x80000000)); }
		bool bBlockActors() { mixin(MGBPC(168, 0x40000000)); }
		bool bBlockActors(bool val) { mixin(MSBPC(168, 0x40000000)); }
		bool bHurtEntry() { mixin(MGBPC(168, 0x8000)); }
		bool bHurtEntry(bool val) { mixin(MSBPC(168, 0x8000)); }
		bool bWorldGeometry() { mixin(MGBPC(164, 0x80)); }
		bool bWorldGeometry(bool val) { mixin(MSBPC(164, 0x80)); }
		bool bCanBeDamaged() { mixin(MGBPC(168, 0x80000)); }
		bool bCanBeDamaged(bool val) { mixin(MSBPC(168, 0x80000)); }
		bool bDeleteMe() { mixin(MGBPC(164, 0x8)); }
		bool bDeleteMe(bool val) { mixin(MSBPC(164, 0x8)); }
		bool bTearOff() { mixin(MGBPC(164, 0x4000000)); }
		bool bTearOff(bool val) { mixin(MSBPC(164, 0x4000000)); }
		bool bBounce() { mixin(MGBPC(172, 0x200)); }
		bool bBounce(bool val) { mixin(MSBPC(172, 0x200)); }
		bool bHardAttach() { mixin(MGBPC(168, 0x400)); }
		bool bHardAttach(bool val) { mixin(MSBPC(168, 0x400)); }
		bool bCollideActors() { mixin(MGBPC(168, 0x8000000)); }
		bool bCollideActors(bool val) { mixin(MSBPC(168, 0x8000000)); }
		bool bCollideWorld() { mixin(MGBPC(168, 0x10000000)); }
		bool bCollideWorld(bool val) { mixin(MSBPC(168, 0x10000000)); }
		bool bAllowFluidSurfaceInteraction() { mixin(MGBPC(164, 0x10000000)); }
		bool bAllowFluidSurfaceInteraction(bool val) { mixin(MSBPC(164, 0x10000000)); }
		bool bDebugEffectIsRelevant() { mixin(MGBPC(172, 0x8000000)); }
		bool bDebugEffectIsRelevant(bool val) { mixin(MSBPC(172, 0x8000000)); }
		bool bAlwaysRelevant() { mixin(MGBPC(164, 0x200000)); }
		bool bAlwaysRelevant(bool val) { mixin(MSBPC(164, 0x200000)); }
		bool bForceNetUpdate() { mixin(MGBPC(168, 0x100)); }
		bool bForceNetUpdate(bool val) { mixin(MSBPC(168, 0x100)); }
		bool bHidden() { mixin(MGBPC(164, 0x2)); }
		bool bHidden(bool val) { mixin(MSBPC(164, 0x2)); }
		bool bUpdateSimulatedPosition() { mixin(MGBPC(164, 0x2000000)); }
		bool bUpdateSimulatedPosition(bool val) { mixin(MSBPC(164, 0x2000000)); }
		bool bNetDirty() { mixin(MGBPC(164, 0x100000)); }
		bool bNetDirty(bool val) { mixin(MSBPC(164, 0x100000)); }
		bool bOnlyDirtyReplication() { mixin(MGBPC(164, 0x8000000)); }
		bool bOnlyDirtyReplication(bool val) { mixin(MSBPC(164, 0x8000000)); }
		bool bCanBeFrictionedTo() { mixin(MGBPC(168, 0x4000)); }
		bool bCanBeFrictionedTo(bool val) { mixin(MSBPC(168, 0x4000)); }
		bool bCanBeAdheredTo() { mixin(MGBPC(168, 0x2000)); }
		bool bCanBeAdheredTo(bool val) { mixin(MSBPC(168, 0x2000)); }
		bool bSkipActorPropertyReplication() { mixin(MGBPC(164, 0x1000000)); }
		bool bSkipActorPropertyReplication(bool val) { mixin(MSBPC(164, 0x1000000)); }
		bool bNetInitial() { mixin(MGBPC(172, 0x800)); }
		bool bNetInitial(bool val) { mixin(MSBPC(172, 0x800)); }
		bool bReplicateMovement() { mixin(MGBPC(164, 0x800000)); }
		bool bReplicateMovement(bool val) { mixin(MSBPC(164, 0x800000)); }
		bool bReplicateInstigator() { mixin(MGBPC(164, 0x400000)); }
		bool bReplicateInstigator(bool val) { mixin(MSBPC(164, 0x400000)); }
		bool bNetOwner() { mixin(MGBPC(172, 0x1000)); }
		bool bNetOwner(bool val) { mixin(MSBPC(172, 0x1000)); }
		bool bTicked() { mixin(MGBPC(164, 0x10)); }
		bool bTicked(bool val) { mixin(MSBPC(164, 0x10)); }
		bool bOnlyOwnerSee() { mixin(MGBPC(164, 0x20)); }
		bool bOnlyOwnerSee(bool val) { mixin(MSBPC(164, 0x20)); }
		bool bTickIsDisabled() { mixin(MGBPC(164, 0x40)); }
		bool bTickIsDisabled(bool val) { mixin(MSBPC(164, 0x40)); }
		bool bIgnoreRigidBodyPawns() { mixin(MGBPC(164, 0x100)); }
		bool bIgnoreRigidBodyPawns(bool val) { mixin(MSBPC(164, 0x100)); }
		bool bOrientOnSlope() { mixin(MGBPC(164, 0x200)); }
		bool bOrientOnSlope(bool val) { mixin(MSBPC(164, 0x200)); }
		bool bIgnoreEncroachers() { mixin(MGBPC(164, 0x400)); }
		bool bIgnoreEncroachers(bool val) { mixin(MSBPC(164, 0x400)); }
		bool bPushedByEncroachers() { mixin(MGBPC(164, 0x800)); }
		bool bPushedByEncroachers(bool val) { mixin(MSBPC(164, 0x800)); }
		bool bDestroyedByInterpActor() { mixin(MGBPC(164, 0x1000)); }
		bool bDestroyedByInterpActor(bool val) { mixin(MSBPC(164, 0x1000)); }
		bool bRouteBeginPlayEvenIfStatic() { mixin(MGBPC(164, 0x2000)); }
		bool bRouteBeginPlayEvenIfStatic(bool val) { mixin(MSBPC(164, 0x2000)); }
		bool bIsMoving() { mixin(MGBPC(164, 0x4000)); }
		bool bIsMoving(bool val) { mixin(MSBPC(164, 0x4000)); }
		bool bAlwaysEncroachCheck() { mixin(MGBPC(164, 0x8000)); }
		bool bAlwaysEncroachCheck(bool val) { mixin(MSBPC(164, 0x8000)); }
		bool bHasAlternateTargetLocation() { mixin(MGBPC(164, 0x10000)); }
		bool bHasAlternateTargetLocation(bool val) { mixin(MSBPC(164, 0x10000)); }
		bool bCanStepUpOn() { mixin(MGBPC(164, 0x20000)); }
		bool bCanStepUpOn(bool val) { mixin(MSBPC(164, 0x20000)); }
		bool bNetTemporary() { mixin(MGBPC(164, 0x40000)); }
		bool bNetTemporary(bool val) { mixin(MSBPC(164, 0x40000)); }
		bool bOnlyRelevantToOwner() { mixin(MGBPC(164, 0x80000)); }
		bool bOnlyRelevantToOwner(bool val) { mixin(MSBPC(164, 0x80000)); }
		bool bDemoRecording() { mixin(MGBPC(164, 0x20000000)); }
		bool bDemoRecording(bool val) { mixin(MSBPC(164, 0x20000000)); }
		bool bDemoOwner() { mixin(MGBPC(164, 0x40000000)); }
		bool bDemoOwner(bool val) { mixin(MSBPC(164, 0x40000000)); }
		bool bForceDemoRelevant() { mixin(MGBPC(164, 0x80000000)); }
		bool bForceDemoRelevant(bool val) { mixin(MSBPC(164, 0x80000000)); }
		bool bNetInitialRotation() { mixin(MGBPC(168, 0x1)); }
		bool bNetInitialRotation(bool val) { mixin(MSBPC(168, 0x1)); }
		bool bReplicateRigidBodyLocation() { mixin(MGBPC(168, 0x2)); }
		bool bReplicateRigidBodyLocation(bool val) { mixin(MSBPC(168, 0x2)); }
		bool bKillDuringLevelTransition() { mixin(MGBPC(168, 0x4)); }
		bool bKillDuringLevelTransition(bool val) { mixin(MSBPC(168, 0x4)); }
		bool bExchangedRoles() { mixin(MGBPC(168, 0x8)); }
		bool bExchangedRoles(bool val) { mixin(MSBPC(168, 0x8)); }
		bool bConsiderAllStaticMeshComponentsForStreaming() { mixin(MGBPC(168, 0x10)); }
		bool bConsiderAllStaticMeshComponentsForStreaming(bool val) { mixin(MSBPC(168, 0x10)); }
		bool bDebug() { mixin(MGBPC(168, 0x20)); }
		bool bDebug(bool val) { mixin(MSBPC(168, 0x20)); }
		bool bPostRenderIfNotVisible() { mixin(MGBPC(168, 0x40)); }
		bool bPostRenderIfNotVisible(bool val) { mixin(MSBPC(168, 0x40)); }
		bool s_bThrottleNetRelevancy() { mixin(MGBPC(168, 0x80)); }
		bool s_bThrottleNetRelevancy(bool val) { mixin(MSBPC(168, 0x80)); }
		bool bPendingNetUpdate() { mixin(MGBPC(168, 0x200)); }
		bool bPendingNetUpdate(bool val) { mixin(MSBPC(168, 0x200)); }
		bool bIgnoreBaseRotation() { mixin(MGBPC(168, 0x800)); }
		bool bIgnoreBaseRotation(bool val) { mixin(MSBPC(168, 0x800)); }
		bool bShadowParented() { mixin(MGBPC(168, 0x1000)); }
		bool bShadowParented(bool val) { mixin(MSBPC(168, 0x1000)); }
		bool bMovable() { mixin(MGBPC(168, 0x20000)); }
		bool bMovable(bool val) { mixin(MSBPC(168, 0x20000)); }
		bool bDestroyInPainVolume() { mixin(MGBPC(168, 0x40000)); }
		bool bDestroyInPainVolume(bool val) { mixin(MSBPC(168, 0x40000)); }
		bool bShouldBaseAtStartup() { mixin(MGBPC(168, 0x100000)); }
		bool bShouldBaseAtStartup(bool val) { mixin(MSBPC(168, 0x100000)); }
		bool bPendingDelete() { mixin(MGBPC(168, 0x200000)); }
		bool bPendingDelete(bool val) { mixin(MSBPC(168, 0x200000)); }
		bool bCanTeleport() { mixin(MGBPC(168, 0x400000)); }
		bool bCanTeleport(bool val) { mixin(MSBPC(168, 0x400000)); }
		bool bAlwaysTick() { mixin(MGBPC(168, 0x800000)); }
		bool bAlwaysTick(bool val) { mixin(MSBPC(168, 0x800000)); }
		bool bBlocksNavigation() { mixin(MGBPC(168, 0x1000000)); }
		bool bBlocksNavigation(bool val) { mixin(MSBPC(168, 0x1000000)); }
		bool BlockRigidBody() { mixin(MGBPC(168, 0x2000000)); }
		bool BlockRigidBody(bool val) { mixin(MSBPC(168, 0x2000000)); }
		bool bCollideWhenPlacing() { mixin(MGBPC(168, 0x4000000)); }
		bool bCollideWhenPlacing(bool val) { mixin(MSBPC(168, 0x4000000)); }
		bool bCollideComplex() { mixin(MGBPC(168, 0x20000000)); }
		bool bCollideComplex(bool val) { mixin(MSBPC(168, 0x20000000)); }
		bool bBlocksTeleport() { mixin(MGBPC(172, 0x1)); }
		bool bBlocksTeleport(bool val) { mixin(MSBPC(172, 0x1)); }
		bool bMoveIgnoresDestruction() { mixin(MGBPC(172, 0x2)); }
		bool bMoveIgnoresDestruction(bool val) { mixin(MSBPC(172, 0x2)); }
		bool bNoEncroachCheck() { mixin(MGBPC(172, 0x4)); }
		bool bNoEncroachCheck(bool val) { mixin(MSBPC(172, 0x4)); }
		bool bCollideAsEncroacher() { mixin(MGBPC(172, 0x8)); }
		bool bCollideAsEncroacher(bool val) { mixin(MSBPC(172, 0x8)); }
		bool bPhysRigidBodyOutOfWorldCheck() { mixin(MGBPC(172, 0x10)); }
		bool bPhysRigidBodyOutOfWorldCheck(bool val) { mixin(MSBPC(172, 0x10)); }
		bool bComponentOutsideWorld() { mixin(MGBPC(172, 0x20)); }
		bool bComponentOutsideWorld(bool val) { mixin(MSBPC(172, 0x20)); }
		bool bForceOctreeSNFilter() { mixin(MGBPC(172, 0x40)); }
		bool bForceOctreeSNFilter(bool val) { mixin(MSBPC(172, 0x40)); }
		bool bRigidBodyWasAwake() { mixin(MGBPC(172, 0x80)); }
		bool bRigidBodyWasAwake(bool val) { mixin(MSBPC(172, 0x80)); }
		bool bCallRigidBodyWakeEvents() { mixin(MGBPC(172, 0x100)); }
		bool bCallRigidBodyWakeEvents(bool val) { mixin(MSBPC(172, 0x100)); }
		bool bJustTeleported() { mixin(MGBPC(172, 0x400)); }
		bool bJustTeleported(bool val) { mixin(MSBPC(172, 0x400)); }
		bool bHiddenEd() { mixin(MGBPC(172, 0x2000)); }
		bool bHiddenEd(bool val) { mixin(MSBPC(172, 0x2000)); }
		bool bEditable() { mixin(MGBPC(172, 0x4000)); }
		bool bEditable(bool val) { mixin(MSBPC(172, 0x4000)); }
		bool bHiddenEdGroup() { mixin(MGBPC(172, 0x8000)); }
		bool bHiddenEdGroup(bool val) { mixin(MSBPC(172, 0x8000)); }
		bool bHiddenEdCustom() { mixin(MGBPC(172, 0x10000)); }
		bool bHiddenEdCustom(bool val) { mixin(MSBPC(172, 0x10000)); }
		bool bHiddenEdTemporary() { mixin(MGBPC(172, 0x20000)); }
		bool bHiddenEdTemporary(bool val) { mixin(MSBPC(172, 0x20000)); }
		bool bHiddenEdLevel() { mixin(MGBPC(172, 0x40000)); }
		bool bHiddenEdLevel(bool val) { mixin(MSBPC(172, 0x40000)); }
		bool bEdShouldSnap() { mixin(MGBPC(172, 0x80000)); }
		bool bEdShouldSnap(bool val) { mixin(MSBPC(172, 0x80000)); }
		bool bTempEditor() { mixin(MGBPC(172, 0x100000)); }
		bool bTempEditor(bool val) { mixin(MSBPC(172, 0x100000)); }
		bool bPathColliding() { mixin(MGBPC(172, 0x200000)); }
		bool bPathColliding(bool val) { mixin(MSBPC(172, 0x200000)); }
		bool bPathTemp() { mixin(MGBPC(172, 0x400000)); }
		bool bPathTemp(bool val) { mixin(MSBPC(172, 0x400000)); }
		bool bLockLocation() { mixin(MGBPC(172, 0x1000000)); }
		bool bLockLocation(bool val) { mixin(MSBPC(172, 0x1000000)); }
		bool bForceAllowKismetModification() { mixin(MGBPC(172, 0x2000000)); }
		bool bForceAllowKismetModification(bool val) { mixin(MSBPC(172, 0x2000000)); }
		bool m_bPotentialSeekingTarget() { mixin(MGBPC(172, 0x4000000)); }
		bool m_bPotentialSeekingTarget(bool val) { mixin(MSBPC(172, 0x4000000)); }
	}
final:
	void ForceUpdateComponents(bool* bCollisionUpdate = null, bool* bTransformOnly = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bCollisionUpdate !is null)
			*cast(bool*)params.ptr = *bCollisionUpdate;
		if (bTransformOnly !is null)
			*cast(bool*)&params[4] = *bTransformOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceUpdateComponents, params.ptr, cast(void*)0);
	}
	ScriptString ConsoleCommand(ScriptString Command, bool* bWriteToLog = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		if (bWriteToLog !is null)
			*cast(bool*)&params[12] = *bWriteToLog;
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
	void SetCollision(bool* bNewColActors = null, bool* bNewBlockActors = null, bool* bNewIgnoreEncroachers = null)
	{
		ubyte params[12];
		params[] = 0;
		if (bNewColActors !is null)
			*cast(bool*)params.ptr = *bNewColActors;
		if (bNewBlockActors !is null)
			*cast(bool*)&params[4] = *bNewBlockActors;
		if (bNewIgnoreEncroachers !is null)
			*cast(bool*)&params[8] = *bNewIgnoreEncroachers;
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
	Actor.EMoveDir MovingWhichWay(ref float Amount)
	{
		ubyte params[5];
		params[] = 0;
		*cast(float*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.MovingWhichWay, params.ptr, cast(void*)0);
		Amount = *cast(float*)params.ptr;
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
	void SetHardAttach(bool* bNewHardAttach = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bNewHardAttach !is null)
			*cast(bool*)params.ptr = *bNewHardAttach;
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
	void SetBase(Actor NewBase, Vector* NewFloor = null, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** SkelComp = null, ScriptName* AttachName = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = NewBase;
		if (NewFloor !is null)
			*cast(Vector*)&params[4] = *NewFloor;
		if (SkelComp !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = *SkelComp;
		if (AttachName !is null)
			*cast(ScriptName*)&params[20] = *AttachName;
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
	Vector GetAggregateBaseVelocity(Actor* TestBase = null)
	{
		ubyte params[16];
		params[] = 0;
		if (TestBase !is null)
			*cast(Actor*)params.ptr = *TestBase;
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
	static void Vect2BP(ref Actor.BasedPosition BP, Vector pos, Actor* ForcedBase = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = BP;
		*cast(Vector*)&params[52] = pos;
		if (ForcedBase !is null)
			*cast(Actor*)&params[64] = *ForcedBase;
		StaticClass.ProcessEvent(Functions.Vect2BP, params.ptr, cast(void*)0);
		BP = *cast(Actor.BasedPosition*)params.ptr;
	}
	static Vector BP2Vect(Actor.BasedPosition BP)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = BP;
		StaticClass.ProcessEvent(Functions.BP2Vect, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[52];
	}
	static void SetBasedPosition(ref Actor.BasedPosition BP, Vector pos, Actor* ForcedBase = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = BP;
		*cast(Vector*)&params[52] = pos;
		if (ForcedBase !is null)
			*cast(Actor*)&params[64] = *ForcedBase;
		StaticClass.ProcessEvent(Functions.SetBasedPosition, params.ptr, cast(void*)0);
		BP = *cast(Actor.BasedPosition*)params.ptr;
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
	static void DrawDebugLine(Vector LineStart, Vector LineEnd, ubyte R, ubyte G, ubyte B, bool* bPersistentLines = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = LineStart;
		*cast(Vector*)&params[12] = LineEnd;
		params[24] = R;
		params[25] = G;
		params[26] = B;
		if (bPersistentLines !is null)
			*cast(bool*)&params[28] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugLine, params.ptr, cast(void*)0);
	}
	static void DrawDebugPoint(Vector Position, float Size, UObject.LinearColor PointColor, bool* bPersistentLines = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Position;
		*cast(float*)&params[12] = Size;
		*cast(UObject.LinearColor*)&params[16] = PointColor;
		if (bPersistentLines !is null)
			*cast(bool*)&params[32] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugPoint, params.ptr, cast(void*)0);
	}
	static void DrawDebugBox(Vector Center, Vector Extent, ubyte R, ubyte G, ubyte B, bool* bPersistentLines = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Center;
		*cast(Vector*)&params[12] = Extent;
		params[24] = R;
		params[25] = G;
		params[26] = B;
		if (bPersistentLines !is null)
			*cast(bool*)&params[28] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugBox, params.ptr, cast(void*)0);
	}
	static void DrawDebugStar(Vector Position, float Size, ubyte R, ubyte G, ubyte B, bool* bPersistentLines = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Position;
		*cast(float*)&params[12] = Size;
		params[16] = R;
		params[17] = G;
		params[18] = B;
		if (bPersistentLines !is null)
			*cast(bool*)&params[20] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugStar, params.ptr, cast(void*)0);
	}
	static void DrawDebugCoordinateSystem(Vector AxisLoc, Rotator AxisRot, float Scale, bool* bPersistentLines = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = AxisLoc;
		*cast(Rotator*)&params[12] = AxisRot;
		*cast(float*)&params[24] = Scale;
		if (bPersistentLines !is null)
			*cast(bool*)&params[28] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugCoordinateSystem, params.ptr, cast(void*)0);
	}
	static void DrawDebugSphere(Vector Center, float Radius, int Segments, ubyte R, ubyte G, ubyte B, bool* bPersistentLines = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Center;
		*cast(float*)&params[12] = Radius;
		*cast(int*)&params[16] = Segments;
		params[20] = R;
		params[21] = G;
		params[22] = B;
		if (bPersistentLines !is null)
			*cast(bool*)&params[24] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugSphere, params.ptr, cast(void*)0);
	}
	static void DrawDebugCylinder(Vector Start, Vector End, float Radius, int Segments, ubyte R, ubyte G, ubyte B, bool* bPersistentLines = null)
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
		if (bPersistentLines !is null)
			*cast(bool*)&params[36] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugCylinder, params.ptr, cast(void*)0);
	}
	static void DrawDebugCone(Vector Origin, Vector Direction, float Length, float AngleWidth, float AngleHeight, int NumSides, UObject.Color DrawColor, bool* bPersistentLines = null)
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
		if (bPersistentLines !is null)
			*cast(bool*)&params[44] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugCone, params.ptr, cast(void*)0);
	}
	static void DrawDebugString(Vector TextLocation, ScriptString Text, Actor* TestBaseActor = null, UObject.Color* TextColor = null, float* Duration = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = TextLocation;
		*cast(ScriptString*)&params[12] = Text;
		if (TestBaseActor !is null)
			*cast(Actor*)&params[24] = *TestBaseActor;
		if (TextColor !is null)
			*cast(UObject.Color*)&params[28] = *TextColor;
		if (Duration !is null)
			*cast(float*)&params[32] = *Duration;
		StaticClass.ProcessEvent(Functions.DrawDebugString, params.ptr, cast(void*)0);
	}
	static void DrawDebugFrustrum(ref in UObject.Matrix FrustumToWorld, ubyte R, ubyte G, ubyte B, bool* bPersistentLines = null)
	{
		ubyte params[72];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = cast(UObject.Matrix)FrustumToWorld;
		params[64] = R;
		params[65] = G;
		params[66] = B;
		if (bPersistentLines !is null)
			*cast(bool*)&params[68] = *bPersistentLines;
		StaticClass.ProcessEvent(Functions.DrawDebugFrustrum, params.ptr, cast(void*)0);
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
	void Clock(ref float Time)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.Clock, params.ptr, cast(void*)0);
		Time = *cast(float*)params.ptr;
	}
	void UnClock(ref float Time)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnClock, params.ptr, cast(void*)0);
		Time = *cast(float*)params.ptr;
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
	bool ClampRotation(ref Rotator out_Rot, Rotator rBase, Rotator rUpperLimits, Rotator rLowerLimits)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Rotator*)params.ptr = out_Rot;
		*cast(Rotator*)&params[12] = rBase;
		*cast(Rotator*)&params[24] = rUpperLimits;
		*cast(Rotator*)&params[36] = rLowerLimits;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClampRotation, params.ptr, cast(void*)0);
		out_Rot = *cast(Rotator*)params.ptr;
		return *cast(bool*)&params[48];
	}
	bool OverRotated(ref Rotator out_Desired, ref Rotator out_Actual)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = out_Desired;
		*cast(Rotator*)&params[12] = out_Actual;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverRotated, params.ptr, cast(void*)0);
		out_Desired = *cast(Rotator*)params.ptr;
		out_Actual = *cast(Rotator*)&params[12];
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
	Actor Trace(ref Vector HitLocation, ref Vector HitNormal, Vector TraceEnd, Vector* TraceStart = null, bool* bTraceActors = null, Vector* Extent = null, Actor.TraceHitInfo* HitInfo = null, int* ExtraTraceFlags = null)
	{
		ubyte params[100];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(Vector*)&params[24] = TraceEnd;
		if (TraceStart !is null)
			*cast(Vector*)&params[36] = *TraceStart;
		if (bTraceActors !is null)
			*cast(bool*)&params[48] = *bTraceActors;
		if (Extent !is null)
			*cast(Vector*)&params[52] = *Extent;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[64] = *HitInfo;
		if (ExtraTraceFlags !is null)
			*cast(int*)&params[92] = *ExtraTraceFlags;
		(cast(ScriptObject)this).ProcessEvent(Functions.Trace, params.ptr, cast(void*)0);
		HitLocation = *cast(Vector*)params.ptr;
		HitNormal = *cast(Vector*)&params[12];
		if (HitInfo !is null)
			*HitInfo = *cast(Actor.TraceHitInfo*)&params[64];
		return *cast(Actor*)&params[96];
	}
	bool TraceComponent(ref Vector HitLocation, ref Vector HitNormal, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InComponent, Vector TraceEnd, Vector* TraceStart = null, Vector* Extent = null, Actor.TraceHitInfo* HitInfo = null, bool* bComplexCollision = null)
	{
		ubyte params[100];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[24] = InComponent;
		*cast(Vector*)&params[28] = TraceEnd;
		if (TraceStart !is null)
			*cast(Vector*)&params[40] = *TraceStart;
		if (Extent !is null)
			*cast(Vector*)&params[52] = *Extent;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[64] = *HitInfo;
		if (bComplexCollision !is null)
			*cast(bool*)&params[92] = *bComplexCollision;
		(cast(ScriptObject)this).ProcessEvent(Functions.TraceComponent, params.ptr, cast(void*)0);
		HitLocation = *cast(Vector*)params.ptr;
		HitNormal = *cast(Vector*)&params[12];
		if (HitInfo !is null)
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
	bool FastTrace(Vector TraceEnd, Vector* TraceStart = null, Vector* BoxExtent = null, bool* bTraceBullet = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = TraceEnd;
		if (TraceStart !is null)
			*cast(Vector*)&params[12] = *TraceStart;
		if (BoxExtent !is null)
			*cast(Vector*)&params[24] = *BoxExtent;
		if (bTraceBullet !is null)
			*cast(bool*)&params[36] = *bTraceBullet;
		(cast(ScriptObject)this).ProcessEvent(Functions.FastTrace, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	bool TraceAllPhysicsAssetInteractions(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp, Vector EndTrace, Vector StartTrace, ref ScriptArray!(Actor.ImpactInfo) out_Hits, Vector* Extent = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelMeshComp;
		*cast(Vector*)&params[4] = EndTrace;
		*cast(Vector*)&params[16] = StartTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[28] = out_Hits;
		if (Extent !is null)
			*cast(Vector*)&params[40] = *Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TraceAllPhysicsAssetInteractions, params.ptr, cast(void*)0);
		out_Hits = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[28];
		return *cast(bool*)&params[52];
	}
	bool FindSpot(Vector BoxExtent, ref Vector SpotLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = BoxExtent;
		*cast(Vector*)&params[12] = SpotLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSpot, params.ptr, cast(void*)0);
		SpotLocation = *cast(Vector*)&params[12];
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
	void GetComponentsBoundingBox(ref UObject.Box ActorBox)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.Box*)params.ptr = ActorBox;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetComponentsBoundingBox, params.ptr, cast(void*)0);
		ActorBox = *cast(UObject.Box*)params.ptr;
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
	bool IsBlockedBy(in Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = cast(Actor)Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBlockedBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Actor Spawn(ScriptClass SpawnClass, Actor* SpawnOwner = null, ScriptName* SpawnTag = null, Vector* SpawnLocation = null, Rotator* SpawnRotation = null, Actor* ActorTemplate = null, bool* bNoCollisionFail = null)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SpawnClass;
		if (SpawnOwner !is null)
			*cast(Actor*)&params[4] = *SpawnOwner;
		if (SpawnTag !is null)
			*cast(ScriptName*)&params[8] = *SpawnTag;
		if (SpawnLocation !is null)
			*cast(Vector*)&params[16] = *SpawnLocation;
		if (SpawnRotation !is null)
			*cast(Rotator*)&params[28] = *SpawnRotation;
		if (ActorTemplate !is null)
			*cast(Actor*)&params[40] = *ActorTemplate;
		if (bNoCollisionFail !is null)
			*cast(bool*)&params[44] = *bNoCollisionFail;
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
	void SetTimer(float InRate, bool* inbLoop = null, ScriptName* inTimerFunc = null, UObject* inObj = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = InRate;
		if (inbLoop !is null)
			*cast(bool*)&params[4] = *inbLoop;
		if (inTimerFunc !is null)
			*cast(ScriptName*)&params[8] = *inTimerFunc;
		if (inObj !is null)
			*cast(UObject*)&params[16] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTimer, params.ptr, cast(void*)0);
	}
	void ClearTimer(ScriptName* inTimerFunc = null, UObject* inObj = null)
	{
		ubyte params[12];
		params[] = 0;
		if (inTimerFunc !is null)
			*cast(ScriptName*)params.ptr = *inTimerFunc;
		if (inObj !is null)
			*cast(UObject*)&params[8] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearTimer, params.ptr, cast(void*)0);
	}
	void ClearAllTimers(UObject* inObj = null)
	{
		ubyte params[4];
		params[] = 0;
		if (inObj !is null)
			*cast(UObject*)params.ptr = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAllTimers, params.ptr, cast(void*)0);
	}
	void PauseTimer(bool bPause, ScriptName* inTimerFunc = null, UObject* inObj = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		if (inTimerFunc !is null)
			*cast(ScriptName*)&params[4] = *inTimerFunc;
		if (inObj !is null)
			*cast(UObject*)&params[12] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PauseTimer, params.ptr, cast(void*)0);
	}
	bool IsTimerActive(ScriptName* inTimerFunc = null, UObject* inObj = null)
	{
		ubyte params[16];
		params[] = 0;
		if (inTimerFunc !is null)
			*cast(ScriptName*)params.ptr = *inTimerFunc;
		if (inObj !is null)
			*cast(UObject*)&params[8] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsTimerActive, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	float GetTimerCount(ScriptName* inTimerFunc = null, UObject* inObj = null)
	{
		ubyte params[16];
		params[] = 0;
		if (inTimerFunc !is null)
			*cast(ScriptName*)params.ptr = *inTimerFunc;
		if (inObj !is null)
			*cast(UObject*)&params[8] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTimerCount, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float GetTimerRate(ScriptName* TimerFuncName = null, UObject* inObj = null)
	{
		ubyte params[16];
		params[] = 0;
		if (TimerFuncName !is null)
			*cast(ScriptName*)params.ptr = *TimerFuncName;
		if (inObj !is null)
			*cast(UObject*)&params[8] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTimerRate, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float GetRemainingTimeForTimer(ScriptName* TimerFuncName = null, UObject* inObj = null)
	{
		ubyte params[16];
		params[] = 0;
		if (TimerFuncName !is null)
			*cast(ScriptName*)params.ptr = *TimerFuncName;
		if (inObj !is null)
			*cast(UObject*)&params[8] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRemainingTimeForTimer, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void ModifyTimerTimeDilation(in ScriptName TimerName, in float InTimerTimeDilation, UObject* inObj = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)TimerName;
		*cast(float*)&params[8] = cast(float)InTimerTimeDilation;
		if (inObj !is null)
			*cast(UObject*)&params[12] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyTimerTimeDilation, params.ptr, cast(void*)0);
	}
	void ResetTimerTimeDilation(in ScriptName TimerName, UObject* inObj = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)TimerName;
		if (inObj !is null)
			*cast(UObject*)&params[8] = *inObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetTimerTimeDilation, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* CreateAudioComponent(SoundCue InSoundCue, bool* bPlay = null, bool* bStopWhenOwnerDestroyed = null, bool* bUseLocation = null, Vector* SourceLocation = null, bool* bAttachToSelf = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSoundCue;
		if (bPlay !is null)
			*cast(bool*)&params[4] = *bPlay;
		if (bStopWhenOwnerDestroyed !is null)
			*cast(bool*)&params[8] = *bStopWhenOwnerDestroyed;
		if (bUseLocation !is null)
			*cast(bool*)&params[12] = *bUseLocation;
		if (SourceLocation !is null)
			*cast(Vector*)&params[16] = *SourceLocation;
		if (bAttachToSelf !is null)
			*cast(bool*)&params[28] = *bAttachToSelf;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateAudioComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[32];
	}
	void PlaySound(SoundCue InSoundCue, bool* bNotReplicated = null, bool* bNoRepToOwner = null, bool* bStopWhenOwnerDestroyed = null, Vector* SoundLocation = null, bool* bNoRepToRelevant = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSoundCue;
		if (bNotReplicated !is null)
			*cast(bool*)&params[4] = *bNotReplicated;
		if (bNoRepToOwner !is null)
			*cast(bool*)&params[8] = *bNoRepToOwner;
		if (bStopWhenOwnerDestroyed !is null)
			*cast(bool*)&params[12] = *bStopWhenOwnerDestroyed;
		if (SoundLocation !is null)
			*cast(Vector*)&params[16] = *SoundLocation;
		if (bNoRepToRelevant !is null)
			*cast(bool*)&params[28] = *bNoRepToRelevant;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySound, params.ptr, cast(void*)0);
	}
	void MakeNoise(float Loudness, ScriptName* NoiseType = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Loudness;
		if (NoiseType !is null)
			*cast(ScriptName*)&params[4] = *NoiseType;
		(cast(ScriptObject)this).ProcessEvent(Functions.MakeNoise, params.ptr, cast(void*)0);
	}
	bool PlayerCanSeeMe(bool* bForceLOSCheck = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bForceLOSCheck !is null)
			*cast(bool*)params.ptr = *bForceLOSCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerCanSeeMe, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SuggestTossVelocity(ref Vector TossVelocity, Vector Destination, Vector Start, float TossSpeed, float* BaseTossZ = null, float* DesiredZPct = null, Vector* CollisionSize = null, float* TerminalVelocity = null, float* OverrideGravityZ = null, bool* bOnlyTraceUp = null)
	{
		ubyte params[76];
		params[] = 0;
		*cast(Vector*)params.ptr = TossVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(float*)&params[36] = TossSpeed;
		if (BaseTossZ !is null)
			*cast(float*)&params[40] = *BaseTossZ;
		if (DesiredZPct !is null)
			*cast(float*)&params[44] = *DesiredZPct;
		if (CollisionSize !is null)
			*cast(Vector*)&params[48] = *CollisionSize;
		if (TerminalVelocity !is null)
			*cast(float*)&params[60] = *TerminalVelocity;
		if (OverrideGravityZ !is null)
			*cast(float*)&params[64] = *OverrideGravityZ;
		if (bOnlyTraceUp !is null)
			*cast(bool*)&params[68] = *bOnlyTraceUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestTossVelocity, params.ptr, cast(void*)0);
		TossVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[72];
	}
	bool CalculateMinSpeedTrajectory(ref Vector out_Velocity, Vector End, Vector Start, float MaxTossSpeed, float MinTossSpeed, Vector* CollisionSize = null, float* TerminalVelocity = null, float* GravityZ = null, bool* bOnlyTraceUp = null)
	{
		ubyte params[72];
		params[] = 0;
		*cast(Vector*)params.ptr = out_Velocity;
		*cast(Vector*)&params[12] = End;
		*cast(Vector*)&params[24] = Start;
		*cast(float*)&params[36] = MaxTossSpeed;
		*cast(float*)&params[40] = MinTossSpeed;
		if (CollisionSize !is null)
			*cast(Vector*)&params[44] = *CollisionSize;
		if (TerminalVelocity !is null)
			*cast(float*)&params[56] = *TerminalVelocity;
		if (GravityZ !is null)
			*cast(float*)&params[60] = *GravityZ;
		if (bOnlyTraceUp !is null)
			*cast(bool*)&params[64] = *bOnlyTraceUp;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateMinSpeedTrajectory, params.ptr, cast(void*)0);
		out_Velocity = *cast(Vector*)params.ptr;
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
	void AllActors(ScriptClass BaseClass, ref Actor pActor, ScriptClass* InterfaceClass = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		if (InterfaceClass !is null)
			*cast(ScriptClass*)&params[8] = *InterfaceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
	}
	void DynamicActors(ScriptClass BaseClass, ref Actor pActor, ScriptClass* InterfaceClass = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		if (InterfaceClass !is null)
			*cast(ScriptClass*)&params[8] = *InterfaceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.DynamicActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
	}
	void ChildActors(ScriptClass BaseClass, ref Actor pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChildActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
	}
	void BasedActors(ScriptClass BaseClass, ref Actor pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.BasedActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
	}
	void TouchingActors(ScriptClass BaseClass, ref Actor pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.TouchingActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
	}
	void TraceActors(ScriptClass BaseClass, ref Actor pActor, ref Vector HitLoc, ref Vector HitNorm, Vector End, Vector* Start = null, Vector* Extent = null, Actor.TraceHitInfo* HitInfo = null, int* ExtraTraceFlags = null)
	{
		ubyte params[100];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		*cast(Vector*)&params[8] = HitLoc;
		*cast(Vector*)&params[20] = HitNorm;
		*cast(Vector*)&params[32] = End;
		if (Start !is null)
			*cast(Vector*)&params[44] = *Start;
		if (Extent !is null)
			*cast(Vector*)&params[56] = *Extent;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[68] = *HitInfo;
		if (ExtraTraceFlags !is null)
			*cast(int*)&params[96] = *ExtraTraceFlags;
		(cast(ScriptObject)this).ProcessEvent(Functions.TraceActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
		HitLoc = *cast(Vector*)&params[8];
		HitNorm = *cast(Vector*)&params[20];
		if (HitInfo !is null)
			*HitInfo = *cast(Actor.TraceHitInfo*)&params[68];
	}
	void VisibleActors(ScriptClass BaseClass, ref Actor pActor, float* Radius = null, Vector* Loc = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		if (Radius !is null)
			*cast(float*)&params[8] = *Radius;
		if (Loc !is null)
			*cast(Vector*)&params[12] = *Loc;
		(cast(ScriptObject)this).ProcessEvent(Functions.VisibleActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
	}
	void VisibleCollidingActors(ScriptClass BaseClass, ref Actor pActor, float Radius, Vector* Loc = null, bool* bIgnoreHidden = null, Vector* Extent = null, bool* bTraceActors = null, ScriptClass* InterfaceClass = null, Actor.TraceHitInfo* HitInfo = null)
	{
		ubyte params[76];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		*cast(float*)&params[8] = Radius;
		if (Loc !is null)
			*cast(Vector*)&params[12] = *Loc;
		if (bIgnoreHidden !is null)
			*cast(bool*)&params[24] = *bIgnoreHidden;
		if (Extent !is null)
			*cast(Vector*)&params[28] = *Extent;
		if (bTraceActors !is null)
			*cast(bool*)&params[40] = *bTraceActors;
		if (InterfaceClass !is null)
			*cast(ScriptClass*)&params[44] = *InterfaceClass;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[48] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.VisibleCollidingActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
		if (HitInfo !is null)
			*HitInfo = *cast(Actor.TraceHitInfo*)&params[48];
	}
	void CollidingActors(ScriptClass BaseClass, ref Actor pActor, float Radius, Vector* Loc = null, bool* bUseOverlapCheck = null, ScriptClass* InterfaceClass = null, Actor.TraceHitInfo* HitInfo = null)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		*cast(float*)&params[8] = Radius;
		if (Loc !is null)
			*cast(Vector*)&params[12] = *Loc;
		if (bUseOverlapCheck !is null)
			*cast(bool*)&params[24] = *bUseOverlapCheck;
		if (InterfaceClass !is null)
			*cast(ScriptClass*)&params[28] = *InterfaceClass;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[32] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.CollidingActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
		if (HitInfo !is null)
			*HitInfo = *cast(Actor.TraceHitInfo*)&params[32];
	}
	void VisibleCollidingExtentActors(ScriptClass BaseClass, ref Actor pActor, float Radius, Vector* Loc = null, Vector* AltLoc = null, bool* bIgnoreHidden = null, Vector* Extent = null, bool* bTraceActors = null, ScriptClass* InterfaceClass = null, Actor.TraceHitInfo* HitInfo = null, float* XYCheckRadius = null)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = pActor;
		*cast(float*)&params[8] = Radius;
		if (Loc !is null)
			*cast(Vector*)&params[12] = *Loc;
		if (AltLoc !is null)
			*cast(Vector*)&params[24] = *AltLoc;
		if (bIgnoreHidden !is null)
			*cast(bool*)&params[36] = *bIgnoreHidden;
		if (Extent !is null)
			*cast(Vector*)&params[40] = *Extent;
		if (bTraceActors !is null)
			*cast(bool*)&params[52] = *bTraceActors;
		if (InterfaceClass !is null)
			*cast(ScriptClass*)&params[56] = *InterfaceClass;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[60] = *HitInfo;
		if (XYCheckRadius !is null)
			*cast(float*)&params[88] = *XYCheckRadius;
		(cast(ScriptObject)this).ProcessEvent(Functions.VisibleCollidingExtentActors, params.ptr, cast(void*)0);
		pActor = *cast(Actor*)&params[4];
		if (HitInfo !is null)
			*HitInfo = *cast(Actor.TraceHitInfo*)&params[60];
	}
	void OverlappingActors(ScriptClass BaseClass, ref Actor out_Actor, float Radius, Vector* Loc = null, bool* bIgnoreHidden = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = out_Actor;
		*cast(float*)&params[8] = Radius;
		if (Loc !is null)
			*cast(Vector*)&params[12] = *Loc;
		if (bIgnoreHidden !is null)
			*cast(bool*)&params[24] = *bIgnoreHidden;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverlappingActors, params.ptr, cast(void*)0);
		out_Actor = *cast(Actor*)&params[4];
	}
	void ComponentList(ScriptClass BaseClass, ref 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* out_Component)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = out_Component;
		(cast(ScriptObject)this).ProcessEvent(Functions.ComponentList, params.ptr, cast(void*)0);
		out_Component = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void AllOwnedComponents(ScriptClass BaseClass, ref 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OutComponent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OutComponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllOwnedComponents, params.ptr, cast(void*)0);
		OutComponent = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void LocalPlayerControllers(ScriptClass BaseClass, ref PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(PlayerController*)&params[4] = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.LocalPlayerControllers, params.ptr, cast(void*)0);
		PC = *cast(PlayerController*)&params[4];
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
	void BroadcastLocalizedMessage(ScriptClass InMessageClass, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		if (Switch !is null)
			*cast(int*)&params[4] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastLocalizedMessage, params.ptr, cast(void*)0);
	}
	void BroadcastLocalizedTeamMessage(int TeamIndex, ScriptClass InMessageClass, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(ScriptClass*)&params[4] = InMessageClass;
		if (Switch !is null)
			*cast(int*)&params[8] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[16] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[20] = *OptionalObject;
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
	bool HurtRadius(float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, Actor* IgnoredActor = null, Controller* InstigatedByController = null, bool* bDoFullDamage = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(float*)params.ptr = BaseDamage;
		*cast(float*)&params[4] = DamageRadius;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		if (IgnoredActor !is null)
			*cast(Actor*)&params[28] = *IgnoredActor;
		if (InstigatedByController !is null)
			*cast(Controller*)&params[32] = *InstigatedByController;
		if (bDoFullDamage !is null)
			*cast(bool*)&params[36] = *bDoFullDamage;
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
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
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
	void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float* DamageFalloffExponent = null)
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
		if (DamageFalloffExponent !is null)
			*cast(float*)&params[40] = *DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
	void CheckHitInfo(ref Actor.TraceHitInfo HitInfo, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* FallBackComponent, Vector Dir, ref Vector out_HitLocation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Actor.TraceHitInfo*)params.ptr = HitInfo;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[28] = FallBackComponent;
		*cast(Vector*)&params[32] = Dir;
		*cast(Vector*)&params[44] = out_HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckHitInfo, params.ptr, cast(void*)0);
		HitInfo = *cast(Actor.TraceHitInfo*)params.ptr;
		out_HitLocation = *cast(Vector*)&params[44];
	}
	float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGravityZ, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void DebugFreezeGame(Actor* pActorToLookAt = null)
	{
		ubyte params[4];
		params[] = 0;
		if (pActorToLookAt !is null)
			*cast(Actor*)params.ptr = *pActorToLookAt;
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
	bool CalcCamera(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
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
	static void ReplaceText(ref ScriptString Text, ScriptString Replace, ScriptString With)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(ScriptString*)&params[12] = Replace;
		*cast(ScriptString*)&params[24] = With;
		StaticClass.ProcessEvent(Functions.ReplaceText, params.ptr, cast(void*)0);
		Text = *cast(ScriptString*)params.ptr;
	}
	static ScriptString GetLocalString(int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null)
	{
		ubyte params[24];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[4] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_2;
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
	bool EffectIsRelevant(Vector SpawnLocation, bool bForceDedicated, float* VisibleCullDistance = null, float* HiddenCullDistance = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(bool*)&params[12] = bForceDedicated;
		if (VisibleCullDistance !is null)
			*cast(float*)&params[16] = *VisibleCullDistance;
		if (HiddenCullDistance !is null)
			*cast(float*)&params[20] = *HiddenCullDistance;
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
	bool TriggerEventClass(ScriptClass InEventClass, Actor InInstigator, int* ActivateIndex = null, bool* bTest = null, ScriptArray!(SequenceEvent)* ActivatedEvents = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InEventClass;
		*cast(Actor*)&params[4] = InInstigator;
		if (ActivateIndex !is null)
			*cast(int*)&params[8] = *ActivateIndex;
		if (bTest !is null)
			*cast(bool*)&params[12] = *bTest;
		if (ActivatedEvents !is null)
			*cast(ScriptArray!(SequenceEvent)*)&params[16] = *ActivatedEvents;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerEventClass, params.ptr, cast(void*)0);
		if (ActivatedEvents !is null)
			*ActivatedEvents = *cast(ScriptArray!(SequenceEvent)*)&params[16];
		return *cast(bool*)&params[28];
	}
	bool ActivateEventClass(ScriptClass InClass, Actor InInstigator, ref in ScriptArray!(SequenceEvent) EventList, in ScriptArray!(int)* ActivateIndices = null, bool* bTest = null, ScriptArray!(SequenceEvent)* ActivatedEvents = null)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InClass;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(ScriptArray!(SequenceEvent)*)&params[8] = cast(ScriptArray!(SequenceEvent))EventList;
		if (ActivateIndices !is null)
			*cast(ScriptArray!(int)*)&params[20] = cast(ScriptArray!(int))*ActivateIndices;
		if (bTest !is null)
			*cast(bool*)&params[32] = *bTest;
		if (ActivatedEvents !is null)
			*cast(ScriptArray!(SequenceEvent)*)&params[36] = *ActivatedEvents;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateEventClass, params.ptr, cast(void*)0);
		if (ActivatedEvents !is null)
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
	bool TriggerGlobalEventClass(ScriptClass InEventClass, Actor InInstigator, int* ActivateIndex = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InEventClass;
		*cast(Actor*)&params[4] = InInstigator;
		if (ActivateIndex !is null)
			*cast(int*)&params[8] = *ActivateIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerGlobalEventClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool FindEventsOfClass(ScriptClass EventClass, ScriptArray!(SequenceEvent)* out_EventList = null, bool* bIncludeDisabled = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = EventClass;
		if (out_EventList !is null)
			*cast(ScriptArray!(SequenceEvent)*)&params[4] = *out_EventList;
		if (bIncludeDisabled !is null)
			*cast(bool*)&params[16] = *bIncludeDisabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindEventsOfClass, params.ptr, cast(void*)0);
		if (out_EventList !is null)
			*out_EventList = *cast(ScriptArray!(SequenceEvent)*)&params[4];
		return *cast(bool*)&params[20];
	}
	void ClearLatentAction(ScriptClass actionClass, bool* bAborted = null, SeqAct_Latent* exceptionAction = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = actionClass;
		if (bAborted !is null)
			*cast(bool*)&params[4] = *bAborted;
		if (exceptionAction !is null)
			*cast(SeqAct_Latent*)&params[8] = *exceptionAction;
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
	void PrestreamTextures(float Seconds, bool bEnableStreaming, int* CinematicTextureGroups = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		*cast(bool*)&params[4] = bEnableStreaming;
		if (CinematicTextureGroups !is null)
			*cast(int*)&params[8] = *CinematicTextureGroups;
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
	void FindGoodEndView(PlayerController PC, ref Rotator GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGoodEndView, params.ptr, cast(void*)0);
		GoodRotation = *cast(Rotator*)&params[4];
	}
	Vector GetTargetLocation(Actor* RequestedBy = null, bool* bRequestAlternateLoc = null)
	{
		ubyte params[20];
		params[] = 0;
		if (RequestedBy !is null)
			*cast(Actor*)params.ptr = *RequestedBy;
		if (bRequestAlternateLoc !is null)
			*cast(bool*)&params[4] = *bRequestAlternateLoc;
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
void* OtherComponent, ref in Actor.CollisionImpactData RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = cast(Actor.CollisionImpactData)RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyCollision, params.ptr, cast(void*)0);
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
void* SkelComp, ref UObject.BoneAtom ExtractedRootMotionDelta)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		*cast(UObject.BoneAtom*)&params[16] = ExtractedRootMotionDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.RootMotionExtracted, params.ptr, cast(void*)0);
		ExtractedRootMotionDelta = *cast(UObject.BoneAtom*)&params[16];
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
	bool IsInPersistentLevel(bool* bIncludeLevelStreamingPersistent = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bIncludeLevelStreamingPersistent !is null)
			*cast(bool*)params.ptr = *bIncludeLevelStreamingPersistent;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInPersistentLevel, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetAimFrictionExtent(ref float Width, ref float Height, ref Vector Center)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Width;
		*cast(float*)&params[4] = Height;
		*cast(Vector*)&params[8] = Center;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAimFrictionExtent, params.ptr, cast(void*)0);
		Width = *cast(float*)params.ptr;
		Height = *cast(float*)&params[4];
		Center = *cast(Vector*)&params[8];
	}
	void GetAimAdhesionExtent(ref float Width, ref float Height, ref Vector Center)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Width;
		*cast(float*)&params[4] = Height;
		*cast(Vector*)&params[8] = Center;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAimAdhesionExtent, params.ptr, cast(void*)0);
		Width = *cast(float*)params.ptr;
		Height = *cast(float*)&params[4];
		Center = *cast(Vector*)&params[8];
	}
	bool PlayParticleEffect(in AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = cast(AnimNotify_PlayParticleEffect)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayParticleEffect, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CreateForceField(in AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = cast(AnimNotify_ForceField)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateForceField, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void TrailsNotify(in AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = cast(AnimNotify_Trails)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrailsNotify, params.ptr, cast(void*)0);
	}
	void TrailsNotifyTick(in AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = cast(AnimNotify_Trails)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrailsNotifyTick, params.ptr, cast(void*)0);
	}
	void TrailsNotifyEnd(in AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = cast(AnimNotify_Trails)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrailsNotifyEnd, params.ptr, cast(void*)0);
	}
	bool SupportsKismetModification(SequenceOp AskingOp, ref ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SequenceOp*)params.ptr = AskingOp;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.SupportsKismetModification, params.ptr, cast(void*)0);
		Reason = *cast(ScriptString*)&params[4];
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
	Vector GetAvoidanceVector(ref in ScriptArray!(Actor) Obstacles, Vector GoalLocation, float CollisionRadius, float MaxSpeed, int* NumSamples = null, float* VelocityStepRate = null, float* MaxTimeTilOverlap = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptArray!(Actor)*)params.ptr = cast(ScriptArray!(Actor))Obstacles;
		*cast(Vector*)&params[12] = GoalLocation;
		*cast(float*)&params[24] = CollisionRadius;
		*cast(float*)&params[28] = MaxSpeed;
		if (NumSamples !is null)
			*cast(int*)&params[32] = *NumSamples;
		if (VelocityStepRate !is null)
			*cast(float*)&params[36] = *VelocityStepRate;
		if (MaxTimeTilOverlap !is null)
			*cast(float*)&params[40] = *MaxTimeTilOverlap;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAvoidanceVector, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[44];
	}
	bool WillOverlap(Vector PosA, Vector VelA, Vector PosB, Vector VelB, float StepSize, float Radius, ref float Time)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = PosA;
		*cast(Vector*)&params[12] = VelA;
		*cast(Vector*)&params[24] = PosB;
		*cast(Vector*)&params[36] = VelB;
		*cast(float*)&params[48] = StepSize;
		*cast(float*)&params[52] = Radius;
		*cast(float*)&params[56] = Time;
		(cast(ScriptObject)this).ProcessEvent(Functions.WillOverlap, params.ptr, cast(void*)0);
		Time = *cast(float*)&params[56];
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
	void GetSpectatorHealthInfo(ref int Health, ref int MaxHealth)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Health;
		*cast(int*)&params[4] = MaxHealth;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorHealthInfo, params.ptr, cast(void*)0);
		Health = *cast(int*)params.ptr;
		MaxHealth = *cast(int*)&params[4];
	}
}
