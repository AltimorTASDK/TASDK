module UnrealScript.Engine.MaterialExpressionTransformPosition;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTransformPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionTransformPosition")); }
	private static __gshared MaterialExpressionTransformPosition mDefaultProperties;
	@property final static MaterialExpressionTransformPosition DefaultProperties() { mixin(MGDPC("MaterialExpressionTransformPosition", "MaterialExpressionTransformPosition Engine.Default__MaterialExpressionTransformPosition")); }
	enum EMaterialPositionTransform : ubyte
	{
		TRANSFORMPOS_World = 0,
		TRANSFORMPOS_MAX = 1,
	}
	@property final auto ref
	{
		MaterialExpressionTransformPosition.EMaterialPositionTransform TransformType() { mixin(MGPC("MaterialExpressionTransformPosition.EMaterialPositionTransform", 136)); }
		MaterialExpression.ExpressionInput InputVar() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
	}
}
