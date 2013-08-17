module UnrealScript.Engine.ParticleModuleVelocityOverLifetime;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocityOverLifetime : ParticleModuleVelocityBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleVelocityOverLifetime")()); }
	private static __gshared ParticleModuleVelocityOverLifetime mDefaultProperties;
	@property final static ParticleModuleVelocityOverLifetime DefaultProperties() { mixin(MGDPC!(ParticleModuleVelocityOverLifetime, "ParticleModuleVelocityOverLifetime Engine.Default__ParticleModuleVelocityOverLifetime")()); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector VelOverLife() { mixin(MGPC!(DistributionVector.RawDistributionVector, 76)()); }
		bool Absolute() { mixin(MGBPC!(104, 0x1)()); }
		bool Absolute(bool val) { mixin(MSBPC!(104, 0x1)()); }
	}
}
