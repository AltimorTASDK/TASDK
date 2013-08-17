module UnrealScript.Engine.UIDataStore_Settings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Settings : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStore_Settings")); }
	private static __gshared UIDataStore_Settings mDefaultProperties;
	@property final static UIDataStore_Settings DefaultProperties() { mixin(MGDPC("UIDataStore_Settings", "UIDataStore_Settings Engine.Default__UIDataStore_Settings")); }
}
