module UnrealScript.Engine.ParticleModuleSpawnBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleSpawnBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSpawnBase")); }
	@property final
	{
		bool bProcessBurstList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
		bool bProcessBurstList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
		bool bProcessSpawnRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bProcessSpawnRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
