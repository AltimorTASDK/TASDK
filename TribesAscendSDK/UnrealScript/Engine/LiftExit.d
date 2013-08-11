module UnrealScript.Engine.LiftExit;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.LiftCenter;
import UnrealScript.Engine.Pawn;

extern(C++) interface LiftExit : NavigationPoint
{
	public @property final bool bExitOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 696) & 0x1) != 0; }
	public @property final bool bExitOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 696) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 696) &= ~0x1; } return val; }
	public @property final auto ref LiftCenter MyLiftCenter() { return *cast(LiftCenter*)(cast(size_t)cast(void*)this + 692); }
	final bool CanBeReachedFromLiftBy(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19419], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void WaitForLift(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19427], params.ptr, cast(void*)0);
	}
	final bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19429], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
