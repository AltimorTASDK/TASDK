module UnrealScript.Engine.ParticleModuleColorScaleOverLife;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleColorBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleColorScaleOverLife : ParticleModuleColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleColorScaleOverLife")()); }
	private static __gshared ParticleModuleColorScaleOverLife mDefaultProperties;
	@property final static ParticleModuleColorScaleOverLife DefaultProperties() { mixin(MGDPC!(ParticleModuleColorScaleOverLife, "ParticleModuleColorScaleOverLife Engine.Default__ParticleModuleColorScaleOverLife")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat AlphaScaleOverLife() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 100)()); }
			DistributionVector.RawDistributionVector ColorScaleOverLife() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
		}
		bool bEmitterTime() { mixin(MGBPC!(128, 0x1)()); }
		bool bEmitterTime(bool val) { mixin(MSBPC!(128, 0x1)()); }
	}
}
