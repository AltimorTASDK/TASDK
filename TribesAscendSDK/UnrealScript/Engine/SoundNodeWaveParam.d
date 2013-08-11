module UnrealScript.Engine.SoundNodeWaveParam;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeWaveParam : SoundNode
{
public extern(D):
	@property final auto ref ScriptName WaveParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
}
