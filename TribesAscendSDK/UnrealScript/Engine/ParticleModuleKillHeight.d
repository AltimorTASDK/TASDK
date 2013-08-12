module UnrealScript.Engine.ParticleModuleKillHeight;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleKillBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleKillHeight : ParticleModuleKillBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleKillHeight")); }
	private static __gshared ParticleModuleKillHeight mDefaultProperties;
	@property final static ParticleModuleKillHeight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleKillHeight)("ParticleModuleKillHeight Engine.Default__ParticleModuleKillHeight")); }
	@property final
	{
		@property final auto ref DistributionFloat.RawDistributionFloat Height() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 72); }
		bool bApplyPSysScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
		bool bApplyPSysScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
		bool bFloor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
		bool bFloor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
		bool bAbsolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bAbsolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
