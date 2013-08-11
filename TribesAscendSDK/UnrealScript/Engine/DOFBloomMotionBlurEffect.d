module UnrealScript.Engine.DOFBloomMotionBlurEffect;

import UnrealScript.Engine.DOFAndBloomEffect;

extern(C++) interface DOFBloomMotionBlurEffect : DOFAndBloomEffect
{
	public @property final auto ref float CameraTranslationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float CameraRotationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final bool FullMotionBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 184) & 0x1) != 0; }
	public @property final bool FullMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 184) &= ~0x1; } return val; }
	public @property final auto ref float MotionBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float MaxVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
}
