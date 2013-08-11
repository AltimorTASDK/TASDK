module UnrealScript.Engine.Path_AvoidInEscapableNodes;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_AvoidInEscapableNodes : PathConstraint
{
	public @property final auto ref int MoveFlags() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int MaxFallSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int Height() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int Radius() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	final void CachePawnReacFlags(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23966], params.ptr, cast(void*)0);
	}
	final bool DontGetStuck(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23968], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23972], cast(void*)0, cast(void*)0);
	}
}
