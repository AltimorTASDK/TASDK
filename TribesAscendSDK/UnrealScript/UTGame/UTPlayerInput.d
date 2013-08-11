module UnrealScript.UTGame.UTPlayerInput;

import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPlayerInput;

extern(C++) interface UTPlayerInput : UDKPlayerInput
{
	public @property final auto ref Actor.EDoubleClickDir ForcedDoubleClick() { return *cast(Actor.EDoubleClickDir*)(cast(size_t)cast(void*)this + 996); }
	public @property final bool bHoldDuck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 992) & 0x1) != 0; }
	public @property final bool bHoldDuck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 992) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 992) &= ~0x1; } return val; }
	public @property final auto ref float LastDuckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 988); }
}
