module UnrealScript.Engine.InterpTrackInstToggle;

import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackToggle;

extern(C++) interface InterpTrackInstToggle : InterpTrackInst
{
	public @property final bool bSavedActiveState() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bSavedActiveState(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref InterpTrackToggle.ETrackToggleAction Action() { return *cast(InterpTrackToggle.ETrackToggleAction*)(cast(size_t)cast(void*)this + 60); }
}
