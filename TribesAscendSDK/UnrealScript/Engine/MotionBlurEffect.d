module UnrealScript.Engine.MotionBlurEffect;

import UnrealScript.Engine.PostProcessEffect;

extern(C++) interface MotionBlurEffect : PostProcessEffect
{
	public @property final auto ref float CameraTranslationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float CameraRotationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final bool FullMotionBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
	public @property final bool FullMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	public @property final auto ref float MotionBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float MaxVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
}
