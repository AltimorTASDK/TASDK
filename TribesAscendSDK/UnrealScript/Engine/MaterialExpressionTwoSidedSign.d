module UnrealScript.Engine.MaterialExpressionTwoSidedSign;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTwoSidedSign : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTwoSidedSign")); }
	private static __gshared MaterialExpressionTwoSidedSign mDefaultProperties;
	@property final static MaterialExpressionTwoSidedSign DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionTwoSidedSign)("MaterialExpressionTwoSidedSign Engine.Default__MaterialExpressionTwoSidedSign")); }
}
