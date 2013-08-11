module UnrealScript.Engine.NavMeshGoalFilter_MinPathDistance;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_MinPathDistance : NavMeshGoal_Filter
{
public extern(D):
	@property final auto ref int MinDistancePathShouldBe() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	final bool MustBeLongerPathThan(NavMeshGoal_GenericFilterContainer FilterContainer, int InMinDistancePathShouldBe)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(int*)&params[4] = InMinDistancePathShouldBe;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20990], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
