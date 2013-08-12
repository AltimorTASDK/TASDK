module UnrealScript.Engine.ParticleModuleSizeScaleByTime;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleSizeBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSizeScaleByTime : ParticleModuleSizeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSizeScaleByTime")); }
	private static __gshared ParticleModuleSizeScaleByTime mDefaultProperties;
	@property final static ParticleModuleSizeScaleByTime DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleSizeScaleByTime)("ParticleModuleSizeScaleByTime Engine.Default__ParticleModuleSizeScaleByTime")); }
	@property final
	{
		@property final auto ref DistributionVector.RawDistributionVector SizeScaleByTime() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		bool bEnableZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
		bool bEnableZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
		bool bEnableY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
		bool bEnableY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
		bool bEnableX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bEnableX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
