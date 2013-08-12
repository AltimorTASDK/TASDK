module UnrealScript.Engine.DOFBloomMotionBlurEffect;

import ScriptClasses;
import UnrealScript.Engine.DOFAndBloomEffect;

extern(C++) interface DOFBloomMotionBlurEffect : DOFAndBloomEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DOFBloomMotionBlurEffect")); }
	@property final
	{
		auto ref
		{
			float CameraTranslationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 192); }
			float CameraRotationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float MotionBlurAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float MaxVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
		}
		bool FullMotionBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 184) & 0x1) != 0; }
		bool FullMotionBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 184) &= ~0x1; } return val; }
	}
}
