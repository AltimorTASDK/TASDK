module UnrealScript.Engine.SeqEvent_ProjectileLanded;

import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_ProjectileLanded : SequenceEvent
{
public extern(D):
	@property final auto ref float MaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
}
