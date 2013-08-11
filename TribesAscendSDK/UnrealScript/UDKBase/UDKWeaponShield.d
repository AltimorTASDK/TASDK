module UnrealScript.UDKBase.UDKWeaponShield;

import UnrealScript.Engine.Actor;

extern(C++) interface UDKWeaponShield : Actor
{
	public @property final bool bIgnoreFlaggedProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
	public @property final bool bIgnoreFlaggedProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
}
