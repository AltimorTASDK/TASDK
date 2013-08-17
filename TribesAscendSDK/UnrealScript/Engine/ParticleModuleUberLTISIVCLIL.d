module UnrealScript.Engine.ParticleModuleUberLTISIVCLIL;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberLTISIVCLIL : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleUberLTISIVCLIL")()); }
	private static __gshared ParticleModuleUberLTISIVCLIL mDefaultProperties;
	@property final static ParticleModuleUberLTISIVCLIL DefaultProperties() { mixin(MGDPC!(ParticleModuleUberLTISIVCLIL, "ParticleModuleUberLTISIVCLIL Engine.Default__ParticleModuleUberLTISIVCLIL")()); }
	@property final auto ref
	{
		DistributionVector.RawDistributionVector StartLocation() { mixin(MGPC!(DistributionVector.RawDistributionVector, 252)()); }
		DistributionFloat.RawDistributionFloat AlphaOverLife() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 224)()); }
		DistributionVector.RawDistributionVector ColorOverLife() { mixin(MGPC!(DistributionVector.RawDistributionVector, 196)()); }
		DistributionFloat.RawDistributionFloat StartVelocityRadial() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 168)()); }
		DistributionVector.RawDistributionVector StartVelocity() { mixin(MGPC!(DistributionVector.RawDistributionVector, 140)()); }
		DistributionVector.RawDistributionVector StartSize() { mixin(MGPC!(DistributionVector.RawDistributionVector, 112)()); }
		DistributionFloat.RawDistributionFloat Lifetime() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 84)()); }
	}
}
