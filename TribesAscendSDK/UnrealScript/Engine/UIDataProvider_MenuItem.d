module UnrealScript.Engine.UIDataProvider_MenuItem;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UIDataProvider_MenuItem : UIResourceDataProvider
{
public extern(D):
	enum EMenuOptionType : ubyte
	{
		MENUOT_ComboReadOnly = 0,
		MENUOT_ComboNumeric = 1,
		MENUOT_CheckBox = 2,
		MENUOT_Slider = 3,
		MENUOT_Spinner = 4,
		MENUOT_EditBox = 5,
		MENUOT_CollectionCheckBox = 6,
		MENUOT_CollapsingList = 7,
		MENUOT_MAX = 8,
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) OptionSet() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 128); }
			ScriptArray!(ScriptName) SchemaCellFields() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 236); }
			ScriptString IniName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
			UIRoot.UIRangeData RangeData() { return *cast(UIRoot.UIRangeData*)(cast(size_t)cast(void*)this + 216); }
			int EditBoxMaxLength() { return *cast(int*)(cast(size_t)cast(void*)this + 212); }
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
			ScriptString CustomFriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
			ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
			ScriptName RequiredGameMode() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 164); }
			ScriptString DescriptionMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
			ScriptString DataStoreMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
			UIDataProvider_MenuItem.EMenuOptionType OptionType() { return *cast(UIDataProvider_MenuItem.EMenuOptionType*)(cast(size_t)cast(void*)this + 124); }
		}
		bool bRemoveOnPS3() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x100) != 0; }
		bool bRemoveOnPS3(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x100; } return val; }
		bool bRemoveOnPC() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x80) != 0; }
		bool bRemoveOnPC(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x80; } return val; }
		bool bRemoveOn360() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x40) != 0; }
		bool bRemoveOn360(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x40; } return val; }
		bool bSearchAllInis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x20) != 0; }
		bool bSearchAllInis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x20; } return val; }
		bool bOfflineOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x10) != 0; }
		bool bOfflineOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x10; } return val; }
		bool bOnlineOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x8) != 0; }
		bool bOnlineOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x8; } return val; }
		bool bKeyboardOrMouseOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x4) != 0; }
		bool bKeyboardOrMouseOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x4; } return val; }
		bool bNumericCombo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x2) != 0; }
		bool bNumericCombo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x2; } return val; }
		bool bEditableCombo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x1) != 0; }
		bool bEditableCombo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x1; } return val; }
	}
	final bool IsFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28149], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
