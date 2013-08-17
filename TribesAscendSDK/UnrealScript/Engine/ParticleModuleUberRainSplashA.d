module UnrealScript.Engine.ParticleModuleUberRainSplashA;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleUberRainSplashA : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleUberRainSplashA")); }
	private static __gshared ParticleModuleUberRainSplashA mDefaultProperties;
	@property final static ParticleModuleUberRainSplashA DefaultProperties() { mixin(MGDPC("ParticleModuleUberRainSplashA", "ParticleModuleUberRainSplashA Engine.Default__ParticleModuleUberRainSplashA")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat AlphaOverLife() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 228)); }
			DistributionVector.RawDistributionVector ColorOverLife() { mixin(MGPC("DistributionVector.RawDistributionVector", 200)); }
			DistributionVector.RawDistributionVector LifeMultiplier() { mixin(MGPC("DistributionVector.RawDistributionVector", 172)); }
			DistributionVector.RawDistributionVector StartRotation() { mixin(MGPC("DistributionVector.RawDistributionVector", 140)); }
			DistributionVector.RawDistributionVector StartSize() { mixin(MGPC("DistributionVector.RawDistributionVector", 112)); }
			DistributionFloat.RawDistributionFloat Lifetime() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 84)); }
		}
		bool MultiplyZ() { mixin(MGBPC(168, 0x8)); }
		bool MultiplyZ(bool val) { mixin(MSBPC(168, 0x8)); }
		bool MultiplyY() { mixin(MGBPC(168, 0x4)); }
		bool MultiplyY(bool val) { mixin(MSBPC(168, 0x4)); }
		bool MultiplyX() { mixin(MGBPC(168, 0x2)); }
		bool MultiplyX(bool val) { mixin(MSBPC(168, 0x2)); }
		bool bInheritParent() { mixin(MGBPC(168, 0x1)); }
		bool bInheritParent(bool val) { mixin(MSBPC(168, 0x1)); }
	}
}
