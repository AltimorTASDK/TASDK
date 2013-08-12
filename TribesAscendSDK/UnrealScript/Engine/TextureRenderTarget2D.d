module UnrealScript.Engine.TextureRenderTarget2D;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.TextureRenderTarget;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTarget2D : TextureRenderTarget
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TextureRenderTarget2D")); }
	private static __gshared TextureRenderTarget2D mDefaultProperties;
	@property final static TextureRenderTarget2D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextureRenderTarget2D)("TextureRenderTarget2D Engine.Default__TextureRenderTarget2D")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCreate;
		public @property static final ScriptFunction Create() { return mCreate ? mCreate : (mCreate = ScriptObject.Find!(ScriptFunction)("Function Engine.TextureRenderTarget2D.Create")); }
	}
	@property final
	{
		auto ref
		{
			UObject.LinearColor ClearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 256); }
			Texture.TextureAddress AddressY() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 254); }
			Texture.TextureAddress AddressX() { return *cast(Texture.TextureAddress*)(cast(size_t)cast(void*)this + 253); }
			// WARNING: Property 'Format' has the same name as a defined type!
			int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
			int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		}
		bool bForceLinearGamma() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
		bool bForceLinearGamma(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
	}
	final static TextureRenderTarget2D Create(int InSizeX, int InSizeY, Texture.EPixelFormat InFormat, UObject.LinearColor InClearColor, bool bOnlyRenderOnce)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		*cast(Texture.EPixelFormat*)&params[8] = InFormat;
		*cast(UObject.LinearColor*)&params[12] = InClearColor;
		*cast(bool*)&params[28] = bOnlyRenderOnce;
		StaticClass.ProcessEvent(Functions.Create, params.ptr, cast(void*)0);
		return *cast(TextureRenderTarget2D*)&params[32];
	}
}
