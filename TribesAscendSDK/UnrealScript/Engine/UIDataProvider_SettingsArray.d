module UnrealScript.Engine.UIDataProvider_SettingsArray;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider;
import UnrealScript.Engine.Settings;

extern(C++) interface UIDataProvider_SettingsArray : UIDataProvider
{
	public @property final auto ref ScriptArray!(Settings.IdToStringMapping) Values() { return *cast(ScriptArray!(Settings.IdToStringMapping)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptName SettingsName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int SettingsId() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	// WARNING: Property 'Settings' has the same name as a defined type!
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
}
