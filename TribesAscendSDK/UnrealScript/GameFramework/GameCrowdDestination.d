module UnrealScript.GameFramework.GameCrowdDestination;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdDestination")); }
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
			ScriptFunction ReachedByAgent() { return mReachedByAgent ? mReachedByAgent : (mReachedByAgent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.ReachedByAgent")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.PostBeginPlay")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.Destroyed")); }
			ScriptFunction ReachedDestination() { return mReachedDestination ? mReachedDestination : (mReachedDestination = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.ReachedDestination")); }
			ScriptFunction PickNewDestinationFor() { return mPickNewDestinationFor ? mPickNewDestinationFor : (mPickNewDestinationFor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.PickNewDestinationFor")); }
			ScriptFunction AllowableDestinationFor() { return mAllowableDestinationFor ? mAllowableDestinationFor : (mAllowableDestinationFor = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.AllowableDestinationFor")); }
			ScriptFunction DecrementCustomerCount() { return mDecrementCustomerCount ? mDecrementCustomerCount : (mDecrementCustomerCount = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.DecrementCustomerCount")); }
			ScriptFunction IncrementCustomerCount() { return mIncrementCustomerCount ? mIncrementCustomerCount : (mIncrementCustomerCount = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.IncrementCustomerCount")); }
			ScriptFunction AtCapacity() { return mAtCapacity ? mAtCapacity : (mAtCapacity = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.AtCapacity")); }
			ScriptFunction GetSpawnPosition() { return mGetSpawnPosition ? mGetSpawnPosition : (mGetSpawnPosition = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestination.GetSpawnPosition")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GameCrowdDestination) NextDestinations() { return *cast(ScriptArray!(GameCrowdDestination)*)(cast(size_t)cast(void*)this + 492); }
			ScriptArray!(ScriptClass) SupportedAgentClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 520); }
			ScriptArray!(UObject) SupportedArchetypes() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 532); }
			ScriptArray!(ScriptClass) RestrictedAgentClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 544); }
			ScriptArray!(UObject) RestrictedArchetypes() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 556); }
			ScriptArray!(GameCrowdAgent.BehaviorEntry) ReachedBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 588); }
			GameCrowdPopulationManager MyPopMgr() { return *cast(GameCrowdPopulationManager*)(cast(size_t)cast(void*)this + 612); }
			float LastSpawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
			float Priority() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
			GameCrowdAgent AgentEnRoute() { return *cast(GameCrowdAgent*)(cast(size_t)cast(void*)this + 600); }
			float SpawnRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
			float InteractionDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			ScriptName InteractionTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 572); }
			float ExactReachTolerance() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			int CustomerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
			float Frequency() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			int Capacity() { return *cast(int*)(cast(size_t)cast(void*)this + 508); }
			GameCrowdDestinationQueuePoint QueueHead() { return *cast(GameCrowdDestinationQueuePoint*)(cast(size_t)cast(void*)this + 504); }
			UObject.Pointer VfTable_IEditorLinkSelectionInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bHasNavigationMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x20000) != 0; }
		bool bHasNavigationMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x20000; } return val; }
		bool bAdjacentToVisibleNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x10000) != 0; }
		bool bAdjacentToVisibleNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x10000; } return val; }
		bool bIsBeyondSpawnDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x8000) != 0; }
		bool bIsBeyondSpawnDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x8000; } return val; }
		bool bCanSpawnHereNow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4000) != 0; }
		bool bCanSpawnHereNow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4000; } return val; }
		bool bWillBeVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2000) != 0; }
		bool bWillBeVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2000; } return val; }
		bool bIsVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1000) != 0; }
		bool bIsVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1000; } return val; }
		bool bSoftPerimeter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x800) != 0; }
		bool bSoftPerimeter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x800; } return val; }
		bool bSpawnAtEdge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x400) != 0; }
		bool bSpawnAtEdge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x400; } return val; }
		bool bLineSpawner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x200) != 0; }
		bool bLineSpawner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x200; } return val; }
		bool bAllowsSpawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x100) != 0; }
		bool bAllowsSpawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x100; } return val; }
		bool bHasRestrictions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x80) != 0; }
		bool bHasRestrictions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x80; } return val; }
		bool bMustReachExactly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x40) != 0; }
		bool bMustReachExactly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x40; } return val; }
		bool bFleeDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x20) != 0; }
		bool bFleeDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x20; } return val; }
		bool bSkipBehaviorIfPanicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x10) != 0; }
		bool bSkipBehaviorIfPanicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x10; } return val; }
		bool bAvoidWhenPanicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x8) != 0; }
		bool bAvoidWhenPanicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x8; } return val; }
		bool bLastAllowableResult() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4) != 0; }
		bool bLastAllowableResult(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4; } return val; }
		bool bAllowAsPreviousDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2) != 0; }
		bool bAllowAsPreviousDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2; } return val; }
		bool bKillWhenReached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bKillWhenReached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
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
	void GetSpawnPosition(SeqAct_GameCrowdSpawner Spawner, Vector* SpawnPos, Rotator* SpawnRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SeqAct_GameCrowdSpawner*)params.ptr = Spawner;
		*cast(Vector*)&params[4] = *SpawnPos;
		*cast(Rotator*)&params[16] = *SpawnRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpawnPosition, params.ptr, cast(void*)0);
		*SpawnPos = *cast(Vector*)&params[4];
		*SpawnRot = *cast(Rotator*)&params[16];
	}
}
