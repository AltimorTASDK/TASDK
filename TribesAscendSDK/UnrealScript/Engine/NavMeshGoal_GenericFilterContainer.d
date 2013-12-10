module UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_GenericFilterContainer : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshGoal_GenericFilterContainer")); }
	private static __gshared NavMeshGoal_GenericFilterContainer mDefaultProperties;
	@property final static NavMeshGoal_GenericFilterContainer DefaultProperties() { mixin(MGDPC("NavMeshGoal_GenericFilterContainer", "NavMeshGoal_GenericFilterContainer Engine.Default__NavMeshGoal_GenericFilterContainer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateAndAddFilterToNavHandle;
			ScriptFunction mGetFilterOfType;
			ScriptFunction mGetGoalPoint;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction CreateAndAddFilterToNavHandle() { mixin(MGF("mCreateAndAddFilterToNavHandle", "Function Engine.NavMeshGoal_GenericFilterContainer.CreateAndAddFilterToNavHandle")); }
			ScriptFunction GetFilterOfType() { mixin(MGF("mGetFilterOfType", "Function Engine.NavMeshGoal_GenericFilterContainer.GetFilterOfType")); }
			ScriptFunction GetGoalPoint() { mixin(MGF("mGetGoalPoint", "Function Engine.NavMeshGoal_GenericFilterContainer.GetGoalPoint")); }
			ScriptFunction Recycle() { mixin(MGF("mRecycle", "Function Engine.NavMeshGoal_GenericFilterContainer.Recycle")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(NavMeshGoal_Filter) GoalFilters() { mixin(MGPC("ScriptArray!(NavMeshGoal_Filter)", 80)); }
		NavigationHandle MyNavigationHandle() { mixin(MGPC("NavigationHandle", 96)); }
		Pointer SuccessfulGoal() { mixin(MGPC("Pointer", 92)); }
	}
final:
	static NavMeshGoal_GenericFilterContainer CreateAndAddFilterToNavHandle(NavigationHandle NavHandle, int* InMaxPathVisits = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		if (InMaxPathVisits !is null)
			*cast(int*)&params[4] = *InMaxPathVisits;
		StaticClass.ProcessEvent(Functions.CreateAndAddFilterToNavHandle, params.ptr, cast(void*)0);
		return *cast(NavMeshGoal_GenericFilterContainer*)&params[8];
	}
	NavMeshGoal_Filter GetFilterOfType(ScriptClass Filter_Class)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Filter_Class;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFilterOfType, params.ptr, cast(void*)0);
		return *cast(NavMeshGoal_Filter*)&params[4];
	}
	Vector GetGoalPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGoalPoint, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
