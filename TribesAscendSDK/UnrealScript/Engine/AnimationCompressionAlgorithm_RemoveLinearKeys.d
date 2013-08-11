module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveLinearKeys;

import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveLinearKeys : AnimationCompressionAlgorithm
{
	public @property final bool bActuallyFilterLinearKeys() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
	public @property final bool bActuallyFilterLinearKeys(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
	public @property final bool bRetarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool bRetarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	public @property final auto ref float ParentKeyScale() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float EffectorDiffSocket() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float MinEffectorDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float MaxEffectorDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float MaxAngleDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float MaxPosDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
}
