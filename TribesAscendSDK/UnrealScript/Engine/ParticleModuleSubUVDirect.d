module UnrealScript.Engine.ParticleModuleSubUVDirect;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleSubUVBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSubUVDirect : ParticleModuleSubUVBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSubUVDirect")); }
	private static __gshared ParticleModuleSubUVDirect mDefaultProperties;
	@property final static ParticleModuleSubUVDirect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleSubUVDirect)("ParticleModuleSubUVDirect Engine.Default__ParticleModuleSubUVDirect")); }
	@property final auto ref
	{
		DistributionVector.RawDistributionVector SubUVSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 100); }
		DistributionVector.RawDistributionVector SubUVPosition() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
	}
}
