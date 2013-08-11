module UnrealScript.Engine.UIDataProvider_SettingsArray;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider;
import UnrealScript.Engine.Settings;

extern(C++) interface UIDataProvider_SettingsArray : UIDataProvider
{
public extern(D):
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
