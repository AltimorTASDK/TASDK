module UnrealScript.Engine.ParticleModuleSourceMovement;

import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSourceMovement : ParticleModuleLocationBase
{
public extern(D):
	@property final auto ref DistributionVector.RawDistributionVector SourceMovementScale() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
