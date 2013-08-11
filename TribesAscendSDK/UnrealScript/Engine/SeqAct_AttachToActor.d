module UnrealScript.Engine.SeqAct_AttachToActor;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AttachToActor : SequenceAction
{
	public @property final bool bDetach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bDetach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	public @property final bool bHardAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bHardAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bUseRelativeOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
	public @property final bool bUseRelativeOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
	public @property final bool bUseRelativeRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
	public @property final bool bUseRelativeRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
	public @property final auto ref Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref Vector RelativeOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25600], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
