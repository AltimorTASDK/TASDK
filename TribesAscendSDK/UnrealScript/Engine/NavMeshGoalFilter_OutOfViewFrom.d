module UnrealScript.Engine.NavMeshGoalFilter_OutOfViewFrom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_OutOfViewFrom : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshGoalFilter_OutOfViewFrom")()); }
	private static __gshared NavMeshGoalFilter_OutOfViewFrom mDefaultProperties;
	@property final static NavMeshGoalFilter_OutOfViewFrom DefaultProperties() { mixin(MGDPC!(NavMeshGoalFilter_OutOfViewFrom, "NavMeshGoalFilter_OutOfViewFrom Engine.Default__NavMeshGoalFilter_OutOfViewFrom")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMustBeHiddenFromThisPoint;
		public @property static final ScriptFunction MustBeHiddenFromThisPoint() { mixin(MGF!("mMustBeHiddenFromThisPoint", "Function Engine.NavMeshGoalFilter_OutOfViewFrom.MustBeHiddenFromThisPoint")()); }
	}
	@property final auto ref
	{
		Vector OutOfViewLocation() { mixin(MGPC!(Vector, 76)()); }
		UObject.Pointer GoalPoly() { mixin(MGPC!(UObject.Pointer, 72)()); }
	}
	final static bool MustBeHiddenFromThisPoint(NavMeshGoal_GenericFilterContainer FilterContainer, Vector InOutOfViewLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(Vector*)&params[4] = InOutOfViewLocation;
		StaticClass.ProcessEvent(Functions.MustBeHiddenFromThisPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
