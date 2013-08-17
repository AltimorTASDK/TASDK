module UnrealScript.Engine.UIDataStore_Fonts;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Fonts : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStore_Fonts")); }
	private static __gshared UIDataStore_Fonts mDefaultProperties;
	@property final static UIDataStore_Fonts DefaultProperties() { mixin(MGDPC("UIDataStore_Fonts", "UIDataStore_Fonts Engine.Default__UIDataStore_Fonts")); }
}
