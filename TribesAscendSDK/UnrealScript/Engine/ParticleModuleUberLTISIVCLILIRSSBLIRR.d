module UnrealScript.Engine.ParticleModuleUberLTISIVCLILIRSSBLIRR;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberLTISIVCLILIRSSBLIRR : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleUberLTISIVCLILIRSSBLIRR")()); }
	private static __gshared ParticleModuleUberLTISIVCLILIRSSBLIRR mDefaultProperties;
	@property final static ParticleModuleUberLTISIVCLILIRSSBLIRR DefaultProperties() { mixin(MGDPC!(ParticleModuleUberLTISIVCLILIRSSBLIRR, "ParticleModuleUberLTISIVCLILIRSSBLIRR Engine.Default__ParticleModuleUberLTISIVCLILIRSSBLIRR")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat StartRotationRate() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 340)()); }
			DistributionVector.RawDistributionVector SizeLifeMultiplier() { mixin(MGPC!("DistributionVector.RawDistributionVector", 308)()); }
			DistributionFloat.RawDistributionFloat StartRotation() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 280)()); }
			DistributionVector.RawDistributionVector StartLocation() { mixin(MGPC!("DistributionVector.RawDistributionVector", 252)()); }
			DistributionFloat.RawDistributionFloat AlphaOverLife() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 224)()); }
			DistributionVector.RawDistributionVector ColorOverLife() { mixin(MGPC!("DistributionVector.RawDistributionVector", 196)()); }
			DistributionFloat.RawDistributionFloat StartVelocityRadial() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 168)()); }
			DistributionVector.RawDistributionVector StartVelocity() { mixin(MGPC!("DistributionVector.RawDistributionVector", 140)()); }
			DistributionVector.RawDistributionVector StartSize() { mixin(MGPC!("DistributionVector.RawDistributionVector", 112)()); }
			DistributionFloat.RawDistributionFloat Lifetime() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 84)()); }
		}
		bool SizeMultiplyZ() { mixin(MGBPC!(336, 0x4)()); }
		bool SizeMultiplyZ(bool val) { mixin(MSBPC!(336, 0x4)()); }
		bool SizeMultiplyY() { mixin(MGBPC!(336, 0x2)()); }
		bool SizeMultiplyY(bool val) { mixin(MSBPC!(336, 0x2)()); }
		bool SizeMultiplyX() { mixin(MGBPC!(336, 0x1)()); }
		bool SizeMultiplyX(bool val) { mixin(MSBPC!(336, 0x1)()); }
	}
}
