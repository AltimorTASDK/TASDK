module UnrealScript.GameFramework.SeqEvent_MobileButton;

import UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

extern(C++) interface SeqEvent_MobileButton : SeqEvent_MobileZoneBase
{
public extern(D):
	@property final
	{
		bool bSendPressedOnlyOnTouchUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x4) != 0; }
		bool bSendPressedOnlyOnTouchUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x4; } return val; }
		bool bSendPressedOnlyOnTouchDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x2) != 0; }
		bool bSendPressedOnlyOnTouchDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x2; } return val; }
		bool bWasActiveLastFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
		bool bWasActiveLastFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	}
}
