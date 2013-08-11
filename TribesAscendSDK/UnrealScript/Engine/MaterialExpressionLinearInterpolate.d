module UnrealScript.Engine.MaterialExpressionLinearInterpolate;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionLinearInterpolate : MaterialExpression
{
	public @property final auto ref MaterialExpression.ExpressionInput Alpha() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
