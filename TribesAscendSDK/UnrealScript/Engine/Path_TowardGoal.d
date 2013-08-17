module UnrealScript.Engine.Path_TowardGoal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_TowardGoal : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Path_TowardGoal")()); }
	private static __gshared Path_TowardGoal mDefaultProperties;
	@property final static Path_TowardGoal DefaultProperties() { mixin(MGDPC!(Path_TowardGoal, "Path_TowardGoal Engine.Default__Path_TowardGoal")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTowardGoal;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction TowardGoal() { mixin(MGF!("mTowardGoal", "Function Engine.Path_TowardGoal.TowardGoal")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.Path_TowardGoal.Recycle")()); }
		}
	}
	@property final auto ref Actor GoalActor() { mixin(MGPC!(Actor, 68)()); }
final:
	static bool TowardGoal(Pawn P, Actor Goal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Actor*)&params[4] = Goal;
		StaticClass.ProcessEvent(Functions.TowardGoal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
