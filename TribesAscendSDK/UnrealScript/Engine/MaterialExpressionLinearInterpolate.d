module UnrealScript.Engine.MaterialExpressionLinearInterpolate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLinearInterpolate : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionLinearInterpolate")()); }
	private static __gshared MaterialExpressionLinearInterpolate mDefaultProperties;
	@property final static MaterialExpressionLinearInterpolate DefaultProperties() { mixin(MGDPC!(MaterialExpressionLinearInterpolate, "MaterialExpressionLinearInterpolate Engine.Default__MaterialExpressionLinearInterpolate")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Alpha() { mixin(MGPC!("MaterialExpression.ExpressionInput", 164)()); }
		MaterialExpression.ExpressionInput B() { mixin(MGPC!("MaterialExpression.ExpressionInput", 136)()); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC!("MaterialExpression.ExpressionInput", 108)()); }
	}
}
