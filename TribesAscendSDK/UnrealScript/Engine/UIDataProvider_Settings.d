module UnrealScript.Engine.UIDataProvider_Settings;

import ScriptClasses;
import UnrealScript.Engine.UIDynamicDataProvider;
import UnrealScript.Engine.UIDataProvider_SettingsArray;
import UnrealScript.Engine.Settings;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_Settings : UIDynamicDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataProvider_Settings")); }
	private static __gshared UIDataProvider_Settings mDefaultProperties;
	@property final static UIDataProvider_Settings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataProvider_Settings)("UIDataProvider_Settings Engine.Default__UIDataProvider_Settings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mArrayProviderPropertyChanged;
			ScriptFunction mOnSettingValueUpdated;
		}
		public @property static final
		{
			ScriptFunction ArrayProviderPropertyChanged() { return mArrayProviderPropertyChanged ? mArrayProviderPropertyChanged : (mArrayProviderPropertyChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_Settings.ArrayProviderPropertyChanged")); }
			ScriptFunction OnSettingValueUpdated() { return mOnSettingValueUpdated ? mOnSettingValueUpdated : (mOnSettingValueUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_Settings.OnSettingValueUpdated")); }
		}
	}
	struct SettingsArrayProvider
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.UIDataProvider_Settings.SettingsArrayProvider")); }
		@property final auto ref
		{
			UIDataProvider_SettingsArray Provider() { return *cast(UIDataProvider_SettingsArray*)(cast(size_t)&this + 12); }
			ScriptName SettingsName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int SettingsId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UIDataProvider_Settings.SettingsArrayProvider) SettingsArrayProviders() { return *cast(ScriptArray!(UIDataProvider_Settings.SettingsArrayProvider)*)(cast(size_t)cast(void*)this + 128); }
			// WARNING: Property 'Settings' has the same name as a defined type!
		}
		bool bIsAListRow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bIsAListRow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
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
