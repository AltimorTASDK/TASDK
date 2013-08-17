module UnrealScript.Engine.MaterialExpressionFresnel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFresnel : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionFresnel")()); }
	private static __gshared MaterialExpressionFresnel mDefaultProperties;
	@property final static MaterialExpressionFresnel DefaultProperties() { mixin(MGDPC!(MaterialExpressionFresnel, "MaterialExpressionFresnel Engine.Default__MaterialExpressionFresnel")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Normal() { mixin(MGPC!(MaterialExpression.ExpressionInput, 112)()); }
		float Exponent() { mixin(MGPC!(float, 108)()); }
	}
}
