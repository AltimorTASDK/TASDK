module UnrealScript.Engine.ParticleModuleKillBox;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleKillBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleKillBox : ParticleModuleKillBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleKillBox")); }
	private static __gshared ParticleModuleKillBox mDefaultProperties;
	@property final static ParticleModuleKillBox DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleKillBox)("ParticleModuleKillBox Engine.Default__ParticleModuleKillBox")); }
	@property final
	{
		auto ref
		{
			DistributionVector.RawDistributionVector UpperRightCorner() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 100); }
			DistributionVector.RawDistributionVector LowerLeftCorner() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bKillInside() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
		bool bKillInside(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
		bool bAbsolute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bAbsolute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	}
}
