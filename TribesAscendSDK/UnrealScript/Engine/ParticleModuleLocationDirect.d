module UnrealScript.Engine.ParticleModuleLocationDirect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleLocationDirect : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleLocationDirect")); }
	private static __gshared ParticleModuleLocationDirect mDefaultProperties;
	@property final static ParticleModuleLocationDirect DefaultProperties() { mixin(MGDPC("ParticleModuleLocationDirect", "ParticleModuleLocationDirect Engine.Default__ParticleModuleLocationDirect")); }
	@property final auto ref
	{
		DistributionVector.RawDistributionVector Direction() { mixin(MGPC("DistributionVector.RawDistributionVector", 156)); }
		DistributionVector.RawDistributionVector ScaleFactor() { mixin(MGPC("DistributionVector.RawDistributionVector", 128)); }
		DistributionVector.RawDistributionVector LocationOffset() { mixin(MGPC("DistributionVector.RawDistributionVector", 100)); }
		DistributionVector.RawDistributionVector Location() { mixin(MGPC("DistributionVector.RawDistributionVector", 72)); }
	}
}
