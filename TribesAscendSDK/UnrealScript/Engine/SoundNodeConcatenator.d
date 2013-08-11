module UnrealScript.Engine.SoundNodeConcatenator;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeConcatenator : SoundNode
{
	public @property final auto ref ScriptArray!(float) InputVolume() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 76); }
}
