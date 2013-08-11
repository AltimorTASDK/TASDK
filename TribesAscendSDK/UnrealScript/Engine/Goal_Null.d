module UnrealScript.Engine.Goal_Null;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathGoalEvaluator;

extern(C++) interface Goal_Null : PathGoalEvaluator
{
public extern(D):
final:
	bool GoUntilBust(Pawn P, int InMaxPathVisits)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = InMaxPathVisits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18187], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18192], cast(void*)0, cast(void*)0);
	}
}
