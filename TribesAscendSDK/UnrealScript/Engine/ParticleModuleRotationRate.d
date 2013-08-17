module UnrealScript.Engine.ParticleModuleRotationRate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotationRate : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleRotationRate")()); }
	private static __gshared ParticleModuleRotationRate mDefaultProperties;
	@property final static ParticleModuleRotationRate DefaultProperties() { mixin(MGDPC!(ParticleModuleRotationRate, "ParticleModuleRotationRate Engine.Default__ParticleModuleRotationRate")()); }
	@property final auto ref DistributionFloat.RawDistributionFloat StartRotationRate() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 72)()); }
}
