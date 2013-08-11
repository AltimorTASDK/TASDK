module UnrealScript.TribesGame.TrDaDShell;

import ScriptClasses;
import UnrealScript.Engine.InterpActor;

extern(C++) interface TrDaDShell : InterpActor
{
	public @property final bool r_bShield0Up() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x1) != 0; }
	public @property final bool r_bShield0Up(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x1; } return val; }
	public @property final bool r_bShield1Up() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x2) != 0; }
	public @property final bool r_bShield1Up(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x2; } return val; }
	public @property final bool r_bShield2Up() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x4) != 0; }
	public @property final bool r_bShield2Up(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x4; } return val; }
	public @property final bool r_bIsRotating() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x8) != 0; }
	public @property final bool r_bIsRotating(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x8; } return val; }
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79707], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79709], cast(void*)0, cast(void*)0);
	}
	final void StartRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79710], cast(void*)0, cast(void*)0);
	}
	final void StopRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79711], cast(void*)0, cast(void*)0);
	}
}
