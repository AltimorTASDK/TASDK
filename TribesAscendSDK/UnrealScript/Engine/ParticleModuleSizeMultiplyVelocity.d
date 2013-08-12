module UnrealScript.Engine.ParticleModuleSizeMultiplyVelocity;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSizeMultiplyVelocity : ParticleModuleSizeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSizeMultiplyVelocity")); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector VelocityMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		bool MultiplyZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
		bool MultiplyZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
		bool MultiplyY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
		bool MultiplyY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
		bool MultiplyX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool MultiplyX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
