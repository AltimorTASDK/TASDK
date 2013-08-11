module UnrealScript.Engine.TextureRenderTarget2D;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.TextureRenderTarget;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTarget2D : TextureRenderTarget
{
public extern(D):
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
	final TextureRenderTarget2D Create(int InSizeX, int InSizeY, Texture.EPixelFormat InFormat, UObject.LinearColor InClearColor, bool bOnlyRenderOnce)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = InSizeX;
		*cast(int*)&params[4] = InSizeY;
		*cast(Texture.EPixelFormat*)&params[8] = InFormat;
		*cast(UObject.LinearColor*)&params[12] = InClearColor;
		*cast(bool*)&params[28] = bOnlyRenderOnce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25519], params.ptr, cast(void*)0);
		return *cast(TextureRenderTarget2D*)&params[32];
	}
}
