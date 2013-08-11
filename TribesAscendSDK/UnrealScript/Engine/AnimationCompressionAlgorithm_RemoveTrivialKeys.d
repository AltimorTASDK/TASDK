module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveTrivialKeys;

import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveTrivialKeys : AnimationCompressionAlgorithm
{
public extern(D):
	@property final auto ref
	{
		float MaxAngleDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
		float MaxPosDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	}
}
