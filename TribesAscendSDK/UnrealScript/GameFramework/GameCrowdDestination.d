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
	public @property final auto ref ScriptArray!(GameCrowdDestination) NextDestinations() { return *cast(ScriptArray!(GameCrowdDestination)*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref ScriptArray!(ScriptClass) SupportedAgentClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref ScriptArray!(UObject) SupportedArchetypes() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref ScriptArray!(ScriptClass) RestrictedAgentClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref ScriptArray!(UObject) RestrictedArchetypes() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref ScriptArray!(GameCrowdAgent.BehaviorEntry) ReachedBehaviors() { return *cast(ScriptArray!(GameCrowdAgent.BehaviorEntry)*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref GameCrowdPopulationManager MyPopMgr() { return *cast(GameCrowdPopulationManager*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref float LastSpawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref float Priority() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref GameCrowdAgent AgentEnRoute() { return *cast(GameCrowdAgent*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref float SpawnRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float InteractionDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref ScriptName InteractionTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float ExactReachTolerance() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref int CustomerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float Frequency() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref int Capacity() { return *cast(int*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref GameCrowdDestinationQueuePoint QueueHead() { return *cast(GameCrowdDestinationQueuePoint*)(cast(size_t)cast(void*)this + 504); }
	public @property final bool bHasNavigationMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x20000) != 0; }
	public @property final bool bHasNavigationMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x20000; } return val; }
	public @property final bool bAdjacentToVisibleNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x10000) != 0; }
	public @property final bool bAdjacentToVisibleNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x10000; } return val; }
	public @property final bool bIsBeyondSpawnDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x8000) != 0; }
	public @property final bool bIsBeyondSpawnDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x8000; } return val; }
	public @property final bool bCanSpawnHereNow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4000) != 0; }
	public @property final bool bCanSpawnHereNow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4000; } return val; }
	public @property final bool bWillBeVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2000) != 0; }
	public @property final bool bWillBeVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2000; } return val; }
	public @property final bool bIsVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1000) != 0; }
	public @property final bool bIsVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1000; } return val; }
	public @property final bool bSoftPerimeter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x800) != 0; }
	public @property final bool bSoftPerimeter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x800; } return val; }
	public @property final bool bSpawnAtEdge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x400) != 0; }
	public @property final bool bSpawnAtEdge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x400; } return val; }
	public @property final bool bLineSpawner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x200) != 0; }
	public @property final bool bLineSpawner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x200; } return val; }
	public @property final bool bAllowsSpawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x100) != 0; }
	public @property final bool bAllowsSpawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x100; } return val; }
	public @property final bool bHasRestrictions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x80) != 0; }
	public @property final bool bHasRestrictions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x80; } return val; }
	public @property final bool bMustReachExactly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x40) != 0; }
	public @property final bool bMustReachExactly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x40; } return val; }
	public @property final bool bFleeDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x20) != 0; }
	public @property final bool bFleeDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x20; } return val; }
	public @property final bool bSkipBehaviorIfPanicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x10) != 0; }
	public @property final bool bSkipBehaviorIfPanicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x10; } return val; }
	public @property final bool bAvoidWhenPanicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x8) != 0; }
	public @property final bool bAvoidWhenPanicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x8; } return val; }
	public @property final bool bLastAllowableResult() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4) != 0; }
	public @property final bool bLastAllowableResult(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4; } return val; }
	public @property final bool bAllowAsPreviousDestination() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2) != 0; }
	public @property final bool bAllowAsPreviousDestination(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2; } return val; }
	public @property final bool bKillWhenReached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
	public @property final bool bKillWhenReached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer VfTable_IEditorLinkSelectionInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 484); }
	final bool ReachedByAgent(GameCrowdAgent Agent, Vector TestPosition, bool bTestExactly)
	{
		ubyte params[24];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		*cast(Vector*)&params[4] = TestPosition;
		*cast(bool*)&params[16] = bTestExactly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30478], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30483], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30486], cast(void*)0, cast(void*)0);
	}
	final void ReachedDestination(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30487], params.ptr, cast(void*)0);
	}
	final void PickNewDestinationFor(GameCrowdAgent Agent, bool bIgnoreRestrictions)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		*cast(bool*)&params[4] = bIgnoreRestrictions;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30497], params.ptr, cast(void*)0);
	}
	final bool AllowableDestinationFor(GameCrowdAgent Agent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30503], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DecrementCustomerCount(GameCrowdAgent DepartingAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = DepartingAgent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30505], params.ptr, cast(void*)0);
	}
	final void IncrementCustomerCount(GameCrowdAgent ArrivingAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = ArrivingAgent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30513], params.ptr, cast(void*)0);
	}
	final bool AtCapacity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30518], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void GetSpawnPosition(SeqAct_GameCrowdSpawner Spawner, Vector* SpawnPos, Rotator* SpawnRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SeqAct_GameCrowdSpawner*)params.ptr = Spawner;
		*cast(Vector*)&params[4] = *SpawnPos;
		*cast(Rotator*)&params[16] = *SpawnRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30526], params.ptr, cast(void*)0);
		*SpawnPos = *cast(Vector*)&params[4];
		*SpawnRot = *cast(Rotator*)&params[16];
	}
}
