module UnrealScript.Engine.NavMeshGoalFilter_NotNearOtherAI;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_NotNearOtherAI : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoalFilter_NotNearOtherAI")); }
	private static __gshared NavMeshGoalFilter_NotNearOtherAI mDefaultProperties;
	@property final static NavMeshGoalFilter_NotNearOtherAI DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NavMeshGoalFilter_NotNearOtherAI)("NavMeshGoalFilter_NotNearOtherAI Engine.Default__NavMeshGoalFilter_NotNearOtherAI")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotNearOtherAI;
		public @property static final ScriptFunction NotNearOtherAI() { return mNotNearOtherAI ? mNotNearOtherAI : (mNotNearOtherAI = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoalFilter_NotNearOtherAI.NotNearOtherAI")); }
	}
	@property final auto ref float DistanceToCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	final static bool NotNearOtherAI(NavMeshGoal_GenericFilterContainer FilterContainer, float InDistanceToCheck)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(float*)&params[4] = InDistanceToCheck;
		StaticClass.ProcessEvent(Functions.NotNearOtherAI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
