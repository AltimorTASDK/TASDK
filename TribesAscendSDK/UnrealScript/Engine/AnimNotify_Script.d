module UnrealScript.Engine.AnimNotify_Script;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Script : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_Script")()); }
	private static __gshared AnimNotify_Script mDefaultProperties;
	@property final static AnimNotify_Script DefaultProperties() { mixin(MGDPC!(AnimNotify_Script, "AnimNotify_Script Engine.Default__AnimNotify_Script")()); }
	@property final auto ref
	{
		ScriptName NotifyEndName() { mixin(MGPC!(ScriptName, 80)()); }
		ScriptName NotifyTickName() { mixin(MGPC!(ScriptName, 72)()); }
		ScriptName NotifyName() { mixin(MGPC!(ScriptName, 64)()); }
	}
}
