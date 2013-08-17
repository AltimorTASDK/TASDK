module UnrealScript.Engine.UIDataProvider_Settings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDynamicDataProvider;
import UnrealScript.Engine.UIDataProvider_SettingsArray;
import UnrealScript.Engine.Settings;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_Settings : UIDynamicDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataProvider_Settings")()); }
	private static __gshared UIDataProvider_Settings mDefaultProperties;
	@property final static UIDataProvider_Settings DefaultProperties() { mixin(MGDPC!(UIDataProvider_Settings, "UIDataProvider_Settings Engine.Default__UIDataProvider_Settings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mArrayProviderPropertyChanged;
			ScriptFunction mOnSettingValueUpdated;
		}
		public @property static final
		{
			ScriptFunction ArrayProviderPropertyChanged() { mixin(MGF!("mArrayProviderPropertyChanged", "Function Engine.UIDataProvider_Settings.ArrayProviderPropertyChanged")()); }
			ScriptFunction OnSettingValueUpdated() { mixin(MGF!("mOnSettingValueUpdated", "Function Engine.UIDataProvider_Settings.OnSettingValueUpdated")()); }
		}
	}
	struct SettingsArrayProvider
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIDataProvider_Settings.SettingsArrayProvider")()); }
		@property final auto ref
		{
			UIDataProvider_SettingsArray Provider() { mixin(MGPS!(UIDataProvider_SettingsArray, 12)()); }
			ScriptName SettingsName() { mixin(MGPS!(ScriptName, 4)()); }
			int SettingsId() { mixin(MGPS!(int, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UIDataProvider_Settings.SettingsArrayProvider) SettingsArrayProviders() { mixin(MGPC!(ScriptArray!(UIDataProvider_Settings.SettingsArrayProvider), 128)()); }
			// WARNING: Property 'Settings' has the same name as a defined type!
		}
		bool bIsAListRow() { mixin(MGBPC!(140, 0x1)()); }
		bool bIsAListRow(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
final:
	void ArrayProviderPropertyChanged(UIDataProvider SourceProvider, ScriptName PropTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = PropTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ArrayProviderPropertyChanged, params.ptr, cast(void*)0);
	}
	void OnSettingValueUpdated(ScriptName SettingName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SettingName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSettingValueUpdated, params.ptr, cast(void*)0);
	}
}
