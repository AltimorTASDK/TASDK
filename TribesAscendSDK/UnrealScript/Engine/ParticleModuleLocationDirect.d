module UnrealScript.Engine.ParticleModuleLocationDirect;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleLocationDirect : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocationDirect")); }
	private static __gshared ParticleModuleLocationDirect mDefaultProperties;
	@property final static ParticleModuleLocationDirect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleLocationDirect)("ParticleModuleLocationDirect Engine.Default__ParticleModuleLocationDirect")); }
	@property final auto ref
	{
		DistributionVector.RawDistributionVector Direction() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 156); }
		DistributionVector.RawDistributionVector ScaleFactor() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 128); }
		DistributionVector.RawDistributionVector LocationOffset() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 100); }
		DistributionVector.RawDistributionVector Location() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
	}
}
