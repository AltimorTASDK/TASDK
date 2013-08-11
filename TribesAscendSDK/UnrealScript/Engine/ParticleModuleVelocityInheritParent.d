module UnrealScript.Engine.ParticleModuleVelocityInheritParent;

import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocityInheritParent : ParticleModuleVelocityBase
{
	public @property final auto ref DistributionVector.RawDistributionVector Scale() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
}
