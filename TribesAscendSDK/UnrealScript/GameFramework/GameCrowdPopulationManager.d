module UnrealScript.GameFramework.GameCrowdPopulationManager;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowdPopulationManager")()); }
	private static __gshared GameCrowdPopulationManager mDefaultProperties;
	@property final static GameCrowdPopulationManager DefaultProperties() { mixin(MGDPC!(GameCrowdPopulationManager, "GameCrowdPopulationManager GameFramework.Default__GameCrowdPopulationManager")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function GameFramework.GameCrowdPopulationManager.PostBeginPlay")()); }
			ScriptFunction NotifyPathChanged() { mixin(MGF!("mNotifyPathChanged", "Function GameFramework.GameCrowdPopulationManager.NotifyPathChanged")()); }
			ScriptFunction GetMaxSpawnDist() { mixin(MGF!("mGetMaxSpawnDist", "Function GameFramework.GameCrowdPopulationManager.GetMaxSpawnDist")()); }
			ScriptFunction AddSpawnPoint() { mixin(MGF!("mAddSpawnPoint", "Function GameFramework.GameCrowdPopulationManager.AddSpawnPoint")()); }
			ScriptFunction RemoveSpawnPoint() { mixin(MGF!("mRemoveSpawnPoint", "Function GameFramework.GameCrowdPopulationManager.RemoveSpawnPoint")()); }
			ScriptFunction OnGameCrowdPopulationManagerToggle() { mixin(MGF!("mOnGameCrowdPopulationManagerToggle", "Function GameFramework.GameCrowdPopulationManager.OnGameCrowdPopulationManagerToggle")()); }
			ScriptFunction FlushAgents() { mixin(MGF!("mFlushAgents", "Function GameFramework.GameCrowdPopulationManager.FlushAgents")()); }
			ScriptFunction AgentDestroyed() { mixin(MGF!("mAgentDestroyed", "Function GameFramework.GameCrowdPopulationManager.AgentDestroyed")()); }
			ScriptFunction AddToAgentPool() { mixin(MGF!("mAddToAgentPool", "Function GameFramework.GameCrowdPopulationManager.AddToAgentPool")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function GameFramework.GameCrowdPopulationManager.DisplayDebug")()); }
			ScriptFunction IsSpawningActive() { mixin(MGF!("mIsSpawningActive", "Function GameFramework.GameCrowdPopulationManager.IsSpawningActive")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function GameFramework.GameCrowdPopulationManager.Tick")()); }
			ScriptFunction PickSpawnPoint() { mixin(MGF!("mPickSpawnPoint", "Function GameFramework.GameCrowdPopulationManager.PickSpawnPoint")()); }
			ScriptFunction PrioritizeSpawnPoints() { mixin(MGF!("mPrioritizeSpawnPoints", "Function GameFramework.GameCrowdPopulationManager.PrioritizeSpawnPoints")()); }
			ScriptFunction AnalyzeSpawnPoints() { mixin(MGF!("mAnalyzeSpawnPoints", "Function GameFramework.GameCrowdPopulationManager.AnalyzeSpawnPoints")()); }
			ScriptFunction AddPrioritizedSpawnPoint() { mixin(MGF!("mAddPrioritizedSpawnPoint", "Function GameFramework.GameCrowdPopulationManager.AddPrioritizedSpawnPoint")()); }
			ScriptFunction ValidateSpawnAt() { mixin(MGF!("mValidateSpawnAt", "Function GameFramework.GameCrowdPopulationManager.ValidateSpawnAt")()); }
			ScriptFunction SpawnAgent() { mixin(MGF!("mSpawnAgent", "Function GameFramework.GameCrowdPopulationManager.SpawnAgent")()); }
			ScriptFunction CreateNewAgent() { mixin(MGF!("mCreateNewAgent", "Function GameFramework.GameCrowdPopulationManager.CreateNewAgent")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo) AgentArchetypes() { mixin(MGPC!("ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo)", 504)()); }
			ScriptArray!(GameCrowdAgent) AgentPool() { mixin(MGPC!("ScriptArray!(GameCrowdAgent)", 516)()); }
			ScriptArray!(GameCrowdDestination) PrioritizedSpawnPoints() { mixin(MGPC!("ScriptArray!(GameCrowdDestination)", 556)()); }
			ScriptArray!(GameCrowdDestination) PotentialSpawnPoints() { mixin(MGPC!("ScriptArray!(GameCrowdDestination)", 572)()); }
			GameCrowdAgent QueryingAgent() { mixin(MGPC!("GameCrowdAgent", 624)()); }
			// WARNING: Property 'NavigationHandle' has the same name as a defined type!
			ScriptClass NavigationHandleClass() { mixin(MGPC!("ScriptClass", 616)()); }
			float InitialPopulationPct() { mixin(MGPC!("float", 612)()); }
			float HeadVisibilityOffset() { mixin(MGPC!("float", 608)()); }
			int KilledCount() { mixin(MGPC!("int", 604)()); }
			int PoolCount() { mixin(MGPC!("int", 600)()); }
			int SpawnedCount() { mixin(MGPC!("int", 596)()); }
			float MinBehindSpawnDistSq() { mixin(MGPC!("float", 592)()); }
			float MaxSpawnDistSq() { mixin(MGPC!("float", 588)()); }
			float MaxSpawnDist() { mixin(MGPC!("float", 584)()); }
			float PlayerPositionPredictionTime() { mixin(MGPC!("float", 568)()); }
			int PrioritizationUpdateIndex() { mixin(MGPC!("int", 552)()); }
			int PrioritizationIndex() { mixin(MGPC!("int", 548)()); }
			float SpawnPrioritizationInterval() { mixin(MGPC!("float", 544)()); }
			float AgentWarmupTime() { mixin(MGPC!("float", 540)()); }
			LightComponent.LightingChannelContainer AgentLightingChannel() { mixin(MGPC!("LightComponent.LightingChannelContainer", 536)()); }
			int AgentCount() { mixin(MGPC!("int", 532)()); }
			int MaxAgentPoolSize() { mixin(MGPC!("int", 528)()); }
			float AgentFrequencySum() { mixin(MGPC!("float", 500)()); }
			float Remainder() { mixin(MGPC!("float", 496)()); }
			float SplitScreenNumReduction() { mixin(MGPC!("float", 492)()); }
			int SpawnNum() { mixin(MGPC!("int", 488)()); }
			float SpawnRate() { mixin(MGPC!("float", 484)()); }
			UObject.Pointer VfTable_IInterface_NavigationHandle() { mixin(MGPC!("UObject.Pointer", 476)()); }
		}
		bool bWarmupPosition() { mixin(MGBPC!(480, 0x40)()); }
		bool bWarmupPosition(bool val) { mixin(MSBPC!(480, 0x40)()); }
		bool bHaveInitialPopulation() { mixin(MGBPC!(480, 0x20)()); }
		bool bHaveInitialPopulation(bool val) { mixin(MSBPC!(480, 0x20)()); }
		bool bForceNavMeshPathing() { mixin(MGBPC!(480, 0x10)()); }
		bool bForceNavMeshPathing(bool val) { mixin(MSBPC!(480, 0x10)()); }
		bool bForceObstacleChecking() { mixin(MGBPC!(480, 0x8)()); }
		bool bForceObstacleChecking(bool val) { mixin(MSBPC!(480, 0x8)()); }
		bool bCastShadows() { mixin(MGBPC!(480, 0x4)()); }
		bool bCastShadows(bool val) { mixin(MSBPC!(480, 0x4)()); }
		bool bEnableCrowdLightEnvironment() { mixin(MGBPC!(480, 0x2)()); }
		bool bEnableCrowdLightEnvironment(bool val) { mixin(MSBPC!(480, 0x2)()); }
		bool bSpawningActive() { mixin(MGBPC!(480, 0x1)()); }
		bool bSpawningActive(bool val) { mixin(MSBPC!(480, 0x1)()); }
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
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
