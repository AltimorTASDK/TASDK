module UnrealScript.Engine.MaterialExpressionDeriveNormalZ;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDeriveNormalZ : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionDeriveNormalZ")()); }
	private static __gshared MaterialExpressionDeriveNormalZ mDefaultProperties;
	@property final static MaterialExpressionDeriveNormalZ DefaultProperties() { mixin(MGDPC!(MaterialExpressionDeriveNormalZ, "MaterialExpressionDeriveNormalZ Engine.Default__MaterialExpressionDeriveNormalZ")()); }
	@property final auto ref MaterialExpression.ExpressionInput InXY() { mixin(MGPC!("MaterialExpression.ExpressionInput", 108)()); }
}
