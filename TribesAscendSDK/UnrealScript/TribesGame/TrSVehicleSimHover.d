module UnrealScript.TribesGame.TrSVehicleSimHover;

import UnrealScript.UDKBase.UDKVehicleSimChopper;
import UnrealScript.UDKBase.UDKVehicleSimHover;

extern(C++) interface TrSVehicleSimHover : UDKVehicleSimHover
{
	public @property final bool bShouldStabilizeRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 332) & 0x1) != 0; }
	public @property final bool bShouldStabilizeRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 332) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 332) &= ~0x1; } return val; }
	public @property final auto ref UDKVehicleSimChopper.AnglePID RollGain() { return *cast(UDKVehicleSimChopper.AnglePID*)(cast(size_t)cast(void*)this + 312); }
}
