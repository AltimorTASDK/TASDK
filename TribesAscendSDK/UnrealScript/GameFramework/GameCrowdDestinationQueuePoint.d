module UnrealScript.GameFramework.GameCrowdDestinationQueuePoint;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.GameFramework.GameCrowdInteractionPoint;

extern(C++) interface GameCrowdDestinationQueuePoint : GameCrowdInteractionPoint
{
public extern(D):
	@property final
	{
		auto ref
		{
			GameCrowdAgent QueuedAgent() { return *cast(GameCrowdAgent*)(cast(size_t)cast(void*)this + 492); }
			GameCrowdDestinationQueuePoint NextQueuePosition() { return *cast(GameCrowdDestinationQueuePoint*)(cast(size_t)cast(void*)this + 484); }
			ScriptClass QueueBehaviorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 508); }
			float AverageReactionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			GameCrowdDestination QueueDestination() { return *cast(GameCrowdDestination*)(cast(size_t)cast(void*)this + 496); }
			GameCrowdInteractionPoint PreviousQueuePosition() { return *cast(GameCrowdInteractionPoint*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bPendingAdvance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
		bool bPendingAdvance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
		bool bClearingQueue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bClearingQueue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	}
final:
	bool HasCustomer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30511], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasSpace()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30516], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool QueueReachedBy(GameCrowdAgent Agent, Vector TestPosition)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		*cast(Vector*)&params[4] = TestPosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31302], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ReachedDestination(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31306], params.ptr, cast(void*)0);
	}
	void AdvanceCustomerTo(GameCrowdInteractionPoint FrontPosition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdInteractionPoint*)params.ptr = FrontPosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31309], params.ptr, cast(void*)0);
	}
	void ActuallyAdvance()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31311], cast(void*)0, cast(void*)0);
	}
	void AddCustomer(GameCrowdAgent NewCustomer, GameCrowdInteractionPoint PreviousPosition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = NewCustomer;
		*cast(GameCrowdInteractionPoint*)&params[4] = PreviousPosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31315], params.ptr, cast(void*)0);
	}
	void ClearQueue(GameCrowdAgent OldCustomer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = OldCustomer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31318], params.ptr, cast(void*)0);
	}
}
