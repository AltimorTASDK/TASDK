module UnrealScript.Engine.NavMeshGoalFilter_OutOfViewFrom;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_OutOfViewFrom : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoalFilter_OutOfViewFrom")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMustBeHiddenFromThisPoint;
		public @property static final ScriptFunction MustBeHiddenFromThisPoint() { return mMustBeHiddenFromThisPoint ? mMustBeHiddenFromThisPoint : (mMustBeHiddenFromThisPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoalFilter_OutOfViewFrom.MustBeHiddenFromThisPoint")); }
	}
	@property final auto ref
	{
		Vector OutOfViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 76); }
		UObject.Pointer GoalPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
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
