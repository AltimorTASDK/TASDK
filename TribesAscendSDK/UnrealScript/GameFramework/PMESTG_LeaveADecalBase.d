module UnrealScript.GameFramework.PMESTG_LeaveADecalBase;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface PMESTG_LeaveADecalBase : ParticleModuleEventSendToGame
{
public extern(D):
	@property final auto ref ScriptClass PhysicalMaterialPropertyClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 60); }
}
