module UnrealScript.GameFramework.GameCrowdAgentBehavior;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface GameCrowdAgentBehavior : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdAgentBehavior")); }
	private static __gshared GameCrowdAgentBehavior mDefaultProperties;
	@property final static GameCrowdAgentBehavior DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameCrowdAgentBehavior)("GameCrowdAgentBehavior GameFramework.Default__GameCrowdAgentBehavior")); }
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
			ScriptFunction AllowBehaviorAt() { return mAllowBehaviorAt ? mAllowBehaviorAt : (mAllowBehaviorAt = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.AllowBehaviorAt")); }
			ScriptFunction AllowThisDestination() { return mAllowThisDestination ? mAllowThisDestination : (mAllowThisDestination = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.AllowThisDestination")); }
			ScriptFunction CanBeUsedBy() { return mCanBeUsedBy ? mCanBeUsedBy : (mCanBeUsedBy = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.CanBeUsedBy")); }
			ScriptFunction GetDestinationActor() { return mGetDestinationActor ? mGetDestinationActor : (mGetDestinationActor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.GetDestinationActor")); }
			ScriptFunction GetBehaviorString() { return mGetBehaviorString ? mGetBehaviorString : (mGetBehaviorString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.GetBehaviorString")); }
			ScriptFunction ShouldEndIdle() { return mShouldEndIdle ? mShouldEndIdle : (mShouldEndIdle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.ShouldEndIdle")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.Tick")); }
			ScriptFunction FinishedTargetRotation() { return mFinishedTargetRotation ? mFinishedTargetRotation : (mFinishedTargetRotation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.FinishedTargetRotation")); }
			ScriptFunction HandleMovement() { return mHandleMovement ? mHandleMovement : (mHandleMovement = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.HandleMovement")); }
			ScriptFunction InitBehavior() { return mInitBehavior ? mInitBehavior : (mInitBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.InitBehavior")); }
			ScriptFunction StopBehavior() { return mStopBehavior ? mStopBehavior : (mStopBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.StopBehavior")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.OnAnimEnd")); }
			ScriptFunction ChangingDestination() { return mChangingDestination ? mChangingDestination : (mChangingDestination = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.ChangingDestination")); }
			ScriptFunction ActivatedBy() { return mActivatedBy ? mActivatedBy : (mActivatedBy = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.ActivatedBy")); }
			ScriptFunction PropagateViralBehaviorTo() { return mPropagateViralBehaviorTo ? mPropagateViralBehaviorTo : (mPropagateViralBehaviorTo = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdAgentBehavior.PropagateViralBehaviorTo")); }
		}
	}
	@property final
	{
		auto ref
		{
			Actor ActionTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 64); }
			float MaxPlayerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			GameCrowdAgent MyAgent() { return *cast(GameCrowdAgent*)(cast(size_t)cast(void*)this + 80); }
			float TimeToStopPropagatingViralBehavior() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float DurationOfViralBehaviorPropagation() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bIsPanicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
		bool bIsPanicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
		bool bPassOnIsViralBehaviorFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool bPassOnIsViralBehaviorFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
		bool bIsViralBehavior() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool bIsViralBehavior(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool bFaceActionTargetFirst() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bFaceActionTargetFirst(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool bIdleBehavior() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bIdleBehavior(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
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
