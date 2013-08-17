module UnrealScript.Engine.ParticleModuleColorScaleOverDensity;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleColorBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleColorScaleOverDensity : ParticleModuleColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleColorScaleOverDensity")()); }
	private static __gshared ParticleModuleColorScaleOverDensity mDefaultProperties;
	@property final static ParticleModuleColorScaleOverDensity DefaultProperties() { mixin(MGDPC!(ParticleModuleColorScaleOverDensity, "ParticleModuleColorScaleOverDensity Engine.Default__ParticleModuleColorScaleOverDensity")()); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat AlphaScaleOverDensity() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 100)()); }
		DistributionVector.RawDistributionVector ColorScaleOverDensity() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
	}
}
