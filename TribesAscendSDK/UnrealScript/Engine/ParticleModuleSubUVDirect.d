module UnrealScript.Engine.ParticleModuleSubUVDirect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSubUVDirect : ParticleModuleSubUVBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSubUVDirect")()); }
	private static __gshared ParticleModuleSubUVDirect mDefaultProperties;
	@property final static ParticleModuleSubUVDirect DefaultProperties() { mixin(MGDPC!(ParticleModuleSubUVDirect, "ParticleModuleSubUVDirect Engine.Default__ParticleModuleSubUVDirect")()); }
	@property final auto ref
	{
		DistributionVector.RawDistributionVector SubUVSize() { mixin(MGPC!("DistributionVector.RawDistributionVector", 100)()); }
		DistributionVector.RawDistributionVector SubUVPosition() { mixin(MGPC!("DistributionVector.RawDistributionVector", 72)()); }
	}
}
