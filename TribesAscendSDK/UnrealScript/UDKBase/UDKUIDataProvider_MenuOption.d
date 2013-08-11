module UnrealScript.UDKBase.UDKUIDataProvider_MenuOption;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UDKUIDataProvider_MenuOption : UDKUIResourceDataProvider
{
public extern(D):
	enum EUTOptionType : ubyte
	{
		UTOT_ComboReadOnly = 0,
		UTOT_ComboNumeric = 1,
		UTOT_CheckBox = 2,
		UTOT_Slider = 3,
		UTOT_Spinner = 4,
		UTOT_EditBox = 5,
		UTOT_CollectionCheckBox = 6,
		UTOT_MAX = 7,
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) OptionSet() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 156); }
			UIRoot.UIRangeData RangeData() { return *cast(UIRoot.UIRangeData*)(cast(size_t)cast(void*)this + 220); }
			int EditBoxMaxLength() { return *cast(int*)(cast(size_t)cast(void*)this + 216); }
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 200); }
			ScriptString CustomFriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
			ScriptName RequiredGameMode() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 180); }
			ScriptString DataStoreMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
			UDKUIDataProvider_MenuOption.EUTOptionType OptionType() { return *cast(UDKUIDataProvider_MenuOption.EUTOptionType*)(cast(size_t)cast(void*)this + 152); }
		}
		bool bOfflineOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x10) != 0; }
		bool bOfflineOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x10; } return val; }
		bool bOnlineOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x8) != 0; }
		bool bOnlineOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x8; } return val; }
		bool bKeyboardOrMouseOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x4) != 0; }
		bool bKeyboardOrMouseOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x4; } return val; }
		bool bNumericCombo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x2) != 0; }
		bool bNumericCombo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x2; } return val; }
		bool bEditableCombo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x1) != 0; }
		bool bEditableCombo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x1; } return val; }
	}
}
