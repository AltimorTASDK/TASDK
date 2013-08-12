module UnrealScript.Engine.ParticleModuleLifetime;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLifetimeBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLifetime : ParticleModuleLifetimeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLifetime")); }
	@property final auto ref DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
}
