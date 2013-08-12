module UnrealScript.GameFramework.GameCrowdDestinationQueuePoint;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.GameFramework.GameCrowdInteractionPoint;

extern(C++) interface GameCrowdDestinationQueuePoint : GameCrowdInteractionPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdDestinationQueuePoint")); }
	private static __gshared GameCrowdDestinationQueuePoint mDefaultProperties;
	@property final static GameCrowdDestinationQueuePoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameCrowdDestinationQueuePoint)("GameCrowdDestinationQueuePoint GameFramework.Default__GameCrowdDestinationQueuePoint")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHasCustomer;
			ScriptFunction mHasSpace;
			ScriptFunction mQueueReachedBy;
			ScriptFunction mReachedDestination;
			ScriptFunction mAdvanceCustomerTo;
			ScriptFunction mActuallyAdvance;
			ScriptFunction mAddCustomer;
			ScriptFunction mClearQueue;
		}
		public @property static final
		{
			ScriptFunction HasCustomer() { return mHasCustomer ? mHasCustomer : (mHasCustomer = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestinationQueuePoint.HasCustomer")); }
			ScriptFunction HasSpace() { return mHasSpace ? mHasSpace : (mHasSpace = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestinationQueuePoint.HasSpace")); }
			ScriptFunction QueueReachedBy() { return mQueueReachedBy ? mQueueReachedBy : (mQueueReachedBy = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestinationQueuePoint.QueueReachedBy")); }
			ScriptFunction ReachedDestination() { return mReachedDestination ? mReachedDestination : (mReachedDestination = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestinationQueuePoint.ReachedDestination")); }
			ScriptFunction AdvanceCustomerTo() { return mAdvanceCustomerTo ? mAdvanceCustomerTo : (mAdvanceCustomerTo = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestinationQueuePoint.AdvanceCustomerTo")); }
			ScriptFunction ActuallyAdvance() { return mActuallyAdvance ? mActuallyAdvance : (mActuallyAdvance = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestinationQueuePoint.ActuallyAdvance")); }
			ScriptFunction AddCustomer() { return mAddCustomer ? mAddCustomer : (mAddCustomer = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestinationQueuePoint.AddCustomer")); }
			ScriptFunction ClearQueue() { return mClearQueue ? mClearQueue : (mClearQueue = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdDestinationQueuePoint.ClearQueue")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.HasCustomer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool HasSpace()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasSpace, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool QueueReachedBy(GameCrowdAgent Agent, Vector TestPosition)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		*cast(Vector*)&params[4] = TestPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueueReachedBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void ReachedDestination(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedDestination, params.ptr, cast(void*)0);
	}
	void AdvanceCustomerTo(GameCrowdInteractionPoint FrontPosition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdInteractionPoint*)params.ptr = FrontPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdvanceCustomerTo, params.ptr, cast(void*)0);
	}
	void ActuallyAdvance()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActuallyAdvance, cast(void*)0, cast(void*)0);
	}
	void AddCustomer(GameCrowdAgent NewCustomer, GameCrowdInteractionPoint PreviousPosition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = NewCustomer;
		*cast(GameCrowdInteractionPoint*)&params[4] = PreviousPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCustomer, params.ptr, cast(void*)0);
	}
	void ClearQueue(GameCrowdAgent OldCustomer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = OldCustomer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearQueue, params.ptr, cast(void*)0);
	}
}
