module UnrealScript.Engine.ParticleModuleUberLTISIVCL;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberLTISIVCL : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleUberLTISIVCL")()); }
	private static __gshared ParticleModuleUberLTISIVCL mDefaultProperties;
	@property final static ParticleModuleUberLTISIVCL DefaultProperties() { mixin(MGDPC!(ParticleModuleUberLTISIVCL, "ParticleModuleUberLTISIVCL Engine.Default__ParticleModuleUberLTISIVCL")()); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat AlphaOverLife() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 224)()); }
		DistributionVector.RawDistributionVector ColorOverLife() { mixin(MGPC!("DistributionVector.RawDistributionVector", 196)()); }
		DistributionFloat.RawDistributionFloat StartVelocityRadial() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 168)()); }
		DistributionVector.RawDistributionVector StartVelocity() { mixin(MGPC!("DistributionVector.RawDistributionVector", 140)()); }
		DistributionVector.RawDistributionVector StartSize() { mixin(MGPC!("DistributionVector.RawDistributionVector", 112)()); }
		DistributionFloat.RawDistributionFloat Lifetime() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 84)()); }
	}
}
