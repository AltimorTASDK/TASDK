module UnrealScript.Engine.ParticleModuleUberBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleUberBase : ParticleModule
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleUberBase")); }
	@property final auto ref ScriptArray!(ScriptName) RequiredModules() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 72); }
}
