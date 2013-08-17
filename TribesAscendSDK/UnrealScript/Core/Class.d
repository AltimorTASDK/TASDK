module UnrealScript.Core.Class;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.State;

extern(C++) interface Class : State
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.Class")()); }
	private static __gshared Class mDefaultProperties;
	@property final static Class DefaultProperties() { mixin(MGDPC!(Class, "Class Core.Default__Class")()); }
}
