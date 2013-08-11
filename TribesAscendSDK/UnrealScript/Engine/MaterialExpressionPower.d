module UnrealScript.Engine.MaterialExpressionPower;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionPower : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Exponent() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput Base() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
