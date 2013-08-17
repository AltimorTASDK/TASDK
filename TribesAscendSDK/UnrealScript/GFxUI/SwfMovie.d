module UnrealScript.GFxUI.SwfMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxRawData;

extern(C++) interface SwfMovie : GFxRawData
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.SwfMovie")); }
	private static __gshared SwfMovie mDefaultProperties;
	@property final static SwfMovie DefaultProperties() { mixin(MGDPC("SwfMovie", "SwfMovie GFxUI.Default__SwfMovie")); }
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
			QWord ImportTimeStamp() { mixin(MGPC("QWord", 164)); }
			int RTVideoTextures() { mixin(MGPC("int", 160)); }
			int RTTextures() { mixin(MGPC("int", 156)); }
			ScriptString SourceFileTimestamp() { mixin(MGPC("ScriptString", 144)); }
			ScriptString TextureFormat() { mixin(MGPC("ScriptString", 132)); }
			SwfMovie.FlashTextureRescale TextureRescale() { mixin(MGPC("SwfMovie.FlashTextureRescale", 128)); }
			int PackTextureSize() { mixin(MGPC("int", 124)); }
			ScriptString SourceFile() { mixin(MGPC("ScriptString", 112)); }
		}
		bool bPackTextures() { mixin(MGBPC(108, 0x4)); }
		bool bPackTextures(bool val) { mixin(MSBPC(108, 0x4)); }
		bool bSetSRGBOnImportedTextures() { mixin(MGBPC(108, 0x2)); }
		bool bSetSRGBOnImportedTextures(bool val) { mixin(MSBPC(108, 0x2)); }
		bool bUsesFontlib() { mixin(MGBPC(108, 0x1)); }
		bool bUsesFontlib(bool val) { mixin(MSBPC(108, 0x1)); }
	}
}
