module UnrealScript.Engine.NavMeshGoal_At;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.NavMeshPathGoalEvaluator;

extern(C++) interface NavMeshGoal_At : NavMeshPathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoal_At")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycleNative;
			ScriptFunction mAtActor;
			ScriptFunction mAtLocation;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction RecycleNative() { return mRecycleNative ? mRecycleNative : (mRecycleNative = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_At.RecycleNative")); }
			ScriptFunction AtActor() { return mAtActor ? mAtActor : (mAtActor = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_At.AtActor")); }
			ScriptFunction AtLocation() { return mAtLocation ? mAtLocation : (mAtLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_At.AtLocation")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_At.Recycle")); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Pointer PartialGoal() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 104); }
			UObject.Pointer GoalPoly() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 100); }
			float GoalDist() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			Vector Goal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bKeepPartial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bKeepPartial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
final:
	void RecycleNative()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecycleNative, cast(void*)0, cast(void*)0);
	}
	static bool AtActor(NavigationHandle NavHandle, Actor GoalActor, float Dist, bool bReturnPartial)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Actor*)&params[4] = GoalActor;
		*cast(float*)&params[8] = Dist;
		*cast(bool*)&params[12] = bReturnPartial;
		StaticClass.ProcessEvent(Functions.AtActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	static bool AtLocation(NavigationHandle NavHandle, Vector GoalLocation, float Dist, bool bReturnPartial)
	{
		ubyte params[28];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = GoalLocation;
		*cast(float*)&params[16] = Dist;
		*cast(bool*)&params[20] = bReturnPartial;
		StaticClass.ProcessEvent(Functions.AtLocation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
