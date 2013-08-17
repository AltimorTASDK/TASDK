module UnrealScript.GameFramework.NavMeshGoal_OutOfViewFrom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_OutOfViewFrom : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.NavMeshGoal_OutOfViewFrom")()); }
	private static __gshared NavMeshGoal_OutOfViewFrom mDefaultProperties;
	@property final static NavMeshGoal_OutOfViewFrom DefaultProperties() { mixin(MGDPC!(NavMeshGoal_OutOfViewFrom, "NavMeshGoal_OutOfViewFrom GameFramework.Default__NavMeshGoal_OutOfViewFrom")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycleNative;
			ScriptFunction mMustBeHiddenFromThisPoint;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction RecycleNative() { mixin(MGF!("mRecycleNative", "Function GameFramework.NavMeshGoal_OutOfViewFrom.RecycleNative")()); }
			ScriptFunction MustBeHiddenFromThisPoint() { mixin(MGF!("mMustBeHiddenFromThisPoint", "Function GameFramework.NavMeshGoal_OutOfViewFrom.MustBeHiddenFromThisPoint")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function GameFramework.NavMeshGoal_OutOfViewFrom.Recycle")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector OutOfViewLocation() { mixin(MGPC!(Vector, 84)()); }
			UObject.Pointer GoalPoly() { mixin(MGPC!(UObject.Pointer, 80)()); }
		}
		bool bShowDebug() { mixin(MGBPC!(96, 0x1)()); }
		bool bShowDebug(bool val) { mixin(MSBPC!(96, 0x1)()); }
	}
final:
	void RecycleNative()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecycleNative, cast(void*)0, cast(void*)0);
	}
	static bool MustBeHiddenFromThisPoint(NavigationHandle NavHandle, Vector InOutOfViewLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = InOutOfViewLocation;
		StaticClass.ProcessEvent(Functions.MustBeHiddenFromThisPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
