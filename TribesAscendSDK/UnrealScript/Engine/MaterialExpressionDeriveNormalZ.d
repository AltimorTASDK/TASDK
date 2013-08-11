module UnrealScript.Engine.MaterialExpressionDeriveNormalZ;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDeriveNormalZ : MaterialExpression
{
	public @property final auto ref MaterialExpression.ExpressionInput InXY() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
