module UnrealScript.Engine.ParticleModuleLocation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleLocation : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleLocation")()); }
	private static __gshared ParticleModuleLocation mDefaultProperties;
	@property final static ParticleModuleLocation DefaultProperties() { mixin(MGDPC!(ParticleModuleLocation, "ParticleModuleLocation Engine.Default__ParticleModuleLocation")()); }
	@property final auto ref DistributionVector.RawDistributionVector StartLocation() { mixin(MGPC!(DistributionVector.RawDistributionVector, 72)()); }
}
