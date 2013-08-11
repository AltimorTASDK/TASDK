module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveLinearKeys;

import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveLinearKeys : AnimationCompressionAlgorithm
{
public extern(D):
	@property final
	{
		auto ref
		{
			float ParentKeyScale() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float EffectorDiffSocket() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float MinEffectorDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float MaxEffectorDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float MaxAngleDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float MaxPosDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bActuallyFilterLinearKeys() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
		bool bActuallyFilterLinearKeys(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
		bool bRetarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bRetarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}
