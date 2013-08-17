module UnrealScript.Engine.ParticleModuleColorOverLife;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleColorBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleColorOverLife : ParticleModuleColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleColorOverLife")); }
	private static __gshared ParticleModuleColorOverLife mDefaultProperties;
	@property final static ParticleModuleColorOverLife DefaultProperties() { mixin(MGDPC("ParticleModuleColorOverLife", "ParticleModuleColorOverLife Engine.Default__ParticleModuleColorOverLife")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat AlphaOverLife() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 100)); }
			DistributionVector.RawDistributionVector ColorOverLife() { mixin(MGPC("DistributionVector.RawDistributionVector", 72)); }
		}
		bool bClampAlpha() { mixin(MGBPC(128, 0x1)); }
		bool bClampAlpha(bool val) { mixin(MSBPC(128, 0x1)); }
	}
}
