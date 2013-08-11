module UnrealScript.Engine.AnimNotify_ClothingMaxDistanceScale;

import UnrealScript.Engine.AnimNotify;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface AnimNotify_ClothingMaxDistanceScale : AnimNotify
{
	public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref SkeletalMeshComponent.EMaxDistanceScaleMode ScaleMode() { return *cast(SkeletalMeshComponent.EMaxDistanceScaleMode*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float EndScale() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float StartScale() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
}
