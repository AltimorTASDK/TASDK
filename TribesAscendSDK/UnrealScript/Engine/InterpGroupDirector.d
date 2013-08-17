module UnrealScript.Engine.InterpGroupDirector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpGroupDirector : InterpGroup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpGroupDirector")); }
	private static __gshared InterpGroupDirector mDefaultProperties;
	@property final static InterpGroupDirector DefaultProperties() { mixin(MGDPC("InterpGroupDirector", "InterpGroupDirector Engine.Default__InterpGroupDirector")); }
}
