module UnrealScript.GameFramework.GameCrowdDestinationQueuePoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.GameFramework.GameCrowdInteractionPoint;

extern(C++) interface GameCrowdDestinationQueuePoint : GameCrowdInteractionPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCrowdDestinationQueuePoint")); }
	private static __gshared GameCrowdDestinationQueuePoint mDefaultProperties;
	@property final static GameCrowdDestinationQueuePoint DefaultProperties() { mixin(MGDPC("GameCrowdDestinationQueuePoint", "GameCrowdDestinationQueuePoint GameFramework.Default__GameCrowdDestinationQueuePoint")); }
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
			ScriptFunction HasCustomer() { mixin(MGF("mHasCustomer", "Function GameFramework.GameCrowdDestinationQueuePoint.HasCustomer")); }
			ScriptFunction HasSpace() { mixin(MGF("mHasSpace", "Function GameFramework.GameCrowdDestinationQueuePoint.HasSpace")); }
			ScriptFunction QueueReachedBy() { mixin(MGF("mQueueReachedBy", "Function GameFramework.GameCrowdDestinationQueuePoint.QueueReachedBy")); }
			ScriptFunction ReachedDestination() { mixin(MGF("mReachedDestination", "Function GameFramework.GameCrowdDestinationQueuePoint.ReachedDestination")); }
			ScriptFunction AdvanceCustomerTo() { mixin(MGF("mAdvanceCustomerTo", "Function GameFramework.GameCrowdDestinationQueuePoint.AdvanceCustomerTo")); }
			ScriptFunction ActuallyAdvance() { mixin(MGF("mActuallyAdvance", "Function GameFramework.GameCrowdDestinationQueuePoint.ActuallyAdvance")); }
			ScriptFunction AddCustomer() { mixin(MGF("mAddCustomer", "Function GameFramework.GameCrowdDestinationQueuePoint.AddCustomer")); }
			ScriptFunction ClearQueue() { mixin(MGF("mClearQueue", "Function GameFramework.GameCrowdDestinationQueuePoint.ClearQueue")); }
		}
	}
	@property final
	{
		auto ref
		{
			GameCrowdAgent QueuedAgent() { mixin(MGPC("GameCrowdAgent", 492)); }
			GameCrowdDestinationQueuePoint NextQueuePosition() { mixin(MGPC("GameCrowdDestinationQueuePoint", 484)); }
			ScriptClass QueueBehaviorClass() { mixin(MGPC("ScriptClass", 508)); }
			float AverageReactionTime() { mixin(MGPC("float", 504)); }
			GameCrowdDestination QueueDestination() { mixin(MGPC("GameCrowdDestination", 496)); }
			GameCrowdInteractionPoint PreviousQueuePosition() { mixin(MGPC("GameCrowdInteractionPoint", 488)); }
		}
		bool bPendingAdvance() { mixin(MGBPC(500, 0x2)); }
		bool bPendingAdvance(bool val) { mixin(MSBPC(500, 0x2)); }
		bool bClearingQueue() { mixin(MGBPC(500, 0x1)); }
		bool bClearingQueue(bool val) { mixin(MSBPC(500, 0x1)); }
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
