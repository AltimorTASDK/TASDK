module UnrealScript.GameFramework.GameCrowdBehavior_WaitInQueue;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdDestinationQueuePoint;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_WaitInQueue : GameCrowdAgentBehavior
{
	public @property final auto ref GameCrowdDestinationQueuePoint QueuePosition() { return *cast(GameCrowdDestinationQueuePoint*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bStoppingBehavior() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool bStoppingBehavior(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	final bool HandleMovement()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31286], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ChangingDestination(GameCrowdDestination NewDest)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = NewDest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31288], params.ptr, cast(void*)0);
	}
	final Actor GetDestinationActor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31290], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31292], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool ShouldEndIdle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31294], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31296], cast(void*)0, cast(void*)0);
	}
}
