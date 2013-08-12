module UnrealScript.Engine.InterpGroupDirector;

import ScriptClasses;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpGroupDirector : InterpGroup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpGroupDirector")); }
}
