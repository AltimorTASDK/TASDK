module UnrealScript.GameFramework.GameCrowdBehavior_RunFromPanic;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_RunFromPanic : GameCrowdAgentBehavior
{
	public @property final auto ref float TimeToStopPanic() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float DurationOfPanic() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref Actor PanicFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 84); }
	final void ActivatedBy(Actor NewActionTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActionTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31257], params.ptr, cast(void*)0);
	}
	final void InitBehavior(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31261], params.ptr, cast(void*)0);
	}
	final void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31263], cast(void*)0, cast(void*)0);
	}
	final void PropagateViralBehaviorTo(GameCrowdAgent OtherAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = OtherAgent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31264], params.ptr, cast(void*)0);
	}
	final bool AllowThisDestination(GameCrowdDestination Destination)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Destination;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31266], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AllowBehaviorAt(GameCrowdDestination Destination)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Destination;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31269], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31272], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31274], params.ptr, cast(void*)0);
	}
}
