module UnrealScript.Engine.MaterialExpressionOneMinus;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionOneMinus : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionOneMinus")); }
	private static __gshared MaterialExpressionOneMinus mDefaultProperties;
	@property final static MaterialExpressionOneMinus DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionOneMinus)("MaterialExpressionOneMinus Engine.Default__MaterialExpressionOneMinus")); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
