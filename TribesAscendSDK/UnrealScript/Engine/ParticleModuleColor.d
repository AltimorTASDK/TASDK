module UnrealScript.Engine.ParticleModuleColor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleColorBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleColor : ParticleModuleColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleColor")()); }
	private static __gshared ParticleModuleColor mDefaultProperties;
	@property final static ParticleModuleColor DefaultProperties() { mixin(MGDPC!(ParticleModuleColor, "ParticleModuleColor Engine.Default__ParticleModuleColor")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat StartAlpha() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 100)()); }
			DistributionVector.RawDistributionVector StartColor() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
		}
		bool bClampAlpha() { mixin(MGBPC!(128, 0x1)()); }
		bool bClampAlpha(bool val) { mixin(MSBPC!(128, 0x1)()); }
	}
}
