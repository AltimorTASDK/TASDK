module UnrealScript.Engine.NavMeshGoal_Null;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_Null : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoal_Null")); }
	private static __gshared NavMeshGoal_Null mDefaultProperties;
	@property final static NavMeshGoal_Null DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NavMeshGoal_Null)("NavMeshGoal_Null Engine.Default__NavMeshGoal_Null")); }
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
			ScriptFunction GoUntilBust() { return mGoUntilBust ? mGoUntilBust : (mGoUntilBust = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_Null.GoUntilBust")); }
			ScriptFunction RecycleNative() { return mRecycleNative ? mRecycleNative : (mRecycleNative = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_Null.RecycleNative")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_Null.Recycle")); }
		}
	}
	@property final auto ref UObject.Pointer PartialGoal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 80); }
final:
	static bool GoUntilBust(NavigationHandle NavHandle, int InMaxPathVisits)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(int*)&params[4] = InMaxPathVisits;
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
