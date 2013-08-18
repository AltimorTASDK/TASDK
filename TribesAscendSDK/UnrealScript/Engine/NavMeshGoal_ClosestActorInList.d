module UnrealScript.Engine.NavMeshGoal_ClosestActorInList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_ClosestActorInList : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshGoal_ClosestActorInList")); }
	private static __gshared NavMeshGoal_ClosestActorInList mDefaultProperties;
	@property final static NavMeshGoal_ClosestActorInList DefaultProperties() { mixin(MGDPC("NavMeshGoal_ClosestActorInList", "NavMeshGoal_ClosestActorInList Engine.Default__NavMeshGoal_ClosestActorInList")); }
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
			ScriptFunction ClosestActorInList() { mixin(MGF("mClosestActorInList", "Function Engine.NavMeshGoal_ClosestActorInList.ClosestActorInList")); }
			ScriptFunction Recycle() { mixin(MGF("mRecycle", "Function Engine.NavMeshGoal_ClosestActorInList.Recycle")); }
			ScriptFunction RecycleInternal() { mixin(MGF("mRecycleInternal", "Function Engine.NavMeshGoal_ClosestActorInList.RecycleInternal")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor) GoalList() { mixin(MGPC("ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)", 80)); }
		Pointer CachedAnchorPoly() { mixin(MGPC("Pointer", 152)); }
		UObject.MultiMap_Mirror PolyToGoalActorMap() { mixin(MGPC("UObject.MultiMap_Mirror", 92)); }
	}
final:
	static NavMeshGoal_ClosestActorInList ClosestActorInList(NavigationHandle NavHandle, ref in ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor) InGoalList)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor)*)&params[4] = cast(ScriptArray!(NavMeshPathGoalEvaluator.BiasedGoalActor))InGoalList;
		StaticClass.ProcessEvent(Functions.ClosestActorInList, params.ptr, cast(void*)0);
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
