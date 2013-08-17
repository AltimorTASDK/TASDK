module UnrealScript.Engine.UIDataStore_StringBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_StringBase : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_StringBase")()); }
	private static __gshared UIDataStore_StringBase mDefaultProperties;
	@property final static UIDataStore_StringBase DefaultProperties() { mixin(MGDPC!(UIDataStore_StringBase, "UIDataStore_StringBase Engine.Default__UIDataStore_StringBase")()); }
}
