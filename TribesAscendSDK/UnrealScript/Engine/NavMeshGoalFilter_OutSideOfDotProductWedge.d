module UnrealScript.Engine.NavMeshGoalFilter_OutSideOfDotProductWedge;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_OutSideOfDotProductWedge : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoalFilter_OutSideOfDotProductWedge")); }
	private static __gshared NavMeshGoalFilter_OutSideOfDotProductWedge mDefaultProperties;
	@property final static NavMeshGoalFilter_OutSideOfDotProductWedge DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NavMeshGoalFilter_OutSideOfDotProductWedge)("NavMeshGoalFilter_OutSideOfDotProductWedge Engine.Default__NavMeshGoalFilter_OutSideOfDotProductWedge")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOutsideOfDotProductWedge;
		public @property static final ScriptFunction OutsideOfDotProductWedge() { return mOutsideOfDotProductWedge ? mOutsideOfDotProductWedge : (mOutsideOfDotProductWedge = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoalFilter_OutSideOfDotProductWedge.OutsideOfDotProductWedge")); }
	}
	@property final auto ref
	{
		float Epsilon() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
		Vector Rotation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
		Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
	}
	final static bool OutsideOfDotProductWedge(NavMeshGoal_GenericFilterContainer FilterContainer, Vector InLocation, Rotator InRotation, float InEpsilon)
	{
		ubyte params[36];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(Vector*)&params[4] = InLocation;
		*cast(Rotator*)&params[16] = InRotation;
		*cast(float*)&params[28] = InEpsilon;
		StaticClass.ProcessEvent(Functions.OutsideOfDotProductWedge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
}
