module UnrealScript.Engine.MaterialExpressionBumpOffset;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionBumpOffset : MaterialExpression
{
	public @property final auto ref float ReferencePlane() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float HeightRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref MaterialExpression.ExpressionInput Height() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput Coordinate() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
