module UnrealScript.Engine.ParticleModuleLocationPrimitiveSphere;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLocationPrimitiveSphere : ParticleModuleLocationPrimitiveBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocationPrimitiveSphere")); }
	@property final auto ref DistributionFloat.RawDistributionFloat StartRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 132); }
}
