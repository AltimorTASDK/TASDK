module UnrealScript.Engine.Goal_AtActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PathGoalEvaluator;

extern(C++) interface Goal_AtActor : PathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Goal_AtActor")()); }
	private static __gshared Goal_AtActor mDefaultProperties;
	@property final static Goal_AtActor DefaultProperties() { mixin(MGDPC!(Goal_AtActor, "Goal_AtActor Engine.Default__Goal_AtActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAtActor;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction AtActor() { mixin(MGF!("mAtActor", "Function Engine.Goal_AtActor.AtActor")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.Goal_AtActor.Recycle")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float GoalDist() { mixin(MGPC!(float, 80)()); }
			Actor GoalActor() { mixin(MGPC!(Actor, 76)()); }
		}
		bool bKeepPartial() { mixin(MGBPC!(84, 0x1)()); }
		bool bKeepPartial(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
final:
	static bool AtActor(Pawn P, Actor Goal, float Dist, bool bReturnPartial)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Actor*)&params[4] = Goal;
		*cast(float*)&params[8] = Dist;
		*cast(bool*)&params[12] = bReturnPartial;
		StaticClass.ProcessEvent(Functions.AtActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
