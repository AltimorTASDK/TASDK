module UnrealScript.Engine.NavMeshGoalFilter_MinPathDistance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_MinPathDistance : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshGoalFilter_MinPathDistance")()); }
	private static __gshared NavMeshGoalFilter_MinPathDistance mDefaultProperties;
	@property final static NavMeshGoalFilter_MinPathDistance DefaultProperties() { mixin(MGDPC!(NavMeshGoalFilter_MinPathDistance, "NavMeshGoalFilter_MinPathDistance Engine.Default__NavMeshGoalFilter_MinPathDistance")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMustBeLongerPathThan;
		public @property static final ScriptFunction MustBeLongerPathThan() { mixin(MGF!("mMustBeLongerPathThan", "Function Engine.NavMeshGoalFilter_MinPathDistance.MustBeLongerPathThan")()); }
	}
	@property final auto ref int MinDistancePathShouldBe() { mixin(MGPC!("int", 72)()); }
	final static bool MustBeLongerPathThan(NavMeshGoal_GenericFilterContainer FilterContainer, int InMinDistancePathShouldBe)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(int*)&params[4] = InMinDistancePathShouldBe;
		StaticClass.ProcessEvent(Functions.MustBeLongerPathThan, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
