module UnrealScript.GFxUI.SwfMovie;

import ScriptClasses;
import UnrealScript.GFxUI.GFxRawData;

extern(C++) interface SwfMovie : GFxRawData
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.SwfMovie")); }
	enum FlashTextureRescale : ubyte
	{
		FlashTextureScale_High = 0,
		FlashTextureScale_Low = 1,
		FlashTextureScale_NextLow = 2,
		FlashTextureScale_Mult4 = 3,
		FlashTextureScale_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			QWord ImportTimeStamp() { return *cast(QWord*)(cast(size_t)cast(void*)this + 164); }
			int RTVideoTextures() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			int RTTextures() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
			ScriptString TextureFormat() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
			SwfMovie.FlashTextureRescale TextureRescale() { return *cast(SwfMovie.FlashTextureRescale*)(cast(size_t)cast(void*)this + 128); }
			int PackTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			ScriptString SourceFile() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		}
		bool bPackTextures() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
		bool bPackTextures(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
		bool bSetSRGBOnImportedTextures() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
		bool bSetSRGBOnImportedTextures(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
		bool bUsesFontlib() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bUsesFontlib(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
