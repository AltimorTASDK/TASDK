module UnrealScript.Engine.MaterialExpressionFresnel;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionFresnel : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Normal() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 112); }
		float Exponent() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	}
}
