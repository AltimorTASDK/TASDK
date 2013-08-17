module UnrealScript.Engine.UIDataStore_Remote;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_Remote : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_Remote")()); }
	private static __gshared UIDataStore_Remote mDefaultProperties;
	@property final static UIDataStore_Remote DefaultProperties() { mixin(MGDPC!(UIDataStore_Remote, "UIDataStore_Remote Engine.Default__UIDataStore_Remote")()); }
}
