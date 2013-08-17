module UnrealScript.Engine.DOFBloomMotionBlurEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DOFAndBloomEffect;

extern(C++) interface DOFBloomMotionBlurEffect : DOFAndBloomEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DOFBloomMotionBlurEffect")()); }
	private static __gshared DOFBloomMotionBlurEffect mDefaultProperties;
	@property final static DOFBloomMotionBlurEffect DefaultProperties() { mixin(MGDPC!(DOFBloomMotionBlurEffect, "DOFBloomMotionBlurEffect Engine.Default__DOFBloomMotionBlurEffect")()); }
	@property final
	{
		auto ref
		{
			float CameraTranslationThreshold() { mixin(MGPC!("float", 192)()); }
			float CameraRotationThreshold() { mixin(MGPC!("float", 188)()); }
			float MotionBlurAmount() { mixin(MGPC!("float", 180)()); }
			float MaxVelocity() { mixin(MGPC!("float", 176)()); }
		}
		bool FullMotionBlur() { mixin(MGBPC!(184, 0x1)()); }
		bool FullMotionBlur(bool val) { mixin(MSBPC!(184, 0x1)()); }
	}
}
