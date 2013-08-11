module UnrealScript.Engine.ParticleModuleUberBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModule;

extern(C++) interface ParticleModuleUberBase : ParticleModule
{
	public @property final auto ref ScriptArray!(ScriptName) RequiredModules() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 72); }
}
