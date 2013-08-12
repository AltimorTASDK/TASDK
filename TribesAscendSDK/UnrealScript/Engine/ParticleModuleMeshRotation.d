module UnrealScript.Engine.ParticleModuleMeshRotation;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleRotationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleMeshRotation : ParticleModuleRotationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleMeshRotation")); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector StartRotation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		bool bInheritParent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bInheritParent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
