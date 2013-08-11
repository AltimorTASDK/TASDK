module UnrealScript.GameFramework.GameCrowdSpawnerInterface;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Core.UInterface;

extern(C++) interface GameCrowdSpawnerInterface : UInterface
{
public extern(D):
final:
	bool AddToAgentPool(GameCrowdAgent Agent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30973], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetMaxSpawnDist()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31010], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void AgentDestroyed(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31514], params.ptr, cast(void*)0);
	}
}
