module UnrealScript.Engine.AnimationCompressionAlgorithm;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimationCompressionAlgorithm : UObject
{
	public @property final auto ref AnimSequence.AnimationCompressionFormat RotationCompressionFormat() { return *cast(AnimSequence.AnimationCompressionFormat*)(cast(size_t)cast(void*)this + 77); }
	public @property final auto ref AnimSequence.AnimationCompressionFormat TranslationCompressionFormat() { return *cast(AnimSequence.AnimationCompressionFormat*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bNeedsSkeleton() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bNeedsSkeleton(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
}
