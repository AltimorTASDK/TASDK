module UnrealScript.Engine.NavMeshGoalFilter_PolyEncompassesAI;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_PolyEncompassesAI : NavMeshGoal_Filter
{
	public @property final auto ref Vector OverrideExtentToCheck() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
	final bool MakeSureAIFits(NavMeshGoal_GenericFilterContainer FilterContainer, Vector InOverrideExtentToCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(Vector*)&params[4] = InOverrideExtentToCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21019], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
