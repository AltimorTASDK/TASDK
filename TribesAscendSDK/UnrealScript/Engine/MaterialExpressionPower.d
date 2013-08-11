module UnrealScript.Engine.MaterialExpressionPower;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPower : MaterialExpression
{
	public @property final auto ref MaterialExpression.ExpressionInput Exponent() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput Base() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
