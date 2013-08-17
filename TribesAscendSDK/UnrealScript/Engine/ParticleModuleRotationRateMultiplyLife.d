module UnrealScript.Engine.ParticleModuleRotationRateMultiplyLife;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotationRateMultiplyLife : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleRotationRateMultiplyLife")()); }
	private static __gshared ParticleModuleRotationRateMultiplyLife mDefaultProperties;
	@property final static ParticleModuleRotationRateMultiplyLife DefaultProperties() { mixin(MGDPC!(ParticleModuleRotationRateMultiplyLife, "ParticleModuleRotationRateMultiplyLife Engine.Default__ParticleModuleRotationRateMultiplyLife")()); }
	@property final auto ref DistributionFloat.RawDistributionFloat LifeMultiplier() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 72)()); }
}
