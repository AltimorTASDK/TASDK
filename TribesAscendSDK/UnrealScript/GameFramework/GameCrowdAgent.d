module UnrealScript.GameFramework.GameCrowdAgent;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.CrowdAgentBase;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.GameFramework.SeqAct_PlayAgentAnimation;
import UnrealScript.Engine.PlayerController;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;
import UnrealScript.GameFramework.GameCrowdForcePoint;
import UnrealScript.GameFramework.GameCrowdGroup;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.LightComponent;

extern(C++) interface GameCrowdAgent : CrowdAgentBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdAgent")); }
	private static __gshared GameCrowdAgent mDefaultProperties;
	@property final static GameCrowdAgent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameCrowdAgent)("GameCrowdAgent GameFramework.Default__GameCrowdAgent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPickBehaviorFrom;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mIsPanicked;
			ScriptFunction mSetPanic;
			ScriptFunction mWaitForGroupMembers;
			ScriptFunction mSetCurrentDestination;
			ScriptFunction mSetMaxSpeed;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mKillAgent;
			ScriptFunction mResetPooledAgent;
			ScriptFunction mDestroyed;
			ScriptFunction mDisplayDebug;
			ScriptFunction mSetLighting;
			ScriptFunction mInitializeAgent;
			ScriptFunction mOnPlayAgentAnimation;
			ScriptFunction mPlayIdleAnimation;
			ScriptFunction mStopIdleAnimation;
			ScriptFunction mHandlePotentialAgentEncounter;
			ScriptFunction mPlaySpawnBehavior;
			ScriptFunction mNotifySeePlayer;
			ScriptFunction mTryRandomBehavior;
			ScriptFunction mResetSeePlayer;
			ScriptFunction mActivateBehavior;
			ScriptFunction mSetCurrentBehavior;
			ScriptFunction mActivateInstancedBehavior;
			ScriptFunction mStopBehavior;
			ScriptFunction mIsIdle;
			ScriptFunction mCalcCamera;
			ScriptFunction mUpdateIntermediatePoint;
			ScriptFunction mPlayDeath;
			ScriptFunction mFireDeathEvent;
			ScriptFunction mTakeDamage;
			ScriptFunction mOverlappedActorEvent;
			ScriptFunction mInitNavigationHandle;
			ScriptFunction mGeneratePathToActor;
			ScriptFunction mNativePostRenderFor;
			ScriptFunction mPostRenderFor;
			ScriptFunction mGetDestString;
			ScriptFunction mGetBehaviorString;
		}
		public @property static final
		{
			ScriptFunction PickBehaviorFrom() { return mPickBehaviorFrom ? mPickBehaviorFrom : (mPickBehaviorFrom = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.PickBehaviorFrom")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.FellOutOfWorld")); }
			ScriptFunction IsPanicked() { return mIsPanicked ? mIsPanicked : (mIsPanicked = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.IsPanicked")); }
			ScriptFunction SetPanic() { return mSetPanic ? mSetPanic : (mSetPanic = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.SetPanic")); }
			ScriptFunction WaitForGroupMembers() { return mWaitForGroupMembers ? mWaitForGroupMembers : (mWaitForGroupMembers = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.WaitForGroupMembers")); }
			ScriptFunction SetCurrentDestination() { return mSetCurrentDestination ? mSetCurrentDestination : (mSetCurrentDestination = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.SetCurrentDestination")); }
			ScriptFunction SetMaxSpeed() { return mSetMaxSpeed ? mSetMaxSpeed : (mSetMaxSpeed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.SetMaxSpeed")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.PostBeginPlay")); }
			ScriptFunction KillAgent() { return mKillAgent ? mKillAgent : (mKillAgent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.KillAgent")); }
			ScriptFunction ResetPooledAgent() { return mResetPooledAgent ? mResetPooledAgent : (mResetPooledAgent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.ResetPooledAgent")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.Destroyed")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.DisplayDebug")); }
			ScriptFunction SetLighting() { return mSetLighting ? mSetLighting : (mSetLighting = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.SetLighting")); }
			ScriptFunction InitializeAgent() { return mInitializeAgent ? mInitializeAgent : (mInitializeAgent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.InitializeAgent")); }
			ScriptFunction OnPlayAgentAnimation() { return mOnPlayAgentAnimation ? mOnPlayAgentAnimation : (mOnPlayAgentAnimation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.OnPlayAgentAnimation")); }
			ScriptFunction PlayIdleAnimation() { return mPlayIdleAnimation ? mPlayIdleAnimation : (mPlayIdleAnimation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.PlayIdleAnimation")); }
			ScriptFunction StopIdleAnimation() { return mStopIdleAnimation ? mStopIdleAnimation : (mStopIdleAnimation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.StopIdleAnimation")); }
			ScriptFunction HandlePotentialAgentEncounter() { return mHandlePotentialAgentEncounter ? mHandlePotentialAgentEncounter : (mHandlePotentialAgentEncounter = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.HandlePotentialAgentEncounter")); }
			ScriptFunction PlaySpawnBehavior() { return mPlaySpawnBehavior ? mPlaySpawnBehavior : (mPlaySpawnBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.PlaySpawnBehavior")); }
			ScriptFunction NotifySeePlayer() { return mNotifySeePlayer ? mNotifySeePlayer : (mNotifySeePlayer = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.NotifySeePlayer")); }
			ScriptFunction TryRandomBehavior() { return mTryRandomBehavior ? mTryRandomBehavior : (mTryRandomBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.TryRandomBehavior")); }
			ScriptFunction ResetSeePlayer() { return mResetSeePlayer ? mResetSeePlayer : (mResetSeePlayer = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.ResetSeePlayer")); }
			ScriptFunction ActivateBehavior() { return mActivateBehavior ? mActivateBehavior : (mActivateBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.ActivateBehavior")); }
			ScriptFunction SetCurrentBehavior() { return mSetCurrentBehavior ? mSetCurrentBehavior : (mSetCurrentBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.SetCurrentBehavior")); }
			ScriptFunction ActivateInstancedBehavior() { return mActivateInstancedBehavior ? mActivateInstancedBehavior : (mActivateInstancedBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.ActivateInstancedBehavior")); }
			ScriptFunction StopBehavior() { return mStopBehavior ? mStopBehavior : (mStopBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.StopBehavior")); }
			ScriptFunction IsIdle() { return mIsIdle ? mIsIdle : (mIsIdle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.IsIdle")); }
			ScriptFunction CalcCamera() { return mCalcCamera ? mCalcCamera : (mCalcCamera = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.CalcCamera")); }
			ScriptFunction UpdateIntermediatePoint() { return mUpdateIntermediatePoint ? mUpdateIntermediatePoint : (mUpdateIntermediatePoint = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.UpdateIntermediatePoint")); }
			ScriptFunction PlayDeath() { return mPlayDeath ? mPlayDeath : (mPlayDeath = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.PlayDeath")); }
			ScriptFunction FireDeathEvent() { return mFireDeathEvent ? mFireDeathEvent : (mFireDeathEvent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.FireDeathEvent")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.TakeDamage")); }
			ScriptFunction OverlappedActorEvent() { return mOverlappedActorEvent ? mOverlappedActorEvent : (mOverlappedActorEvent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.OverlappedActorEvent")); }
			ScriptFunction InitNavigationHandle() { return mInitNavigationHandle ? mInitNavigationHandle : (mInitNavigationHandle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.InitNavigationHandle")); }
			ScriptFunction GeneratePathToActor() { return mGeneratePathToActor ? mGeneratePathToActor : (mGeneratePathToActor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.GeneratePathToActor")); }
			ScriptFunction NativePostRenderFor() { return mNativePostRenderFor ? mNativePostRenderFor : (mNativePostRenderFor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.NativePostRenderFor")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.PostRenderFor")); }
			ScriptFunction GetDestString() { return mGetDestString ? mGetDestString : (mGetDestString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.GetDestString")); }
			ScriptFunction GetBehaviorString() { return mGetBehaviorString ? mGetBehaviorString : (mGetBehaviorString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgent.GetBehaviorString")); }
		}
	}
	enum EConformType : ubyte
	{
		CFM_NavMesh = 0,
		CFM_BSP = 1,
		CFM_World = 2,
		CFM_None = 3,
		CFM_MAX = 4,
	}
	struct RecentInteraction
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameCrowdAgent.RecentInteraction")); }
		@property final auto ref
		{
			float InteractionDelay() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName InteractionTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct BehaviorEntry
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameCrowdAgent.BehaviorEntry")); }
		@property final
		{
			auto ref
			{
				float BehaviorFrequency() { return *cast(float*)(cast(size_t)&this + 8); }
				Actor LookAtActor() { return *cast(Actor*)(cast(size_t)&this + 4); }
				GameCrowdAgentBehavior BehaviorArchetype() { return *cast(GameCrowdAgentBehavior*)(cast(size_t)&this + 0); }
			}
			bool bCanBeUsed() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x4) != 0; }
			bool bCanBeUsed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x4; } return val; }
			bool bHasBeenUsed() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
			bool bHasBeenUsed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
			bool bNeverRepeat() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bNeverRepeat(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) NearbyDynamics() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 548); }
			ScriptArray!(GameCrowdForcePoint) RelevantAttractors() { return *cast(ScriptArray!(GameCrowdForcePoint)*)(cast(size_t)cast(void*)this + 560); }
			ScriptArray!(GameCrowdAgent.RecentInteraction) RecentInteractions() { return *cast(ScriptArray!(GameCrowdAgent.RecentInteraction)*)(cast(size_t)cast(void*)this + 764); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) EncounterAgentBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 824); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) SeePlayerBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 836); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) SpawnBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 856); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) PanicBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 868); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) RandomBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 880); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) TakeDamageBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 892); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) GroupWaitingBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 916); }
			float InitialLastRenderTime() { return *cast(float*)(cast(size_t)cast(void*)this + 960); }
			Vector SpawnOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 948); }
			float MaxLOSLifeDistanceSq() { return *cast(float*)(cast(size_t)cast(void*)this + 936); }
			float DesiredGroupRadiusSq() { return *cast(float*)(cast(size_t)cast(void*)this + 932); }
			float DesiredGroupRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 928); }
			float ReachThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
			float ForceUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 908); }
			float RandomBehaviorInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
			float SeePlayerInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
			float MaxSeePlayerDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 848); }
			GameCrowdAgentBehavior CurrentBehavior() { return *cast(GameCrowdAgentBehavior*)(cast(size_t)cast(void*)this + 820); }
			SoundCue AmbientSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 812); }
			UObject.LinearColor BeaconColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 796); }
			Texture2D BeaconTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 792); }
			Vector BeaconOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 780); }
			float BeaconMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 776); }
			float MaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
			float MaxRunningSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 756); }
			float MaxWalkingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
			GameCrowdAgent MyArchetype() { return *cast(GameCrowdAgent*)(cast(size_t)cast(void*)this + 748); }
			float NotVisibleTickScalingFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
			float NotVisibleLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 740); }
			float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
			float LastPathingAttempt() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
			float WalkableFloorZ() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
			int ObstacleCheckCount() { return *cast(int*)(cast(size_t)cast(void*)this + 724); }
			// WARNING: Property 'NavigationHandle' has the same name as a defined type!
			ScriptClass NavigationHandleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 716); }
			Vector SearchExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 704); }
			Vector IntermediatePoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 692); }
			float GroundOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			Vector LastKnownGoodPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 676); }
			float VisibleProximityLODDist() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
			float ProximityLODDist() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
			float EyeZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 664); }
			Vector MeshMaxScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 652); }
			Vector MeshMinScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
			float MaxYawRate() { return *cast(float*)(cast(size_t)cast(void*)this + 636); }
			float RotateToTargetSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 632); }
			float VelocityDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 628); }
			float FollowPathStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			float MatchVelStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
			float GroupAttractionStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 616); }
			float AvoidOtherRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
			float AvoidPlayerStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float AvoidOtherStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			int AwareUpdateInterval() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
			float AwareRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
			float LastGroundZ() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			int CurrentConformTraceInterval() { return *cast(int*)(cast(size_t)cast(void*)this + 588); }
			int ConformTraceInterval() { return *cast(int*)(cast(size_t)cast(void*)this + 584); }
			float ConformTraceDist() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			GameCrowdAgent.EConformType ConformType() { return *cast(GameCrowdAgent.EConformType*)(cast(size_t)cast(void*)this + 576); }
			GameCrowdGroup MyGroup() { return *cast(GameCrowdGroup*)(cast(size_t)cast(void*)this + 480); }
			int AwareUpdateFrameCount() { return *cast(int*)(cast(size_t)cast(void*)this + 544); }
			int ConformTraceFrameCount() { return *cast(int*)(cast(size_t)cast(void*)this + 540); }
			float DeadBodyDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
			int Health() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
			float InterpZTranslation() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			Vector ExternalForce() { return *cast(Vector*)(cast(size_t)cast(void*)this + 512); }
			GameCrowdDestination PreviousDestination() { return *cast(GameCrowdDestination*)(cast(size_t)cast(void*)this + 508); }
			GameCrowdDestination BehaviorDestination() { return *cast(GameCrowdDestination*)(cast(size_t)cast(void*)this + 504); }
			GameCrowdDestination CurrentDestination() { return *cast(GameCrowdDestination*)(cast(size_t)cast(void*)this + 500); }
			float AvoidanceShare() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			Vector PreferredVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bIsInSpawnPool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x8000) != 0; }
		bool bIsInSpawnPool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x8000; } return val; }
		bool bHasNotifiedSpawner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x4000) != 0; }
		bool bHasNotifiedSpawner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x4000; } return val; }
		bool bPreferVisibleDestinationOnSpawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x2000) != 0; }
		bool bPreferVisibleDestinationOnSpawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x2000; } return val; }
		bool bPreferVisibleDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x1000) != 0; }
		bool bPreferVisibleDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x1000; } return val; }
		bool bWantsGroupIdle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x800) != 0; }
		bool bWantsGroupIdle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x800; } return val; }
		bool bIsPanicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x400) != 0; }
		bool bIsPanicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x400; } return val; }
		bool bPotentialEncounter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x200) != 0; }
		bool bPotentialEncounter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x200; } return val; }
		bool bClampMovementSpeed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x100) != 0; }
		bool bClampMovementSpeed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x100; } return val; }
		bool bSimulateThisTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x80) != 0; }
		bool bSimulateThisTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x80; } return val; }
		bool bBadHitNormal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x40) != 0; }
		bool bBadHitNormal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x40; } return val; }
		bool bHitObstacle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x20) != 0; }
		bool bHitObstacle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x20; } return val; }
		bool bAllowPitching() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x10) != 0; }
		bool bAllowPitching(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x10; } return val; }
		bool bWantsSeePlayerNotification() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x8) != 0; }
		bool bWantsSeePlayerNotification(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x8; } return val; }
		bool bUseNavMeshPathing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x4) != 0; }
		bool bUseNavMeshPathing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x4; } return val; }
		bool bCheckForObstacles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x2) != 0; }
		bool bCheckForObstacles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x2; } return val; }
		bool bUniformScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 572) & 0x1) != 0; }
		bool bUniformScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 572) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 572) &= ~0x1; } return val; }
	}
