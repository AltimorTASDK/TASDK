module UnrealScript.Engine.TextureRenderTargetCube;

import UnrealScript.Engine.TextureRenderTarget;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTargetCube : TextureRenderTarget
{
	// WARNING: Property 'Format' has the same name as a defined type!
	public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
}
