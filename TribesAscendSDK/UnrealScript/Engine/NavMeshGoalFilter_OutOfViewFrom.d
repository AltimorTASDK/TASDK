module UnrealScript.Engine.NavMeshGoalFilter_OutOfViewFrom;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_OutOfViewFrom : NavMeshGoal_Filter
{
	public @property final auto ref Vector OutOfViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref UObject.Pointer GoalPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
	final bool MustBeHiddenFromThisPoint(NavMeshGoal_GenericFilterContainer FilterContainer, Vector InOutOfViewLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(Vector*)&params[4] = InOutOfViewLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21003], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
