module UnrealScript.Engine.SeqEvent_Touch;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_Touch : SequenceEvent
{
	public @property final auto ref ScriptArray!(ScriptClass) ClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptArray!(ScriptClass) IgnoredClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref ScriptArray!(Actor) TouchedList() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 284); }
	public @property final bool bAllowDeadPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x4) != 0; }
	public @property final bool bAllowDeadPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x4; } return val; }
	public @property final bool bUseInstigator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x2) != 0; }
	public @property final bool bUseInstigator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x2; } return val; }
	public @property final bool bForceOverlapping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
	public @property final bool bForceOverlapping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	final bool CheckTouchActivate(Actor InOriginator, Actor InInstigator, bool bTest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(bool*)&params[8] = bTest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7867], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool CheckUnTouchActivate(Actor InOriginator, Actor InInstigator, bool bTest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(bool*)&params[8] = bTest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26186], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void Toggled()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26191], cast(void*)0, cast(void*)0);
	}
	final void NotifyTouchingPawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26193], params.ptr, cast(void*)0);
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26195], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
