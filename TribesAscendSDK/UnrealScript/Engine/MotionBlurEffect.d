module UnrealScript.Engine.MotionBlurEffect;

import ScriptClasses;
import UnrealScript.Engine.PostProcessEffect;

extern(C++) interface MotionBlurEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MotionBlurEffect")); }
	private static __gshared MotionBlurEffect mDefaultProperties;
	@property final static MotionBlurEffect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MotionBlurEffect)("MotionBlurEffect Engine.Default__MotionBlurEffect")); }
	@property final
	{
		auto ref
		{
			float CameraTranslationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float CameraRotationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float MotionBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float MaxVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
		}
		bool FullMotionBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool FullMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
