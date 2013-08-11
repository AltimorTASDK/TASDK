module UnrealScript.GameFramework.SeqEvent_MobileButton;

import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileButton : SeqEvent_MobileZoneBase
{
	public @property final bool bSendPressedOnlyOnTouchUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x4) != 0; }
	public @property final bool bSendPressedOnlyOnTouchUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x4; } return val; }
	public @property final bool bSendPressedOnlyOnTouchDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x2) != 0; }
	public @property final bool bSendPressedOnlyOnTouchDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x2; } return val; }
	public @property final bool bWasActiveLastFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
	public @property final bool bWasActiveLastFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
}
