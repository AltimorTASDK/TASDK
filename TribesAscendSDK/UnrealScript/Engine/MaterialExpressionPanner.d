module UnrealScript.Engine.MaterialExpressionPanner;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPanner : MaterialExpression
{
	public @property final auto ref float SpeedY() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float SpeedX() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref MaterialExpression.ExpressionInput Time() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput Coordinate() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
