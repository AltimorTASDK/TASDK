module UnrealScript.Engine.TextureRenderTarget;

import UnrealScript.Engine.Texture;

extern(C++) interface TextureRenderTarget : Texture
{
	public @property final auto ref float TargetGamma() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final bool bRenderOnce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
	public @property final bool bRenderOnce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
	public @property final bool bNeedsTwoCopies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
	public @property final bool bNeedsTwoCopies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
	public @property final bool bUpdateImmediate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bUpdateImmediate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
}
