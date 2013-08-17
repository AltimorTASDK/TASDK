module UnrealScript.Engine.DOFAndBloomEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DOFEffect;
import UnrealScript.Core.UObject;

extern(C++) interface DOFAndBloomEffect : DOFEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DOFAndBloomEffect")()); }
	private static __gshared DOFAndBloomEffect mDefaultProperties;
	@property final static DOFAndBloomEffect DefaultProperties() { mixin(MGDPC!(DOFAndBloomEffect, "DOFAndBloomEffect Engine.Default__DOFAndBloomEffect")()); }
	@property final
	{
		auto ref
		{
			float BlurBloomKernelSize() { mixin(MGPC!("float", 168)()); }
			float SceneMultiplier() { mixin(MGPC!("float", 164)()); }
			float BloomScreenBlendThreshold() { mixin(MGPC!("float", 160)()); }
			UObject.Color BloomTint() { mixin(MGPC!("UObject.Color", 156)()); }
			float BloomThreshold() { mixin(MGPC!("float", 152)()); }
			float BloomScale() { mixin(MGPC!("float", 148)()); }
		}
		bool bEnableDepthOfFieldHQ() { mixin(MGBPC!(172, 0x4)()); }
		bool bEnableDepthOfFieldHQ(bool val) { mixin(MSBPC!(172, 0x4)()); }
		bool bEnableReferenceDOF() { mixin(MGBPC!(172, 0x2)()); }
		bool bEnableReferenceDOF(bool val) { mixin(MSBPC!(172, 0x2)()); }
		bool bEnableSeparateBloom() { mixin(MGBPC!(172, 0x1)()); }
		bool bEnableSeparateBloom(bool val) { mixin(MSBPC!(172, 0x1)()); }
	}
}
