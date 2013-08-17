module UnrealScript.Engine.TextureRenderTargetCube;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureRenderTarget;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTargetCube : TextureRenderTarget
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TextureRenderTargetCube")()); }
	private static __gshared TextureRenderTargetCube mDefaultProperties;
	@property final static TextureRenderTargetCube DefaultProperties() { mixin(MGDPC!(TextureRenderTargetCube, "TextureRenderTargetCube Engine.Default__TextureRenderTargetCube")()); }
	@property final auto ref
	{
		// WARNING: Property 'Format' has the same name as a defined type!
		int SizeX() { mixin(MGPC!(int, 244)()); }
	}
}
