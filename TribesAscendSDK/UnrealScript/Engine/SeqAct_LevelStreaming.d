module UnrealScript.Engine.SeqAct_LevelStreaming;

import ScriptClasses;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.SeqAct_LevelStreamingBase;

extern(C++) interface SeqAct_LevelStreaming : SeqAct_LevelStreamingBase
{
	public @property final bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
	public @property final bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	public @property final auto ref ScriptName LevelName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
	// WARNING: Property 'Level' has the same name as a defined type!
}
