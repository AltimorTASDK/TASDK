module UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_GenericFilterContainer : NavMeshPathGoalEvaluator
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(NavMeshGoal_Filter) GoalFilters() { return *cast(ScriptArray!(NavMeshGoal_Filter)*)(cast(size_t)cast(void*)this + 80); }
		NavigationHandle MyNavigationHandle() { return *cast(NavigationHandle*)(cast(size_t)cast(void*)this + 96); }
		UObject.Pointer SuccessfulGoal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	}
final:
	NavMeshGoal_GenericFilterContainer CreateAndAddFilterToNavHandle(NavigationHandle NavHandle, int InMaxPathVisits)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(int*)&params[4] = InMaxPathVisits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20963], params.ptr, cast(void*)0);
		return *cast(NavMeshGoal_GenericFilterContainer*)&params[8];
	}
	NavMeshGoal_Filter GetFilterOfType(ScriptClass Filter_Class)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Filter_Class;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20968], params.ptr, cast(void*)0);
		return *cast(NavMeshGoal_Filter*)&params[4];
	}
	Vector GetGoalPoint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20971], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20973], cast(void*)0, cast(void*)0);
	}
}
