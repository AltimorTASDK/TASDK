module UnrealScript.Engine.UIDataProvider_SettingsArray;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider;
import UnrealScript.Engine.Settings;

extern(C++) interface UIDataProvider_SettingsArray : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataProvider_SettingsArray")); }
	private static __gshared UIDataProvider_SettingsArray mDefaultProperties;
	@property final static UIDataProvider_SettingsArray DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDataProvider_SettingsArray)("UIDataProvider_SettingsArray Engine.Default__UIDataProvider_SettingsArray")); }
	@property final auto ref
	{
		ScriptArray!(Settings.IdToStringMapping) Values() { return *cast(ScriptArray!(Settings.IdToStringMapping)*)(cast(size_t)cast(void*)this + 124); }
		ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptName SettingsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
		int SettingsId() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
		// WARNING: Property 'Settings' has the same name as a defined type!
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
		UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
	}
}
