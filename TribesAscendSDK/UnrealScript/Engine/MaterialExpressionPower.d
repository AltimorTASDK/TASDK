module UnrealScript.Engine.MaterialExpressionPower;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPower : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionPower")()); }
	private static __gshared MaterialExpressionPower mDefaultProperties;
	@property final static MaterialExpressionPower DefaultProperties() { mixin(MGDPC!(MaterialExpressionPower, "MaterialExpressionPower Engine.Default__MaterialExpressionPower")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Exponent() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		MaterialExpression.ExpressionInput Base() { mixin(MGPC!(MaterialExpression.ExpressionInput, 108)()); }
	}
}
