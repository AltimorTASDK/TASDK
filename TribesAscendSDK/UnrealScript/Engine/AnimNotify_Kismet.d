module UnrealScript.Engine.AnimNotify_Kismet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Kismet : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_Kismet")()); }
	private static __gshared AnimNotify_Kismet mDefaultProperties;
	@property final static AnimNotify_Kismet DefaultProperties() { mixin(MGDPC!(AnimNotify_Kismet, "AnimNotify_Kismet Engine.Default__AnimNotify_Kismet")()); }
	@property final auto ref ScriptName NotifyName() { mixin(MGPC!(ScriptName, 64)()); }
}
