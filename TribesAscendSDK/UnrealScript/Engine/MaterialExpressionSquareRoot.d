module UnrealScript.Engine.MaterialExpressionSquareRoot;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSquareRoot : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionSquareRoot")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
