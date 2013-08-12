module UnrealScript.Engine.ParticleModuleOrbitBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleOrbitBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleOrbitBase")); }
	private static __gshared ParticleModuleOrbitBase mDefaultProperties;
	@property final static ParticleModuleOrbitBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleOrbitBase)("ParticleModuleOrbitBase Engine.Default__ParticleModuleOrbitBase")); }
	@property final
	{
		bool bUseEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bUseEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
