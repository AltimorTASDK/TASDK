module UnrealScript.Engine.SeqAct_SetSoundMode;

import ScriptClasses;
import UnrealScript.Engine.SoundMode;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetSoundMode : SequenceAction
{
public extern(D):
	@property final
	{
		// WARNING: Property 'SoundMode' has the same name as a defined type!
		bool bTopPriority() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bTopPriority(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
final:
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25926], cast(void*)0, cast(void*)0);
	}
	int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25928], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
