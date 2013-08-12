module UnrealScript.Engine.ParticleModuleLocation;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleLocation : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocation")); }
	private static __gshared ParticleModuleLocation mDefaultProperties;
	@property final static ParticleModuleLocation DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleLocation)("ParticleModuleLocation Engine.Default__ParticleModuleLocation")); }
	@property final auto ref DistributionVector.RawDistributionVector StartLocation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
}
