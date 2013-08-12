module UnrealScript.Engine.ParticleModuleKillBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleKillBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleKillBase")); }
	private static __gshared ParticleModuleKillBase mDefaultProperties;
	@property final static ParticleModuleKillBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleKillBase)("ParticleModuleKillBase Engine.Default__ParticleModuleKillBase")); }
}
