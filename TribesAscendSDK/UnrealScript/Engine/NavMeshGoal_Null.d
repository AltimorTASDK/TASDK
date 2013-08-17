module UnrealScript.Engine.NavMeshGoal_Null;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_Null : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshGoal_Null")); }
	private static __gshared NavMeshGoal_Null mDefaultProperties;
	@property final static NavMeshGoal_Null DefaultProperties() { mixin(MGDPC("NavMeshGoal_Null", "NavMeshGoal_Null Engine.Default__NavMeshGoal_Null")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGoUntilBust;
			ScriptFunction mRecycleNative;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction GoUntilBust() { mixin(MGF("mGoUntilBust", "Function Engine.NavMeshGoal_Null.GoUntilBust")); }
			ScriptFunction RecycleNative() { mixin(MGF("mRecycleNative", "Function Engine.NavMeshGoal_Null.RecycleNative")); }
			ScriptFunction Recycle() { mixin(MGF("mRecycle", "Function Engine.NavMeshGoal_Null.Recycle")); }
		}
	}
	@property final auto ref UObject.Pointer PartialGoal() { mixin(MGPC("UObject.Pointer", 80)); }
final:
	static bool GoUntilBust(NavigationHandle NavHandle, int* InMaxPathVisits = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		if (InMaxPathVisits !is null)
			*cast(int*)&params[4] = *InMaxPathVisits;
		StaticClass.ProcessEvent(Functions.GoUntilBust, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void RecycleNative()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecycleNative, cast(void*)0, cast(void*)0);
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
