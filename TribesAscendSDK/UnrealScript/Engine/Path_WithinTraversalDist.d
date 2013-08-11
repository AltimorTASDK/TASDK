module UnrealScript.Engine.Path_WithinTraversalDist;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_WithinTraversalDist : PathConstraint
{
	public @property final auto ref float SoftStartPenalty() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	public @property final auto ref float MaxTraversalDist() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	final bool DontExceedMaxDist(Pawn P, float InMaxTraversalDist, bool bInSoft)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = InMaxTraversalDist;
		*cast(bool*)&params[8] = bInSoft;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24018], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24024], cast(void*)0, cast(void*)0);
	}
}
