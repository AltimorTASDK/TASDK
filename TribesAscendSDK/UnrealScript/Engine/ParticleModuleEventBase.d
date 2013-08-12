module UnrealScript.Engine.ParticleModuleEventBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleEventBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleEventBase")); }
	private static __gshared ParticleModuleEventBase mDefaultProperties;
	@property final static ParticleModuleEventBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleEventBase)("ParticleModuleEventBase Engine.Default__ParticleModuleEventBase")); }
}
