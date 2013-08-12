module UnrealScript.GameFramework.NavMeshGoal_OutOfViewFrom;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_OutOfViewFrom : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.NavMeshGoal_OutOfViewFrom")); }
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
			ScriptFunction RecycleNative() { return mRecycleNative ? mRecycleNative : (mRecycleNative = ScriptObject.Find!(ScriptFunction)("Function GameFramework.NavMeshGoal_OutOfViewFrom.RecycleNative")); }
			ScriptFunction MustBeHiddenFromThisPoint() { return mMustBeHiddenFromThisPoint ? mMustBeHiddenFromThisPoint : (mMustBeHiddenFromThisPoint = ScriptObject.Find!(ScriptFunction)("Function GameFramework.NavMeshGoal_OutOfViewFrom.MustBeHiddenFromThisPoint")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.NavMeshGoal_OutOfViewFrom.Recycle")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector OutOfViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
			UObject.Pointer GoalPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bShowDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bShowDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
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
