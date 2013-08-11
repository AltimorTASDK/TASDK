module UnrealScript.GameFramework.GameThirdPersonCameraMode_Default;

import UnrealScript.GameFramework.GameThirdPersonCameraMode;

extern(C++) interface GameThirdPersonCameraMode_Default : GameThirdPersonCameraMode
{
	public @property final auto ref float TemporaryOriginRotInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final bool bTemporaryOriginRotInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 564) & 0x1) != 0; }
	public @property final bool bTemporaryOriginRotInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 564) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 564) &= ~0x1; } return val; }
	public @property final auto ref float WorstLocAimingZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
}
