module UnrealScript.Engine.SeqEvent_RemoteEvent;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_RemoteEvent : SequenceEvent
{
public extern(D):
	@property final
	{
		@property final auto ref ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
		bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
		bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26145], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
