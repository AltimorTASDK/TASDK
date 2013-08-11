module UnrealScript.Engine.SeqEvent_LOS;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_LOS : SequenceEvent
{
	public @property final bool bCheckForObstructions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
	public @property final bool bCheckForObstructions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	public @property final auto ref float TriggerDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float ScreenCenterDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26107], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
