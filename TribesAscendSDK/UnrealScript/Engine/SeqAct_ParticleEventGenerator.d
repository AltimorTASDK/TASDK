module UnrealScript.Engine.SeqAct_ParticleEventGenerator;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ParticleEventGenerator : SequenceAction
{
	public @property final auto ref ScriptArray!(ScriptString) EventNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref Vector EventNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref Vector EventVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref Vector EventDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref Vector EventLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float EventTime() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref Actor Instigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 236); }
	public @property final bool bUseEmitterLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bUseEmitterLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25801], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
