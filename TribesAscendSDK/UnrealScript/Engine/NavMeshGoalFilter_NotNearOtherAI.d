module UnrealScript.Engine.NavMeshGoalFilter_NotNearOtherAI;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_NotNearOtherAI : NavMeshGoal_Filter
{
public extern(D):
	@property final auto ref float DistanceToCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	final bool NotNearOtherAI(NavMeshGoal_GenericFilterContainer FilterContainer, float InDistanceToCheck)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(float*)&params[4] = InDistanceToCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20996], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
