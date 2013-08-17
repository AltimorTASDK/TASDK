module UnrealScript.Engine.ParticleModuleTypeDataBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleTypeDataBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleTypeDataBase")()); }
	private static __gshared ParticleModuleTypeDataBase mDefaultProperties;
	@property final static ParticleModuleTypeDataBase DefaultProperties() { mixin(MGDPC!(ParticleModuleTypeDataBase, "ParticleModuleTypeDataBase Engine.Default__ParticleModuleTypeDataBase")()); }
}
