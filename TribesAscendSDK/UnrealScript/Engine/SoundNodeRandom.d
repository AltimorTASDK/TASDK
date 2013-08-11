module UnrealScript.Engine.SoundNodeRandom;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeRandom : SoundNode
{
	public @property final auto ref ScriptArray!(float) Weights() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptArray!(bool) HasBeenUsed() { return *cast(ScriptArray!(bool)*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int NumRandomUsed() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final bool bRandomizeWithoutReplacement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bRandomizeWithoutReplacement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
}
