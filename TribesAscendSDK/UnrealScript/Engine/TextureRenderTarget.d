module UnrealScript.Engine.TextureRenderTarget;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTarget : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TextureRenderTarget")()); }
	private static __gshared TextureRenderTarget mDefaultProperties;
	@property final static TextureRenderTarget DefaultProperties() { mixin(MGDPC!(TextureRenderTarget, "TextureRenderTarget Engine.Default__TextureRenderTarget")()); }
	@property final
	{
		@property final auto ref float TargetGamma() { mixin(MGPC!("float", 240)()); }
		bool bRenderOnce() { mixin(MGBPC!(236, 0x4)()); }
		bool bRenderOnce(bool val) { mixin(MSBPC!(236, 0x4)()); }
		bool bNeedsTwoCopies() { mixin(MGBPC!(236, 0x2)()); }
		bool bNeedsTwoCopies(bool val) { mixin(MSBPC!(236, 0x2)()); }
		bool bUpdateImmediate() { mixin(MGBPC!(236, 0x1)()); }
		bool bUpdateImmediate(bool val) { mixin(MSBPC!(236, 0x1)()); }
	}
}
