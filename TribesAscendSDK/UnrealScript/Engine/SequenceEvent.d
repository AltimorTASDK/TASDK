module UnrealScript.Engine.SequenceEvent;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface SequenceEvent : SequenceOp
{
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	public @property final auto ref int MaxTriggerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref int TriggerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	public @property final bool bPlayerOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
	public @property final bool bPlayerOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
	public @property final auto ref ScriptArray!(SequenceEvent) DuplicateEvts() { return *cast(ScriptArray!(SequenceEvent)*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref int MaxWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ubyte Priority() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 248); }
	public @property final bool bClientSideOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x8) != 0; }
	public @property final bool bClientSideOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x8; } return val; }
	public @property final bool bRegistered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x4) != 0; }
	public @property final bool bRegistered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x4; } return val; }
	public @property final auto ref float ReTriggerDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float ActivationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref Actor Instigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref Actor Originator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 220); }
	final bool CheckActivate(Actor InOriginator, Actor InInstigator, bool bTest, ScriptArray!(int)* ActivateIndices, bool bPushTop)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(bool*)&params[8] = bTest;
		*cast(ScriptArray!(int)*)&params[12] = *ActivateIndices;
		*cast(bool*)&params[24] = bPushTop;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4292], params.ptr, cast(void*)0);
		*ActivateIndices = *cast(ScriptArray!(int)*)&params[12];
		return *cast(bool*)&params[28];
	}
	final void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26085], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26092], cast(void*)0, cast(void*)0);
	}
	final void Toggled()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26093], cast(void*)0, cast(void*)0);
	}
}
