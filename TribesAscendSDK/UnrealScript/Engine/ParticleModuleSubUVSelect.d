module UnrealScript.Engine.ParticleModuleSubUVSelect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSubUVSelect : ParticleModuleSubUVBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSubUVSelect")()); }
	private static __gshared ParticleModuleSubUVSelect mDefaultProperties;
	@property final static ParticleModuleSubUVSelect DefaultProperties() { mixin(MGDPC!(ParticleModuleSubUVSelect, "ParticleModuleSubUVSelect Engine.Default__ParticleModuleSubUVSelect")()); }
	@property final auto ref DistributionVector.RawDistributionVector SubImageSelect() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
}
