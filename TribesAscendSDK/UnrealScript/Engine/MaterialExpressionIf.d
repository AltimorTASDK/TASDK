module UnrealScript.Engine.MaterialExpressionIf;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionIf : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		MaterialExpression.ExpressionInput ALessThanB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 220); }
		MaterialExpression.ExpressionInput AEqualsB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 192); }
		MaterialExpression.ExpressionInput AGreaterThanB() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput B() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		MaterialExpression.ExpressionInput A() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
	}
}
