module UnrealScript.Engine.NavMeshGoalFilter_MinPathDistance;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_MinPathDistance : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoalFilter_MinPathDistance")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMustBeLongerPathThan;
		public @property static final ScriptFunction MustBeLongerPathThan() { return mMustBeLongerPathThan ? mMustBeLongerPathThan : (mMustBeLongerPathThan = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoalFilter_MinPathDistance.MustBeLongerPathThan")); }
	}
	@property final auto ref int MinDistancePathShouldBe() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
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
