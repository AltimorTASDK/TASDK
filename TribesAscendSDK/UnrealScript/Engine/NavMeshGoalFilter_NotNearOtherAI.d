module UnrealScript.Engine.NavMeshGoalFilter_NotNearOtherAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_NotNearOtherAI : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshGoalFilter_NotNearOtherAI")); }
	private static __gshared NavMeshGoalFilter_NotNearOtherAI mDefaultProperties;
	@property final static NavMeshGoalFilter_NotNearOtherAI DefaultProperties() { mixin(MGDPC("NavMeshGoalFilter_NotNearOtherAI", "NavMeshGoalFilter_NotNearOtherAI Engine.Default__NavMeshGoalFilter_NotNearOtherAI")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotNearOtherAI;
		public @property static final ScriptFunction NotNearOtherAI() { mixin(MGF("mNotNearOtherAI", "Function Engine.NavMeshGoalFilter_NotNearOtherAI.NotNearOtherAI")); }
	}
	@property final auto ref float DistanceToCheck() { mixin(MGPC("float", 72)); }
	final static bool NotNearOtherAI(NavMeshGoal_GenericFilterContainer FilterContainer, in float InDistanceToCheck)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(float*)&params[4] = cast(float)InDistanceToCheck;
		StaticClass.ProcessEvent(Functions.NotNearOtherAI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
