module UnrealScript.Engine.Path_TowardGoal;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_TowardGoal : PathConstraint
{
public extern(D):
	@property final auto ref Actor GoalActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 68); }
final:
	bool TowardGoal(Pawn P, Actor Goal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Actor*)&params[4] = Goal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23985], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23990], cast(void*)0, cast(void*)0);
	}
}
