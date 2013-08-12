module UnrealScript.Engine.NavMeshGoal_ClosestActorInList;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_ClosestActorInList : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoal_ClosestActorInList")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClosestActorInList;
			ScriptFunction mRecycle;
			ScriptFunction mRecycleInternal;
		}
		public @property static final
		{
			ScriptFunction ClosestActorInList() { return mClosestActorInList ? mClosestActorInList : (mClosestActorInList = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_ClosestActorInList.ClosestActorInList")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_ClosestActorInList.Recycle")); }
			ScriptFunction RecycleInternal() { return mRecycleInternal ? mRecycleInternal : (mRecycleInternal = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_ClosestActorInList.RecycleInternal")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor) GoalList() { return *cast(ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)*)(cast(size_t)cast(void*)this + 80); }
		UObject.Pointer CachedAnchorPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 152); }
		UObject.MultiMap_Mirror PolyToGoalActorMap() { return *cast(UObject.MultiMap_Mirror*)(cast(size_t)cast(void*)this + 92); }
	}
final:
	static NavMeshGoal_ClosestActorInList ClosestActorInList(NavigationHandle NavHandle, ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)* InGoalList)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)*)&params[4] = *InGoalList;
		StaticClass.ProcessEvent(Functions.ClosestActorInList, params.ptr, cast(void*)0);
		*InGoalList = *cast(ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)*)&params[4];
		return *cast(NavMeshGoal_ClosestActorInList*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
	void RecycleInternal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecycleInternal, cast(void*)0, cast(void*)0);
	}
}
