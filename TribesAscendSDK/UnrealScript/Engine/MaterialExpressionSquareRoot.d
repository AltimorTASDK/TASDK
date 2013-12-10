module UnrealScript.Engine.MaterialExpressionSquareRoot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSquareRoot : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionSquareRoot")); }
	private static __gshared MaterialExpressionSquareRoot mDefaultProperties;
	@property final static MaterialExpressionSquareRoot DefaultProperties() { mixin(MGDPC("MaterialExpressionSquareRoot", "MaterialExpressionSquareRoot Engine.Default__MaterialExpressionSquareRoot")); }
	@property final auto ref MaterialExpression.ExpressionInput InputVar() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
}
