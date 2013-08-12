module UnrealScript.Engine.ParticleModuleAcceleration;

import ScriptClasses;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleAccelerationBase;

extern(C++) interface ParticleModuleAcceleration : ParticleModuleAccelerationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleAcceleration")); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector Acceleration() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
		bool bApplyOwnerScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bApplyOwnerScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}
