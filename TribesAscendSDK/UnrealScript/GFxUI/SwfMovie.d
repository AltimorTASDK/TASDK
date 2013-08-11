module UnrealScript.GFxUI.SwfMovie;

import ScriptClasses;
import UnrealScript.GFxUI.GFxRawData;

extern(C++) interface SwfMovie : GFxRawData
{
	enum FlashTextureRescale : ubyte
	{
		FlashTextureScale_High = 0,
		FlashTextureScale_Low = 1,
		FlashTextureScale_NextLow = 2,
		FlashTextureScale_Mult4 = 3,
		FlashTextureScale_MAX = 4,
	}
	public @property final auto ref QWord ImportTimeStamp() { return *cast(QWord*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int RTVideoTextures() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int RTTextures() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString TextureFormat() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref SwfMovie.FlashTextureRescale TextureRescale() { return *cast(SwfMovie.FlashTextureRescale*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref int PackTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptString SourceFile() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
	public @property final bool bPackTextures() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
	public @property final bool bPackTextures(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
	public @property final bool bSetSRGBOnImportedTextures() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
	public @property final bool bSetSRGBOnImportedTextures(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
	public @property final bool bUsesFontlib() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
	public @property final bool bUsesFontlib(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
}
