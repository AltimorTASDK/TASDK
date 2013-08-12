module UnrealScript.Engine.ParticleModuleSubUVMovie;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleSubUV;

extern(C++) interface ParticleModuleSubUVMovie : ParticleModuleSubUV
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSubUVMovie")); }
	@property final
	{
		auto ref
		{
			int StartingFrame() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			DistributionFloat.RawDistributionFloat FrameRate() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bUseEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bUseEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
