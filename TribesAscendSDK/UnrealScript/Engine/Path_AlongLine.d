module UnrealScript.Engine.Path_AlongLine;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_AlongLine : PathConstraint
{
	public @property final auto ref Vector Direction() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
	final bool AlongLine(Pawn P, Vector Dir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Vector*)&params[4] = Dir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23956], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23961], cast(void*)0, cast(void*)0);
	}
}
