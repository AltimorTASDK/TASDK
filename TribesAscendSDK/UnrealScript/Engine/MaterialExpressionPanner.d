module UnrealScript.Engine.MaterialExpressionPanner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPanner : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionPanner")()); }
	private static __gshared MaterialExpressionPanner mDefaultProperties;
	@property final static MaterialExpressionPanner DefaultProperties() { mixin(MGDPC!(MaterialExpressionPanner, "MaterialExpressionPanner Engine.Default__MaterialExpressionPanner")()); }
	@property final auto ref
	{
		float SpeedY() { mixin(MGPC!(float, 168)()); }
		float SpeedX() { mixin(MGPC!(float, 164)()); }
		MaterialExpression.ExpressionInput Time() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		MaterialExpression.ExpressionInput Coordinate() { mixin(MGPC!(MaterialExpression.ExpressionInput, 108)()); }
	}
}
