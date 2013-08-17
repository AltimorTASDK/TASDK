module UnrealScript.Engine.ParticleModuleAttractorLine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleAttractorBase;

extern(C++) interface ParticleModuleAttractorLine : ParticleModuleAttractorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleAttractorLine")()); }
	private static __gshared ParticleModuleAttractorLine mDefaultProperties;
	@property final static ParticleModuleAttractorLine DefaultProperties() { mixin(MGDPC!(ParticleModuleAttractorLine, "ParticleModuleAttractorLine Engine.Default__ParticleModuleAttractorLine")()); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat Strength() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 124)()); }
		DistributionFloat.RawDistributionFloat Range() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 96)()); }
		Vector EndPoint1() { mixin(MGPC!("Vector", 84)()); }
		Vector EndPoint0() { mixin(MGPC!("Vector", 72)()); }
	}
}
