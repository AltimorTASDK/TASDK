module UnrealScript.Engine.DOFEffect;

import ScriptClasses;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface DOFEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DOFEffect")); }
	private static __gshared DOFEffect mDefaultProperties;
	@property final static DOFEffect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DOFEffect)("DOFEffect Engine.Default__DOFEffect")); }
	enum EFocusType : ubyte
	{
		FOCUS_Distance = 0,
		FOCUS_Position = 1,
		FOCUS_MAX = 2,
	}
	@property final auto ref
	{
		float FalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
		float BlurKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		float MaxNearBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
		float MinBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
		float MaxFarBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
		UObject.Color ModulateBlurColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 120); }
		DOFEffect.EFocusType FocusType() { return *cast(DOFEffect.EFocusType*)(cast(size_t)cast(void*)this + 124); }
		float FocusInnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
		float FocusDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
		Vector FocusPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 136); }
	}
}
