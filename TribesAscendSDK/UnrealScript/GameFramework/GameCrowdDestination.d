module UnrealScript.GameFramework.GameCrowdDestination;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdDestinationQueuePoint;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.GameCrowdInteractionPoint;
import UnrealScript.GameFramework.GameCrowdPopulationManager;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface GameCrowdDestination : GameCrowdInteractionPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowdDestination")()); }
	private static __gshared GameCrowdDestination mDefaultProperties;
	@property final static GameCrowdDestination DefaultProperties() { mixin(MGDPC!(GameCrowdDestination, "GameCrowdDestination GameFramework.Default__GameCrowdDestination")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReachedByAgent;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mReachedDestination;
			ScriptFunction mPickNewDestinationFor;
			ScriptFunction mAllowableDestinationFor;
			ScriptFunction mDecrementCustomerCount;
			ScriptFunction mIncrementCustomerCount;
			ScriptFunction mAtCapacity;
			ScriptFunction mGetSpawnPosition;
		}
		public @property static final
		{
			ScriptFunction ReachedByAgent() { mixin(MGF!("mReachedByAgent", "Function GameFramework.GameCrowdDestination.ReachedByAgent")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function GameFramework.GameCrowdDestination.PostBeginPlay")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function GameFramework.GameCrowdDestination.Destroyed")()); }
			ScriptFunction ReachedDestination() { mixin(MGF!("mReachedDestination", "Function GameFramework.GameCrowdDestination.ReachedDestination")()); }
			ScriptFunction PickNewDestinationFor() { mixin(MGF!("mPickNewDestinationFor", "Function GameFramework.GameCrowdDestination.PickNewDestinationFor")()); }
			ScriptFunction AllowableDestinationFor() { mixin(MGF!("mAllowableDestinationFor", "Function GameFramework.GameCrowdDestination.AllowableDestinationFor")()); }
			ScriptFunction DecrementCustomerCount() { mixin(MGF!("mDecrementCustomerCount", "Function GameFramework.GameCrowdDestination.DecrementCustomerCount")()); }
			ScriptFunction IncrementCustomerCount() { mixin(MGF!("mIncrementCustomerCount", "Function GameFramework.GameCrowdDestination.IncrementCustomerCount")()); }
			ScriptFunction AtCapacity() { mixin(MGF!("mAtCapacity", "Function GameFramework.GameCrowdDestination.AtCapacity")()); }
			ScriptFunction GetSpawnPosition() { mixin(MGF!("mGetSpawnPosition", "Function GameFramework.GameCrowdDestination.GetSpawnPosition")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GameCrowdDestination) NextDestinations() { mixin(MGPC!(ScriptArray!(GameCrowdDestination), 492)()); }
			ScriptArray!(ScriptClass) SupportedAgentClasses() { mixin(MGPC!(ScriptArray!(ScriptClass), 520)()); }
			ScriptArray!(UObject) SupportedArchetypes() { mixin(MGPC!(ScriptArray!(UObject), 532)()); }
			ScriptArray!(ScriptClass) RestrictedAgentClasses() { mixin(MGPC!(ScriptArray!(ScriptClass), 544)()); }
			ScriptArray!(UObject) RestrictedArchetypes() { mixin(MGPC!(ScriptArray!(UObject), 556)()); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) ReachedBehaviors() { mixin(MGPC!(ScriptArray!(GameCrowdAgent.BehaviorEntry), 588)()); }
			GameCrowdPopulationManager MyPopMgr() { mixin(MGPC!(GameCrowdPopulationManager, 612)()); }
			float LastSpawnTime() { mixin(MGPC!(float, 608)()); }
			float Priority() { mixin(MGPC!(float, 604)()); }
			GameCrowdAgent AgentEnRoute() { mixin(MGPC!(GameCrowdAgent, 600)()); }
			float SpawnRadius() { mixin(MGPC!(float, 584)()); }
			float InteractionDelay() { mixin(MGPC!(float, 580)()); }
			ScriptName InteractionTag() { mixin(MGPC!(ScriptName, 572)()); }
			float ExactReachTolerance() { mixin(MGPC!(float, 568)()); }
			int CustomerCount() { mixin(MGPC!(int, 516)()); }
			float Frequency() { mixin(MGPC!(float, 512)()); }
			int Capacity() { mixin(MGPC!(int, 508)()); }
			GameCrowdDestinationQueuePoint QueueHead() { mixin(MGPC!(GameCrowdDestinationQueuePoint, 504)()); }
			UObject.Pointer VfTable_IEditorLinkSelectionInterface() { mixin(MGPC!(UObject.Pointer, 484)()); }
		}
		bool bHasNavigationMesh() { mixin(MGBPC!(488, 0x20000)()); }
		bool bHasNavigationMesh(bool val) { mixin(MSBPC!(488, 0x20000)()); }
		bool bAdjacentToVisibleNode() { mixin(MGBPC!(488, 0x10000)()); }
		bool bAdjacentToVisibleNode(bool val) { mixin(MSBPC!(488, 0x10000)()); }
		bool bIsBeyondSpawnDistance() { mixin(MGBPC!(488, 0x8000)()); }
		bool bIsBeyondSpawnDistance(bool val) { mixin(MSBPC!(488, 0x8000)()); }
		bool bCanSpawnHereNow() { mixin(MGBPC!(488, 0x4000)()); }
		bool bCanSpawnHereNow(bool val) { mixin(MSBPC!(488, 0x4000)()); }
		bool bWillBeVisible() { mixin(MGBPC!(488, 0x2000)()); }
		bool bWillBeVisible(bool val) { mixin(MSBPC!(488, 0x2000)()); }
		bool bIsVisible() { mixin(MGBPC!(488, 0x1000)()); }
		bool bIsVisible(bool val) { mixin(MSBPC!(488, 0x1000)()); }
		bool bSoftPerimeter() { mixin(MGBPC!(488, 0x800)()); }
		bool bSoftPerimeter(bool val) { mixin(MSBPC!(488, 0x800)()); }
		bool bSpawnAtEdge() { mixin(MGBPC!(488, 0x400)()); }
		bool bSpawnAtEdge(bool val) { mixin(MSBPC!(488, 0x400)()); }
		bool bLineSpawner() { mixin(MGBPC!(488, 0x200)()); }
		bool bLineSpawner(bool val) { mixin(MSBPC!(488, 0x200)()); }
		bool bAllowsSpawning() { mixin(MGBPC!(488, 0x100)()); }
		bool bAllowsSpawning(bool val) { mixin(MSBPC!(488, 0x100)()); }
		bool bHasRestrictions() { mixin(MGBPC!(488, 0x80)()); }
		bool bHasRestrictions(bool val) { mixin(MSBPC!(488, 0x80)()); }
		bool bMustReachExactly() { mixin(MGBPC!(488, 0x40)()); }
		bool bMustReachExactly(bool val) { mixin(MSBPC!(488, 0x40)()); }
		bool bFleeDestination() { mixin(MGBPC!(488, 0x20)()); }
		bool bFleeDestination(bool val) { mixin(MSBPC!(488, 0x20)()); }
		bool bSkipBehaviorIfPanicked() { mixin(MGBPC!(488, 0x10)()); }
		bool bSkipBehaviorIfPanicked(bool val) { mixin(MSBPC!(488, 0x10)()); }
		bool bAvoidWhenPanicked() { mixin(MGBPC!(488, 0x8)()); }
		bool bAvoidWhenPanicked(bool val) { mixin(MSBPC!(488, 0x8)()); }
		bool bLastAllowableResult() { mixin(MGBPC!(488, 0x4)()); }
		bool bLastAllowableResult(bool val) { mixin(MSBPC!(488, 0x4)()); }
		bool bAllowAsPreviousDestination() { mixin(MGBPC!(488, 0x2)()); }
		bool bAllowAsPreviousDestination(bool val) { mixin(MSBPC!(488, 0x2)()); }
		bool bKillWhenReached() { mixin(MGBPC!(488, 0x1)()); }
		bool bKillWhenReached(bool val) { mixin(MSBPC!(488, 0x1)()); }
	}
