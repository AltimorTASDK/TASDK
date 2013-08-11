module UnrealScript.GameFramework.GameCrowdGroup;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface GameCrowdGroup : UObject
{
	public @property final auto ref ScriptArray!(GameCrowdAgent) Members() { return *cast(ScriptArray!(GameCrowdAgent)*)(cast(size_t)cast(void*)this + 60); }
	final void AddMember(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31322], params.ptr, cast(void*)0);
	}
	final void RemoveMember(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31324], params.ptr, cast(void*)0);
	}
	final void UpdateDestinations(GameCrowdDestination NewDestination)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = NewDestination;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31326], params.ptr, cast(void*)0);
	}
}
