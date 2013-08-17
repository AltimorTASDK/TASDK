module UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowd_ListOfAgents;
import UnrealScript.GameFramework.GameCrowdReplicationActor;
import UnrealScript.GameFramework.GameCrowdGroup;
import UnrealScript.Engine.LightComponent;

extern(C++) interface SeqAct_GameCrowdSpawner : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqAct_GameCrowdSpawner")()); }
	private static __gshared SeqAct_GameCrowdSpawner mDefaultProperties;
	@property final static SeqAct_GameCrowdSpawner DefaultProperties() { mixin(MGDPC!(SeqAct_GameCrowdSpawner, "SeqAct_GameCrowdSpawner GameFramework.Default__SeqAct_GameCrowdSpawner")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnedAgent;
			ScriptFunction mCacheSpawnerVars;
			ScriptFunction mKillAgents;
			ScriptFunction mUpdateSpawning;
			ScriptFunction mSpawnAgent;
			ScriptFunction mCreateNewAgent;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction SpawnedAgent() { mixin(MGF!("mSpawnedAgent", "Function GameFramework.SeqAct_GameCrowdSpawner.SpawnedAgent")()); }
			ScriptFunction CacheSpawnerVars() { mixin(MGF!("mCacheSpawnerVars", "Function GameFramework.SeqAct_GameCrowdSpawner.CacheSpawnerVars")()); }
			ScriptFunction KillAgents() { mixin(MGF!("mKillAgents", "Function GameFramework.SeqAct_GameCrowdSpawner.KillAgents")()); }
			ScriptFunction UpdateSpawning() { mixin(MGF!("mUpdateSpawning", "Function GameFramework.SeqAct_GameCrowdSpawner.UpdateSpawning")()); }
			ScriptFunction SpawnAgent() { mixin(MGF!("mSpawnAgent", "Function GameFramework.SeqAct_GameCrowdSpawner.SpawnAgent")()); }
			ScriptFunction CreateNewAgent() { mixin(MGF!("mCreateNewAgent", "Function GameFramework.SeqAct_GameCrowdSpawner.CreateNewAgent")()); }
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function GameFramework.SeqAct_GameCrowdSpawner.GetObjClassVersion")()); }
		}
	}
	struct AgentArchetypeInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.SeqAct_GameCrowdSpawner.AgentArchetypeInfo")()); }
		@property final auto ref
		{
			ScriptArray!(UObject) GroupMembers() { mixin(MGPS!("ScriptArray!(UObject)", 16)()); }
			int CurrSpawned() { mixin(MGPS!("int", 12)()); }
			int MaxAllowed() { mixin(MGPS!("int", 8)()); }
			float FrequencyModifier() { mixin(MGPS!("float", 4)()); }
			UObject AgentArchetype() { mixin(MGPS!("UObject", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) SpawnLocs() { mixin(MGPC!("ScriptArray!(Actor)", 256)()); }
			ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo) AgentArchetypes() { mixin(MGPC!("ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo)", 300)()); }
			ScriptArray!(GameCrowdAgent) SpawnedList() { mixin(MGPC!("ScriptArray!(GameCrowdAgent)", 312)()); }
			float AgentWarmupTime() { mixin(MGPC!("float", 332)()); }
			GameCrowdReplicationActor RepActor() { mixin(MGPC!("GameCrowdReplicationActor", 328)()); }
			LightComponent.LightingChannelContainer AgentLightingChannel() { mixin(MGPC!("LightComponent.LightingChannelContainer", 324)()); }
			GameCrowd_ListOfAgents CrowdAgentList() { mixin(MGPC!("GameCrowd_ListOfAgents", 296)()); }
			float AgentFrequencySum() { mixin(MGPC!("float", 292)()); }
			float Remainder() { mixin(MGPC!("float", 288)()); }
			float SplitScreenNumReduction() { mixin(MGPC!("float", 284)()); }
			float SpawnRadius() { mixin(MGPC!("float", 280)()); }
			int SpawnNum() { mixin(MGPC!("int", 276)()); }
			float SpawnRate() { mixin(MGPC!("float", 272)()); }
			int LastSpawnLocIndex() { mixin(MGPC!("int", 268)()); }
			int NextDestinationIndex() { mixin(MGPC!("int", 252)()); }
		}
		bool bCastShadows() { mixin(MGBPC!(248, 0x200)()); }
		bool bCastShadows(bool val) { mixin(MSBPC!(248, 0x200)()); }
		bool bWarmupPosition() { mixin(MGBPC!(248, 0x100)()); }
		bool bWarmupPosition(bool val) { mixin(MSBPC!(248, 0x100)()); }
		bool bOnlySpawnHidden() { mixin(MGBPC!(248, 0x80)()); }
		bool bOnlySpawnHidden(bool val) { mixin(MSBPC!(248, 0x80)()); }
		bool bForceNavMeshPathing() { mixin(MGBPC!(248, 0x40)()); }
		bool bForceNavMeshPathing(bool val) { mixin(MSBPC!(248, 0x40)()); }
		bool bForceObstacleChecking() { mixin(MGBPC!(248, 0x20)()); }
		bool bForceObstacleChecking(bool val) { mixin(MSBPC!(248, 0x20)()); }
		bool bEnableCrowdLightEnvironment() { mixin(MGBPC!(248, 0x10)()); }
		bool bEnableCrowdLightEnvironment(bool val) { mixin(MSBPC!(248, 0x10)()); }
		bool bHasReducedNumberDueToSplitScreen() { mixin(MGBPC!(248, 0x8)()); }
		bool bHasReducedNumberDueToSplitScreen(bool val) { mixin(MSBPC!(248, 0x8)()); }
		bool bRespawnDeadAgents() { mixin(MGBPC!(248, 0x4)()); }
		bool bRespawnDeadAgents(bool val) { mixin(MSBPC!(248, 0x4)()); }
		bool bCycleSpawnLocs() { mixin(MGBPC!(248, 0x2)()); }
		bool bCycleSpawnLocs(bool val) { mixin(MSBPC!(248, 0x2)()); }
		bool bSpawningActive() { mixin(MGBPC!(248, 0x1)()); }
		bool bSpawningActive(bool val) { mixin(MSBPC!(248, 0x1)()); }
	}
final:
	void SpawnedAgent(GameCrowdAgent NewAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = NewAgent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnedAgent, params.ptr, cast(void*)0);
	}
	void CacheSpawnerVars()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CacheSpawnerVars, cast(void*)0, cast(void*)0);
	}
	void KillAgents()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillAgents, cast(void*)0, cast(void*)0);
	}
	void UpdateSpawning(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSpawning, params.ptr, cast(void*)0);
	}
	GameCrowdAgent SpawnAgent(Actor SpawnLoc)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = SpawnLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnAgent, params.ptr, cast(void*)0);
		return *cast(GameCrowdAgent*)&params[4];
	}
	GameCrowdAgent CreateNewAgent(Actor SpawnLoc, GameCrowdAgent AgentTemplate, GameCrowdGroup NewGroup)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = SpawnLoc;
		*cast(GameCrowdAgent*)&params[4] = AgentTemplate;
		*cast(GameCrowdGroup*)&params[8] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateNewAgent, params.ptr, cast(void*)0);
		return *cast(GameCrowdAgent*)&params[12];
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
