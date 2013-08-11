module UnrealScript.Engine.SeqEvent_PlayerSpawned;

import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;

extern(C++) interface SeqEvent_PlayerSpawned : SequenceEvent
{
public extern(D):
	@property final auto ref UObject SpawnPoint() { return *cast(UObject*)(cast(size_t)cast(void*)this + 256); }
}
