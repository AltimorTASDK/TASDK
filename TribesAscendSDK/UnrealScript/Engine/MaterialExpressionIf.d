module UnrealScript.Engine.MaterialExpressionIf;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionIf : MaterialExpression
{
	public @property final auto ref MaterialExpression.ExpressionInput ALessThanB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref MaterialExpression.ExpressionInput AEqualsB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref MaterialExpression.ExpressionInput AGreaterThanB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
