module UnrealScript.Engine.ParticleModuleRotationRate;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotationRateBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleRotationRate : ParticleModuleRotationRateBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleRotationRate")); }
	private static __gshared ParticleModuleRotationRate mDefaultProperties;
	@property final static ParticleModuleRotationRate DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleRotationRate)("ParticleModuleRotationRate Engine.Default__ParticleModuleRotationRate")); }
	@property final auto ref DistributionFloat.RawDistributionFloat StartRotationRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}
