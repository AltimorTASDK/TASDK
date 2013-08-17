module UnrealScript.GameFramework.GameCrowdAgentBehavior;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface GameCrowdAgentBehavior : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowdAgentBehavior")()); }
	private static __gshared GameCrowdAgentBehavior mDefaultProperties;
	@property final static GameCrowdAgentBehavior DefaultProperties() { mixin(MGDPC!(GameCrowdAgentBehavior, "GameCrowdAgentBehavior GameFramework.Default__GameCrowdAgentBehavior")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAllowBehaviorAt;
			ScriptFunction mAllowThisDestination;
			ScriptFunction mCanBeUsedBy;
			ScriptFunction mGetDestinationActor;
			ScriptFunction mGetBehaviorString;
			ScriptFunction mShouldEndIdle;
			ScriptFunction mTick;
			ScriptFunction mFinishedTargetRotation;
			ScriptFunction mHandleMovement;
			ScriptFunction mInitBehavior;
			ScriptFunction mStopBehavior;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mChangingDestination;
			ScriptFunction mActivatedBy;
			ScriptFunction mPropagateViralBehaviorTo;
		}
		public @property static final
		{
			ScriptFunction AllowBehaviorAt() { mixin(MGF!("mAllowBehaviorAt", "Function GameFramework.GameCrowdAgentBehavior.AllowBehaviorAt")()); }
			ScriptFunction AllowThisDestination() { mixin(MGF!("mAllowThisDestination", "Function GameFramework.GameCrowdAgentBehavior.AllowThisDestination")()); }
			ScriptFunction CanBeUsedBy() { mixin(MGF!("mCanBeUsedBy", "Function GameFramework.GameCrowdAgentBehavior.CanBeUsedBy")()); }
			ScriptFunction GetDestinationActor() { mixin(MGF!("mGetDestinationActor", "Function GameFramework.GameCrowdAgentBehavior.GetDestinationActor")()); }
			ScriptFunction GetBehaviorString() { mixin(MGF!("mGetBehaviorString", "Function GameFramework.GameCrowdAgentBehavior.GetBehaviorString")()); }
			ScriptFunction ShouldEndIdle() { mixin(MGF!("mShouldEndIdle", "Function GameFramework.GameCrowdAgentBehavior.ShouldEndIdle")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function GameFramework.GameCrowdAgentBehavior.Tick")()); }
			ScriptFunction FinishedTargetRotation() { mixin(MGF!("mFinishedTargetRotation", "Function GameFramework.GameCrowdAgentBehavior.FinishedTargetRotation")()); }
			ScriptFunction HandleMovement() { mixin(MGF!("mHandleMovement", "Function GameFramework.GameCrowdAgentBehavior.HandleMovement")()); }
			ScriptFunction InitBehavior() { mixin(MGF!("mInitBehavior", "Function GameFramework.GameCrowdAgentBehavior.InitBehavior")()); }
			ScriptFunction StopBehavior() { mixin(MGF!("mStopBehavior", "Function GameFramework.GameCrowdAgentBehavior.StopBehavior")()); }
			ScriptFunction OnAnimEnd() { mixin(MGF!("mOnAnimEnd", "Function GameFramework.GameCrowdAgentBehavior.OnAnimEnd")()); }
			ScriptFunction ChangingDestination() { mixin(MGF!("mChangingDestination", "Function GameFramework.GameCrowdAgentBehavior.ChangingDestination")()); }
			ScriptFunction ActivatedBy() { mixin(MGF!("mActivatedBy", "Function GameFramework.GameCrowdAgentBehavior.ActivatedBy")()); }
			ScriptFunction PropagateViralBehaviorTo() { mixin(MGF!("mPropagateViralBehaviorTo", "Function GameFramework.GameCrowdAgentBehavior.PropagateViralBehaviorTo")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Actor ActionTarget() { mixin(MGPC!("Actor", 64)()); }
			float MaxPlayerDistance() { mixin(MGPC!("float", 68)()); }
			GameCrowdAgent MyAgent() { mixin(MGPC!("GameCrowdAgent", 80)()); }
			float TimeToStopPropagatingViralBehavior() { mixin(MGPC!("float", 76)()); }
			float DurationOfViralBehaviorPropagation() { mixin(MGPC!("float", 72)()); }
		}
		bool bIsPanicked() { mixin(MGBPC!(60, 0x10)()); }
		bool bIsPanicked(bool val) { mixin(MSBPC!(60, 0x10)()); }
		bool bPassOnIsViralBehaviorFlag() { mixin(MGBPC!(60, 0x8)()); }
		bool bPassOnIsViralBehaviorFlag(bool val) { mixin(MSBPC!(60, 0x8)()); }
		bool bIsViralBehavior() { mixin(MGBPC!(60, 0x4)()); }
		bool bIsViralBehavior(bool val) { mixin(MSBPC!(60, 0x4)()); }
		bool bFaceActionTargetFirst() { mixin(MGBPC!(60, 0x2)()); }
		bool bFaceActionTargetFirst(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool bIdleBehavior() { mixin(MGBPC!(60, 0x1)()); }
		bool bIdleBehavior(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
final:
	bool AllowBehaviorAt(GameCrowdDestination Destination)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Destination;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowBehaviorAt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowThisDestination(GameCrowdDestination Destination)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Destination;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowThisDestination, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanBeUsedBy(GameCrowdAgent Agent, Vector CameraLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		*cast(Vector*)&params[4] = CameraLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBeUsedBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	Actor GetDestinationActor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDestinationActor, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBehaviorString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool ShouldEndIdle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldEndIdle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void FinishedTargetRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishedTargetRotation, cast(void*)0, cast(void*)0);
	}
	bool HandleMovement()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleMovement, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InitBehavior(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitBehavior, params.ptr, cast(void*)0);
	}
	void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopBehavior, cast(void*)0, cast(void*)0);
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
	void ChangingDestination(GameCrowdDestination NewDest)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = NewDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangingDestination, params.ptr, cast(void*)0);
	}
	void ActivatedBy(Actor NewActionTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActionTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivatedBy, params.ptr, cast(void*)0);
	}
	void PropagateViralBehaviorTo(GameCrowdAgent OtherAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = OtherAgent;
		(cast(ScriptObject)this).ProcessEvent(Functions.PropagateViralBehaviorTo, params.ptr, cast(void*)0);
	}
}
