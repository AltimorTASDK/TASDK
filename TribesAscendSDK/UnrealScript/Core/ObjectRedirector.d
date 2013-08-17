module UnrealScript.Core.ObjectRedirector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ObjectRedirector : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.ObjectRedirector")()); }
	private static __gshared ObjectRedirector mDefaultProperties;
	@property final static ObjectRedirector DefaultProperties() { mixin(MGDPC!(ObjectRedirector, "ObjectRedirector Core.Default__ObjectRedirector")()); }
}
