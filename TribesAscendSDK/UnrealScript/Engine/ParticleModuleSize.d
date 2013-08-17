module UnrealScript.Engine.ParticleModuleSize;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSize : ParticleModuleSizeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSize")()); }
	private static __gshared ParticleModuleSize mDefaultProperties;
	@property final static ParticleModuleSize DefaultProperties() { mixin(MGDPC!(ParticleModuleSize, "ParticleModuleSize Engine.Default__ParticleModuleSize")()); }
	@property final auto ref DistributionVector.RawDistributionVector StartSize() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
}
