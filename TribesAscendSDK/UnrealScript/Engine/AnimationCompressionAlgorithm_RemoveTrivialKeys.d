module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveTrivialKeys;

import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveTrivialKeys : AnimationCompressionAlgorithm
{
	public @property final auto ref float MaxAngleDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float MaxPosDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
}
