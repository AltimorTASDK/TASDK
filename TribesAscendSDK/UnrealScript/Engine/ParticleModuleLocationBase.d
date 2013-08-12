module UnrealScript.Engine.ParticleModuleLocationBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLocationBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocationBase")); }
	private static __gshared ParticleModuleLocationBase mDefaultProperties;
	@property final static ParticleModuleLocationBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleLocationBase)("ParticleModuleLocationBase Engine.Default__ParticleModuleLocationBase")); }
}
