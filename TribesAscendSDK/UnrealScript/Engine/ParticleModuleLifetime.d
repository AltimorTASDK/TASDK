module UnrealScript.Engine.ParticleModuleLifetime;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLifetimeBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLifetime : ParticleModuleLifetimeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleLifetime")()); }
	private static __gshared ParticleModuleLifetime mDefaultProperties;
	@property final static ParticleModuleLifetime DefaultProperties() { mixin(MGDPC!(ParticleModuleLifetime, "ParticleModuleLifetime Engine.Default__ParticleModuleLifetime")()); }
	@property final auto ref DistributionFloat.RawDistributionFloat Lifetime() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 72)()); }
}
