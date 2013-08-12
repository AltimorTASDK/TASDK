module UnrealScript.Engine.ParticleModuleLifetimeBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleLifetimeBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLifetimeBase")); }
}
