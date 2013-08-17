module UnrealScript.Engine.UIDataProvider_MenuItem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UIDataProvider_MenuItem : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataProvider_MenuItem")); }
	private static __gshared UIDataProvider_MenuItem mDefaultProperties;
	@property final static UIDataProvider_MenuItem DefaultProperties() { mixin(MGDPC("UIDataProvider_MenuItem", "UIDataProvider_MenuItem Engine.Default__UIDataProvider_MenuItem")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsFiltered;
		public @property static final ScriptFunction IsFiltered() { mixin(MGF("mIsFiltered", "Function Engine.UIDataProvider_MenuItem.IsFiltered")); }
	}
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
			ScriptArray!(ScriptName) OptionSet() { mixin(MGPC("ScriptArray!(ScriptName)", 128)); }
			ScriptArray!(ScriptName) SchemaCellFields() { mixin(MGPC("ScriptArray!(ScriptName)", 236)); }
			ScriptString IniName() { mixin(MGPC("ScriptString", 248)); }
			UIRoot.UIRangeData RangeData() { mixin(MGPC("UIRoot.UIRangeData", 216)); }
			int EditBoxMaxLength() { mixin(MGPC("int", 212)); }
			ScriptString Description() { mixin(MGPC("ScriptString", 196)); }
			ScriptString CustomFriendlyName() { mixin(MGPC("ScriptString", 184)); }
			ScriptString FriendlyName() { mixin(MGPC("ScriptString", 172)); }
			ScriptName RequiredGameMode() { mixin(MGPC("ScriptName", 164)); }
			ScriptString DescriptionMarkup() { mixin(MGPC("ScriptString", 152)); }
			ScriptString DataStoreMarkup() { mixin(MGPC("ScriptString", 140)); }
			UIDataProvider_MenuItem.EMenuOptionType OptionType() { mixin(MGPC("UIDataProvider_MenuItem.EMenuOptionType", 124)); }
		}
		bool bRemoveOnPS3() { mixin(MGBPC(208, 0x100)); }
		bool bRemoveOnPS3(bool val) { mixin(MSBPC(208, 0x100)); }
		bool bRemoveOnPC() { mixin(MGBPC(208, 0x80)); }
		bool bRemoveOnPC(bool val) { mixin(MSBPC(208, 0x80)); }
		bool bRemoveOn360() { mixin(MGBPC(208, 0x40)); }
		bool bRemoveOn360(bool val) { mixin(MSBPC(208, 0x40)); }
		bool bSearchAllInis() { mixin(MGBPC(208, 0x20)); }
		bool bSearchAllInis(bool val) { mixin(MSBPC(208, 0x20)); }
		bool bOfflineOnly() { mixin(MGBPC(208, 0x10)); }
		bool bOfflineOnly(bool val) { mixin(MSBPC(208, 0x10)); }
		bool bOnlineOnly() { mixin(MGBPC(208, 0x8)); }
		bool bOnlineOnly(bool val) { mixin(MSBPC(208, 0x8)); }
		bool bKeyboardOrMouseOption() { mixin(MGBPC(208, 0x4)); }
		bool bKeyboardOrMouseOption(bool val) { mixin(MSBPC(208, 0x4)); }
		bool bNumericCombo() { mixin(MGBPC(208, 0x2)); }
		bool bNumericCombo(bool val) { mixin(MSBPC(208, 0x2)); }
		bool bEditableCombo() { mixin(MGBPC(208, 0x1)); }
		bool bEditableCombo(bool val) { mixin(MSBPC(208, 0x1)); }
	}
	final bool IsFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
