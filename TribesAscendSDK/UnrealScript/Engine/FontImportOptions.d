module UnrealScript.Engine.FontImportOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface FontImportOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FontImportOptions")); }
	private static __gshared FontImportOptions mDefaultProperties;
	@property final static FontImportOptions DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FontImportOptions)("FontImportOptions Engine.Default__FontImportOptions")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.FontImportOptions.FontImportOptionsData")); }
		@property final
		{
			auto ref
			{
				ScriptString FontName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
				float Height() { return *cast(float*)(cast(size_t)&this + 12); }
				FontImportOptions.EFontImportCharacterSet CharacterSet() { return *cast(FontImportOptions.EFontImportCharacterSet*)(cast(size_t)&this + 20); }
				ScriptString Chars() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
				ScriptString UnicodeRange() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
				ScriptString CharsFilePath() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
				ScriptString CharsFileWildcard() { return *cast(ScriptString*)(cast(size_t)&this + 60); }
				UObject.LinearColor ForegroundColor() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 76); }
				int TexturePageWidth() { return *cast(int*)(cast(size_t)&this + 96); }
				int TexturePageMaxHeight() { return *cast(int*)(cast(size_t)&this + 100); }
				int XPadding() { return *cast(int*)(cast(size_t)&this + 104); }
				int YPadding() { return *cast(int*)(cast(size_t)&this + 108); }
				int ExtendBoxTop() { return *cast(int*)(cast(size_t)&this + 112); }
				int ExtendBoxBottom() { return *cast(int*)(cast(size_t)&this + 116); }
				int ExtendBoxRight() { return *cast(int*)(cast(size_t)&this + 120); }
				int ExtendBoxLeft() { return *cast(int*)(cast(size_t)&this + 124); }
				int Kerning() { return *cast(int*)(cast(size_t)&this + 132); }
				int DistanceFieldScaleFactor() { return *cast(int*)(cast(size_t)&this + 140); }
				float DistanceFieldScanRadiusScale() { return *cast(float*)(cast(size_t)&this + 144); }
			}
			bool bEnableAntialiasing() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bEnableAntialiasing(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
			bool bEnableBold() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
			bool bEnableBold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
			bool bEnableItalic() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x4) != 0; }
			bool bEnableItalic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x4; } return val; }
			bool bEnableUnderline() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x8) != 0; }
			bool bEnableUnderline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x8; } return val; }
			bool bAlphaOnly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x10) != 0; }
			bool bAlphaOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x10; } return val; }
			bool bCreatePrintableOnly() { return (*cast(uint*)(cast(size_t)&this + 72) & 0x1) != 0; }
			bool bCreatePrintableOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 72) &= ~0x1; } return val; }
			bool bIncludeASCIIRange() { return (*cast(uint*)(cast(size_t)&this + 72) & 0x2) != 0; }
			bool bIncludeASCIIRange(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 72) &= ~0x2; } return val; }
			bool bEnableDropShadow() { return (*cast(uint*)(cast(size_t)&this + 92) & 0x1) != 0; }
			bool bEnableDropShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 92) &= ~0x1; } return val; }
			bool bEnableLegacyMode() { return (*cast(uint*)(cast(size_t)&this + 128) & 0x1) != 0; }
			bool bEnableLegacyMode(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 128) &= ~0x1; } return val; }
			bool bUseDistanceFieldAlpha() { return (*cast(uint*)(cast(size_t)&this + 136) & 0x1) != 0; }
			bool bUseDistanceFieldAlpha(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 136) &= ~0x1; } return val; }
		}
	}
	@property final auto ref FontImportOptions.FontImportOptionsData Data() { return *cast(FontImportOptions.FontImportOptionsData*)(cast(size_t)cast(void*)this + 60); }
}
