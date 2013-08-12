module UnrealScript.Engine.Goal_AtActor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PathGoalEvaluator;

extern(C++) interface Goal_AtActor : PathGoalEvaluator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Goal_AtActor")); }
	private static __gshared Goal_AtActor mDefaultProperties;
	@property final static Goal_AtActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Goal_AtActor)("Goal_AtActor Engine.Default__Goal_AtActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAtActor;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction AtActor() { return mAtActor ? mAtActor : (mAtActor = ScriptObject.Find!(ScriptFunction)("Function Engine.Goal_AtActor.AtActor")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.Goal_AtActor.Recycle")); }
		}
	}
	@property final
	{
		auto ref
		{
			float GoalDist() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			Actor GoalActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bKeepPartial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bKeepPartial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
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
