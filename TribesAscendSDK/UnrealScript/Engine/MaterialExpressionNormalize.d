module UnrealScript.Engine.MaterialExpressionNormalize;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionNormalize : MaterialExpression
{
public extern(D):
	@property final auto ref MaterialExpression.ExpressionInput VectorInput() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 108); }
}
