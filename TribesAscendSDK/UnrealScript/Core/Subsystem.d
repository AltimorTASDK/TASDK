module UnrealScript.Core.Subsystem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Subsystem : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.Subsystem")()); }
	private static __gshared Subsystem mDefaultProperties;
	@property final static Subsystem DefaultProperties() { mixin(MGDPC!(Subsystem, "Subsystem Core.Default__Subsystem")()); }
	@property final auto ref UObject.Pointer VfTable_FExec() { mixin(MGPC!("UObject.Pointer", 60)()); }
}
