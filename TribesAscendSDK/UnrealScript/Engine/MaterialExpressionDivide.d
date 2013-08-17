module UnrealScript.Engine.MaterialExpressionDivide;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDivide : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDivide")()); }
	private static __gshared MaterialExpressionDivide mDefaultProperties;
	@property final static MaterialExpressionDivide DefaultProperties() { mixin(MGDPC!(MaterialExpressionDivide, "MaterialExpressionDivide Engine.Default__MaterialExpressionDivide")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC!("MaterialExpression.ExpressionInput", 136)()); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC!("MaterialExpression.ExpressionInput", 108)()); }
	}
}
