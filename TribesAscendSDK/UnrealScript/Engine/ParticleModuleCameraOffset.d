module UnrealScript.Engine.ParticleModuleCameraOffset;

import UnrealScript.Engine.ParticleModuleCameraBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleCameraOffset : ParticleModuleCameraBase
{
	enum EParticleCameraOffsetUpdateMethod : ubyte
	{
		EPCOUM_DirectSet = 0,
		EPCOUM_Additive = 1,
		EPCOUM_Scalar = 2,
		EPCOUM_MAX = 3,
	}
	public @property final auto ref ParticleModuleCameraOffset.EParticleCameraOffsetUpdateMethod UpdateMethod() { return *cast(ParticleModuleCameraOffset.EParticleCameraOffsetUpdateMethod*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref DistributionFloat.RawDistributionFloat CameraOffset() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool bSpawnTimeOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bSpawnTimeOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
}
