module UnrealScript.UnrealEd.SoundFactory;

import UnrealScript.Core.Factory;

extern(C++) interface SoundFactory : Factory
{
	public @property final bool bAutoCreateCue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bAutoCreateCue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	public @property final bool bIncludeAttenuationNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
	public @property final bool bIncludeAttenuationNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	public @property final bool bIncludeModulatorNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bIncludeModulatorNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final bool bIncludeLoopingNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool bIncludeLoopingNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref float CueVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
}
