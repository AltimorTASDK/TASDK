module UnrealScript.Engine.Path_AvoidInEscapableNodes;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_AvoidInEscapableNodes : PathConstraint
{
public extern(D):
	@property final auto ref
	{
		int MoveFlags() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
		int MaxFallSpeed() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		int Height() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		int Radius() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	}
final:
	void CachePawnReacFlags(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23966], params.ptr, cast(void*)0);
	}
	bool DontGetStuck(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23968], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23972], cast(void*)0, cast(void*)0);
	}
}
