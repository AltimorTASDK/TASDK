module UnrealScript.Engine.ParticleModuleTrailTaper;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTrailBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleTrailTaper : ParticleModuleTrailBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTrailTaper")); }
	private static __gshared ParticleModuleTrailTaper mDefaultProperties;
	@property final static ParticleModuleTrailTaper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleTrailTaper)("ParticleModuleTrailTaper Engine.Default__ParticleModuleTrailTaper")); }
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
