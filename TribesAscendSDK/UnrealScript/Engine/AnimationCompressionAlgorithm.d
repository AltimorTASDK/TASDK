module UnrealScript.Engine.AnimationCompressionAlgorithm;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimationCompressionAlgorithm : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			AnimSequence.AnimationCompressionFormat RotationCompressionFormat() { return *cast(AnimSequence.AnimationCompressionFormat*)(cast(size_t)cast(void*)this + 77); }
			AnimSequence.AnimationCompressionFormat TranslationCompressionFormat() { return *cast(AnimSequence.AnimationCompressionFormat*)(cast(size_t)cast(void*)this + 76); }
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bNeedsSkeleton() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bNeedsSkeleton(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
