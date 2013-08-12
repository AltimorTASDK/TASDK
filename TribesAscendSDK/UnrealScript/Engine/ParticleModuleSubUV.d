module UnrealScript.Engine.ParticleModuleSubUV;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleSubUV : ParticleModuleSubUVBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSubUV")); }
	private static __gshared ParticleModuleSubUV mDefaultProperties;
	@property final static ParticleModuleSubUV DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleSubUV)("ParticleModuleSubUV Engine.Default__ParticleModuleSubUV")); }
	@property final auto ref DistributionFloat.RawDistributionFloat SubImageIndex() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}
