module UnrealScript.Engine.MaterialExpressionRotator;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionRotator : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
		float CenterY() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
		float CenterX() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Time() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Coordinate() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
