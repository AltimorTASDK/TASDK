module UnrealScript.Engine.FontImportOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface FontImportOptions : UObject
{
	enum EFontImportCharacterSet : ubyte
	{
		FontICS_Default = 0,
		FontICS_Ansi = 1,
		FontICS_Symbol = 2,
		FontICS_MAX = 3,
	}
	struct FontImportOptionsData
	{
		public @property final auto ref ScriptString FontName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __FontName[12];
		public @property final auto ref float Height() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Height[4];
		public @property final bool bEnableAntialiasing() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bEnableAntialiasing(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bEnableAntialiasing[4];
		public @property final bool bEnableBold() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
		public @property final bool bEnableBold(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
		private ubyte __bEnableBold[4];
		public @property final bool bEnableItalic() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x4) != 0; }
		public @property final bool bEnableItalic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x4; } return val; }
		private ubyte __bEnableItalic[4];
		public @property final bool bEnableUnderline() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x8) != 0; }
		public @property final bool bEnableUnderline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x8; } return val; }
		private ubyte __bEnableUnderline[4];
		public @property final bool bAlphaOnly() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x10) != 0; }
		public @property final bool bAlphaOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x10; } return val; }
		private ubyte __bAlphaOnly[4];
		public @property final auto ref FontImportOptions.EFontImportCharacterSet CharacterSet() { return *cast(FontImportOptions.EFontImportCharacterSet*)(cast(size_t)&this + 20); }
		private ubyte __CharacterSet[1];
		public @property final auto ref ScriptString Chars() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __Chars[12];
		public @property final auto ref ScriptString UnicodeRange() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
		private ubyte __UnicodeRange[12];
		public @property final auto ref ScriptString CharsFilePath() { return *cast(ScriptString*)(cast(size_t)&this + 48); }
		private ubyte __CharsFilePath[12];
		public @property final auto ref ScriptString CharsFileWildcard() { return *cast(ScriptString*)(cast(size_t)&this + 60); }
		private ubyte __CharsFileWildcard[12];
		public @property final bool bCreatePrintableOnly() { return (*cast(uint*)(cast(size_t)&this + 72) & 0x1) != 0; }
		public @property final bool bCreatePrintableOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 72) &= ~0x1; } return val; }
		private ubyte __bCreatePrintableOnly[4];
		public @property final bool bIncludeASCIIRange() { return (*cast(uint*)(cast(size_t)&this + 72) & 0x2) != 0; }
		public @property final bool bIncludeASCIIRange(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 72) &= ~0x2; } return val; }
		private ubyte __bIncludeASCIIRange[4];
		public @property final auto ref UObject.LinearColor ForegroundColor() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 76); }
		private ubyte __ForegroundColor[16];
		public @property final bool bEnableDropShadow() { return (*cast(uint*)(cast(size_t)&this + 92) & 0x1) != 0; }
		public @property final bool bEnableDropShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 92) &= ~0x1; } return val; }
		private ubyte __bEnableDropShadow[4];
		public @property final auto ref int TexturePageWidth() { return *cast(int*)(cast(size_t)&this + 96); }
		private ubyte __TexturePageWidth[4];
		public @property final auto ref int TexturePageMaxHeight() { return *cast(int*)(cast(size_t)&this + 100); }
		private ubyte __TexturePageMaxHeight[4];
		public @property final auto ref int XPadding() { return *cast(int*)(cast(size_t)&this + 104); }
		private ubyte __XPadding[4];
		public @property final auto ref int YPadding() { return *cast(int*)(cast(size_t)&this + 108); }
		private ubyte __YPadding[4];
		public @property final auto ref int ExtendBoxTop() { return *cast(int*)(cast(size_t)&this + 112); }
		private ubyte __ExtendBoxTop[4];
		public @property final auto ref int ExtendBoxBottom() { return *cast(int*)(cast(size_t)&this + 116); }
		private ubyte __ExtendBoxBottom[4];
		public @property final auto ref int ExtendBoxRight() { return *cast(int*)(cast(size_t)&this + 120); }
		private ubyte __ExtendBoxRight[4];
		public @property final auto ref int ExtendBoxLeft() { return *cast(int*)(cast(size_t)&this + 124); }
		private ubyte __ExtendBoxLeft[4];
		public @property final bool bEnableLegacyMode() { return (*cast(uint*)(cast(size_t)&this + 128) & 0x1) != 0; }
		public @property final bool bEnableLegacyMode(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 128) &= ~0x1; } return val; }
		private ubyte __bEnableLegacyMode[4];
		public @property final auto ref int Kerning() { return *cast(int*)(cast(size_t)&this + 132); }
		private ubyte __Kerning[4];
		public @property final bool bUseDistanceFieldAlpha() { return (*cast(uint*)(cast(size_t)&this + 136) & 0x1) != 0; }
		public @property final bool bUseDistanceFieldAlpha(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 136) &= ~0x1; } return val; }
		private ubyte __bUseDistanceFieldAlpha[4];
		public @property final auto ref int DistanceFieldScaleFactor() { return *cast(int*)(cast(size_t)&this + 140); }
		private ubyte __DistanceFieldScaleFactor[4];
		public @property final auto ref float DistanceFieldScanRadiusScale() { return *cast(float*)(cast(size_t)&this + 144); }
		private ubyte __DistanceFieldScanRadiusScale[4];
	}
	public @property final auto ref FontImportOptions.FontImportOptionsData Data() { return *cast(FontImportOptions.FontImportOptionsData*)(cast(size_t)cast(void*)this + 60); }
}
