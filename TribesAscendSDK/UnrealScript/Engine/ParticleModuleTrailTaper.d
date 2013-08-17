module UnrealScript.Engine.ParticleModuleTrailTaper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleTrailBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleTrailTaper : ParticleModuleTrailBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTrailTaper")()); }
	private static __gshared ParticleModuleTrailTaper mDefaultProperties;
	@property final static ParticleModuleTrailTaper DefaultProperties() { mixin(MGDPC!(ParticleModuleTrailTaper, "ParticleModuleTrailTaper Engine.Default__ParticleModuleTrailTaper")()); }
	enum ETrailTaperMethod : ubyte
	{
		PETTM_None = 0,
		PETTM_Full = 1,
		PETTM_Partial = 2,
		PETTM_MAX = 3,
	}
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat TaperFactor() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 76)()); }
		ParticleModuleTrailTaper.ETrailTaperMethod TaperMethod() { mixin(MGPC!(ParticleModuleTrailTaper.ETrailTaperMethod, 72)()); }
	}
}
