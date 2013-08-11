module UnrealScript.UDKBase.UDKVehicleSimHover;

import UnrealScript.UDKBase.UDKVehicleSimChopper;

extern(C++) interface UDKVehicleSimHover : UDKVehicleSimChopper
{
	public @property final bool bUnPoweredDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x8) != 0; }
	public @property final bool bUnPoweredDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x8; } return val; }
	public @property final bool bCanClimbSlopes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x4) != 0; }
	public @property final bool bCanClimbSlopes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x4; } return val; }
	public @property final bool bRepulsorCollisionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x2) != 0; }
	public @property final bool bRepulsorCollisionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x2; } return val; }
	public @property final bool bDisableWheelsWhenOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x1) != 0; }
	public @property final bool bDisableWheelsWhenOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x1; } return val; }
}
