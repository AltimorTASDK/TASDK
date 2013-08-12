module UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLocationPrimitiveSphere : ParticleModuleLocationPrimitiveBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocationPrimitiveSphere")); }
	private static __gshared ParticleModuleLocationPrimitiveSphere mDefaultProperties;
	@property final static ParticleModuleLocationPrimitiveSphere DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleLocationPrimitiveSphere)("ParticleModuleLocationPrimitiveSphere Engine.Default__ParticleModuleLocationPrimitiveSphere")); }
	@property final auto ref DistributionFloat.RawDistributionFloat StartRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 132); }
}
