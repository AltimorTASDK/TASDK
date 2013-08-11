module UnrealScript.Engine.InterpTrackFade;

import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFade : InterpTrackFloatBase
{
	public @property final bool bPersistFade() { return (*cast(uint*)(cast(size_t)cast(void*)this + 148) & 0x1) != 0; }
	public @property final bool bPersistFade(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 148) &= ~0x1; } return val; }
}
