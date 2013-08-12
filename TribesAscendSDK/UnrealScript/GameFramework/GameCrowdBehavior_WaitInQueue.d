module UnrealScript.GameFramework.GameCrowdBehavior_WaitInQueue;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdDestinationQueuePoint;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_WaitInQueue : GameCrowdAgentBehavior
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdBehavior_WaitInQueue")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHandleMovement;
			ScriptFunction mChangingDestination;
			ScriptFunction mGetDestinationActor;
			ScriptFunction mGetBehaviorString;
			ScriptFunction mShouldEndIdle;
			ScriptFunction mStopBehavior;
		}
		public @property static final
		{
			ScriptFunction HandleMovement() { return mHandleMovement ? mHandleMovement : (mHandleMovement = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitInQueue.HandleMovement")); }
			ScriptFunction ChangingDestination() { return mChangingDestination ? mChangingDestination : (mChangingDestination = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitInQueue.ChangingDestination")); }
			ScriptFunction GetDestinationActor() { return mGetDestinationActor ? mGetDestinationActor : (mGetDestinationActor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitInQueue.GetDestinationActor")); }
			ScriptFunction GetBehaviorString() { return mGetBehaviorString ? mGetBehaviorString : (mGetBehaviorString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitInQueue.GetBehaviorString")); }
			ScriptFunction ShouldEndIdle() { return mShouldEndIdle ? mShouldEndIdle : (mShouldEndIdle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitInQueue.ShouldEndIdle")); }
			ScriptFunction StopBehavior() { return mStopBehavior ? mStopBehavior : (mStopBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitInQueue.StopBehavior")); }
		}
	}
	@property final
	{
		@property final auto ref GameCrowdDestinationQueuePoint QueuePosition() { return *cast(GameCrowdDestinationQueuePoint*)(cast(size_t)cast(void*)this + 88); }
		bool bStoppingBehavior() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bStoppingBehavior(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
final:
	bool HandleMovement()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleMovement, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ChangingDestination(GameCrowdDestination NewDest)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = NewDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangingDestination, params.ptr, cast(void*)0);
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
	void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopBehavior, cast(void*)0, cast(void*)0);
	}
}
