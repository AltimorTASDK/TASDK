module UnrealScript.Engine.SVehicleSimBase;

import UnrealScript.Engine.ActorComponent;

extern(C++) interface SVehicleSimBase : ActorComponent
{
public extern(D):
	@property final
	{
		auto ref
		{
			float WheelLatExtremumValue() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float WheelLatExtremumSlip() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float WheelLatAsymptoteSlip() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float WheelLatAsymptoteValue() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float AutoDriveSteer() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			float WheelInertia() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float WheelLongAsymptoteValue() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float WheelLongAsymptoteSlip() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float WheelLongExtremumValue() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float WheelLongExtremumSlip() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float WheelSuspensionBias() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float WheelSuspensionDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float WheelSuspensionStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
		}
		bool bAutoDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x4) != 0; }
		bool bAutoDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x4; } return val; }
		bool bClampedFrictionModel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x2) != 0; }
		bool bClampedFrictionModel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x2; } return val; }
		bool bWheelSpeedOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
		bool bWheelSpeedOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
	}
}
