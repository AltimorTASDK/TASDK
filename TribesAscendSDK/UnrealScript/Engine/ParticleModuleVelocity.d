module UnrealScript.Engine.ParticleModuleVelocity;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocity : ParticleModuleVelocityBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleVelocity")()); }
	private static __gshared ParticleModuleVelocity mDefaultProperties;
	@property final static ParticleModuleVelocity DefaultProperties() { mixin(MGDPC!(ParticleModuleVelocity, "ParticleModuleVelocity Engine.Default__ParticleModuleVelocity")()); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat StartVelocityRadial() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 104)()); }
		DistributionVector.RawDistributionVector StartVelocity() { mixin(MGPC!(DistributionVector.RawDistributionVector, 76)()); }
	}
}