final:
	bool PickBehaviorFrom(ScriptArray!(GameCrowdAgent.BehaviorEntry) BehaviorList, Vector BestCameraLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)params.ptr = BehaviorList;
		*cast(Vector*)&params[12] = BestCameraLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickBehaviorFrom, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	bool IsPanicked()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPanicked, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetPanic(Actor PanicActor, bool bNewPanic)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = PanicActor;
		*cast(bool*)&params[4] = bNewPanic;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPanic, params.ptr, cast(void*)0);
	}
	void WaitForGroupMembers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitForGroupMembers, cast(void*)0, cast(void*)0);
	}
	void SetCurrentDestination(GameCrowdDestination NewDest)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = NewDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentDestination, params.ptr, cast(void*)0);
	}
	void SetMaxSpeed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaxSpeed, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void KillAgent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillAgent, cast(void*)0, cast(void*)0);
	}
	void ResetPooledAgent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetPooledAgent, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
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
	void SetLighting(bool bEnableLightEnvironment, LightComponent.LightingChannelContainer AgentLightingChannel, bool bCastShadows)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableLightEnvironment;
		*cast(LightComponent.LightingChannelContainer*)&params[4] = AgentLightingChannel;
		*cast(bool*)&params[8] = bCastShadows;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLighting, params.ptr, cast(void*)0);
	}
	void InitializeAgent(Actor SpawnLoc, GameCrowdAgent AgentTemplate, GameCrowdGroup NewGroup, float AgentWarmupTime, bool bWarmupPosition, bool bCheckWarmupVisibility)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = SpawnLoc;
		*cast(GameCrowdAgent*)&params[4] = AgentTemplate;
		*cast(GameCrowdGroup*)&params[8] = NewGroup;
		*cast(float*)&params[12] = AgentWarmupTime;
		*cast(bool*)&params[16] = bWarmupPosition;
		*cast(bool*)&params[20] = bCheckWarmupVisibility;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeAgent, params.ptr, cast(void*)0);
	}
	void OnPlayAgentAnimation(SeqAct_PlayAgentAnimation Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_PlayAgentAnimation*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayAgentAnimation, params.ptr, cast(void*)0);
	}
	void PlayIdleAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayIdleAnimation, cast(void*)0, cast(void*)0);
	}
	void StopIdleAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopIdleAnimation, cast(void*)0, cast(void*)0);
	}
	void HandlePotentialAgentEncounter()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePotentialAgentEncounter, cast(void*)0, cast(void*)0);
	}
	void PlaySpawnBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySpawnBehavior, cast(void*)0, cast(void*)0);
	}
	void NotifySeePlayer(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifySeePlayer, params.ptr, cast(void*)0);
	}
	void TryRandomBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TryRandomBehavior, cast(void*)0, cast(void*)0);
	}
	void ResetSeePlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetSeePlayer, cast(void*)0, cast(void*)0);
	}
	void ActivateBehavior(GameCrowdAgentBehavior NewBehaviorArchetype, Actor LookAtActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgentBehavior*)params.ptr = NewBehaviorArchetype;
		*cast(Actor*)&params[4] = LookAtActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateBehavior, params.ptr, cast(void*)0);
	}
	void SetCurrentBehavior(GameCrowdAgentBehavior BehaviorArchetype)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgentBehavior*)params.ptr = BehaviorArchetype;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentBehavior, params.ptr, cast(void*)0);
	}
	void ActivateInstancedBehavior(GameCrowdAgentBehavior NewBehaviorObject)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgentBehavior*)params.ptr = NewBehaviorObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateInstancedBehavior, params.ptr, cast(void*)0);
	}
	void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopBehavior, cast(void*)0, cast(void*)0);
	}
	bool IsIdle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsIdle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	void UpdateIntermediatePoint(Actor DestinationActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = DestinationActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateIntermediatePoint, params.ptr, cast(void*)0);
	}
	void PlayDeath(Vector KillMomentum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = KillMomentum;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDeath, params.ptr, cast(void*)0);
	}
	void FireDeathEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireDeathEvent, cast(void*)0, cast(void*)0);
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
	void OverlappedActorEvent(Actor A)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverlappedActorEvent, params.ptr, cast(void*)0);
	}
	void InitNavigationHandle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitNavigationHandle, cast(void*)0, cast(void*)0);
	}
	Vector GeneratePathToActor(Actor Goal, float WithinDistance, bool bAllowPartialPath)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		*cast(float*)&params[4] = WithinDistance;
		*cast(bool*)&params[8] = bAllowPartialPath;
		(cast(ScriptObject)this).ProcessEvent(Functions.GeneratePathToActor, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
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
	ScriptString GetDestString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDestString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBehaviorString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
