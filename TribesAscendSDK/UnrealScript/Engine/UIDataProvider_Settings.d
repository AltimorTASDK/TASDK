module UnrealScript.Engine.UIDataProvider_Settings;

import ScriptClasses;
import UnrealScript.Engine.UIDynamicDataProvider;
import UnrealScript.Engine.UIDataProvider_SettingsArray;
import UnrealScript.Engine.Settings;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_Settings : UIDynamicDataProvider
{
public extern(D):
	struct SettingsArrayProvider
	{
		private ubyte __buffer__[16];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28413], params.ptr, cast(void*)0);
	}
	void OnSettingValueUpdated(ScriptName SettingName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SettingName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28418], params.ptr, cast(void*)0);
	}
}
