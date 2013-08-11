module UnrealScript.GameFramework.GameCrowdPopulationManager;

import ScriptClasses;
import UnrealScript.Engine.CrowdPopulationManagerBase;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.GameCrowdGroup;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;
import UnrealScript.Engine.LightComponent;
import UnrealScript.GameFramework.SeqAct_GameCrowdPopulationManagerToggle;
import UnrealScript.Engine.HUD;

extern(C++) interface GameCrowdPopulationManager : CrowdPopulationManagerBase
{
	public @property final auto ref ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo) AgentArchetypes() { return *cast(ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo)*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref ScriptArray!(GameCrowdAgent) AgentPool() { return *cast(ScriptArray!(GameCrowdAgent)*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref ScriptArray!(GameCrowdDestination) PrioritizedSpawnPoints() { return *cast(ScriptArray!(GameCrowdDestination)*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref ScriptArray!(GameCrowdDestination) PotentialSpawnPoints() { return *cast(ScriptArray!(GameCrowdDestination)*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref GameCrowdAgent QueryingAgent() { return *cast(GameCrowdAgent*)(cast(size_t)cast(void*)this + 624); }
	// WARNING: Property 'NavigationHandle' has the same name as a defined type!
	public @property final auto ref ScriptClass NavigationHandleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref float InitialPopulationPct() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref float HeadVisibilityOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref int KilledCount() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref int PoolCount() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref int SpawnedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref float MinBehindSpawnDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float MaxSpawnDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref float MaxSpawnDist() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float PlayerPositionPredictionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref int PrioritizationUpdateIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref int PrioritizationIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref float SpawnPrioritizationInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref float AgentWarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref LightComponent.LightingChannelContainer AgentLightingChannel() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref int AgentCount() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref int MaxAgentPoolSize() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref float AgentFrequencySum() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float Remainder() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float SplitScreenNumReduction() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref int SpawnNum() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float SpawnRate() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool bWarmupPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x40) != 0; }
	public @property final bool bWarmupPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x40; } return val; }
	public @property final bool bHaveInitialPopulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x20) != 0; }
	public @property final bool bHaveInitialPopulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x20; } return val; }
	public @property final bool bForceNavMeshPathing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x10) != 0; }
	public @property final bool bForceNavMeshPathing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x10; } return val; }
	public @property final bool bForceObstacleChecking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x8) != 0; }
	public @property final bool bForceObstacleChecking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x8; } return val; }
	public @property final bool bCastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
	public @property final bool bCastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
	public @property final bool bEnableCrowdLightEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
	public @property final bool bEnableCrowdLightEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
	public @property final bool bSpawningActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bSpawningActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer VfTable_IInterface_NavigationHandle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31372], cast(void*)0, cast(void*)0);
	}
	final void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31374], cast(void*)0, cast(void*)0);
	}
	final float GetMaxSpawnDist()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31375], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void AddSpawnPoint(GameCrowdDestination GCD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = GCD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31377], params.ptr, cast(void*)0);
	}
	final void RemoveSpawnPoint(GameCrowdDestination GCD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = GCD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31388], params.ptr, cast(void*)0);
	}
	final void OnGameCrowdPopulationManagerToggle(SeqAct_GameCrowdPopulationManagerToggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_GameCrowdPopulationManagerToggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31390], params.ptr, cast(void*)0);
	}
	final void FlushAgents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31402], cast(void*)0, cast(void*)0);
	}
	final void AgentDestroyed(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31404], params.ptr, cast(void*)0);
	}
	final bool AddToAgentPool(GameCrowdAgent Agent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31407], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31410], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final bool IsSpawningActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31430], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void Tick(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31432], params.ptr, cast(void*)0);
	}
	final GameCrowdDestination PickSpawnPoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31437], params.ptr, cast(void*)0);
		return *cast(GameCrowdDestination*)params.ptr;
	}
	final void PrioritizeSpawnPoints(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31441], params.ptr, cast(void*)0);
	}
	final void AnalyzeSpawnPoints(int StartIndex, int StopIndex, Vector ViewLocation, Vector PredictionLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = StartIndex;
		*cast(int*)&params[4] = StopIndex;
		*cast(Vector*)&params[8] = ViewLocation;
		*cast(Vector*)&params[20] = PredictionLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31451], params.ptr, cast(void*)0);
	}
	final void AddPrioritizedSpawnPoint(GameCrowdDestination GCD, Vector ViewLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = GCD;
		*cast(Vector*)&params[4] = ViewLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31463], params.ptr, cast(void*)0);
	}
	final bool ValidateSpawnAt(GameCrowdDestination Candidate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Candidate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31467], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GameCrowdAgent SpawnAgent(GameCrowdDestination SpawnLoc)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = SpawnLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31477], params.ptr, cast(void*)0);
		return *cast(GameCrowdAgent*)&params[4];
	}
	final GameCrowdAgent CreateNewAgent(GameCrowdDestination SpawnLoc, GameCrowdAgent AgentTemplate, GameCrowdGroup NewGroup)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = SpawnLoc;
		*cast(GameCrowdAgent*)&params[4] = AgentTemplate;
		*cast(GameCrowdGroup*)&params[8] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31487], params.ptr, cast(void*)0);
		return *cast(GameCrowdAgent*)&params[12];
	}
}
