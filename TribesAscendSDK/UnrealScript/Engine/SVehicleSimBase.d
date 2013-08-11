module UnrealScript.Engine.SVehicleSimBase;

import UnrealScript.Engine.ActorComponent;

extern(C++) interface SVehicleSimBase : ActorComponent
{
	public @property final auto ref float WheelLatExtremumValue() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float WheelLatExtremumSlip() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float WheelLatAsymptoteSlip() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float WheelLatAsymptoteValue() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float AutoDriveSteer() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final bool bAutoDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x4) != 0; }
	public @property final bool bAutoDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x4; } return val; }
	public @property final bool bClampedFrictionModel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x2) != 0; }
	public @property final bool bClampedFrictionModel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x2; } return val; }
	public @property final bool bWheelSpeedOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
	public @property final bool bWheelSpeedOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
	public @property final auto ref float WheelInertia() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float WheelLongAsymptoteValue() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float WheelLongAsymptoteSlip() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float WheelLongExtremumValue() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float WheelLongExtremumSlip() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float WheelSuspensionBias() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float WheelSuspensionDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float WheelSuspensionStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
}
