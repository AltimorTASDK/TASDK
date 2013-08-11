module UnrealScript.Engine.MaterialExpressionTransformPosition;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTransformPosition : MaterialExpression
{
	enum EMaterialPositionTransform : ubyte
	{
		TRANSFORMPOS_World = 0,
		TRANSFORMPOS_MAX = 1,
	}
	public @property final auto ref MaterialExpressionTransformPosition.EMaterialPositionTransform TransformType() { return *cast(MaterialExpressionTransformPosition.EMaterialPositionTransform*)(cast(size_t)cast(void*)this + 136); }
	// WARNING: Property 'Input' has the same name as a defined type!
}
