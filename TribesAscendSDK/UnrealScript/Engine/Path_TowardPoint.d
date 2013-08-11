module UnrealScript.Engine.Path_TowardPoint;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_TowardPoint : PathConstraint
{
public extern(D):
	@property final auto ref Vector GoalPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
final:
	bool TowardPoint(Pawn P, Vector Point)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Vector*)&params[4] = Point;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23992], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23997], cast(void*)0, cast(void*)0);
	}
}
