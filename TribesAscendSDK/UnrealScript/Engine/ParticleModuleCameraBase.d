module UnrealScript.Engine.ParticleModuleCameraBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleCameraBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleCameraBase")); }
}
