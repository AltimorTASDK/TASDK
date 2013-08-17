module UnrealScript.Engine.MaterialExpressionDotProduct;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDotProduct : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDotProduct")()); }
	private static __gshared MaterialExpressionDotProduct mDefaultProperties;
	@property final static MaterialExpressionDotProduct DefaultProperties() { mixin(MGDPC!(MaterialExpressionDotProduct, "MaterialExpressionDotProduct Engine.Default__MaterialExpressionDotProduct")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC!(MaterialExpression.ExpressionInput, 108)()); }
	}
}
