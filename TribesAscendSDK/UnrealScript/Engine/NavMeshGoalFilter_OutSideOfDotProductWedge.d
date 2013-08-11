module UnrealScript.Engine.NavMeshGoalFilter_OutSideOfDotProductWedge;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_OutSideOfDotProductWedge : NavMeshGoal_Filter
{
public extern(D):
	@property final auto ref
	{
		float Epsilon() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
		Vector Rotation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
		Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
	}
	final bool OutsideOfDotProductWedge(NavMeshGoal_GenericFilterContainer FilterContainer, Vector InLocation, Rotator InRotation, float InEpsilon)
	{
		ubyte params[36];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(Vector*)&params[4] = InLocation;
		*cast(Rotator*)&params[16] = InRotation;
		*cast(float*)&params[28] = InEpsilon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21011], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
}
