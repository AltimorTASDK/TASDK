module UnrealScript.GameFramework.GameCrowdAgent;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowdAgent")()); }
	private static __gshared GameCrowdAgent mDefaultProperties;
	@property final static GameCrowdAgent DefaultProperties() { mixin(MGDPC!(GameCrowdAgent, "GameCrowdAgent GameFramework.Default__GameCrowdAgent")()); }
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
			ScriptFunction PickBehaviorFrom() { mixin(MGF!("mPickBehaviorFrom", "Function GameFramework.GameCrowdAgent.PickBehaviorFrom")()); }
			ScriptFunction FellOutOfWorld() { mixin(MGF!("mFellOutOfWorld", "Function GameFramework.GameCrowdAgent.FellOutOfWorld")()); }
			ScriptFunction IsPanicked() { mixin(MGF!("mIsPanicked", "Function GameFramework.GameCrowdAgent.IsPanicked")()); }
			ScriptFunction SetPanic() { mixin(MGF!("mSetPanic", "Function GameFramework.GameCrowdAgent.SetPanic")()); }
			ScriptFunction WaitForGroupMembers() { mixin(MGF!("mWaitForGroupMembers", "Function GameFramework.GameCrowdAgent.WaitForGroupMembers")()); }
			ScriptFunction SetCurrentDestination() { mixin(MGF!("mSetCurrentDestination", "Function GameFramework.GameCrowdAgent.SetCurrentDestination")()); }
			ScriptFunction SetMaxSpeed() { mixin(MGF!("mSetMaxSpeed", "Function GameFramework.GameCrowdAgent.SetMaxSpeed")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function GameFramework.GameCrowdAgent.PostBeginPlay")()); }
			ScriptFunction KillAgent() { mixin(MGF!("mKillAgent", "Function GameFramework.GameCrowdAgent.KillAgent")()); }
			ScriptFunction ResetPooledAgent() { mixin(MGF!("mResetPooledAgent", "Function GameFramework.GameCrowdAgent.ResetPooledAgent")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function GameFramework.GameCrowdAgent.Destroyed")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function GameFramework.GameCrowdAgent.DisplayDebug")()); }
			ScriptFunction SetLighting() { mixin(MGF!("mSetLighting", "Function GameFramework.GameCrowdAgent.SetLighting")()); }
			ScriptFunction InitializeAgent() { mixin(MGF!("mInitializeAgent", "Function GameFramework.GameCrowdAgent.InitializeAgent")()); }
			ScriptFunction OnPlayAgentAnimation() { mixin(MGF!("mOnPlayAgentAnimation", "Function GameFramework.GameCrowdAgent.OnPlayAgentAnimation")()); }
			ScriptFunction PlayIdleAnimation() { mixin(MGF!("mPlayIdleAnimation", "Function GameFramework.GameCrowdAgent.PlayIdleAnimation")()); }
			ScriptFunction StopIdleAnimation() { mixin(MGF!("mStopIdleAnimation", "Function GameFramework.GameCrowdAgent.StopIdleAnimation")()); }
			ScriptFunction HandlePotentialAgentEncounter() { mixin(MGF!("mHandlePotentialAgentEncounter", "Function GameFramework.GameCrowdAgent.HandlePotentialAgentEncounter")()); }
			ScriptFunction PlaySpawnBehavior() { mixin(MGF!("mPlaySpawnBehavior", "Function GameFramework.GameCrowdAgent.PlaySpawnBehavior")()); }
			ScriptFunction NotifySeePlayer() { mixin(MGF!("mNotifySeePlayer", "Function GameFramework.GameCrowdAgent.NotifySeePlayer")()); }
			ScriptFunction TryRandomBehavior() { mixin(MGF!("mTryRandomBehavior", "Function GameFramework.GameCrowdAgent.TryRandomBehavior")()); }
			ScriptFunction ResetSeePlayer() { mixin(MGF!("mResetSeePlayer", "Function GameFramework.GameCrowdAgent.ResetSeePlayer")()); }
			ScriptFunction ActivateBehavior() { mixin(MGF!("mActivateBehavior", "Function GameFramework.GameCrowdAgent.ActivateBehavior")()); }
			ScriptFunction SetCurrentBehavior() { mixin(MGF!("mSetCurrentBehavior", "Function GameFramework.GameCrowdAgent.SetCurrentBehavior")()); }
			ScriptFunction ActivateInstancedBehavior() { mixin(MGF!("mActivateInstancedBehavior", "Function GameFramework.GameCrowdAgent.ActivateInstancedBehavior")()); }
			ScriptFunction StopBehavior() { mixin(MGF!("mStopBehavior", "Function GameFramework.GameCrowdAgent.StopBehavior")()); }
			ScriptFunction IsIdle() { mixin(MGF!("mIsIdle", "Function GameFramework.GameCrowdAgent.IsIdle")()); }
			ScriptFunction CalcCamera() { mixin(MGF!("mCalcCamera", "Function GameFramework.GameCrowdAgent.CalcCamera")()); }
			ScriptFunction UpdateIntermediatePoint() { mixin(MGF!("mUpdateIntermediatePoint", "Function GameFramework.GameCrowdAgent.UpdateIntermediatePoint")()); }
			ScriptFunction PlayDeath() { mixin(MGF!("mPlayDeath", "Function GameFramework.GameCrowdAgent.PlayDeath")()); }
			ScriptFunction FireDeathEvent() { mixin(MGF!("mFireDeathEvent", "Function GameFramework.GameCrowdAgent.FireDeathEvent")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function GameFramework.GameCrowdAgent.TakeDamage")()); }
			ScriptFunction OverlappedActorEvent() { mixin(MGF!("mOverlappedActorEvent", "Function GameFramework.GameCrowdAgent.OverlappedActorEvent")()); }
			ScriptFunction InitNavigationHandle() { mixin(MGF!("mInitNavigationHandle", "Function GameFramework.GameCrowdAgent.InitNavigationHandle")()); }
			ScriptFunction GeneratePathToActor() { mixin(MGF!("mGeneratePathToActor", "Function GameFramework.GameCrowdAgent.GeneratePathToActor")()); }
			ScriptFunction NativePostRenderFor() { mixin(MGF!("mNativePostRenderFor", "Function GameFramework.GameCrowdAgent.NativePostRenderFor")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function GameFramework.GameCrowdAgent.PostRenderFor")()); }
			ScriptFunction GetDestString() { mixin(MGF!("mGetDestString", "Function GameFramework.GameCrowdAgent.GetDestString")()); }
			ScriptFunction GetBehaviorString() { mixin(MGF!("mGetBehaviorString", "Function GameFramework.GameCrowdAgent.GetBehaviorString")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameCrowdAgent.RecentInteraction")()); }
		@property final auto ref
		{
			float InteractionDelay() { mixin(MGPS!("float", 8)()); }
			ScriptName InteractionTag() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct BehaviorEntry
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameCrowdAgent.BehaviorEntry")()); }
		@property final
		{
			auto ref
			{
				float BehaviorFrequency() { mixin(MGPS!("float", 8)()); }
				Actor LookAtActor() { mixin(MGPS!("Actor", 4)()); }
				GameCrowdAgentBehavior BehaviorArchetype() { mixin(MGPS!("GameCrowdAgentBehavior", 0)()); }
			}
			bool bCanBeUsed() { mixin(MGBPS!(12, 0x4)()); }
			bool bCanBeUsed(bool val) { mixin(MSBPS!(12, 0x4)()); }
			bool bHasBeenUsed() { mixin(MGBPS!(12, 0x2)()); }
			bool bHasBeenUsed(bool val) { mixin(MSBPS!(12, 0x2)()); }
			bool bNeverRepeat() { mixin(MGBPS!(12, 0x1)()); }
			bool bNeverRepeat(bool val) { mixin(MSBPS!(12, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) NearbyDynamics() { mixin(MGPC!("ScriptArray!(Actor)", 548)()); }
			ScriptArray!(GameCrowdForcePoint) RelevantAttractors() { mixin(MGPC!("ScriptArray!(GameCrowdForcePoint)", 560)()); }
			ScriptArray!(GameCrowdAgent.RecentInteraction) RecentInteractions() { mixin(MGPC!("ScriptArray!(GameCrowdAgent.RecentInteraction)", 764)()); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) EncounterAgentBehaviors() { mixin(MGPC!("ScriptArray!(GameCrowdAgent.BehaviorEntry)", 824)()); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) SeePlayerBehaviors() { mixin(MGPC!("ScriptArray!(GameCrowdAgent.BehaviorEntry)", 836)()); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) SpawnBehaviors() { mixin(MGPC!("ScriptArray!(GameCrowdAgent.BehaviorEntry)", 856)()); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) PanicBehaviors() { mixin(MGPC!("ScriptArray!(GameCrowdAgent.BehaviorEntry)", 868)()); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) RandomBehaviors() { mixin(MGPC!("ScriptArray!(GameCrowdAgent.BehaviorEntry)", 880)()); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) TakeDamageBehaviors() { mixin(MGPC!("ScriptArray!(GameCrowdAgent.BehaviorEntry)", 892)()); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) GroupWaitingBehaviors() { mixin(MGPC!("ScriptArray!(GameCrowdAgent.BehaviorEntry)", 916)()); }
			float InitialLastRenderTime() { mixin(MGPC!("float", 960)()); }
			Vector SpawnOffset() { mixin(MGPC!("Vector", 948)()); }
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'MySpawner'!
			float MaxLOSLifeDistanceSq() { mixin(MGPC!("float", 936)()); }
			float DesiredGroupRadiusSq() { mixin(MGPC!("float", 932)()); }
			float DesiredGroupRadius() { mixin(MGPC!("float", 928)()); }
			float ReachThreshold() { mixin(MGPC!("float", 912)()); }
			float ForceUpdateTime() { mixin(MGPC!("float", 908)()); }
			float RandomBehaviorInterval() { mixin(MGPC!("float", 904)()); }
			float SeePlayerInterval() { mixin(MGPC!("float", 852)()); }
			float MaxSeePlayerDistSq() { mixin(MGPC!("float", 848)()); }
			GameCrowdAgentBehavior CurrentBehavior() { mixin(MGPC!("GameCrowdAgentBehavior", 820)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AmbientSoundComponent'!
			SoundCue AmbientSoundCue() { mixin(MGPC!("SoundCue", 812)()); }
			UObject.LinearColor BeaconColor() { mixin(MGPC!("UObject.LinearColor", 796)()); }
			Texture2D BeaconTexture() { mixin(MGPC!("Texture2D", 792)()); }
			Vector BeaconOffset() { mixin(MGPC!("Vector", 780)()); }
			float BeaconMaxDist() { mixin(MGPC!("float", 776)()); }
			float MaxSpeed() { mixin(MGPC!("float", 760)()); }
			float MaxRunningSpeed() { mixin(MGPC!("float", 756)()); }
			float MaxWalkingSpeed() { mixin(MGPC!("float", 752)()); }
			GameCrowdAgent MyArchetype() { mixin(MGPC!("GameCrowdAgent", 748)()); }
			float NotVisibleTickScalingFactor() { mixin(MGPC!("float", 744)()); }
			float NotVisibleLifeSpan() { mixin(MGPC!("float", 740)()); }
			float LastUpdateTime() { mixin(MGPC!("float", 736)()); }
			float LastPathingAttempt() { mixin(MGPC!("float", 732)()); }
			float WalkableFloorZ() { mixin(MGPC!("float", 728)()); }
			int ObstacleCheckCount() { mixin(MGPC!("int", 724)()); }
			// WARNING: Property 'NavigationHandle' has the same name as a defined type!
			ScriptClass NavigationHandleClass() { mixin(MGPC!("ScriptClass", 716)()); }
			Vector SearchExtent() { mixin(MGPC!("Vector", 704)()); }
			Vector IntermediatePoint() { mixin(MGPC!("Vector", 692)()); }
			float GroundOffset() { mixin(MGPC!("float", 688)()); }
			Vector LastKnownGoodPosition() { mixin(MGPC!("Vector", 676)()); }
			float VisibleProximityLODDist() { mixin(MGPC!("float", 672)()); }
			float ProximityLODDist() { mixin(MGPC!("float", 668)()); }
			float EyeZOffset() { mixin(MGPC!("float", 664)()); }
			Vector MeshMaxScale3D() { mixin(MGPC!("Vector", 652)()); }
			Vector MeshMinScale3D() { mixin(MGPC!("Vector", 640)()); }
			float MaxYawRate() { mixin(MGPC!("float", 636)()); }
			float RotateToTargetSpeed() { mixin(MGPC!("float", 632)()); }
			float VelocityDamping() { mixin(MGPC!("float", 628)()); }
			float FollowPathStrength() { mixin(MGPC!("float", 624)()); }
			float MatchVelStrength() { mixin(MGPC!("float", 620)()); }
			float GroupAttractionStrength() { mixin(MGPC!("float", 616)()); }
			float AvoidOtherRadius() { mixin(MGPC!("float", 612)()); }
			float AvoidPlayerStrength() { mixin(MGPC!("float", 608)()); }
			float AvoidOtherStrength() { mixin(MGPC!("float", 604)()); }
			int AwareUpdateInterval() { mixin(MGPC!("int", 600)()); }
			float AwareRadius() { mixin(MGPC!("float", 596)()); }
			float LastGroundZ() { mixin(MGPC!("float", 592)()); }
			int CurrentConformTraceInterval() { mixin(MGPC!("int", 588)()); }
			int ConformTraceInterval() { mixin(MGPC!("int", 584)()); }
			float ConformTraceDist() { mixin(MGPC!("float", 580)()); }
			GameCrowdAgent.EConformType ConformType() { mixin(MGPC!("GameCrowdAgent.EConformType", 576)()); }
			GameCrowdGroup MyGroup() { mixin(MGPC!("GameCrowdGroup", 480)()); }
			int AwareUpdateFrameCount() { mixin(MGPC!("int", 544)()); }
			int ConformTraceFrameCount() { mixin(MGPC!("int", 540)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			float DeadBodyDuration() { mixin(MGPC!("float", 532)()); }
			int Health() { mixin(MGPC!("int", 528)()); }
			float InterpZTranslation() { mixin(MGPC!("float", 524)()); }
			Vector ExternalForce() { mixin(MGPC!("Vector", 512)()); }
			GameCrowdDestination PreviousDestination() { mixin(MGPC!("GameCrowdDestination", 508)()); }
			GameCrowdDestination BehaviorDestination() { mixin(MGPC!("GameCrowdDestination", 504)()); }
			GameCrowdDestination CurrentDestination() { mixin(MGPC!("GameCrowdDestination", 500)()); }
			float AvoidanceShare() { mixin(MGPC!("float", 496)()); }
			Vector PreferredVelocity() { mixin(MGPC!("Vector", 484)()); }
		}
		bool bIsInSpawnPool() { mixin(MGBPC!(572, 0x8000)()); }
		bool bIsInSpawnPool(bool val) { mixin(MSBPC!(572, 0x8000)()); }
		bool bHasNotifiedSpawner() { mixin(MGBPC!(572, 0x4000)()); }
		bool bHasNotifiedSpawner(bool val) { mixin(MSBPC!(572, 0x4000)()); }
		bool bPreferVisibleDestinationOnSpawn() { mixin(MGBPC!(572, 0x2000)()); }
		bool bPreferVisibleDestinationOnSpawn(bool val) { mixin(MSBPC!(572, 0x2000)()); }
		bool bPreferVisibleDestination() { mixin(MGBPC!(572, 0x1000)()); }
		bool bPreferVisibleDestination(bool val) { mixin(MSBPC!(572, 0x1000)()); }
		bool bWantsGroupIdle() { mixin(MGBPC!(572, 0x800)()); }
		bool bWantsGroupIdle(bool val) { mixin(MSBPC!(572, 0x800)()); }
		bool bIsPanicked() { mixin(MGBPC!(572, 0x400)()); }
		bool bIsPanicked(bool val) { mixin(MSBPC!(572, 0x400)()); }
		bool bPotentialEncounter() { mixin(MGBPC!(572, 0x200)()); }
		bool bPotentialEncounter(bool val) { mixin(MSBPC!(572, 0x200)()); }
		bool bClampMovementSpeed() { mixin(MGBPC!(572, 0x100)()); }
		bool bClampMovementSpeed(bool val) { mixin(MSBPC!(572, 0x100)()); }
		bool bSimulateThisTick() { mixin(MGBPC!(572, 0x80)()); }
		bool bSimulateThisTick(bool val) { mixin(MSBPC!(572, 0x80)()); }
		bool bBadHitNormal() { mixin(MGBPC!(572, 0x40)()); }
		bool bBadHitNormal(bool val) { mixin(MSBPC!(572, 0x40)()); }
		bool bHitObstacle() { mixin(MGBPC!(572, 0x20)()); }
		bool bHitObstacle(bool val) { mixin(MSBPC!(572, 0x20)()); }
		bool bAllowPitching() { mixin(MGBPC!(572, 0x10)()); }
		bool bAllowPitching(bool val) { mixin(MSBPC!(572, 0x10)()); }
		bool bWantsSeePlayerNotification() { mixin(MGBPC!(572, 0x8)()); }
		bool bWantsSeePlayerNotification(bool val) { mixin(MSBPC!(572, 0x8)()); }
		bool bUseNavMeshPathing() { mixin(MGBPC!(572, 0x4)()); }
		bool bUseNavMeshPathing(bool val) { mixin(MSBPC!(572, 0x4)()); }
		bool bCheckForObstacles() { mixin(MGBPC!(572, 0x2)()); }
		bool bCheckForObstacles(bool val) { mixin(MSBPC!(572, 0x2)()); }
		bool bUniformScale() { mixin(MGBPC!(572, 0x1)()); }
		bool bUniformScale(bool val) { mixin(MSBPC!(572, 0x1)()); }
	}
final:
	bool PickBehaviorFrom(ScriptArray!(GameCrowdAgent.BehaviorEntry) BehaviorList, Vector* BestCameraLoc = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)params.ptr = BehaviorList;
		if (BestCameraLoc !is null)
			*cast(Vector*)&params[12] = *BestCameraLoc;
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
	void ActivateBehavior(GameCrowdAgentBehavior NewBehaviorArchetype, Actor* LookAtActor = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgentBehavior*)params.ptr = NewBehaviorArchetype;
		if (LookAtActor !is null)
			*cast(Actor*)&params[4] = *LookAtActor;
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
	void UpdateIntermediatePoint(Actor* DestinationActor = null)
	{
		ubyte params[4];
		params[] = 0;
		if (DestinationActor !is null)
			*cast(Actor*)params.ptr = *DestinationActor;
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
	Vector GeneratePathToActor(Actor Goal, float* WithinDistance = null, bool* bAllowPartialPath = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		if (WithinDistance !is null)
			*cast(float*)&params[4] = *WithinDistance;
		if (bAllowPartialPath !is null)
			*cast(bool*)&params[8] = *bAllowPartialPath;
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
