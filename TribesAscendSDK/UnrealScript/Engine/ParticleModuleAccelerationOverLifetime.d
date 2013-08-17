module UnrealScript.Engine.ParticleModuleAccelerationOverLifetime;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAccelerationBase;

extern(C++) interface ParticleModuleAccelerationOverLifetime : ParticleModuleAccelerationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleAccelerationOverLifetime")()); }
	private static __gshared ParticleModuleAccelerationOverLifetime mDefaultProperties;
	@property final static ParticleModuleAccelerationOverLifetime DefaultProperties() { mixin(MGDPC!(ParticleModuleAccelerationOverLifetime, "ParticleModuleAccelerationOverLifetime Engine.Default__ParticleModuleAccelerationOverLifetime")()); }
	@property final auto ref DistributionVector.RawDistributionVector AccelOverLife() { mixin(MGPC!("DistributionVector.RawDistributionVector", 76)()); }
}
