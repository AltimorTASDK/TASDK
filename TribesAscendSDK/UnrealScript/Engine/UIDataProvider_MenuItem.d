module UnrealScript.Engine.UIDataProvider_MenuItem;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UIDataProvider_MenuItem : UIResourceDataProvider
{
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
	public @property final auto ref ScriptArray!(ScriptName) OptionSet() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptArray!(ScriptName) SchemaCellFields() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref ScriptString IniName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref UIRoot.UIRangeData RangeData() { return *cast(UIRoot.UIRangeData*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref int EditBoxMaxLength() { return *cast(int*)(cast(size_t)cast(void*)this + 212); }
	public @property final bool bRemoveOnPS3() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x100) != 0; }
	public @property final bool bRemoveOnPS3(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x100; } return val; }
	public @property final bool bRemoveOnPC() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x80) != 0; }
	public @property final bool bRemoveOnPC(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x80; } return val; }
	public @property final bool bRemoveOn360() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x40) != 0; }
	public @property final bool bRemoveOn360(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x40; } return val; }
	public @property final bool bSearchAllInis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x20) != 0; }
	public @property final bool bSearchAllInis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x20; } return val; }
	public @property final bool bOfflineOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x10) != 0; }
	public @property final bool bOfflineOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x10; } return val; }
	public @property final bool bOnlineOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x8) != 0; }
	public @property final bool bOnlineOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x8; } return val; }
	public @property final bool bKeyboardOrMouseOption() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x4) != 0; }
	public @property final bool bKeyboardOrMouseOption(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x4; } return val; }
	public @property final bool bNumericCombo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x2) != 0; }
	public @property final bool bNumericCombo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x2; } return val; }
	public @property final bool bEditableCombo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x1) != 0; }
	public @property final bool bEditableCombo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x1; } return val; }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ScriptString CustomFriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptName RequiredGameMode() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptString DescriptionMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptString DataStoreMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref UIDataProvider_MenuItem.EMenuOptionType OptionType() { return *cast(UIDataProvider_MenuItem.EMenuOptionType*)(cast(size_t)cast(void*)this + 124); }
	final bool IsFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28149], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
