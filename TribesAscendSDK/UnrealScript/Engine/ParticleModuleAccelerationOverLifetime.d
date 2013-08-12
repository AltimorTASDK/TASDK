module UnrealScript.Engine.ParticleModuleAccelerationOverLifetime;

import ScriptClasses;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAccelerationBase;

extern(C++) interface ParticleModuleAccelerationOverLifetime : ParticleModuleAccelerationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleAccelerationOverLifetime")); }
	private static __gshared ParticleModuleAccelerationOverLifetime mDefaultProperties;
	@property final static ParticleModuleAccelerationOverLifetime DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleAccelerationOverLifetime)("ParticleModuleAccelerationOverLifetime Engine.Default__ParticleModuleAccelerationOverLifetime")); }
	@property final auto ref DistributionVector.RawDistributionVector AccelOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
}
