module UnrealScript.Engine.MaterialExpressionRotator;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionRotator : MaterialExpression
{
	public @property final auto ref float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float CenterY() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float CenterX() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref MaterialExpression.ExpressionInput Time() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput Coordinate() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
