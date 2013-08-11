module UnrealScript.Engine.MaterialExpressionCosine;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCosine : MaterialExpression
{
public extern(D):
	@property final auto ref
	{
		float Period() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
		// WARNING: Property 'Input' has the same name as a defined type!
	}
}
