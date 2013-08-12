module UnrealScript.Engine.NavMeshGoalFilter_PolyEncompassesAI;

import ScriptClasses;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_PolyEncompassesAI : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoalFilter_PolyEncompassesAI")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMakeSureAIFits;
		public @property static final ScriptFunction MakeSureAIFits() { return mMakeSureAIFits ? mMakeSureAIFits : (mMakeSureAIFits = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoalFilter_PolyEncompassesAI.MakeSureAIFits")); }
	}
	@property final auto ref Vector OverrideExtentToCheck() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
	final static bool MakeSureAIFits(NavMeshGoal_GenericFilterContainer FilterContainer, Vector InOverrideExtentToCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		*cast(Vector*)&params[4] = InOverrideExtentToCheck;
		StaticClass.ProcessEvent(Functions.MakeSureAIFits, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
