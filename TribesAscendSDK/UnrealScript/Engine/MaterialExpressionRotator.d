module UnrealScript.Engine.MaterialExpressionRotator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionRotator : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionRotator")()); }
	private static __gshared MaterialExpressionRotator mDefaultProperties;
	@property final static MaterialExpressionRotator DefaultProperties() { mixin(MGDPC!(MaterialExpressionRotator, "MaterialExpressionRotator Engine.Default__MaterialExpressionRotator")()); }
	@property final auto ref
	{
		float Speed() { mixin(MGPC!("float", 172)()); }
		float CenterY() { mixin(MGPC!("float", 168)()); }
		float CenterX() { mixin(MGPC!("float", 164)()); }
		MaterialExpression.ExpressionInput Time() { mixin(MGPC!("MaterialExpression.ExpressionInput", 136)()); }
		MaterialExpression.ExpressionInput Coordinate() { mixin(MGPC!("MaterialExpression.ExpressionInput", 108)()); }
	}
}
