module UnrealScript.Engine.MaterialExpressionRotateAboutAxis;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionRotateAboutAxis : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionRotateAboutAxis")()); }
	private static __gshared MaterialExpressionRotateAboutAxis mDefaultProperties;
	@property final static MaterialExpressionRotateAboutAxis DefaultProperties() { mixin(MGDPC!(MaterialExpressionRotateAboutAxis, "MaterialExpressionRotateAboutAxis Engine.Default__MaterialExpressionRotateAboutAxis")()); }
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Position() { mixin(MGPC!("MaterialExpression.ExpressionInput", 164)()); }
		MaterialExpression.ExpressionInput PositionOnAxis() { mixin(MGPC!("MaterialExpression.ExpressionInput", 136)()); }
		MaterialExpression.ExpressionInput NormalizedRotationAxisAndAngle() { mixin(MGPC!("MaterialExpression.ExpressionInput", 108)()); }
	}
}
