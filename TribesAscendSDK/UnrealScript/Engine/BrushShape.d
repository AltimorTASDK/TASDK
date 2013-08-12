module UnrealScript.Engine.BrushShape;

import ScriptClasses;
import UnrealScript.Engine.Brush;

extern(C++) interface BrushShape : Brush
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.BrushShape")); }
}
