module UnrealScript.Engine.MaterialExpressionClamp;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionClamp : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		MaterialExpression.ExpressionInput Max() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 164); }
		MaterialExpression.ExpressionInput Min() { return *cast(MaterialExpression.ExpressionInput*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
