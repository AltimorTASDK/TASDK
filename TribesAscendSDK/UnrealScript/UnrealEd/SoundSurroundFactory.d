module UnrealScript.UnrealEd.SoundSurroundFactory;

import UnrealScript.Core.Factory;

extern(C++) interface SoundSurroundFactory : Factory
{
	public @property final auto ref float CueVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
}
