module UnrealScript.Engine.SoundNodeMixer;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeMixer : SoundNode
{
	public @property final auto ref ScriptArray!(float) InputVolume() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 76); }
}
