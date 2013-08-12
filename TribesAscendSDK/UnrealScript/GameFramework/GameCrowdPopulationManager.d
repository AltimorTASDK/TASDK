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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdPopulationManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mNotifyPathChanged;
			ScriptFunction mGetMaxSpawnDist;
			ScriptFunction mAddSpawnPoint;
			ScriptFunction mRemoveSpawnPoint;
			ScriptFunction mOnGameCrowdPopulationManagerToggle;
			ScriptFunction mFlushAgents;
			ScriptFunction mAgentDestroyed;
			ScriptFunction mAddToAgentPool;
			ScriptFunction mDisplayDebug;
			ScriptFunction mIsSpawningActive;
			ScriptFunction mTick;
			ScriptFunction mPickSpawnPoint;
			ScriptFunction mPrioritizeSpawnPoints;
			ScriptFunction mAnalyzeSpawnPoints;
			ScriptFunction mAddPrioritizedSpawnPoint;
			ScriptFunction mValidateSpawnAt;
			ScriptFunction mSpawnAgent;
			ScriptFunction mCreateNewAgent;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.PostBeginPlay")); }
			ScriptFunction NotifyPathChanged() { return mNotifyPathChanged ? mNotifyPathChanged : (mNotifyPathChanged = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.NotifyPathChanged")); }
			ScriptFunction GetMaxSpawnDist() { return mGetMaxSpawnDist ? mGetMaxSpawnDist : (mGetMaxSpawnDist = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.GetMaxSpawnDist")); }
			ScriptFunction AddSpawnPoint() { return mAddSpawnPoint ? mAddSpawnPoint : (mAddSpawnPoint = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.AddSpawnPoint")); }
			ScriptFunction RemoveSpawnPoint() { return mRemoveSpawnPoint ? mRemoveSpawnPoint : (mRemoveSpawnPoint = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.RemoveSpawnPoint")); }
			ScriptFunction OnGameCrowdPopulationManagerToggle() { return mOnGameCrowdPopulationManagerToggle ? mOnGameCrowdPopulationManagerToggle : (mOnGameCrowdPopulationManagerToggle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.OnGameCrowdPopulationManagerToggle")); }
			ScriptFunction FlushAgents() { return mFlushAgents ? mFlushAgents : (mFlushAgents = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.FlushAgents")); }
			ScriptFunction AgentDestroyed() { return mAgentDestroyed ? mAgentDestroyed : (mAgentDestroyed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.AgentDestroyed")); }
			ScriptFunction AddToAgentPool() { return mAddToAgentPool ? mAddToAgentPool : (mAddToAgentPool = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.AddToAgentPool")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.DisplayDebug")); }
			ScriptFunction IsSpawningActive() { return mIsSpawningActive ? mIsSpawningActive : (mIsSpawningActive = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.IsSpawningActive")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.Tick")); }
			ScriptFunction PickSpawnPoint() { return mPickSpawnPoint ? mPickSpawnPoint : (mPickSpawnPoint = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.PickSpawnPoint")); }
			ScriptFunction PrioritizeSpawnPoints() { return mPrioritizeSpawnPoints ? mPrioritizeSpawnPoints : (mPrioritizeSpawnPoints = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.PrioritizeSpawnPoints")); }
			ScriptFunction AnalyzeSpawnPoints() { return mAnalyzeSpawnPoints ? mAnalyzeSpawnPoints : (mAnalyzeSpawnPoints = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.AnalyzeSpawnPoints")); }
			ScriptFunction AddPrioritizedSpawnPoint() { return mAddPrioritizedSpawnPoint ? mAddPrioritizedSpawnPoint : (mAddPrioritizedSpawnPoint = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.AddPrioritizedSpawnPoint")); }
			ScriptFunction ValidateSpawnAt() { return mValidateSpawnAt ? mValidateSpawnAt : (mValidateSpawnAt = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.ValidateSpawnAt")); }
			ScriptFunction SpawnAgent() { return mSpawnAgent ? mSpawnAgent : (mSpawnAgent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.SpawnAgent")); }
			ScriptFunction CreateNewAgent() { return mCreateNewAgent ? mCreateNewAgent : (mCreateNewAgent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdPopulationManager.CreateNewAgent")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo) AgentArchetypes() { return *cast(ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo)*)(cast(size_t)cast(void*)this + 504); }
			ScriptArray!(GameCrowdAgent) AgentPool() { return *cast(ScriptArray!(GameCrowdAgent)*)(cast(size_t)cast(void*)this + 516); }
			ScriptArray!(GameCrowdDestination) PrioritizedSpawnPoints() { return *cast(ScriptArray!(GameCrowdDestination)*)(cast(size_t)cast(void*)this + 556); }
			ScriptArray!(GameCrowdDestination) PotentialSpawnPoints() { return *cast(ScriptArray!(GameCrowdDestination)*)(cast(size_t)cast(void*)this + 572); }
			GameCrowdAgent QueryingAgent() { return *cast(GameCrowdAgent*)(cast(size_t)cast(void*)this + 624); }
			// WARNING: Property 'NavigationHandle' has the same name as a defined type!
			ScriptClass NavigationHandleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 616); }
			float InitialPopulationPct() { return *cast(float*)(cast(size_t)cast(void*)this + 612); }
			float HeadVisibilityOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			int KilledCount() { return *cast(int*)(cast(size_t)cast(void*)this + 604); }
			int PoolCount() { return *cast(int*)(cast(size_t)cast(void*)this + 600); }
			int SpawnedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 596); }
			float MinBehindSpawnDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			float MaxSpawnDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
			float MaxSpawnDist() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
			float PlayerPositionPredictionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			int PrioritizationUpdateIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 552); }
			int PrioritizationIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
			float SpawnPrioritizationInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			float AgentWarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			LightComponent.LightingChannelContainer AgentLightingChannel() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 536); }
			int AgentCount() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
			int MaxAgentPoolSize() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
			float AgentFrequencySum() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float Remainder() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			float SplitScreenNumReduction() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			int SpawnNum() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
			float SpawnRate() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			UObject.Pointer VfTable_IInterface_NavigationHandle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bWarmupPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x40) != 0; }
		bool bWarmupPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x40; } return val; }
		bool bHaveInitialPopulation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x20) != 0; }
		bool bHaveInitialPopulation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x20; } return val; }
		bool bForceNavMeshPathing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x10) != 0; }
		bool bForceNavMeshPathing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x10; } return val; }
		bool bForceObstacleChecking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x8) != 0; }
		bool bForceObstacleChecking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x8; } return val; }
		bool bCastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x4) != 0; }
		bool bCastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x4; } return val; }
		bool bEnableCrowdLightEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
		bool bEnableCrowdLightEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
		bool bSpawningActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bSpawningActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPathChanged, cast(void*)0, cast(void*)0);
	}
	float GetMaxSpawnDist()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxSpawnDist, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void AddSpawnPoint(GameCrowdDestination GCD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = GCD;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSpawnPoint, params.ptr, cast(void*)0);
	}
	void RemoveSpawnPoint(GameCrowdDestination GCD)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = GCD;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveSpawnPoint, params.ptr, cast(void*)0);
	}
	void OnGameCrowdPopulationManagerToggle(SeqAct_GameCrowdPopulationManagerToggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_GameCrowdPopulationManagerToggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameCrowdPopulationManagerToggle, params.ptr, cast(void*)0);
	}
	void FlushAgents()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlushAgents, cast(void*)0, cast(void*)0);
	}
	void AgentDestroyed(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AgentDestroyed, params.ptr, cast(void*)0);
	}
	bool AddToAgentPool(GameCrowdAgent Agent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToAgentPool, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	bool IsSpawningActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSpawningActive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Tick(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	GameCrowdDestination PickSpawnPoint()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickSpawnPoint, params.ptr, cast(void*)0);
		return *cast(GameCrowdDestination*)params.ptr;
	}
	void PrioritizeSpawnPoints(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrioritizeSpawnPoints, params.ptr, cast(void*)0);
	}
	void AnalyzeSpawnPoints(int StartIndex, int StopIndex, Vector ViewLocation, Vector PredictionLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = StartIndex;
		*cast(int*)&params[4] = StopIndex;
		*cast(Vector*)&params[8] = ViewLocation;
		*cast(Vector*)&params[20] = PredictionLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnalyzeSpawnPoints, params.ptr, cast(void*)0);
	}
	void AddPrioritizedSpawnPoint(GameCrowdDestination GCD, Vector ViewLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = GCD;
		*cast(Vector*)&params[4] = ViewLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPrioritizedSpawnPoint, params.ptr, cast(void*)0);
	}
	bool ValidateSpawnAt(GameCrowdDestination Candidate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Candidate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidateSpawnAt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GameCrowdAgent SpawnAgent(GameCrowdDestination SpawnLoc)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = SpawnLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnAgent, params.ptr, cast(void*)0);
		return *cast(GameCrowdAgent*)&params[4];
	}
	GameCrowdAgent CreateNewAgent(GameCrowdDestination SpawnLoc, GameCrowdAgent AgentTemplate, GameCrowdGroup NewGroup)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = SpawnLoc;
		*cast(GameCrowdAgent*)&params[4] = AgentTemplate;
		*cast(GameCrowdGroup*)&params[8] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateNewAgent, params.ptr, cast(void*)0);
		return *cast(GameCrowdAgent*)&params[12];
	}
}
