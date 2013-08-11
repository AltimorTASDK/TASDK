module UnrealScript.Engine.MaterialExpressionBumpOffset;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionBumpOffset : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		float ReferencePlane() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
		float HeightRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Height() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Coordinate() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
