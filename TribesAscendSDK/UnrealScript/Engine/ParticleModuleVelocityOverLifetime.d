module UnrealScript.Engine.ParticleModuleVelocityOverLifetime;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocityOverLifetime : ParticleModuleVelocityBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleVelocityOverLifetime")); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector VelOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
		bool Absolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool Absolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}
