module UnrealScript.Engine.ParticleModuleSpawnBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleSpawnBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSpawnBase")()); }
	private static __gshared ParticleModuleSpawnBase mDefaultProperties;
	@property final static ParticleModuleSpawnBase DefaultProperties() { mixin(MGDPC!(ParticleModuleSpawnBase, "ParticleModuleSpawnBase Engine.Default__ParticleModuleSpawnBase")()); }
	@property final
	{
		bool bProcessBurstList() { mixin(MGBPC!(72, 0x2)()); }
		bool bProcessBurstList(bool val) { mixin(MSBPC!(72, 0x2)()); }
		bool bProcessSpawnRate() { mixin(MGBPC!(72, 0x1)()); }
		bool bProcessSpawnRate(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
}
