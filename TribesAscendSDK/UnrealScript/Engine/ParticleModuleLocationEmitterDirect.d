module UnrealScript.Engine.ParticleModuleLocationEmitterDirect;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationBase;

extern(C++) interface ParticleModuleLocationEmitterDirect : ParticleModuleLocationBase
{
public extern(D):
	@property final auto ref ScriptName EmitterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
}
