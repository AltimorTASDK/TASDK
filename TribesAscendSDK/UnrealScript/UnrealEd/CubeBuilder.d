module UnrealScript.UnrealEd.CubeBuilder;

import ScriptClasses;
import UnrealScript.UnrealEd.BrushBuilder;

extern(C++) interface CubeBuilder : BrushBuilder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CubeBuilder")); }
}
