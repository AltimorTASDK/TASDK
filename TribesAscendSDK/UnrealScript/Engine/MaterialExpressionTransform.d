module UnrealScript.Engine.MaterialExpressionTransform;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTransform : MaterialExpression
{
public extern(D):
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
		MaterialExpressionTransform.EMaterialVectorCoordTransform TransformType() { return *cast(MaterialExpressionTransform.EMaterialVectorCoordTransform*)(cast(size_t)cast(void*)this + 137); }
		MaterialExpressionTransform.EMaterialVectorCoordTransformSource TransformSourceType() { return *cast(MaterialExpressionTransform.EMaterialVectorCoordTransformSource*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
