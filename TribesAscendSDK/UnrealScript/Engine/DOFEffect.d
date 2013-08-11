module UnrealScript.Engine.DOFEffect;

import ScriptClasses;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface DOFEffect : PostProcessEffect
{
	enum EFocusType : ubyte
	{
		FOCUS_Distance = 0,
		FOCUS_Position = 1,
		FOCUS_MAX = 2,
	}
	public @property final auto ref float FalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float BlurKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float MaxNearBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float MinBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float MaxFarBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref UObject.Color ModulateBlurColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref DOFEffect.EFocusType FocusType() { return *cast(DOFEffect.EFocusType*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float FocusInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float FocusDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref Vector FocusPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 136); }
}
