module UnrealScript.Engine.SeqEvent_TakeDamage;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_TakeDamage : SequenceEvent
{
	public @property final auto ref ScriptArray!(ScriptClass) DamageTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptArray!(ScriptClass) IgnoreDamageTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 276); }
	public @property final bool bResetDamageOnToggle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 292) & 0x1) != 0; }
	public @property final bool bResetDamageOnToggle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 292) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 292) &= ~0x1; } return val; }
	public @property final auto ref float CurrentDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float DamageThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float MinDamageAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	final bool IsValidDamageType(ScriptClass inDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = inDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26157], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void HandleDamage(Actor InOriginator, Actor InInstigator, ScriptClass inDamageType, int inAmount)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(ScriptClass*)&params[8] = inDamageType;
		*cast(int*)&params[12] = inAmount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26162], params.ptr, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26170], cast(void*)0, cast(void*)0);
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26171], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void Toggled()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26173], cast(void*)0, cast(void*)0);
	}
}
