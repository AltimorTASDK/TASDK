module UnrealScript.Engine.MaterialExpressionTransform;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTransform : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionTransform")); }
	private static __gshared MaterialExpressionTransform mDefaultProperties;
	@property final static MaterialExpressionTransform DefaultProperties() { mixin(MGDPC("MaterialExpressionTransform", "MaterialExpressionTransform Engine.Default__MaterialExpressionTransform")); }
	enum EMaterialVectorCoordTransform : ubyte
	{
		TRANSFORM_World = 0,
		TRANSFORM_View = 1,
		TRANSFORM_Local = 2,
		TRANSFORM_Tangent = 3,
		TRANSFORM_MAX = 4,
	}
	enum EMaterialVectorCoordTransformSource : ubyte
	{
		TRANSFORMSOURCE_World = 0,
		TRANSFORMSOURCE_Local = 1,
		TRANSFORMSOURCE_Tangent = 2,
		TRANSFORMSOURCE_MAX = 3,
	}
	@property final auto ref
	{
		MaterialExpressionTransform.EMaterialVectorCoordTransform TransformType() { mixin(MGPC("MaterialExpressionTransform.EMaterialVectorCoordTransform", 137)); }
		MaterialExpressionTransform.EMaterialVectorCoordTransformSource TransformSourceType() { mixin(MGPC("MaterialExpressionTransform.EMaterialVectorCoordTransformSource", 136)); }
		MaterialExpression.ExpressionInput InputVar() { mixin(MGPC("MaterialExpression.ExpressionInput", 108)); }
	}
}
