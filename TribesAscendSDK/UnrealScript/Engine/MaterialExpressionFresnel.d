module UnrealScript.Engine.MaterialExpressionFresnel;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFresnel : MaterialExpression
{
	public @property final auto ref MaterialExpression.ExpressionInput Normal() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float Exponent() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
}
