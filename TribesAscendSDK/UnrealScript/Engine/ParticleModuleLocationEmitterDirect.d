module UnrealScript.Engine.ParticleModuleLocationEmitterDirect;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationBase;

extern(C++) interface ParticleModuleLocationEmitterDirect : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleLocationEmitterDirect")); }
	@property final auto ref ScriptName EmitterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
}
