module UnrealScript.Engine.FontImportOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface FontImportOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FontImportOptions")); }
	private static __gshared FontImportOptions mDefaultProperties;
	@property final static FontImportOptions DefaultProperties() { mixin(MGDPC("FontImportOptions", "FontImportOptions Engine.Default__FontImportOptions")); }
	enum EFontImportCharacterSet : ubyte
	{
		FontICS_Default = 0,
		FontICS_Ansi = 1,
		FontICS_Symbol = 2,
		FontICS_MAX = 3,
	}
	struct FontImportOptionsData
	{
		private ubyte __buffer__[148];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.FontImportOptions.FontImportOptionsData")); }
		@property final
		{
			auto ref
			{
				ScriptString FontName() { mixin(MGPS("ScriptString", 0)); }
				float Height() { mixin(MGPS("float", 12)); }
				FontImportOptions.EFontImportCharacterSet CharacterSet() { mixin(MGPS("FontImportOptions.EFontImportCharacterSet", 20)); }
				ScriptString Chars() { mixin(MGPS("ScriptString", 24)); }
				ScriptString UnicodeRange() { mixin(MGPS("ScriptString", 36)); }
				ScriptString CharsFilePath() { mixin(MGPS("ScriptString", 48)); }
				ScriptString CharsFileWildcard() { mixin(MGPS("ScriptString", 60)); }
				UObject.LinearColor ForegroundColor() { mixin(MGPS("UObject.LinearColor", 76)); }
				int TexturePageWidth() { mixin(MGPS("int", 96)); }
				int TexturePageMaxHeight() { mixin(MGPS("int", 100)); }
				int XPadding() { mixin(MGPS("int", 104)); }
				int YPadding() { mixin(MGPS("int", 108)); }
				int ExtendBoxTop() { mixin(MGPS("int", 112)); }
				int ExtendBoxBottom() { mixin(MGPS("int", 116)); }
				int ExtendBoxRight() { mixin(MGPS("int", 120)); }
				int ExtendBoxLeft() { mixin(MGPS("int", 124)); }
				int Kerning() { mixin(MGPS("int", 132)); }
				int DistanceFieldScaleFactor() { mixin(MGPS("int", 140)); }
				float DistanceFieldScanRadiusScale() { mixin(MGPS("float", 144)); }
			}
			bool bEnableAntialiasing() { mixin(MGBPS(16, 0x1)); }
			bool bEnableAntialiasing(bool val) { mixin(MSBPS(16, 0x1)); }
			bool bEnableBold() { mixin(MGBPS(16, 0x2)); }
			bool bEnableBold(bool val) { mixin(MSBPS(16, 0x2)); }
			bool bEnableItalic() { mixin(MGBPS(16, 0x4)); }
			bool bEnableItalic(bool val) { mixin(MSBPS(16, 0x4)); }
			bool bEnableUnderline() { mixin(MGBPS(16, 0x8)); }
			bool bEnableUnderline(bool val) { mixin(MSBPS(16, 0x8)); }
			bool bAlphaOnly() { mixin(MGBPS(16, 0x10)); }
			bool bAlphaOnly(bool val) { mixin(MSBPS(16, 0x10)); }
			bool bCreatePrintableOnly() { mixin(MGBPS(72, 0x1)); }
			bool bCreatePrintableOnly(bool val) { mixin(MSBPS(72, 0x1)); }
			bool bIncludeASCIIRange() { mixin(MGBPS(72, 0x2)); }
			bool bIncludeASCIIRange(bool val) { mixin(MSBPS(72, 0x2)); }
			bool bEnableDropShadow() { mixin(MGBPS(92, 0x1)); }
			bool bEnableDropShadow(bool val) { mixin(MSBPS(92, 0x1)); }
			bool bEnableLegacyMode() { mixin(MGBPS(128, 0x1)); }
			bool bEnableLegacyMode(bool val) { mixin(MSBPS(128, 0x1)); }
			bool bUseDistanceFieldAlpha() { mixin(MGBPS(136, 0x1)); }
			bool bUseDistanceFieldAlpha(bool val) { mixin(MSBPS(136, 0x1)); }
		}
	}
	@property final auto ref FontImportOptions.FontImportOptionsData Data() { mixin(MGPC("FontImportOptions.FontImportOptionsData", 60)); }
}
