module UnrealScript.Engine.UIDataStore_Strings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.Engine.UIConfigFileProvider;

extern(C++) interface UIDataStore_Strings : UIDataStore_StringBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_Strings")()); }
	private static __gshared UIDataStore_Strings mDefaultProperties;
	@property final static UIDataStore_Strings DefaultProperties() { mixin(MGDPC!(UIDataStore_Strings, "UIDataStore_Strings Engine.Default__UIDataStore_Strings")()); }
	@property final auto ref ScriptArray!(UIConfigFileProvider) LocFileProviders() { mixin(MGPC!(ScriptArray!(UIConfigFileProvider), 120)()); }
}
