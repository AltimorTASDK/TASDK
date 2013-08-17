module UnrealScript.Engine.MaterialExpressionCrossProduct;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCrossProduct : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionCrossProduct")()); }
	private static __gshared MaterialExpressionCrossProduct mDefaultProperties;
	@property final static MaterialExpressionCrossProduct DefaultProperties() { mixin(MGDPC!(MaterialExpressionCrossProduct, "MaterialExpressionCrossProduct Engine.Default__MaterialExpressionCrossProduct")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC!(MaterialExpression.ExpressionInput, 108)()); }
	}
}
