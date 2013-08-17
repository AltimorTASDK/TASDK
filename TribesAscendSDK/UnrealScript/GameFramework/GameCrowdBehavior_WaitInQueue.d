module UnrealScript.GameFramework.GameCrowdBehavior_WaitInQueue;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdDestinationQueuePoint;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_WaitInQueue : GameCrowdAgentBehavior
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCrowdBehavior_WaitInQueue")); }
	private static __gshared GameCrowdBehavior_WaitInQueue mDefaultProperties;
	@property final static GameCrowdBehavior_WaitInQueue DefaultProperties() { mixin(MGDPC("GameCrowdBehavior_WaitInQueue", "GameCrowdBehavior_WaitInQueue GameFramework.Default__GameCrowdBehavior_WaitInQueue")); }
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
			ScriptFunction HandleMovement() { mixin(MGF("mHandleMovement", "Function GameFramework.GameCrowdBehavior_WaitInQueue.HandleMovement")); }
			ScriptFunction ChangingDestination() { mixin(MGF("mChangingDestination", "Function GameFramework.GameCrowdBehavior_WaitInQueue.ChangingDestination")); }
			ScriptFunction GetDestinationActor() { mixin(MGF("mGetDestinationActor", "Function GameFramework.GameCrowdBehavior_WaitInQueue.GetDestinationActor")); }
			ScriptFunction GetBehaviorString() { mixin(MGF("mGetBehaviorString", "Function GameFramework.GameCrowdBehavior_WaitInQueue.GetBehaviorString")); }
			ScriptFunction ShouldEndIdle() { mixin(MGF("mShouldEndIdle", "Function GameFramework.GameCrowdBehavior_WaitInQueue.ShouldEndIdle")); }
			ScriptFunction StopBehavior() { mixin(MGF("mStopBehavior", "Function GameFramework.GameCrowdBehavior_WaitInQueue.StopBehavior")); }
		}
	}
	@property final
	{
		@property final auto ref GameCrowdDestinationQueuePoint QueuePosition() { mixin(MGPC("GameCrowdDestinationQueuePoint", 88)); }
		bool bStoppingBehavior() { mixin(MGBPC(84, 0x1)); }
		bool bStoppingBehavior(bool val) { mixin(MSBPC(84, 0x1)); }
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
