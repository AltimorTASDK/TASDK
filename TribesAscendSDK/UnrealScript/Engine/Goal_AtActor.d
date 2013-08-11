module UnrealScript.Engine.Goal_AtActor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PathGoalEvaluator;

extern(C++) interface Goal_AtActor : PathGoalEvaluator
{
public extern(D):
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
	bool AtActor(Pawn P, Actor Goal, float Dist, bool bReturnPartial)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Actor*)&params[4] = Goal;
		*cast(float*)&params[8] = Dist;
		*cast(bool*)&params[12] = bReturnPartial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18170], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18186], cast(void*)0, cast(void*)0);
	}
}
