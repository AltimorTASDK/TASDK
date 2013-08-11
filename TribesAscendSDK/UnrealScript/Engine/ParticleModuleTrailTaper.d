module UnrealScript.Engine.ParticleModuleTrailTaper;

import UnrealScript.Engine.ParticleModuleTrailBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleTrailTaper : ParticleModuleTrailBase
{
public extern(D):
	enum ETrailTaperMethod : ubyte
	{
		PETTM_None = 0,
		PETTM_Full = 1,
		PETTM_Partial = 2,
		PETTM_MAX = 3,
	}
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat TaperFactor() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 76); }
		ParticleModuleTrailTaper.ETrailTaperMethod TaperMethod() { return *cast(ParticleModuleTrailTaper.ETrailTaperMethod*)(cast(size_t)cast(void*)this + 72); }
	}
}
