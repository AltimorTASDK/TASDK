module UnrealScript.Engine.ParticleModuleMeshRotation;

import UnrealScript.Engine.ParticleModuleRotationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotation : ParticleModuleRotationBase
{
	public @property final bool bInheritParent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bInheritParent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref DistributionVector.RawDistributionVector StartRotation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
