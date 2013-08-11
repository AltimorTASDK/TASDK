module UnrealScript.Engine.AnimationCompressionAlgorithm_Automatic;

import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_Automatic : AnimationCompressionAlgorithm
{
	public @property final bool bRaiseMaxErrorToExisting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x40) != 0; }
	public @property final bool bRaiseMaxErrorToExisting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x40; } return val; }
	public @property final bool bAutoReplaceIfExistingErrorTooGreat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x20) != 0; }
	public @property final bool bAutoReplaceIfExistingErrorTooGreat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x20; } return val; }
	public @property final bool bRunCurrentDefaultCompressor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x10) != 0; }
	public @property final bool bRunCurrentDefaultCompressor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x10; } return val; }
	public @property final bool bTryIntervalKeyRemoval() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
	public @property final bool bTryIntervalKeyRemoval(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
	public @property final bool bTryLinearKeyRemovalCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
	public @property final bool bTryLinearKeyRemovalCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
	public @property final bool bTryPerTrackBitwiseCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
	public @property final bool bTryPerTrackBitwiseCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
	public @property final bool bTryFixedBitwiseCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool bTryFixedBitwiseCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	public @property final auto ref float MaxEndEffectorError() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
}
