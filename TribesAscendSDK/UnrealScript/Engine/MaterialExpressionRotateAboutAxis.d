module UnrealScript.Engine.MaterialExpressionRotateAboutAxis;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionRotateAboutAxis : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Position() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput PositionOnAxis() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput NormalizedRotationAxisAndAngle() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
