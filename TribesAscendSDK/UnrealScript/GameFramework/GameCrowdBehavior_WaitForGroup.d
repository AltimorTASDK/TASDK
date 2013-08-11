module UnrealScript.GameFramework.GameCrowdBehavior_WaitForGroup;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_WaitForGroup : GameCrowdAgentBehavior
{
public extern(D):
final:
	void InitBehavior(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31276], params.ptr, cast(void*)0);
	}
	ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31278], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool ShouldEndIdle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31281], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31283], cast(void*)0, cast(void*)0);
	}
}
