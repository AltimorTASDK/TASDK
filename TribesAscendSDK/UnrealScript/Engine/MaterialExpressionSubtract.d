module UnrealScript.Engine.MaterialExpressionSubtract;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionSubtract : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionSubtract")()); }
	private static __gshared MaterialExpressionSubtract mDefaultProperties;
	@property final static MaterialExpressionSubtract DefaultProperties() { mixin(MGDPC!(MaterialExpressionSubtract, "MaterialExpressionSubtract Engine.Default__MaterialExpressionSubtract")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput B() { mixin(MGPC!("MaterialExpression.ExpressionInput", 136)()); }
		MaterialExpression.ExpressionInput A() { mixin(MGPC!("MaterialExpression.ExpressionInput", 108)()); }
	}
}
