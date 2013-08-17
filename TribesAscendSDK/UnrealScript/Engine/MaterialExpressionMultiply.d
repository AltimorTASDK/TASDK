module UnrealScript.Engine.MaterialExpressionMultiply;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionMultiply : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionMultiply")()); }
	private static __gshared MaterialExpressionMultiply mDefaultProperties;
	@property final static MaterialExpressionMultiply DefaultProperties() { mixin(MGDPC!(MaterialExpressionMultiply, "MaterialExpressionMultiply Engine.Default__MaterialExpressionMultiply")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC!(MaterialExpression.ExpressionInput, 108)()); }
	}
}
