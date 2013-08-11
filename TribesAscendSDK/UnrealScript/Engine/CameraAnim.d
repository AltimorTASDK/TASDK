module UnrealScript.Engine.CameraAnim;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface CameraAnim : UObject
{
public extern(D):
	@property final auto ref
	{
		float BaseFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
		float BasePPSettingsAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
		PostProcessVolume.PostProcessSettings BasePPSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 96); }
		UObject.Box BoundingBox() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 68); }
		float AnimLength() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		InterpGroup CameraInterpGroup() { return *cast(InterpGroup*)(cast(size_t)cast(void*)this + 60); }
	}
}
