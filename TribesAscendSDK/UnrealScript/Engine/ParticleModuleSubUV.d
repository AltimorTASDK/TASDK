module UnrealScript.Engine.ParticleModuleSubUV;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleSubUV : ParticleModuleSubUVBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSubUV")()); }
	private static __gshared ParticleModuleSubUV mDefaultProperties;
	@property final static ParticleModuleSubUV DefaultProperties() { mixin(MGDPC!(ParticleModuleSubUV, "ParticleModuleSubUV Engine.Default__ParticleModuleSubUV")()); }
	@property final auto ref DistributionFloat.RawDistributionFloat SubImageIndex() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 72)()); }
}
