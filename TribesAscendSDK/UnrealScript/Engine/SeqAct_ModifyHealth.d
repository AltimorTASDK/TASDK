module UnrealScript.Engine.SeqAct_ModifyHealth;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ModifyHealth : SequenceAction
{
	public @property final auto ref Actor Instigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 252); }
	public @property final bool bHeal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
	public @property final bool bHeal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	public @property final auto ref float Amount() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	// WARNING: Property 'DamageType' has the same name as a defined type!
	public @property final auto ref float Momentum() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final bool bFalloff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x4) != 0; }
	public @property final bool bFalloff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x4; } return val; }
	public @property final bool bRadial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
	public @property final bool bRadial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
	public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25773], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
