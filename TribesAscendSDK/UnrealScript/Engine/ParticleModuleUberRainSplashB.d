module UnrealScript.Engine.ParticleModuleUberRainSplashB;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberRainSplashB : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleUberRainSplashB")()); }
	private static __gshared ParticleModuleUberRainSplashB mDefaultProperties;
	@property final static ParticleModuleUberRainSplashB DefaultProperties() { mixin(MGDPC!(ParticleModuleUberRainSplashB, "ParticleModuleUberRainSplashB Engine.Default__ParticleModuleUberRainSplashB")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat StartRotationRate() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 228)()); }
			DistributionVector.RawDistributionVector LifeMultiplier() { mixin(MGPC!(DistributionVector.RawDistributionVector, 196)()); }
			DistributionFloat.RawDistributionFloat AlphaOverLife() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 168)()); }
			DistributionVector.RawDistributionVector ColorOverLife() { mixin(MGPC!(DistributionVector.RawDistributionVector, 140)()); }
			DistributionVector.RawDistributionVector StartSize() { mixin(MGPC!(DistributionVector.RawDistributionVector, 112)()); }
			DistributionFloat.RawDistributionFloat Lifetime() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 84)()); }
		}
		bool MultiplyZ() { mixin(MGBPC!(224, 0x4)()); }
		bool MultiplyZ(bool val) { mixin(MSBPC!(224, 0x4)()); }
		bool MultiplyY() { mixin(MGBPC!(224, 0x2)()); }
		bool MultiplyY(bool val) { mixin(MSBPC!(224, 0x2)()); }
		bool MultiplyX() { mixin(MGBPC!(224, 0x1)()); }
		bool MultiplyX(bool val) { mixin(MSBPC!(224, 0x1)()); }
	}
}
