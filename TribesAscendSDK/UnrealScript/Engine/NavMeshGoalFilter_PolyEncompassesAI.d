module UnrealScript.Engine.NavMeshGoalFilter_PolyEncompassesAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavMeshGoal_Filter;
import UnrealScript.Engine.NavMeshGoal_GenericFilterContainer;

extern(C++) interface NavMeshGoalFilter_PolyEncompassesAI : NavMeshGoal_Filter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshGoalFilter_PolyEncompassesAI")); }
	private static __gshared NavMeshGoalFilter_PolyEncompassesAI mDefaultProperties;
	@property final static NavMeshGoalFilter_PolyEncompassesAI DefaultProperties() { mixin(MGDPC("NavMeshGoalFilter_PolyEncompassesAI", "NavMeshGoalFilter_PolyEncompassesAI Engine.Default__NavMeshGoalFilter_PolyEncompassesAI")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mMakeSureAIFits;
		public @property static final ScriptFunction MakeSureAIFits() { mixin(MGF("mMakeSureAIFits", "Function Engine.NavMeshGoalFilter_PolyEncompassesAI.MakeSureAIFits")); }
	}
	@property final auto ref Vector OverrideExtentToCheck() { mixin(MGPC("Vector", 72)); }
	final static bool MakeSureAIFits(NavMeshGoal_GenericFilterContainer FilterContainer, in Vector* InOverrideExtentToCheck = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavMeshGoal_GenericFilterContainer*)params.ptr = FilterContainer;
		if (InOverrideExtentToCheck !is null)
			*cast(Vector*)&params[4] = cast(Vector)*InOverrideExtentToCheck;
		StaticClass.ProcessEvent(Functions.MakeSureAIFits, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
