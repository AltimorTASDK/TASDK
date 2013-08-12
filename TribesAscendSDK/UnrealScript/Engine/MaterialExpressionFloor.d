module UnrealScript.Engine.MaterialExpressionFloor;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFloor : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionFloor")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
