module UnrealScript.UDKBase.UDKSkelControl_LookAt;

import UnrealScript.Engine.SkelControlLookAt;

extern(C++) interface UDKSkelControl_LookAt : SkelControlLookAt
{
public extern(D):
	@property final
	{
		auto ref
		{
			float RollLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
			float PitchLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
			float YawLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
		}
		bool bShowPerAxisLimits() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x8) != 0; }
		bool bShowPerAxisLimits(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x8; } return val; }
		bool bLimitRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x4) != 0; }
		bool bLimitRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x4; } return val; }
		bool bLimitPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x2) != 0; }
		bool bLimitPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x2; } return val; }
		bool bLimitYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x1) != 0; }
		bool bLimitYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x1; } return val; }
	}
}
