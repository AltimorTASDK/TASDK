module UnrealScript.GameFramework.GameCrowdSpawnerInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Core.UInterface;

extern(C++) interface GameCrowdSpawnerInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCrowdSpawnerInterface")); }
	private static __gshared GameCrowdSpawnerInterface mDefaultProperties;
	@property final static GameCrowdSpawnerInterface DefaultProperties() { mixin(MGDPC("GameCrowdSpawnerInterface", "GameCrowdSpawnerInterface GameFramework.Default__GameCrowdSpawnerInterface")); }
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
			ScriptFunction AddToAgentPool() { mixin(MGF("mAddToAgentPool", "Function GameFramework.GameCrowdSpawnerInterface.AddToAgentPool")); }
			ScriptFunction GetMaxSpawnDist() { mixin(MGF("mGetMaxSpawnDist", "Function GameFramework.GameCrowdSpawnerInterface.GetMaxSpawnDist")); }
			ScriptFunction AgentDestroyed() { mixin(MGF("mAgentDestroyed", "Function GameFramework.GameCrowdSpawnerInterface.AgentDestroyed")); }
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
