module UnrealScript.GameFramework.GameCrowdSpawnerInterface;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Core.UInterface;

extern(C++) interface GameCrowdSpawnerInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdSpawnerInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddToAgentPool;
			ScriptFunction mGetMaxSpawnDist;
			ScriptFunction mAgentDestroyed;
		}
		public @property static final
		{
			ScriptFunction AddToAgentPool() { return mAddToAgentPool ? mAddToAgentPool : (mAddToAgentPool = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdSpawnerInterface.AddToAgentPool")); }
			ScriptFunction GetMaxSpawnDist() { return mGetMaxSpawnDist ? mGetMaxSpawnDist : (mGetMaxSpawnDist = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdSpawnerInterface.GetMaxSpawnDist")); }
			ScriptFunction AgentDestroyed() { return mAgentDestroyed ? mAgentDestroyed : (mAgentDestroyed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdSpawnerInterface.AgentDestroyed")); }
		}
	}
final:
	bool AddToAgentPool(GameCrowdAgent Agent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToAgentPool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float GetMaxSpawnDist()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxSpawnDist, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void AgentDestroyed(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AgentDestroyed, params.ptr, cast(void*)0);
	}
}
