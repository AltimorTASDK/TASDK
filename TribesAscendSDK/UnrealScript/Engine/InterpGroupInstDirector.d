module UnrealScript.Engine.InterpGroupInstDirector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpGroupInst;

extern(C++) interface InterpGroupInstDirector : InterpGroupInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpGroupInstDirector")); }
	private static __gshared InterpGroupInstDirector mDefaultProperties;
	@property final static InterpGroupInstDirector DefaultProperties() { mixin(MGDPC("InterpGroupInstDirector", "InterpGroupInstDirector Engine.Default__InterpGroupInstDirector")); }
}
