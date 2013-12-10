module UnrealScript.Engine.UIDataProvider_SettingsArray;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataProvider;
import UnrealScript.Engine.Settings;

extern(C++) interface UIDataProvider_SettingsArray : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataProvider_SettingsArray")); }
	private static __gshared UIDataProvider_SettingsArray mDefaultProperties;
	@property final static UIDataProvider_SettingsArray DefaultProperties() { mixin(MGDPC("UIDataProvider_SettingsArray", "UIDataProvider_SettingsArray Engine.Default__UIDataProvider_SettingsArray")); }
	@property final auto ref
	{
		ScriptArray!(Settings.IdToStringMapping) Values() { mixin(MGPC("ScriptArray!(Settings.IdToStringMapping)", 124)); }
		ScriptString ColumnHeaderText() { mixin(MGPC("ScriptString", 112)); }
		ScriptName SettingsName() { mixin(MGPC("ScriptName", 104)); }
		int SettingsId() { mixin(MGPC("int", 100)); }
		Settings SettingsVar() { mixin(MGPC("Settings", 96)); }
		Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 92)); }
		Pointer VfTable_IUIListElementProvider() { mixin(MGPC("Pointer", 88)); }
	}
}
