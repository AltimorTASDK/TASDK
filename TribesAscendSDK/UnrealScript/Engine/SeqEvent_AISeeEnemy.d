module UnrealScript.Engine.SeqEvent_AISeeEnemy;

import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_AISeeEnemy : SequenceEvent
{
public extern(D):
	@property final auto ref float MaxSightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
}
