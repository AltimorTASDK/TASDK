module UnrealScript.Engine.ParticleModuleSizeMultiplyLife;

import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSizeMultiplyLife : ParticleModuleSizeBase
{
	public @property final bool MultiplyZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
	public @property final bool MultiplyZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
	public @property final bool MultiplyY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
	public @property final bool MultiplyY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
	public @property final bool MultiplyX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool MultiplyX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector LifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
