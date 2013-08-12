module UnrealScript.Engine.MaterialExpressionSquareRoot;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSquareRoot : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionSquareRoot")); }
	private static __gshared MaterialExpressionSquareRoot mDefaultProperties;
	@property final static MaterialExpressionSquareRoot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionSquareRoot)("MaterialExpressionSquareRoot Engine.Default__MaterialExpressionSquareRoot")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
