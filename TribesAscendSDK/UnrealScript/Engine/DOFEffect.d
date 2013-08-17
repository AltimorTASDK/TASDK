module UnrealScript.Engine.DOFEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Core.UObject;

extern(C++) interface DOFEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DOFEffect")()); }
	private static __gshared DOFEffect mDefaultProperties;
	@property final static DOFEffect DefaultProperties() { mixin(MGDPC!(DOFEffect, "DOFEffect Engine.Default__DOFEffect")()); }
	enum EFocusType : ubyte
	{
		FOCUS_Distance = 0,
		FOCUS_Position = 1,
		FOCUS_MAX = 2,
	}
	@property final auto ref
	{
		float FalloffExponent() { mixin(MGPC!("float", 100)()); }
		float BlurKernelSize() { mixin(MGPC!("float", 104)()); }
		float MaxNearBlurAmount() { mixin(MGPC!("float", 108)()); }
		float MinBlurAmount() { mixin(MGPC!("float", 112)()); }
		float MaxFarBlurAmount() { mixin(MGPC!("float", 116)()); }
		UObject.Color ModulateBlurColor() { mixin(MGPC!("UObject.Color", 120)()); }
		DOFEffect.EFocusType FocusType() { mixin(MGPC!("DOFEffect.EFocusType", 124)()); }
		float FocusInnerRadius() { mixin(MGPC!("float", 128)()); }
		float FocusDistance() { mixin(MGPC!("float", 132)()); }
		Vector FocusPosition() { mixin(MGPC!("Vector", 136)()); }
	}
}
