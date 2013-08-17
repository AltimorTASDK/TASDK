module UnrealScript.Engine.MaterialExpressionDistance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDistance : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDistance")()); }
	private static __gshared MaterialExpressionDistance mDefaultProperties;
	@property final static MaterialExpressionDistance DefaultProperties() { mixin(MGDPC!(MaterialExpressionDistance, "MaterialExpressionDistance Engine.Default__MaterialExpressionDistance")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC!(MaterialExpression.ExpressionInput, 108)()); }
	}
}
