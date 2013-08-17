module UnrealScript.Engine.NavMeshPath_Toward;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_Toward : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshPath_Toward")()); }
	private static __gshared NavMeshPath_Toward mDefaultProperties;
	@property final static NavMeshPath_Toward DefaultProperties() { mixin(MGDPC!(NavMeshPath_Toward, "NavMeshPath_Toward Engine.Default__NavMeshPath_Toward")()); }
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
			ScriptFunction TowardGoal() { mixin(MGF!("mTowardGoal", "Function Engine.NavMeshPath_Toward.TowardGoal")()); }
			ScriptFunction TowardPoint() { mixin(MGF!("mTowardPoint", "Function Engine.NavMeshPath_Toward.TowardPoint")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.NavMeshPath_Toward.Recycle")()); }
		}
	}
	@property final auto ref
	{
		Vector GoalPoint() { mixin(MGPC!(Vector, 84)()); }
		Actor GoalActor() { mixin(MGPC!(Actor, 80)()); }
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
