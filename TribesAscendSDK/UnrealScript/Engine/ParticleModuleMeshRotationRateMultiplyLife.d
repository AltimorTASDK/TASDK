module UnrealScript.Engine.ParticleModuleMeshRotationRateMultiplyLife;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotationRateMultiplyLife : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleMeshRotationRateMultiplyLife")()); }
	private static __gshared ParticleModuleMeshRotationRateMultiplyLife mDefaultProperties;
	@property final static ParticleModuleMeshRotationRateMultiplyLife DefaultProperties() { mixin(MGDPC!(ParticleModuleMeshRotationRateMultiplyLife, "ParticleModuleMeshRotationRateMultiplyLife Engine.Default__ParticleModuleMeshRotationRateMultiplyLife")()); }
	@property final auto ref DistributionVector.RawDistributionVector LifeMultiplier() { mixin(MGPC!(DistributionVector.RawDistributionVector, 72)()); }
}