final:
	bool ReachedByAgent(GameCrowdAgent Agent, Vector TestPosition, bool bTestExactly)
	{
		ubyte params[24];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		*cast(Vector*)&params[4] = TestPosition;
		*cast(bool*)&params[16] = bTestExactly;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedByAgent, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void ReachedDestination(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedDestination, params.ptr, cast(void*)0);
	}
	void PickNewDestinationFor(GameCrowdAgent Agent, bool bIgnoreRestrictions)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		*cast(bool*)&params[4] = bIgnoreRestrictions;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickNewDestinationFor, params.ptr, cast(void*)0);
	}
	bool AllowableDestinationFor(GameCrowdAgent Agent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowableDestinationFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DecrementCustomerCount(GameCrowdAgent DepartingAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = DepartingAgent;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecrementCustomerCount, params.ptr, cast(void*)0);
	}
	void IncrementCustomerCount(GameCrowdAgent ArrivingAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = ArrivingAgent;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementCustomerCount, params.ptr, cast(void*)0);
	}
	bool AtCapacity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AtCapacity, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void GetSpawnPosition(SeqAct_GameCrowdSpawner Spawner, ref Vector SpawnPos, ref Rotator SpawnRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SeqAct_GameCrowdSpawner*)params.ptr = Spawner;
		*cast(Vector*)&params[4] = SpawnPos;
		*cast(Rotator*)&params[16] = SpawnRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpawnPosition, params.ptr, cast(void*)0);
		*SpawnPos = *cast(Vector*)&params[4];
		*SpawnRot = *cast(Rotator*)&params[16];
	}
}
