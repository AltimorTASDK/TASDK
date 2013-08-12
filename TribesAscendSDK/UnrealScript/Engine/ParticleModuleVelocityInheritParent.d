module UnrealScript.Engine.ParticleModuleVelocityInheritParent;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocityInheritParent : ParticleModuleVelocityBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleVelocityInheritParent")); }
	@property final auto ref DistributionVector.RawDistributionVector Scale() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
}
