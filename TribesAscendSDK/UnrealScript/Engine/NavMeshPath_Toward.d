module UnrealScript.Engine.NavMeshPath_Toward;

import ScriptClasses;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_Toward : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshPath_Toward")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTowardGoal;
			ScriptFunction mTowardPoint;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction TowardGoal() { return mTowardGoal ? mTowardGoal : (mTowardGoal = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_Toward.TowardGoal")); }
			ScriptFunction TowardPoint() { return mTowardPoint ? mTowardPoint : (mTowardPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_Toward.TowardPoint")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPath_Toward.Recycle")); }
		}
	}
	@property final auto ref
	{
		Vector GoalPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
		Actor GoalActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 80); }
	}
final:
	static bool TowardGoal(NavigationHandle NavHandle, Actor Goal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Actor*)&params[4] = Goal;
		StaticClass.ProcessEvent(Functions.TowardGoal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	static bool TowardPoint(NavigationHandle NavHandle, Vector Point)
	{
		ubyte params[20];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(Vector*)&params[4] = Point;
		StaticClass.ProcessEvent(Functions.TowardPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
