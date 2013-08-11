module UnrealScript.Engine.SeqAct_PrepareMapChange;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_PrepareMapChange : SeqAct_Latent
{
	public @property final auto ref ScriptArray!(ScriptName) InitiallyLoadedSecondaryLevelNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 256); }
	public @property final bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x2) != 0; }
	public @property final bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x2; } return val; }
	public @property final bool bIsHighPriority() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
	public @property final bool bIsHighPriority(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	public @property final auto ref ScriptName MainLevelName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 248); }
}
