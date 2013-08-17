module UnrealScript.Engine.NavMeshGoal_PolyEncompassesAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_PolyEncompassesAI : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshGoal_PolyEncompassesAI")()); }
	private static __gshared NavMeshGoal_PolyEncompassesAI mDefaultProperties;
	@property final static NavMeshGoal_PolyEncompassesAI DefaultProperties() { mixin(MGDPC!(NavMeshGoal_PolyEncompassesAI, "NavMeshGoal_PolyEncompassesAI Engine.Default__NavMeshGoal_PolyEncompassesAI")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMakeSureAIFits;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction MakeSureAIFits() { mixin(MGF!("mMakeSureAIFits", "Function Engine.NavMeshGoal_PolyEncompassesAI.MakeSureAIFits")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.NavMeshGoal_PolyEncompassesAI.Recycle")()); }
		}
	}
	@property final auto ref Vector OverrideExtentToCheck() { mixin(MGPC!("Vector", 80)()); }
final:
	static bool MakeSureAIFits(NavigationHandle NavHandle, in Vector* InOverrideExtentToCheck = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		if (InOverrideExtentToCheck !is null)
			*cast(Vector*)&params[4] = cast(Vector)*InOverrideExtentToCheck;
		StaticClass.ProcessEvent(Functions.MakeSureAIFits, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
