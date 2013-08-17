module UnrealScript.Engine.ParticleModuleMeshRotationRate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRate : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleMeshRotationRate")()); }
	private static __gshared ParticleModuleMeshRotationRate mDefaultProperties;
	@property final static ParticleModuleMeshRotationRate DefaultProperties() { mixin(MGDPC!(ParticleModuleMeshRotationRate, "ParticleModuleMeshRotationRate Engine.Default__ParticleModuleMeshRotationRate")()); }
	@property final auto ref DistributionVector.RawDistributionVector StartRotationRate() { mixin(MGPC!(DistributionVector.RawDistributionVector, 72)()); }
}
