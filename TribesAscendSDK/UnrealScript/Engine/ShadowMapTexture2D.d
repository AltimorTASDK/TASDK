module UnrealScript.Engine.ShadowMapTexture2D;

import UnrealScript.Engine.Texture2D;

extern(C++) interface ShadowMapTexture2D : Texture2D
{
public extern(D):
	@property final auto ref int ShadowmapFlags() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
}
