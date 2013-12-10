module UnrealScript.Engine.TextureRenderTarget2D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.TextureRenderTarget;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTarget2D : TextureRenderTarget
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.TextureRenderTarget2D")); }
	private static __gshared TextureRenderTarget2D mDefaultProperties;
	@property final static TextureRenderTarget2D DefaultProperties() { mixin(MGDPC("TextureRenderTarget2D", "TextureRenderTarget2D Engine.Default__TextureRenderTarget2D")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCreate;
		public @property static final ScriptFunction Create() { mixin(MGF("mCreate", "Function Engine.TextureRenderTarget2D.Create")); }
	}
	@property final
	{
		auto ref
		{
			UObject.LinearColor ClearColor() { mixin(MGPC("UObject.LinearColor", 256)); }
			Texture.TextureAddress AddressY() { mixin(MGPC("Texture.TextureAddress", 254)); }
			Texture.TextureAddress AddressX() { mixin(MGPC("Texture.TextureAddress", 253)); }
			Texture.EPixelFormat FormatVar() { mixin(MGPC("Texture.EPixelFormat", 252)); }
			int SizeY() { mixin(MGPC("int", 248)); }
			int SizeX() { mixin(MGPC("int", 244)); }
		}
		bool bForceLinearGamma() { mixin(MGBPC(272, 0x1)); }
		bool bForceLinearGamma(bool val) { mixin(MSBPC(272, 0x1)); }
	}
	final static TextureRenderTarget2D Create(int InSizeX, int InSizeY, Texture.EPixelFormat* InFormat = null, UObject.LinearColor* InClearColor = null, bool* bOnlyRenderOnce = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		if (InFormat !is null)
			*cast(Texture.EPixelFormat*)&params[8] = *InFormat;
		if (InClearColor !is null)
			*cast(UObject.LinearColor*)&params[12] = *InClearColor;
		if (bOnlyRenderOnce !is null)
			*cast(bool*)&params[28] = *bOnlyRenderOnce;
		StaticClass.ProcessEvent(Functions.Create, params.ptr, cast(void*)0);
		return *cast(TextureRenderTarget2D*)&params[32];
	}
}
