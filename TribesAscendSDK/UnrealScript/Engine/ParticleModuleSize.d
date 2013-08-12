module UnrealScript.Engine.ParticleModuleSize;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSize : ParticleModuleSizeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSize")); }
	private static __gshared ParticleModuleSize mDefaultProperties;
	@property final static ParticleModuleSize DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleSize)("ParticleModuleSize Engine.Default__ParticleModuleSize")); }
	@property final auto ref DistributionVector.RawDistributionVector StartSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
