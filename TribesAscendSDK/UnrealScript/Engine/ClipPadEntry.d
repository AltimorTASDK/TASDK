module UnrealScript.Engine.ClipPadEntry;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ClipPadEntry : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ClipPadEntry")()); }
	private static __gshared ClipPadEntry mDefaultProperties;
	@property final static ClipPadEntry DefaultProperties() { mixin(MGDPC!(ClipPadEntry, "ClipPadEntry Engine.Default__ClipPadEntry")()); }
	@property final auto ref
	{
		ScriptString Text() { mixin(MGPC!(ScriptString, 72)()); }
		ScriptString Title() { mixin(MGPC!(ScriptString, 60)()); }
	}
}
