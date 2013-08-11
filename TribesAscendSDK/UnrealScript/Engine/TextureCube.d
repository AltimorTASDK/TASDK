module UnrealScript.Engine.TextureCube;

import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Texture;

extern(C++) interface TextureCube : Texture
{
	public @property final auto ref Texture2D FaceNegZ() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref Texture2D FacePosZ() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref Texture2D FaceNegY() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref Texture2D FacePosY() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref Texture2D FaceNegX() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref Texture2D FacePosX() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 256); }
	public @property final bool bIsCubemapValid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
	public @property final bool bIsCubemapValid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	public @property final auto ref int NumMips() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
	// WARNING: Property 'Format' has the same name as a defined type!
	public @property final auto ref int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
}
