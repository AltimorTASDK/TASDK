module UnrealScript.UDKBase.UDKUIDataProvider_MenuOption;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UDKUIDataProvider_MenuOption : UDKUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKUIDataProvider_MenuOption")()); }
	private static __gshared UDKUIDataProvider_MenuOption mDefaultProperties;
	@property final static UDKUIDataProvider_MenuOption DefaultProperties() { mixin(MGDPC!(UDKUIDataProvider_MenuOption, "UDKUIDataProvider_MenuOption UDKBase.Default__UDKUIDataProvider_MenuOption")()); }
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
			ScriptArray!(ScriptName) OptionSet() { mixin(MGPC!("ScriptArray!(ScriptName)", 156)()); }
			UIRoot.UIRangeData RangeData() { mixin(MGPC!("UIRoot.UIRangeData", 220)()); }
			int EditBoxMaxLength() { mixin(MGPC!("int", 216)()); }
			ScriptString Description() { mixin(MGPC!("ScriptString", 200)()); }
			ScriptString CustomFriendlyName() { mixin(MGPC!("ScriptString", 188)()); }
			ScriptName RequiredGameMode() { mixin(MGPC!("ScriptName", 180)()); }
			ScriptString DataStoreMarkup() { mixin(MGPC!("ScriptString", 168)()); }
			UDKUIDataProvider_MenuOption.EUTOptionType OptionType() { mixin(MGPC!("UDKUIDataProvider_MenuOption.EUTOptionType", 152)()); }
		}
		bool bOfflineOnly() { mixin(MGBPC!(212, 0x10)()); }
		bool bOfflineOnly(bool val) { mixin(MSBPC!(212, 0x10)()); }
		bool bOnlineOnly() { mixin(MGBPC!(212, 0x8)()); }
		bool bOnlineOnly(bool val) { mixin(MSBPC!(212, 0x8)()); }
		bool bKeyboardOrMouseOption() { mixin(MGBPC!(212, 0x4)()); }
		bool bKeyboardOrMouseOption(bool val) { mixin(MSBPC!(212, 0x4)()); }
		bool bNumericCombo() { mixin(MGBPC!(212, 0x2)()); }
		bool bNumericCombo(bool val) { mixin(MSBPC!(212, 0x2)()); }
		bool bEditableCombo() { mixin(MGBPC!(212, 0x1)()); }
		bool bEditableCombo(bool val) { mixin(MSBPC!(212, 0x1)()); }
	}
}
