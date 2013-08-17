module UnrealScript.Engine.InterpFilter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface InterpFilter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpFilter")()); }
	private static __gshared InterpFilter mDefaultProperties;
	@property final static InterpFilter DefaultProperties() { mixin(MGDPC!(InterpFilter, "InterpFilter Engine.Default__InterpFilter")()); }
	@property final auto ref ScriptString Caption() { mixin(MGPC!("ScriptString", 60)()); }
}
