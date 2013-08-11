module UnrealScript.UnrealEd.SoundTTSFactory;

import ScriptClasses;
import UnrealScript.Core.Factory;

extern(C++) interface SoundTTSFactory : Factory
{
	public @property final bool bUseTTS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bUseTTS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final auto ref ScriptString SpokenText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final bool bAutoCreateCue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bAutoCreateCue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	public @property final bool bIncludeAttenuationNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
	public @property final bool bIncludeAttenuationNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	public @property final bool bIncludeModulatorNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bIncludeModulatorNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final bool bIncludeLoopingNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool bIncludeLoopingNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref float CueVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
}
