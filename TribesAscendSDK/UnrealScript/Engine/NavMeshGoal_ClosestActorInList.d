module UnrealScript.Engine.NavMeshGoal_ClosestActorInList;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_ClosestActorInList : NavMeshPathGoalEvaluator
{
	public @property final auto ref ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor) GoalList() { return *cast(ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref UObject.Pointer CachedAnchorPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref UObject.MultiMap_Mirror PolyToGoalActorMap() { return *cast(UObject.MultiMap_Mirror*)(cast(size_t)cast(void*)this + 92); }
	final NavMeshGoal_ClosestActorInList ClosestActorInList(NavigationHandle NavHandle, ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)* InGoalList)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)*)&params[4] = *InGoalList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20946], params.ptr, cast(void*)0);
		*InGoalList = *cast(ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)*)&params[4];
		return *cast(NavMeshGoal_ClosestActorInList*)&params[16];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20952], cast(void*)0, cast(void*)0);
	}
	final void RecycleInternal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20953], cast(void*)0, cast(void*)0);
	}
}
