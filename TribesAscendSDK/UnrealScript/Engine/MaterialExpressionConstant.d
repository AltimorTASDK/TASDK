module UnrealScript.Engine.MaterialExpressionConstant;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionConstant : MaterialExpression
{
public extern(D):
	@property final auto ref float R() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
}
