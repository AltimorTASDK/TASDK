module UnrealScript.UDKBase.UDKAIDecisionComponent;

import UnrealScript.Engine.ActorComponent;

extern(C++) interface UDKAIDecisionComponent : ActorComponent
{
	public @property final bool bTriggered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bTriggered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
}
