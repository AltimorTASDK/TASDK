module UnrealScript.Engine.MotionBlurEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PostProcessEffect;

extern(C++) interface MotionBlurEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MotionBlurEffect")); }
	private static __gshared MotionBlurEffect mDefaultProperties;
	@property final static MotionBlurEffect DefaultProperties() { mixin(MGDPC("MotionBlurEffect", "MotionBlurEffect Engine.Default__MotionBlurEffect")); }
	@property final
	{
		auto ref
		{
			float CameraTranslationThreshold() { mixin(MGPC("float", 116)); }
			float CameraRotationThreshold() { mixin(MGPC("float", 112)); }
			float MotionBlurAmount() { mixin(MGPC("float", 104)); }
			float MaxVelocity() { mixin(MGPC("float", 100)); }
		}
		bool FullMotionBlur() { mixin(MGBPC(108, 0x1)); }
		bool FullMotionBlur(bool val) { mixin(MSBPC(108, 0x1)); }
	}
}
